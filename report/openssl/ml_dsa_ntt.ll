inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@zetas_montgomery = internal unnamed_addr constant [256 x i32] [i32 4193792, i32 25847, i32 5771523, i32 7861508, i32 237124, i32 7602457, i32 7504169, i32 466468, i32 1826347, i32 2353451, i32 8021166, i32 6288512, i32 3119733, i32 5495562, i32 3111497, i32 2680103, i32 2725464, i32 1024112, i32 7300517, i32 3585928, i32 7830929, i32 7260833, i32 2619752, i32 6271868, i32 6262231, i32 4520680, i32 6980856, i32 5102745, i32 1757237, i32 8360995, i32 4010497, i32 280005, i32 2706023, i32 95776, i32 3077325, i32 3530437, i32 6718724, i32 4788269, i32 5842901, i32 3915439, i32 4519302, i32 5336701, i32 3574422, i32 5512770, i32 3539968, i32 8079950, i32 2348700, i32 7841118, i32 6681150, i32 6736599, i32 3505694, i32 4558682, i32 3507263, i32 6239768, i32 6779997, i32 3699596, i32 811944, i32 531354, i32 954230, i32 3881043, i32 3900724, i32 5823537, i32 2071892, i32 5582638, i32 4450022, i32 6851714, i32 4702672, i32 5339162, i32 6927966, i32 3475950, i32 2176455, i32 6795196, i32 7122806, i32 1939314, i32 4296819, i32 7380215, i32 5190273, i32 5223087, i32 4747489, i32 126922, i32 3412210, i32 7396998, i32 2147896, i32 2715295, i32 5412772, i32 4686924, i32 7969390, i32 5903370, i32 7709315, i32 7151892, i32 8357436, i32 7072248, i32 7998430, i32 1349076, i32 1852771, i32 6949987, i32 5037034, i32 264944, i32 508951, i32 3097992, i32 44288, i32 7280319, i32 904516, i32 3958618, i32 4656075, i32 8371839, i32 1653064, i32 5130689, i32 2389356, i32 8169440, i32 759969, i32 7063561, i32 189548, i32 4827145, i32 3159746, i32 6529015, i32 5971092, i32 8202977, i32 1315589, i32 1341330, i32 1285669, i32 6795489, i32 7567685, i32 6940675, i32 5361315, i32 4499357, i32 4751448, i32 3839961, i32 2091667, i32 3407706, i32 2316500, i32 3817976, i32 5037939, i32 2244091, i32 5933984, i32 4817955, i32 266997, i32 2434439, i32 7144689, i32 3513181, i32 4860065, i32 4621053, i32 7183191, i32 5187039, i32 900702, i32 1859098, i32 909542, i32 819034, i32 495491, i32 6767243, i32 8337157, i32 7857917, i32 7725090, i32 5257975, i32 2031748, i32 3207046, i32 4823422, i32 7855319, i32 7611795, i32 4784579, i32 342297, i32 286988, i32 5942594, i32 4108315, i32 3437287, i32 5038140, i32 1735879, i32 203044, i32 2842341, i32 2691481, i32 5790267, i32 1265009, i32 4055324, i32 1247620, i32 2486353, i32 1595974, i32 4613401, i32 1250494, i32 2635921, i32 4832145, i32 5386378, i32 1869119, i32 1903435, i32 7329447, i32 7047359, i32 1237275, i32 5062207, i32 6950192, i32 7929317, i32 1312455, i32 3306115, i32 6417775, i32 7100756, i32 1917081, i32 5834105, i32 7005614, i32 1500165, i32 777191, i32 2235880, i32 3406031, i32 7838005, i32 5548557, i32 6709241, i32 6533464, i32 5796124, i32 4656147, i32 594136, i32 4603424, i32 6366809, i32 2432395, i32 2454455, i32 8215696, i32 1957272, i32 3369112, i32 185531, i32 7173032, i32 5196991, i32 162844, i32 1616392, i32 3014001, i32 810149, i32 1652634, i32 4686184, i32 6581310, i32 5341501, i32 3523897, i32 3866901, i32 269760, i32 2213111, i32 7404533, i32 1717735, i32 472078, i32 7953734, i32 1723600, i32 6577327, i32 1910376, i32 6712985, i32 7276084, i32 8119771, i32 4546524, i32 5441381, i32 6144432, i32 7959518, i32 6094090, i32 183443, i32 7403526, i32 1612842, i32 4834730, i32 7826001, i32 3919660, i32 8332111, i32 7018208, i32 3937738, i32 1400424, i32 7534263, i32 1976782], align 16

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define void @ossl_ml_dsa_poly_ntt_mult(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw i64 %i.f, %i.c                   ; 2 uses
  %i.h = mul i64 %i.g, 4236238847
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw nsw i64 %i.i, 8380417
  %i.k = add i64 %i.j, %i.g
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 3 uses
  %i.n = add i32 %i.m, -8380417                   ; 2 uses
  %i.o = xor i32 %i.m, -1
  %i.p = and i32 %i.n, %i.o
  %.neg.i.i.i.i = ashr i32 %i.p, 31               ; 2 uses
  %i.q = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #1, !srcloc !9
  %i.r = and i32 %i.q, %i.m
  %i.s = xor i32 %.neg.i.i.i.i, -1
  %i.t = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.s) #1, !srcloc !9
  %i.u = and i32 %i.n, %i.t
  %i.v = or i32 %i.u, %i.r
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define void @ossl_ml_dsa_poly_ntt(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge39
  %.03041 = phi i32 [ 256, %bb.a ], [ %i.a, %._crit_edge39 ] ; 3 uses
  %.03140 = phi i32 [ 1, %bb.a ], [ %i.ax, %._crit_edge39 ] ; 3 uses
  %i.a = lshr i32 %.03041, 1                      ; 4 uses
  %i.b = icmp sgt i32 %.03140, 0
  br i1 %i.b, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.b
  %i.c = and i32 %.03041, 510
  %i.d = zext nneg i32 %i.c to i64
  %i.e = zext nneg i32 %i.a to i64
  %1 = and i32 %.03041, 510
  %i.f = zext nneg i32 %.03140 to i64             ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %invariant.gep47 = getelementptr inbounds nuw [4 x i8], ptr @zetas_montgomery, i64 %i.f
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph38, %._crit_edge
  %indvars.iv44.a = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next.a, %._crit_edge ] ; 2 uses
  %indvars.iv44 = phi i32 [ %i.a, %.lr.ph38 ], [ %indvars.iv.next45, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next45.a, %._crit_edge ] ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %gep48 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep47, i64 %indvars.iv44.a
  %i.g = load i32, ptr %gep48, align 4, !tbaa !8
  %i.h = zext i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv42 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next43, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv42 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8    ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv42 ; 2 uses
  %i.k = load i32, ptr %gep, align 4, !tbaa !8
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw i64 %i.l, %i.h                   ; 2 uses
  %i.n = mul i64 %i.m, 4236238847
  %i.o = and i64 %i.n, 4294967295
  %i.p = mul nuw nsw i64 %i.o, 8380417
  %i.q = add i64 %i.p, %i.m
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32                ; 3 uses
  %i.t = add i32 %i.s, -8380417                   ; 2 uses
  %i.u = xor i32 %i.s, -1
  %i.v = and i32 %i.t, %i.u
  %.neg.i.i.i.i = ashr i32 %i.v, 31               ; 2 uses
  %i.w = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #1, !srcloc !9
  %i.x = and i32 %i.w, %i.s
  %i.y = xor i32 %.neg.i.i.i.i, -1
  %i.z = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.y) #1, !srcloc !9
  %i.aa = and i32 %i.t, %i.z
  %i.ab = or i32 %i.aa, %i.x                      ; 2 uses
  %i.ac = add i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = add i32 %i.ac, -8380417                 ; 2 uses
  %i.ae = xor i32 %i.ac, -1
  %i.af = and i32 %i.ad, %i.ae
  %.neg.i.i.i = ashr i32 %i.af, 31                ; 2 uses
  %i.ag = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i) #1, !srcloc !9
  %i.ah = and i32 %i.ac, %i.ag
  %i.ai = xor i32 %.neg.i.i.i, -1
  %i.aj = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.ai) #1, !srcloc !9
  %i.ak = and i32 %i.ad, %i.aj
  %i.al = or i32 %i.ak, %i.ah
  store i32 %i.al, ptr %i.i, align 4, !tbaa !8
  %i.am = add i32 %i.j, 8380417
  %i.an = sub i32 %i.am, %i.ab                    ; 3 uses
  %i.ao = add i32 %i.an, -8380417                 ; 2 uses
  %i.ap = xor i32 %i.an, -1
  %i.aq = and i32 %i.ao, %i.ap
  %.neg.i.i.i.i33 = ashr i32 %i.aq, 31            ; 2 uses
  %i.ar = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i33) #1, !srcloc !9
  %i.as = and i32 %i.an, %i.ar
  %i.at = xor i32 %.neg.i.i.i.i33, -1
  %i.au = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.at) #1, !srcloc !9
  %i.av = and i32 %i.ao, %i.au
  %i.aw = or i32 %i.av, %i.as
  store i32 %i.aw, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next43 to i32
  %exitcond.not = icmp eq i32 %indvars.iv44, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv44.a, 1 ; 2 uses
  %indvars.iv.next45.a = add nuw nsw i64 %indvars.iv, %i.d
  %indvars.iv.next45 = add nuw i32 %indvars.iv44, %1
  %exitcond.not.a = icmp eq i64 %indvars.iv.next.a, %i.f
  br i1 %exitcond.not.a, label %._crit_edge39, label %bb.c, !llvm.loop !13

._crit_edge39:                                    ; preds = %._crit_edge, %bb.b
  %i.ax = shl i32 %.03140, 1                      ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 256
  br i1 %i.ay, label %bb.b, label %bb.e, !llvm.loop !14

bb.e:                                             ; preds = %._crit_edge39
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define void @ossl_ml_dsa_poly_ntt_inverse(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge48
  %.03750 = phi i32 [ 256, %bb.a ], [ %i.a, %._crit_edge48 ] ; 2 uses
  %.03849 = phi i32 [ 1, %bb.a ], [ %.pre-phi, %._crit_edge48 ] ; 3 uses
  %i.a = lshr i32 %.03750, 1                      ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.._crit_edge48_crit_edge, label %.lr.ph47

.._crit_edge48_crit_edge:                         ; preds = %bb.b
  %.pre = shl i32 %.03849, 1
  br label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.b
  %reass.add = and i32 %.03750, 510
  %i.b = shl i32 %.03849, 1                       ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = sext i32 %.03849 to i64                  ; 2 uses
  %i.e = zext nneg i32 %reass.add to i64
  %wide.trip.count62 = zext nneg i32 %i.a to i64
  %i.f = getelementptr [4 x i8], ptr @zetas_montgomery, i64 %i.e
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph47
  %indvars.iv57.a = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next58.a, %._crit_edge ] ; 2 uses
  %indvars.iv57 = phi i64 [ %i.d, %.lr.ph47 ], [ %indvars.iv.next58, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.g = xor i64 %indvars.iv57.a, -1
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = sub i32 8380417, %i.i
  %wide.trip.count = zext i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv52 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next53, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv52 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8    ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv52 ; 2 uses
  %i.m = load i32, ptr %gep, align 4, !tbaa !8    ; 2 uses
  %i.n = add i32 %i.m, %i.l                       ; 3 uses
  %i.o = add i32 %i.n, -8380417                   ; 2 uses
  %i.p = xor i32 %i.n, -1
  %i.q = and i32 %i.o, %i.p
  %.neg.i.i.i = ashr i32 %i.q, 31                 ; 2 uses
  %i.r = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i) #1, !srcloc !9
  %i.s = and i32 %i.r, %i.n
  %i.t = xor i32 %.neg.i.i.i, -1
  %i.u = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.t) #1, !srcloc !9
  %i.v = and i32 %i.u, %i.o
  %i.w = or i32 %i.v, %i.s
  store i32 %i.w, ptr %i.k, align 4, !tbaa !8
  %i.x = add i32 %i.l, 8380417
  %i.y = sub i32 %i.x, %i.m
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nuw i64 %i.z, %wide.trip.count      ; 2 uses
  %i.ab = mul i64 %i.aa, 4236238847
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = mul nuw nsw i64 %i.ac, 8380417
  %i.ae = add i64 %i.ad, %i.aa
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32              ; 3 uses
  %i.ah = add i32 %i.ag, -8380417                 ; 2 uses
  %i.ai = xor i32 %i.ag, -1
  %i.aj = and i32 %i.ah, %i.ai
  %.neg.i.i.i.i = ashr i32 %i.aj, 31              ; 2 uses
  %i.ak = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #1, !srcloc !9
  %i.al = and i32 %i.ak, %i.ag
  %i.am = xor i32 %.neg.i.i.i.i, -1
  %i.an = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.am) #1, !srcloc !9
  %i.ao = and i32 %i.ah, %i.an
  %i.ap = or i32 %i.ao, %i.al
  store i32 %i.ap, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %indvars.iv57
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.c
  %indvars.iv.next58.a = add nuw nsw i64 %indvars.iv57.a, 1 ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, %i.c
  %exitcond63.not = icmp eq i64 %indvars.iv.next58.a, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge48, label %.lr.ph, !llvm.loop !16

._crit_edge48:                                    ; preds = %._crit_edge, %.._crit_edge48_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge48_crit_edge ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.aq = icmp slt i32 %.pre-phi, 256
  br i1 %i.aq, label %bb.b, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %._crit_edge48, %.preheader
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.preheader ], [ 0, %._crit_edge48 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv64 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 41978
  %i.av = mul nuw nsw i64 %i.at, 8395782
  %i.aw = and i64 %i.av, 4294967294
  %i.ax = mul nuw nsw i64 %i.aw, 8380417
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw nsw i64 %i.az to i32          ; 3 uses
  %i.bb = add nsw i32 %i.ba, -8380417             ; 2 uses
  %i.bc = xor i32 %i.ba, -1
  %i.bd = and i32 %i.bb, %i.bc
  %.neg.i.i.i.i42 = ashr i32 %i.bd, 31            ; 2 uses
  %i.be = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i42) #1, !srcloc !9
  %i.bf = and i32 %i.be, %i.ba
  %i.bg = xor i32 %.neg.i.i.i.i42, -1
  %i.bh = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.bg) #1, !srcloc !9
  %i.bi = and i32 %i.bb, %i.bh
  %i.bj = or i32 %i.bi, %i.bf
  store i32 %i.bj, ptr %i.ar, align 4, !tbaa !8
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 256
  br i1 %exitcond67.not, label %bb.d, label %.preheader, !llvm.loop !18

bb.d:                                             ; preds = %.preheader
  ret void
}

attributes #0 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{i64 355018}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
end_hunk_0
