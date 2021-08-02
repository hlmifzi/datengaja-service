import express from "express"

import authRoutes from "./auth/auth.routes"
import userRoutes from "./user/user.routes"
import laporanRoutes from "./laporan/laporan.routes"
import dashboardRoutes from "./dashboard/dashboard.routes"
import buyerProductRoutes from "./buyerProductRoutes/buyerProductRoutes.routes"
import invitationRoutes from "./invitation/invitation.routes"
import invitationCategoriesRoutes from "./invitationCategories/invitationCategories.routes"

import authJwt from "../middleware/auth.jwt"

const router = express.Router()

router.use('/auth', authRoutes)
// router.use(authJwt)
router.use('/user', userRoutes)
router.use('/buyerProducts', buyerProductRoutes)
router.use('/invitations', invitationRoutes)
router.use('/invitationCategories', invitationCategoriesRoutes)
router.use('/laporan', laporanRoutes)
router.use('/dashboard', dashboardRoutes)

export default router