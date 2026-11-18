Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/unary_mx?download=true
inline.NumInlined: 1534
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN6casadi11casadi_mathIdE5printEhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi7UnaryMX4evalEPPKdPPdPxS4_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store double +qnan, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28
  %i.d = trunc i32 %i.c to i8
  %i.e = load ptr, ptr %1, align 8, !tbaa !84
  %i.f = load ptr, ptr %2, align 8, !tbaa !84
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !0
  %i.k = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx(i8 noundef zeroext %i.d, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.f, i64 noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx(i8 noundef zeroext %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 10 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 10 uses
  switch i8 %0, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 32, label %bb.ab
    i8 26, label %bb.ac
    i8 27, label %bb.ad
    i8 28, label %bb.ae
    i8 97, label %bb.af
    i8 29, label %bb.ag
    i8 30, label %bb.ah
    i8 31, label %bb.ai
    i8 33, label %bb.aj
    i8 34, label %bb.ak
    i8 35, label %bb.al
    i8 36, label %bb.am
    i8 37, label %bb.an
    i8 38, label %bb.ao
    i8 39, label %bb.ap
    i8 40, label %bb.aq
    i8 41, label %bb.ar
    i8 42, label %bb.as
    i8 43, label %bb.at
    i8 86, label %bb.au
    i8 88, label %bb.av
    i8 87, label %bb.aw
    i8 93, label %bb.ax
    i8 94, label %bb.ay
    i8 95, label %bb.az
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %4, 0
  br i1 %i.c, label %.lr.ph.i.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %min.iters.check1167 = icmp ult i64 %4, 8
  %i.d = sub i64 %i.a, %i.b
  %diff.check1169 = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check1167, %diff.check1169
  br i1 %or.cond, label %.lr.ph.i.preheader1193, label %vector.ph1170

vector.ph1170:                                    ; preds = %.lr.ph.i.preheader
  %n.vec1171 = and i64 %4, 9223372036854775804    ; 4 uses
  %i.e = shl i64 %n.vec1171, 3                    ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %3, i64 %i.e
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1170
  %index1173 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1178, %vector.body1172 ] ; 2 uses
  %i.h = shl i64 %index1173, 3                    ; 2 uses
  %next.gep1174 = getelementptr i8, ptr %1, i64 %i.h ; 2 uses
  %next.gep1175 = getelementptr i8, ptr %3, i64 %i.h ; 2 uses
  %i.i = getelementptr i8, ptr %next.gep1174, i64 16
  %wide.load1176 = load <2 x double>, ptr %next.gep1174, align 8, !tbaa !42
  %wide.load1177 = load <2 x double>, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr i8, ptr %next.gep1175, i64 16
  store <2 x double> %wide.load1176, ptr %next.gep1175, align 8, !tbaa !42
  store <2 x double> %wide.load1177, ptr %i.j, align 8, !tbaa !42
  %index.next1178 = add nuw i64 %index1173, 4     ; 2 uses
  %i.k = icmp eq i64 %index.next1178, %n.vec1171
  br i1 %i.k, label %middle.block1179, label %vector.body1172, !llvm.loop !85

middle.block1179:                                 ; preds = %vector.body1172
  %cmp.n1180 = icmp eq i64 %4, %n.vec1171
  br i1 %cmp.n1180, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i.preheader1193

.lr.ph.i.preheader1193:                           ; preds = %.lr.ph.i.preheader, %middle.block1179
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec1171, %middle.block1179 ] ; 4 uses
  %.058.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.f, %middle.block1179 ] ; 2 uses
  %.067.i.ph = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.g, %middle.block1179 ] ; 2 uses
  %i.l = sub nsw i64 %4, %.09.i.ph
  %xtraiter1422 = and i64 %i.l, 7                 ; 2 uses
  %lcmp.mod1423.not = icmp eq i64 %xtraiter1422, 0
  br i1 %lcmp.mod1423.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader1193, %.lr.ph.i.prol
  %.09.i.prol = phi i64 [ %i.p, %.lr.ph.i.prol ], [ %.09.i.ph, %.lr.ph.i.preheader1193 ]
  %.058.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader1193 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader1193 ] ; 2 uses
  %prol.iter1424 = phi i64 [ %prol.iter1424.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader1193 ]
  %i.m = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 8 ; 2 uses
  %i.o = load double, ptr %.058.i.prol, align 8, !tbaa !42
  store double %i.o, ptr %.067.i.prol, align 8, !tbaa !42
  %i.p = add nuw nsw i64 %.09.i.prol, 1           ; 2 uses
  %prol.iter1424.next = add i64 %prol.iter1424, 1 ; 2 uses
  %prol.iter1424.cmp.not = icmp eq i64 %prol.iter1424.next, %xtraiter1422
  br i1 %prol.iter1424.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !86

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader1193
  %.09.i.unr = phi i64 [ %.09.i.ph, %.lr.ph.i.preheader1193 ], [ %i.p, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader1193 ], [ %i.m, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader1193 ], [ %i.n, %.lr.ph.i.prol ]
  %i.q = sub nsw i64 %.09.i.ph, %4
  %i.r = icmp ugt i64 %i.q, -8
  br i1 %i.r, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.u = load double, ptr %.058.i, align 8, !tbaa !42
  store double %i.u, ptr %.067.i, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.x = load double, ptr %i.s, align 8, !tbaa !42
  store double %i.x, ptr %i.t, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.aa = load double, ptr %i.v, align 8, !tbaa !42
  store double %i.aa, ptr %i.w, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.ad = load double, ptr %i.y, align 8, !tbaa !42
  store double %i.ad, ptr %i.z, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %.058.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.067.i, i64 40
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !42
  store double %i.ag, ptr %i.ac, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %.058.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.067.i, i64 48
  %i.aj = load double, ptr %i.ae, align 8, !tbaa !42
  store double %i.aj, ptr %i.af, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %.058.i, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %.067.i, i64 56
  %i.am = load double, ptr %i.ah, align 8, !tbaa !42
  store double %i.am, ptr %i.ai, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %.058.i, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.067.i, i64 64
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !42
  store double %i.ap, ptr %i.al, align 8, !tbaa !42
  %i.aq = add nuw nsw i64 %.09.i, 8               ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.aq, %4
  br i1 %exitcond.not.i.7, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i, !llvm.loop !87

bb.c:                                             ; preds = %bb.a
  %i.ar = icmp sgt i64 %4, 0
  br i1 %i.ar, label %.lr.ph.i204.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i204.preheader:                            ; preds = %bb.c
  %min.iters.check1139 = icmp ult i64 %4, 12
  br i1 %min.iters.check1139, label %.lr.ph.i204.preheader1194, label %vector.memcheck1140

vector.memcheck1140:                              ; preds = %.lr.ph.i204.preheader
  %i.as = shl i64 %4, 3                           ; 2 uses
  %i.at = getelementptr i8, ptr %3, i64 %i.as     ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %bound01141 = icmp ult ptr %3, %i.au
  %bound01141.a = icmp ult ptr %1, %i.at
  %found.conflict1143 = and i1 %bound01141, %bound01141.a
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound01144 = icmp ult ptr %3, %5
  %bound11145 = icmp ult ptr %2, %i.at
  %found.conflict1146 = and i1 %bound01144, %bound11145
  %conflict.rdx1147 = or i1 %found.conflict1143, %found.conflict1146
  br i1 %conflict.rdx1147, label %.lr.ph.i204.preheader1194, label %vector.ph1148

vector.ph1148:                                    ; preds = %vector.memcheck1140
  %n.vec1149 = and i64 %4, 9223372036854775804    ; 4 uses
  %i.av = shl i64 %n.vec1149, 3                   ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.av
  %i.ax = getelementptr i8, ptr %3, i64 %i.av
  %i.ay = load double, ptr %2, align 8, !tbaa !42, !alias.scope !231
  %broadcast.splatinsert1156 = insertelement <2 x double> poison, double %i.ay, i64 0
  %broadcast.splat1157 = shufflevector <2 x double> %broadcast.splatinsert1156, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1148
  %index1151 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1158, %vector.body1150 ] ; 2 uses
  %i.az = shl i64 %index1151, 3                   ; 2 uses
  %next.gep1152 = getelementptr i8, ptr %1, i64 %i.az ; 2 uses
  %next.gep1153 = getelementptr i8, ptr %3, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep1152, i64 16
  %wide.load1154 = load <2 x double>, ptr %next.gep1152, align 8, !tbaa !42, !alias.scope !232
  %wide.load1155 = load <2 x double>, ptr %i.ba, align 8, !tbaa !42, !alias.scope !232
  %i.bb = fadd <2 x double> %wide.load1154, %broadcast.splat1157
  %i.bc = fadd <2 x double> %wide.load1155, %broadcast.splat1157
  %i.bd = getelementptr i8, ptr %next.gep1153, i64 16
  store <2 x double> %i.bb, ptr %next.gep1153, align 8, !tbaa !42, !alias.scope !233, !noalias !234
  store <2 x double> %i.bc, ptr %i.bd, align 8, !tbaa !42, !alias.scope !233, !noalias !234
  %index.next1158 = add nuw i64 %index1151, 4     ; 2 uses
  %i.be = icmp eq i64 %index.next1158, %n.vec1149
  br i1 %i.be, label %middle.block1159, label %vector.body1150, !llvm.loop !92

middle.block1159:                                 ; preds = %vector.body1150
  %cmp.n1160 = icmp eq i64 %4, %n.vec1149
  br i1 %cmp.n1160, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i204.preheader1194

.lr.ph.i204.preheader1194:                        ; preds = %vector.memcheck1140, %.lr.ph.i204.preheader, %middle.block1159
  %.09.i205.ph = phi i64 [ 0, %vector.memcheck1140 ], [ 0, %.lr.ph.i204.preheader ], [ %n.vec1149, %middle.block1159 ] ; 3 uses
  %.058.i206.ph = phi ptr [ %1, %vector.memcheck1140 ], [ %1, %.lr.ph.i204.preheader ], [ %i.aw, %middle.block1159 ] ; 2 uses
  %.067.i207.ph = phi ptr [ %3, %vector.memcheck1140 ], [ %3, %.lr.ph.i204.preheader ], [ %i.ax, %middle.block1159 ] ; 2 uses
  %xtraiter1419 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod1420.not = icmp eq i64 %xtraiter1419, 0
  br i1 %lcmp.mod1420.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol

.lr.ph.i204.prol:                                 ; preds = %.lr.ph.i204.preheader1194, %.lr.ph.i204.prol
  %.09.i205.prol = phi i64 [ %i.bk, %.lr.ph.i204.prol ], [ %.09.i205.ph, %.lr.ph.i204.preheader1194 ]
  %.058.i206.prol = phi ptr [ %i.bf, %.lr.ph.i204.prol ], [ %.058.i206.ph, %.lr.ph.i204.preheader1194 ] ; 2 uses
  %.067.i207.prol = phi ptr [ %i.bg, %.lr.ph.i204.prol ], [ %.067.i207.ph, %.lr.ph.i204.preheader1194 ] ; 2 uses
  %prol.iter1421 = phi i64 [ %prol.iter1421.next, %.lr.ph.i204.prol ], [ 0, %.lr.ph.i204.preheader1194 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.058.i206.prol, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.067.i207.prol, i64 8 ; 2 uses
  %i.bh = load double, ptr %.058.i206.prol, align 8, !tbaa !42
  %i.bi = load double, ptr %2, align 8, !tbaa !42
  %i.bj = fadd double %i.bh, %i.bi
  store double %i.bj, ptr %.067.i207.prol, align 8, !tbaa !42
  %i.bk = add nuw nsw i64 %.09.i205.prol, 1       ; 2 uses
  %prol.iter1421.next = add i64 %prol.iter1421, 1 ; 2 uses
  %prol.iter1421.cmp.not = icmp eq i64 %prol.iter1421.next, %xtraiter1419
  br i1 %prol.iter1421.cmp.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol, !llvm.loop !93

.lr.ph.i204.prol.loopexit:                        ; preds = %.lr.ph.i204.prol, %.lr.ph.i204.preheader1194
  %.09.i205.unr = phi i64 [ %.09.i205.ph, %.lr.ph.i204.preheader1194 ], [ %i.bk, %.lr.ph.i204.prol ]
  %.058.i206.unr = phi ptr [ %.058.i206.ph, %.lr.ph.i204.preheader1194 ], [ %i.bf, %.lr.ph.i204.prol ]
  %.067.i207.unr = phi ptr [ %.067.i207.ph, %.lr.ph.i204.preheader1194 ], [ %i.bg, %.lr.ph.i204.prol ]
  %i.bl = sub nsw i64 %.09.i205.ph, %4
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204.prol.loopexit, %.lr.ph.i204
  %.09.i205 = phi i64 [ %i.ch, %.lr.ph.i204 ], [ %.09.i205.unr, %.lr.ph.i204.prol.loopexit ]
  %.058.i206 = phi ptr [ %i.cc, %.lr.ph.i204 ], [ %.058.i206.unr, %.lr.ph.i204.prol.loopexit ] ; 5 uses
  %.067.i207 = phi ptr [ %i.cd, %.lr.ph.i204 ], [ %.067.i207.unr, %.lr.ph.i204.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.058.i206, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.067.i207, i64 8
  %i.bp = load double, ptr %.058.i206, align 8, !tbaa !42
  %i.bq = load double, ptr %2, align 8, !tbaa !42
  %i.br = fadd double %i.bp, %i.bq
  store double %i.br, ptr %.067.i207, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %.058.i206, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.067.i207, i64 16
  %i.bu = load double, ptr %i.bn, align 8, !tbaa !42
  %i.bv = load double, ptr %2, align 8, !tbaa !42
  %i.bw = fadd double %i.bu, %i.bv
  store double %i.bw, ptr %i.bo, align 8, !tbaa !42
  %i.bx = getelementptr inbounds nuw i8, ptr %.058.i206, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %.067.i207, i64 24
  %i.bz = load double, ptr %i.bs, align 8, !tbaa !42
  %i.ca = load double, ptr %2, align 8, !tbaa !42
  %i.cb = fadd double %i.bz, %i.ca
  store double %i.cb, ptr %i.bt, align 8, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %.058.i206, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.067.i207, i64 32
  %i.ce = load double, ptr %i.bx, align 8, !tbaa !42
  %i.cf = load double, ptr %2, align 8, !tbaa !42
  %i.cg = fadd double %i.ce, %i.cf
  store double %i.cg, ptr %i.by, align 8, !tbaa !42
  %i.ch = add nuw nsw i64 %.09.i205, 4            ; 2 uses
  %exitcond.not.i208.3 = icmp eq i64 %i.ch, %4
  br i1 %exitcond.not.i208.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i204, !llvm.loop !94

bb.d:                                             ; preds = %bb.a
  %i.ci = icmp sgt i64 %4, 0
  br i1 %i.ci, label %.lr.ph.i209.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i209.preheader:                            ; preds = %bb.d
  %min.iters.check1103 = icmp ult i64 %4, 12
  br i1 %min.iters.check1103, label %.lr.ph.i209.preheader1196, label %vector.memcheck1104

vector.memcheck1104:                              ; preds = %.lr.ph.i209.preheader
  %i.cj = shl i64 %4, 3                           ; 2 uses
  %i.ck = getelementptr i8, ptr %3, i64 %i.cj     ; 2 uses
  %i.cl = getelementptr i8, ptr %1, i64 %i.cj
  %bound01105 = icmp ult ptr %3, %i.cl
  %bound01105.a = icmp ult ptr %1, %i.ck
  %found.conflict1107 = and i1 %bound01105, %bound01105.a
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound01108 = icmp ult ptr %3, %6
  %bound11109 = icmp ult ptr %2, %i.ck
  %found.conflict1110 = and i1 %bound01108, %bound11109
  %conflict.rdx1111 = or i1 %found.conflict1107, %found.conflict1110
  br i1 %conflict.rdx1111, label %.lr.ph.i209.preheader1196, label %vector.ph1112

vector.ph1112:                                    ; preds = %vector.memcheck1104
  %n.vec1113 = and i64 %4, 9223372036854775804    ; 4 uses
  %i.cm = shl i64 %n.vec1113, 3                   ; 2 uses
  %i.cn = getelementptr i8, ptr %1, i64 %i.cm
  %i.co = getelementptr i8, ptr %3, i64 %i.cm
  %i.cp = load double, ptr %2, align 8, !tbaa !42, !alias.scope !235
  %broadcast.splatinsert1120 = insertelement <2 x double> poison, double %i.cp, i64 0
  %broadcast.splat1121 = shufflevector <2 x double> %broadcast.splatinsert1120, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1112
  %index1115 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1122, %vector.body1114 ] ; 2 uses
  %i.cq = shl i64 %index1115, 3                   ; 2 uses
  %next.gep1116 = getelementptr i8, ptr %1, i64 %i.cq ; 2 uses
  %next.gep1117 = getelementptr i8, ptr %3, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep1116, i64 16
  %wide.load1118 = load <2 x double>, ptr %next.gep1116, align 8, !tbaa !42, !alias.scope !236
  %wide.load1119 = load <2 x double>, ptr %i.cr, align 8, !tbaa !42, !alias.scope !236
  %i.cs = fsub <2 x double> %wide.load1118, %broadcast.splat1121
  %i.ct = fsub <2 x double> %wide.load1119, %broadcast.splat1121
  %i.cu = getelementptr i8, ptr %next.gep1117, i64 16
  store <2 x double> %i.cs, ptr %next.gep1117, align 8, !tbaa !42, !alias.scope !237, !noalias !238
  store <2 x double> %i.ct, ptr %i.cu, align 8, !tbaa !42, !alias.scope !237, !noalias !238
  %index.next1122 = add nuw i64 %index1115, 4     ; 2 uses
  %i.cv = icmp eq i64 %index.next1122, %n.vec1113
  br i1 %i.cv, label %middle.block1123, label %vector.body1114, !llvm.loop !99

middle.block1123:                                 ; preds = %vector.body1114
  %cmp.n1124 = icmp eq i64 %4, %n.vec1113
  br i1 %cmp.n1124, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i209.preheader1196

.lr.ph.i209.preheader1196:                        ; preds = %vector.memcheck1104, %.lr.ph.i209.preheader, %middle.block1123
  %.09.i210.ph = phi i64 [ 0, %vector.memcheck1104 ], [ 0, %.lr.ph.i209.preheader ], [ %n.vec1113, %middle.block1123 ] ; 3 uses
  %.058.i211.ph = phi ptr [ %1, %vector.memcheck1104 ], [ %1, %.lr.ph.i209.preheader ], [ %i.cn, %middle.block1123 ] ; 2 uses
  %.067.i212.ph = phi ptr [ %3, %vector.memcheck1104 ], [ %3, %.lr.ph.i209.preheader ], [ %i.co, %middle.block1123 ] ; 2 uses
  %xtraiter1416 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod1417.not = icmp eq i64 %xtraiter1416, 0
  br i1 %lcmp.mod1417.not, label %.lr.ph.i209.prol.loopexit, label %.lr.ph.i209.prol

.lr.ph.i209.prol:                                 ; preds = %.lr.ph.i209.preheader1196, %.lr.ph.i209.prol
  %.09.i210.prol = phi i64 [ %i.db, %.lr.ph.i209.prol ], [ %.09.i210.ph, %.lr.ph.i209.preheader1196 ]
  %.058.i211.prol = phi ptr [ %i.cw, %.lr.ph.i209.prol ], [ %.058.i211.ph, %.lr.ph.i209.preheader1196 ] ; 2 uses
  %.067.i212.prol = phi ptr [ %i.cx, %.lr.ph.i209.prol ], [ %.067.i212.ph, %.lr.ph.i209.preheader1196 ] ; 2 uses
  %prol.iter1418 = phi i64 [ %prol.iter1418.next, %.lr.ph.i209.prol ], [ 0, %.lr.ph.i209.preheader1196 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.058.i211.prol, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.067.i212.prol, i64 8 ; 2 uses
  %i.cy = load double, ptr %.058.i211.prol, align 8, !tbaa !42
  %i.cz = load double, ptr %2, align 8, !tbaa !42
  %i.da = fsub double %i.cy, %i.cz
  store double %i.da, ptr %.067.i212.prol, align 8, !tbaa !42
  %i.db = add nuw nsw i64 %.09.i210.prol, 1       ; 2 uses
  %prol.iter1418.next = add i64 %prol.iter1418, 1 ; 2 uses
  %prol.iter1418.cmp.not = icmp eq i64 %prol.iter1418.next, %xtraiter1416
  br i1 %prol.iter1418.cmp.not, label %.lr.ph.i209.prol.loopexit, label %.lr.ph.i209.prol, !llvm.loop !100

.lr.ph.i209.prol.loopexit:                        ; preds = %.lr.ph.i209.prol, %.lr.ph.i209.preheader1196
  %.09.i210.unr = phi i64 [ %.09.i210.ph, %.lr.ph.i209.preheader1196 ], [ %i.db, %.lr.ph.i209.prol ]
  %.058.i211.unr = phi ptr [ %.058.i211.ph, %.lr.ph.i209.preheader1196 ], [ %i.cw, %.lr.ph.i209.prol ]
  %.067.i212.unr = phi ptr [ %.067.i212.ph, %.lr.ph.i209.preheader1196 ], [ %i.cx, %.lr.ph.i209.prol ]
  %i.dc = sub nsw i64 %.09.i210.ph, %4
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %.lr.ph.i209.prol.loopexit, %.lr.ph.i209
  %.09.i210 = phi i64 [ %i.dy, %.lr.ph.i209 ], [ %.09.i210.unr, %.lr.ph.i209.prol.loopexit ]
  %.058.i211 = phi ptr [ %i.dt, %.lr.ph.i209 ], [ %.058.i211.unr, %.lr.ph.i209.prol.loopexit ] ; 5 uses
  %.067.i212 = phi ptr [ %i.du, %.lr.ph.i209 ], [ %.067.i212.unr, %.lr.ph.i209.prol.loopexit ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.058.i211, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.067.i212, i64 8
  %i.dg = load double, ptr %.058.i211, align 8, !tbaa !42
  %i.dh = load double, ptr %2, align 8, !tbaa !42
  %i.di = fsub double %i.dg, %i.dh
  store double %i.di, ptr %.067.i212, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw i8, ptr %.058.i211, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.067.i212, i64 16
  %i.dl = load double, ptr %i.de, align 8, !tbaa !42
  %i.dm = load double, ptr %2, align 8, !tbaa !42
  %i.dn = fsub double %i.dl, %i.dm
  store double %i.dn, ptr %i.df, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw i8, ptr %.058.i211, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %.067.i212, i64 24
  %i.dq = load double, ptr %i.dj, align 8, !tbaa !42
  %i.dr = load double, ptr %2, align 8, !tbaa !42
  %i.ds = fsub double %i.dq, %i.dr
  store double %i.ds, ptr %i.dk, align 8, !tbaa !42
  %i.dt = getelementptr inbounds nuw i8, ptr %.058.i211, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %.067.i212, i64 32
  %i.dv = load double, ptr %i.do, align 8, !tbaa !42
  %i.dw = load double, ptr %2, align 8, !tbaa !42
  %i.dx = fsub double %i.dv, %i.dw
  store double %i.dx, ptr %i.dp, align 8, !tbaa !42
  %i.dy = add nuw nsw i64 %.09.i210, 4            ; 2 uses
  %exitcond.not.i213.3 = icmp eq i64 %i.dy, %4
  br i1 %exitcond.not.i213.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i209, !llvm.loop !101

bb.e:                                             ; preds = %bb.a
  %i.dz = icmp sgt i64 %4, 0
  br i1 %i.dz, label %.lr.ph.i214.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i214.preheader:                            ; preds = %bb.e
  %min.iters.check1067 = icmp ult i64 %4, 12
  br i1 %min.iters.check1067, label %.lr.ph.i214.preheader1198, label %vector.memcheck1068

vector.memcheck1068:                              ; preds = %.lr.ph.i214.preheader
  %i.ea = shl i64 %4, 3                           ; 2 uses
  %i.eb = getelementptr i8, ptr %3, i64 %i.ea     ; 2 uses
  %i.ec = getelementptr i8, ptr %1, i64 %i.ea
  %bound01069 = icmp ult ptr %3, %i.ec
  %bound01069.a = icmp ult ptr %1, %i.eb
  %found.conflict1071 = and i1 %bound01069, %bound01069.a
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound01072 = icmp ult ptr %3, %7
  %bound11073 = icmp ult ptr %2, %i.eb
  %found.conflict1074 = and i1 %bound01072, %bound11073
  %conflict.rdx1075 = or i1 %found.conflict1071, %found.conflict1074
  br i1 %conflict.rdx1075, label %.lr.ph.i214.preheader1198, label %vector.ph1076

vector.ph1076:                                    ; preds = %vector.memcheck1068
  %n.vec1077 = and i64 %4, 9223372036854775804    ; 4 uses
  %i.ed = shl i64 %n.vec1077, 3                   ; 2 uses
  %i.ee = getelementptr i8, ptr %1, i64 %i.ed
  %i.ef = getelementptr i8, ptr %3, i64 %i.ed
  %i.eg = load double, ptr %2, align 8, !tbaa !42, !alias.scope !239
  %broadcast.splatinsert1084 = insertelement <2 x double> poison, double %i.eg, i64 0
  %broadcast.splat1085 = shufflevector <2 x double> %broadcast.splatinsert1084, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %vector.ph1076
  %index1079 = phi i64 [ 0, %vector.ph1076 ], [ %index.next1086, %vector.body1078 ] ; 2 uses
  %i.eh = shl i64 %index1079, 3                   ; 2 uses
  %next.gep1080 = getelementptr i8, ptr %1, i64 %i.eh ; 2 uses
  %next.gep1081 = getelementptr i8, ptr %3, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep1080, i64 16
  %wide.load1082 = load <2 x double>, ptr %next.gep1080, align 8, !tbaa !42, !alias.scope !240
  %wide.load1083 = load <2 x double>, ptr %i.ei, align 8, !tbaa !42, !alias.scope !240
  %i.ej = fmul <2 x double> %wide.load1082, %broadcast.splat1085
  %i.ek = fmul <2 x double> %wide.load1083, %broadcast.splat1085
  %i.el = getelementptr i8, ptr %next.gep1081, i64 16
  store <2 x double> %i.ej, ptr %next.gep1081, align 8, !tbaa !42, !alias.scope !241, !noalias !242
  store <2 x double> %i.ek, ptr %i.el, align 8, !tbaa !42, !alias.scope !241, !noalias !242
  %index.next1086 = add nuw i64 %index1079, 4     ; 2 uses
  %i.em = icmp eq i64 %index.next1086, %n.vec1077
  br i1 %i.em, label %middle.block1087, label %vector.body1078, !llvm.loop !106

middle.block1087:                                 ; preds = %vector.body1078
  %cmp.n1088 = icmp eq i64 %4, %n.vec1077
  br i1 %cmp.n1088, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i214.preheader1198

.lr.ph.i214.preheader1198:                        ; preds = %vector.memcheck1068, %.lr.ph.i214.preheader, %middle.block1087
  %.09.i215.ph = phi i64 [ 0, %vector.memcheck1068 ], [ 0, %.lr.ph.i214.preheader ], [ %n.vec1077, %middle.block1087 ] ; 3 uses
  %.058.i216.ph = phi ptr [ %1, %vector.memcheck1068 ], [ %1, %.lr.ph.i214.preheader ], [ %i.ee, %middle.block1087 ] ; 2 uses
  %.067.i217.ph = phi ptr [ %3, %vector.memcheck1068 ], [ %3, %.lr.ph.i214.preheader ], [ %i.ef, %middle.block1087 ] ; 2 uses
  %xtraiter1413 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod1414.not = icmp eq i64 %xtraiter1413, 0
  br i1 %lcmp.mod1414.not, label %.lr.ph.i214.prol.loopexit, label %.lr.ph.i214.prol

.lr.ph.i214.prol:                                 ; preds = %.lr.ph.i214.preheader1198, %.lr.ph.i214.prol
  %.09.i215.prol = phi i64 [ %i.es, %.lr.ph.i214.prol ], [ %.09.i215.ph, %.lr.ph.i214.preheader1198 ]
  %.058.i216.prol = phi ptr [ %i.en, %.lr.ph.i214.prol ], [ %.058.i216.ph, %.lr.ph.i214.preheader1198 ] ; 2 uses
  %.067.i217.prol = phi ptr [ %i.eo, %.lr.ph.i214.prol ], [ %.067.i217.ph, %.lr.ph.i214.preheader1198 ] ; 2 uses
  %prol.iter1415 = phi i64 [ %prol.iter1415.next, %.lr.ph.i214.prol ], [ 0, %.lr.ph.i214.preheader1198 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.058.i216.prol, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.067.i217.prol, i64 8 ; 2 uses
  %i.ep = load double, ptr %.058.i216.prol, align 8, !tbaa !42
  %i.eq = load double, ptr %2, align 8, !tbaa !42
  %i.er = fmul double %i.ep, %i.eq
  store double %i.er, ptr %.067.i217.prol, align 8, !tbaa !42
  %i.es = add nuw nsw i64 %.09.i215.prol, 1       ; 2 uses
  %prol.iter1415.next = add i64 %prol.iter1415, 1 ; 2 uses
  %prol.iter1415.cmp.not = icmp eq i64 %prol.iter1415.next, %xtraiter1413
  br i1 %prol.iter1415.cmp.not, label %.lr.ph.i214.prol.loopexit, label %.lr.ph.i214.prol, !llvm.loop !107

.lr.ph.i214.prol.loopexit:                        ; preds = %.lr.ph.i214.prol, %.lr.ph.i214.preheader1198
  %.09.i215.unr = phi i64 [ %.09.i215.ph, %.lr.ph.i214.preheader1198 ], [ %i.es, %.lr.ph.i214.prol ]
  %.058.i216.unr = phi ptr [ %.058.i216.ph, %.lr.ph.i214.preheader1198 ], [ %i.en, %.lr.ph.i214.prol ]
  %.067.i217.unr = phi ptr [ %.067.i217.ph, %.lr.ph.i214.preheader1198 ], [ %i.eo, %.lr.ph.i214.prol ]
  %i.et = sub nsw i64 %.09.i215.ph, %4
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i214

.lr.ph.i214:                                      ; preds = %.lr.ph.i214.prol.loopexit, %.lr.ph.i214
  %.09.i215 = phi i64 [ %i.fp, %.lr.ph.i214 ], [ %.09.i215.unr, %.lr.ph.i214.prol.loopexit ]
  %.058.i216 = phi ptr [ %i.fk, %.lr.ph.i214 ], [ %.058.i216.unr, %.lr.ph.i214.prol.loopexit ] ; 5 uses
  %.067.i217 = phi ptr [ %i.fl, %.lr.ph.i214 ], [ %.067.i217.unr, %.lr.ph.i214.prol.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.058.i216, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.067.i217, i64 8
  %i.ex = load double, ptr %.058.i216, align 8, !tbaa !42
  %i.ey = load double, ptr %2, align 8, !tbaa !42
  %i.ez = fmul double %i.ex, %i.ey
  store double %i.ez, ptr %.067.i217, align 8, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %.058.i216, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %.067.i217, i64 16
  %i.fc = load double, ptr %i.ev, align 8, !tbaa !42
  %i.fd = load double, ptr %2, align 8, !tbaa !42
  %i.fe = fmul double %i.fc, %i.fd
  store double %i.fe, ptr %i.ew, align 8, !tbaa !42
  %i.ff = getelementptr inbounds nuw i8, ptr %.058.i216, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %.067.i217, i64 24
  %i.fh = load double, ptr %i.fa, align 8, !tbaa !42
  %i.fi = load double, ptr %2, align 8, !tbaa !42
  %i.fj = fmul double %i.fh, %i.fi
  store double %i.fj, ptr %i.fb, align 8, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %.058.i216, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %.067.i217, i64 32
  %i.fm = load double, ptr %i.ff, align 8, !tbaa !42
  %i.fn = load double, ptr %2, align 8, !tbaa !42
  %i.fo = fmul double %i.fm, %i.fn
  store double %i.fo, ptr %i.fg, align 8, !tbaa !42
  %i.fp = add nuw nsw i64 %.09.i215, 4            ; 2 uses
  %exitcond.not.i218.3 = icmp eq i64 %i.fp, %4
  br i1 %exitcond.not.i218.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i214, !llvm.loop !108

bb.f:                                             ; preds = %bb.a
  %i.fq = icmp sgt i64 %4, 0
  br i1 %i.fq, label %.lr.ph.i219.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i219.preheader:                            ; preds = %bb.f
  %min.iters.check1032 = icmp eq i64 %4, 1
  br i1 %min.iters.check1032, label %.lr.ph.i219.preheader1200, label %vector.memcheck1033

vector.memcheck1033:                              ; preds = %.lr.ph.i219.preheader
  %i.fr = shl i64 %4, 3                           ; 2 uses
  %i.fs = getelementptr i8, ptr %3, i64 %i.fr     ; 2 uses
  %i.ft = getelementptr i8, ptr %1, i64 %i.fr
  %bound01034 = icmp ult ptr %3, %i.ft
  %bound01034.a = icmp ult ptr %1, %i.fs
  %found.conflict1036 = and i1 %bound01034, %bound01034.a
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound01037 = icmp ult ptr %3, %8
  %bound11038 = icmp ult ptr %2, %i.fs
  %found.conflict1039 = and i1 %bound01037, %bound11038
  %conflict.rdx1040 = or i1 %found.conflict1036, %found.conflict1039
  br i1 %conflict.rdx1040, label %.lr.ph.i219.preheader1200, label %vector.ph1041

vector.ph1041:                                    ; preds = %vector.memcheck1033
  %n.vec1042 = and i64 %4, 9223372036854775806    ; 4 uses
  %i.fu = shl i64 %n.vec1042, 3                   ; 2 uses
  %i.fv = getelementptr i8, ptr %1, i64 %i.fu
  %i.fw = getelementptr i8, ptr %3, i64 %i.fu
  %i.fx = load double, ptr %2, align 8, !tbaa !42, !alias.scope !243
  %broadcast.splatinsert1048 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat1049 = shufflevector <2 x double> %broadcast.splatinsert1048, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1041
  %index1044 = phi i64 [ 0, %vector.ph1041 ], [ %index.next1050, %vector.body1043 ] ; 2 uses
  %i.fy = shl i64 %index1044, 3                   ; 2 uses
  %next.gep1045 = getelementptr i8, ptr %1, i64 %i.fy
  %next.gep1046 = getelementptr i8, ptr %3, i64 %i.fy
  %wide.load1047 = load <2 x double>, ptr %next.gep1045, align 8, !tbaa !42, !alias.scope !244
  %i.fz = fdiv <2 x double> %wide.load1047, %broadcast.splat1049
  store <2 x double> %i.fz, ptr %next.gep1046, align 8, !tbaa !42, !alias.scope !245, !noalias !246
  %index.next1050 = add nuw i64 %index1044, 2     ; 2 uses
  %i.ga = icmp eq i64 %index.next1050, %n.vec1042
  br i1 %i.ga, label %middle.block1051, label %vector.body1043, !llvm.loop !113

middle.block1051:                                 ; preds = %vector.body1043
  %cmp.n1052 = icmp eq i64 %4, %n.vec1042
  br i1 %cmp.n1052, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i219.preheader1200

.lr.ph.i219.preheader1200:                        ; preds = %vector.memcheck1033, %.lr.ph.i219.preheader, %middle.block1051
  %.09.i220.ph = phi i64 [ 0, %vector.memcheck1033 ], [ 0, %.lr.ph.i219.preheader ], [ %n.vec1042, %middle.block1051 ] ; 4 uses
  %.058.i221.ph = phi ptr [ %1, %vector.memcheck1033 ], [ %1, %.lr.ph.i219.preheader ], [ %i.fv, %middle.block1051 ] ; 2 uses
  %.067.i222.ph = phi ptr [ %3, %vector.memcheck1033 ], [ %3, %.lr.ph.i219.preheader ], [ %i.fw, %middle.block1051 ] ; 2 uses
  %i.gb = sub nsw i64 %4, %.09.i220.ph
  %xtraiter1410 = and i64 %i.gb, 3                ; 2 uses
  %lcmp.mod1411.not = icmp eq i64 %xtraiter1410, 0
  br i1 %lcmp.mod1411.not, label %.lr.ph.i219.prol.loopexit, label %.lr.ph.i219.prol

.lr.ph.i219.prol:                                 ; preds = %.lr.ph.i219.preheader1200, %.lr.ph.i219.prol
  %.09.i220.prol = phi i64 [ %i.gh, %.lr.ph.i219.prol ], [ %.09.i220.ph, %.lr.ph.i219.preheader1200 ]
  %.058.i221.prol = phi ptr [ %i.gc, %.lr.ph.i219.prol ], [ %.058.i221.ph, %.lr.ph.i219.preheader1200 ] ; 2 uses
  %.067.i222.prol = phi ptr [ %i.gd, %.lr.ph.i219.prol ], [ %.067.i222.ph, %.lr.ph.i219.preheader1200 ] ; 2 uses
  %prol.iter1412 = phi i64 [ %prol.iter1412.next, %.lr.ph.i219.prol ], [ 0, %.lr.ph.i219.preheader1200 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.058.i221.prol, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.067.i222.prol, i64 8 ; 2 uses
  %i.ge = load double, ptr %.058.i221.prol, align 8, !tbaa !42
  %i.gf = load double, ptr %2, align 8, !tbaa !42
  %i.gg = fdiv double %i.ge, %i.gf
  store double %i.gg, ptr %.067.i222.prol, align 8, !tbaa !42
  %i.gh = add nuw nsw i64 %.09.i220.prol, 1       ; 2 uses
  %prol.iter1412.next = add i64 %prol.iter1412, 1 ; 2 uses
  %prol.iter1412.cmp.not = icmp eq i64 %prol.iter1412.next, %xtraiter1410
  br i1 %prol.iter1412.cmp.not, label %.lr.ph.i219.prol.loopexit, label %.lr.ph.i219.prol, !llvm.loop !114

.lr.ph.i219.prol.loopexit:                        ; preds = %.lr.ph.i219.prol, %.lr.ph.i219.preheader1200
  %.09.i220.unr = phi i64 [ %.09.i220.ph, %.lr.ph.i219.preheader1200 ], [ %i.gh, %.lr.ph.i219.prol ]
  %.058.i221.unr = phi ptr [ %.058.i221.ph, %.lr.ph.i219.preheader1200 ], [ %i.gc, %.lr.ph.i219.prol ]
  %.067.i222.unr = phi ptr [ %.067.i222.ph, %.lr.ph.i219.preheader1200 ], [ %i.gd, %.lr.ph.i219.prol ]
  %i.gi = sub nsw i64 %.09.i220.ph, %4
  %i.gj = icmp ugt i64 %i.gi, -4
  br i1 %i.gj, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219.prol.loopexit, %.lr.ph.i219
  %.09.i220 = phi i64 [ %i.he, %.lr.ph.i219 ], [ %.09.i220.unr, %.lr.ph.i219.prol.loopexit ]
  %.058.i221 = phi ptr [ %i.gz, %.lr.ph.i219 ], [ %.058.i221.unr, %.lr.ph.i219.prol.loopexit ] ; 5 uses
  %.067.i222 = phi ptr [ %i.ha, %.lr.ph.i219 ], [ %.067.i222.unr, %.lr.ph.i219.prol.loopexit ] ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.058.i221, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.067.i222, i64 8
  %i.gm = load double, ptr %.058.i221, align 8, !tbaa !42
  %i.gn = load double, ptr %2, align 8, !tbaa !42
  %i.go = fdiv double %i.gm, %i.gn
  store double %i.go, ptr %.067.i222, align 8, !tbaa !42
  %i.gp = getelementptr inbounds nuw i8, ptr %.058.i221, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %.067.i222, i64 16
  %i.gr = load double, ptr %i.gk, align 8, !tbaa !42
  %i.gs = load double, ptr %2, align 8, !tbaa !42
  %i.gt = fdiv double %i.gr, %i.gs
  store double %i.gt, ptr %i.gl, align 8, !tbaa !42
  %i.gu = getelementptr inbounds nuw i8, ptr %.058.i221, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %.067.i222, i64 24
  %i.gw = load double, ptr %i.gp, align 8, !tbaa !42
  %i.gx = load double, ptr %2, align 8, !tbaa !42
  %i.gy = fdiv double %i.gw, %i.gx
  store double %i.gy, ptr %i.gq, align 8, !tbaa !42
  %i.gz = getelementptr inbounds nuw i8, ptr %.058.i221, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %.067.i222, i64 32
  %i.hb = load double, ptr %i.gu, align 8, !tbaa !42
  %i.hc = load double, ptr %2, align 8, !tbaa !42
  %i.hd = fdiv double %i.hb, %i.hc
  store double %i.hd, ptr %i.gv, align 8, !tbaa !42
  %i.he = add nuw nsw i64 %.09.i220, 4            ; 2 uses
  %exitcond.not.i223.3 = icmp eq i64 %i.he, %4
  br i1 %exitcond.not.i223.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i219, !llvm.loop !115

bb.g:                                             ; preds = %bb.a
  %i.hf = icmp sgt i64 %4, 0
  br i1 %i.hf, label %.lr.ph.i224.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i224.preheader:                            ; preds = %bb.g
  %min.iters.check1004 = icmp ult i64 %4, 6
  %i.hg = sub i64 %i.a, %i.b
  %diff.check1006 = icmp ugt i64 %i.hg, -32
  %or.cond1184 = or i1 %min.iters.check1004, %diff.check1006
  br i1 %or.cond1184, label %.lr.ph.i224.preheader1202, label %vector.ph1007

vector.ph1007:                                    ; preds = %.lr.ph.i224.preheader
  %n.vec1008 = and i64 %4, 9223372036854775804    ; 4 uses
  %i.hh = shl i64 %n.vec1008, 3                   ; 2 uses
  %i.hi = getelementptr i8, ptr %1, i64 %i.hh
  %i.hj = getelementptr i8, ptr %3, i64 %i.hh
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1007
  %index1010 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1015, %vector.body1009 ] ; 2 uses
  %i.hk = shl i64 %index1010, 3                   ; 2 uses
  %next.gep1011 = getelementptr i8, ptr %1, i64 %i.hk ; 2 uses
  %next.gep1012 = getelementptr i8, ptr %3, i64 %i.hk ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep1011, i64 16
  %wide.load1013 = load <2 x double>, ptr %next.gep1011, align 8, !tbaa !42
  %wide.load1014 = load <2 x double>, ptr %i.hl, align 8, !tbaa !42
  %i.hm = fneg <2 x double> %wide.load1013
  %i.hn = fneg <2 x double> %wide.load1014
  %i.ho = getelementptr i8, ptr %next.gep1012, i64 16
  store <2 x double> %i.hm, ptr %next.gep1012, align 8, !tbaa !42
  store <2 x double> %i.hn, ptr %i.ho, align 8, !tbaa !42
  %index.next1015 = add nuw i64 %index1010, 4     ; 2 uses
  %i.hp = icmp eq i64 %index.next1015, %n.vec1008
  br i1 %i.hp, label %middle.block1016, label %vector.body1009, !llvm.loop !116

middle.block1016:                                 ; preds = %vector.body1009
  %cmp.n1017 = icmp eq i64 %4, %n.vec1008
  br i1 %cmp.n1017, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i224.preheader1202

.lr.ph.i224.preheader1202:                        ; preds = %.lr.ph.i224.preheader, %middle.block1016
  %.09.i225.ph = phi i64 [ 0, %.lr.ph.i224.preheader ], [ %n.vec1008, %middle.block1016 ] ; 3 uses
  %.058.i226.ph = phi ptr [ %1, %.lr.ph.i224.preheader ], [ %i.hi, %middle.block1016 ] ; 2 uses
  %.067.i227.ph = phi ptr [ %3, %.lr.ph.i224.preheader ], [ %i.hj, %middle.block1016 ] ; 2 uses
  %xtraiter1407 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod1408.not = icmp eq i64 %xtraiter1407, 0
  br i1 %lcmp.mod1408.not, label %.lr.ph.i224.prol.loopexit, label %.lr.ph.i224.prol

.lr.ph.i224.prol:                                 ; preds = %.lr.ph.i224.preheader1202, %.lr.ph.i224.prol
  %.09.i225.prol = phi i64 [ %i.hu, %.lr.ph.i224.prol ], [ %.09.i225.ph, %.lr.ph.i224.preheader1202 ]
  %.058.i226.prol = phi ptr [ %i.hq, %.lr.ph.i224.prol ], [ %.058.i226.ph, %.lr.ph.i224.preheader1202 ] ; 2 uses
  %.067.i227.prol = phi ptr [ %i.hr, %.lr.ph.i224.prol ], [ %.067.i227.ph, %.lr.ph.i224.preheader1202 ] ; 2 uses
  %prol.iter1409 = phi i64 [ %prol.iter1409.next, %.lr.ph.i224.prol ], [ 0, %.lr.ph.i224.preheader1202 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.058.i226.prol, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.067.i227.prol, i64 8 ; 2 uses
  %i.hs = load double, ptr %.058.i226.prol, align 8, !tbaa !42
  %i.ht = fneg double %i.hs
  store double %i.ht, ptr %.067.i227.prol, align 8, !tbaa !42
  %i.hu = add nuw nsw i64 %.09.i225.prol, 1       ; 2 uses
  %prol.iter1409.next = add i64 %prol.iter1409, 1 ; 2 uses
  %prol.iter1409.cmp.not = icmp eq i64 %prol.iter1409.next, %xtraiter1407
  br i1 %prol.iter1409.cmp.not, label %.lr.ph.i224.prol.loopexit, label %.lr.ph.i224.prol, !llvm.loop !117

.lr.ph.i224.prol.loopexit:                        ; preds = %.lr.ph.i224.prol, %.lr.ph.i224.preheader1202
  %.09.i225.unr = phi i64 [ %.09.i225.ph, %.lr.ph.i224.preheader1202 ], [ %i.hu, %.lr.ph.i224.prol ]
  %.058.i226.unr = phi ptr [ %.058.i226.ph, %.lr.ph.i224.preheader1202 ], [ %i.hq, %.lr.ph.i224.prol ]
  %.067.i227.unr = phi ptr [ %.067.i227.ph, %.lr.ph.i224.preheader1202 ], [ %i.hr, %.lr.ph.i224.prol ]
  %i.hv = sub nsw i64 %.09.i225.ph, %4
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.lr.ph.i224.prol.loopexit, %.lr.ph.i224
  %.09.i225 = phi i64 [ %i.in, %.lr.ph.i224 ], [ %.09.i225.unr, %.lr.ph.i224.prol.loopexit ]
  %.058.i226 = phi ptr [ %i.ij, %.lr.ph.i224 ], [ %.058.i226.unr, %.lr.ph.i224.prol.loopexit ] ; 5 uses
  %.067.i227 = phi ptr [ %i.ik, %.lr.ph.i224 ], [ %.067.i227.unr, %.lr.ph.i224.prol.loopexit ] ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.058.i226, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %.067.i227, i64 8
  %i.hz = load double, ptr %.058.i226, align 8, !tbaa !42
  %i.ia = fneg double %i.hz
  store double %i.ia, ptr %.067.i227, align 8, !tbaa !42
  %i.ib = getelementptr inbounds nuw i8, ptr %.058.i226, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %.067.i227, i64 16
  %i.id = load double, ptr %i.hx, align 8, !tbaa !42
  %i.ie = fneg double %i.id
  store double %i.ie, ptr %i.hy, align 8, !tbaa !42
  %i.if = getelementptr inbounds nuw i8, ptr %.058.i226, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %.067.i227, i64 24
  %i.ih = load double, ptr %i.ib, align 8, !tbaa !42
  %i.ii = fneg double %i.ih
  store double %i.ii, ptr %i.ic, align 8, !tbaa !42
  %i.ij = getelementptr inbounds nuw i8, ptr %.058.i226, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %.067.i227, i64 32
  %i.il = load double, ptr %i.if, align 8, !tbaa !42
  %i.im = fneg double %i.il
  store double %i.im, ptr %i.ig, align 8, !tbaa !42
  %i.in = add nuw nsw i64 %.09.i225, 4            ; 2 uses
  %exitcond.not.i228.3 = icmp eq i64 %i.in, %4
  br i1 %exitcond.not.i228.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i224, !llvm.loop !118

bb.h:                                             ; preds = %bb.a
  %i.io = icmp sgt i64 %4, 0
  br i1 %i.io, label %.lr.ph.i229, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i229:                                      ; preds = %bb.h, %.lr.ph.i229
end_hunk_0
begin_hunk_1_@_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx:bb.a
  br i1 %i.ts, label %.lr.ph.i299.epil.preheader, label %.lr.ph.i299.preheader.new

.lr.ph.i299.preheader.new:                        ; preds = %.lr.ph.i299.preheader
  %unroll_iter1339 = and i64 %4, 9223372036854775804
  br label %.lr.ph.i299

.lr.ph.i299:                                      ; preds = %.lr.ph.i299, %.lr.ph.i299.preheader.new
  %.058.i301 = phi ptr [ %1, %.lr.ph.i299.preheader.new ], [ %i.ul, %.lr.ph.i299 ] ; 5 uses
  %.067.i302 = phi ptr [ %3, %.lr.ph.i299.preheader.new ], [ %i.um, %.lr.ph.i299 ] ; 5 uses
  %niter1340 = phi i64 [ 0, %.lr.ph.i299.preheader.new ], [ %niter1340.next.3, %.lr.ph.i299 ]
  %i.tt = getelementptr inbounds nuw i8, ptr %.058.i301, i64 8
  %i.tu = getelementptr inbounds nuw i8, ptr %.067.i302, i64 8
  %i.tv = load double, ptr %.058.i301, align 8, !tbaa !42
  %i.tw = load double, ptr %2, align 8, !tbaa !42
  %i.tx = fcmp ole double %i.tv, %i.tw
  %i.ty = uitofp i1 %i.tx to double
  store double %i.ty, ptr %.067.i302, align 8, !tbaa !42
  %i.tz = getelementptr inbounds nuw i8, ptr %.058.i301, i64 16
  %i.ua = getelementptr inbounds nuw i8, ptr %.067.i302, i64 16
  %i.ub = load double, ptr %i.tt, align 8, !tbaa !42
  %i.uc = load double, ptr %2, align 8, !tbaa !42
  %i.ud = fcmp ole double %i.ub, %i.uc
  %i.ue = uitofp i1 %i.ud to double
  store double %i.ue, ptr %i.tu, align 8, !tbaa !42
  %i.uf = getelementptr inbounds nuw i8, ptr %.058.i301, i64 24
  %i.ug = getelementptr inbounds nuw i8, ptr %.067.i302, i64 24
  %i.uh = load double, ptr %i.tz, align 8, !tbaa !42
  %i.ui = load double, ptr %2, align 8, !tbaa !42
  %i.uj = fcmp ole double %i.uh, %i.ui
  %i.uk = uitofp i1 %i.uj to double
  store double %i.uk, ptr %i.ua, align 8, !tbaa !42
  %i.ul = getelementptr inbounds nuw i8, ptr %.058.i301, i64 32 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.067.i302, i64 32 ; 2 uses
  %i.un = load double, ptr %i.uf, align 8, !tbaa !42
  %i.uo = load double, ptr %2, align 8, !tbaa !42
  %i.up = fcmp ole double %i.un, %i.uo
  %i.uq = uitofp i1 %i.up to double
  store double %i.uq, ptr %i.ug, align 8, !tbaa !42
  %niter1340.next.3 = add nuw nsw i64 %niter1340, 4 ; 2 uses
  %niter1340.ncmp.3 = icmp eq i64 %niter1340.next.3, %unroll_iter1339
  br i1 %niter1340.ncmp.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1220.unr-lcssa, label %.lr.ph.i299, !llvm.loop !137

bb.w:                                             ; preds = %bb.a
  %i.ur = icmp sgt i64 %4, 0
  br i1 %i.ur, label %.lr.ph.i304.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i304.preheader:                            ; preds = %bb.w
  %i.us = add nsw i64 %4, -1
  %xtraiter1329 = and i64 %4, 3                   ; 3 uses
  %i.ut = icmp ult i64 %i.us, 3
  br i1 %i.ut, label %.lr.ph.i304.epil.preheader, label %.lr.ph.i304.preheader.new

.lr.ph.i304.preheader.new:                        ; preds = %.lr.ph.i304.preheader
  %unroll_iter1333 = and i64 %4, 9223372036854775804
  br label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.lr.ph.i304, %.lr.ph.i304.preheader.new
  %.058.i306 = phi ptr [ %1, %.lr.ph.i304.preheader.new ], [ %i.vm, %.lr.ph.i304 ] ; 5 uses
  %.067.i307 = phi ptr [ %3, %.lr.ph.i304.preheader.new ], [ %i.vn, %.lr.ph.i304 ] ; 5 uses
  %niter1334 = phi i64 [ 0, %.lr.ph.i304.preheader.new ], [ %niter1334.next.3, %.lr.ph.i304 ]
  %i.uu = getelementptr inbounds nuw i8, ptr %.058.i306, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %.067.i307, i64 8
  %i.uw = load double, ptr %.058.i306, align 8, !tbaa !42
  %i.ux = load double, ptr %2, align 8, !tbaa !42
  %i.uy = fcmp oeq double %i.uw, %i.ux
  %i.uz = uitofp i1 %i.uy to double
  store double %i.uz, ptr %.067.i307, align 8, !tbaa !42
  %i.va = getelementptr inbounds nuw i8, ptr %.058.i306, i64 16
  %i.vb = getelementptr inbounds nuw i8, ptr %.067.i307, i64 16
  %i.vc = load double, ptr %i.uu, align 8, !tbaa !42
  %i.vd = load double, ptr %2, align 8, !tbaa !42
  %i.ve = fcmp oeq double %i.vc, %i.vd
  %i.vf = uitofp i1 %i.ve to double
  store double %i.vf, ptr %i.uv, align 8, !tbaa !42
  %i.vg = getelementptr inbounds nuw i8, ptr %.058.i306, i64 24
  %i.vh = getelementptr inbounds nuw i8, ptr %.067.i307, i64 24
  %i.vi = load double, ptr %i.va, align 8, !tbaa !42
  %i.vj = load double, ptr %2, align 8, !tbaa !42
  %i.vk = fcmp oeq double %i.vi, %i.vj
  %i.vl = uitofp i1 %i.vk to double
  store double %i.vl, ptr %i.vb, align 8, !tbaa !42
  %i.vm = getelementptr inbounds nuw i8, ptr %.058.i306, i64 32 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.067.i307, i64 32 ; 2 uses
  %i.vo = load double, ptr %i.vg, align 8, !tbaa !42
  %i.vp = load double, ptr %2, align 8, !tbaa !42
  %i.vq = fcmp oeq double %i.vo, %i.vp
  %i.vr = uitofp i1 %i.vq to double
  store double %i.vr, ptr %i.vh, align 8, !tbaa !42
  %niter1334.next.3 = add nuw nsw i64 %niter1334, 4 ; 2 uses
  %niter1334.ncmp.3 = icmp eq i64 %niter1334.next.3, %unroll_iter1333
  br i1 %niter1334.ncmp.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1221.unr-lcssa, label %.lr.ph.i304, !llvm.loop !138

bb.x:                                             ; preds = %bb.a
  %i.vs = icmp sgt i64 %4, 0
  br i1 %i.vs, label %.lr.ph.i309.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i309.preheader:                            ; preds = %bb.x
  %i.vt = add nsw i64 %4, -1
  %xtraiter1323 = and i64 %4, 3                   ; 3 uses
  %i.vu = icmp ult i64 %i.vt, 3
  br i1 %i.vu, label %.lr.ph.i309.epil.preheader, label %.lr.ph.i309.preheader.new

.lr.ph.i309.preheader.new:                        ; preds = %.lr.ph.i309.preheader
  %unroll_iter1327 = and i64 %4, 9223372036854775804
  br label %.lr.ph.i309

.lr.ph.i309:                                      ; preds = %.lr.ph.i309, %.lr.ph.i309.preheader.new
  %.058.i311 = phi ptr [ %1, %.lr.ph.i309.preheader.new ], [ %i.wn, %.lr.ph.i309 ] ; 5 uses
  %.067.i312 = phi ptr [ %3, %.lr.ph.i309.preheader.new ], [ %i.wo, %.lr.ph.i309 ] ; 5 uses
  %niter1328 = phi i64 [ 0, %.lr.ph.i309.preheader.new ], [ %niter1328.next.3, %.lr.ph.i309 ]
  %i.vv = getelementptr inbounds nuw i8, ptr %.058.i311, i64 8
  %i.vw = getelementptr inbounds nuw i8, ptr %.067.i312, i64 8
  %i.vx = load double, ptr %.058.i311, align 8, !tbaa !42
  %i.vy = load double, ptr %2, align 8, !tbaa !42
  %i.vz = fcmp une double %i.vx, %i.vy
  %i.wa = uitofp i1 %i.vz to double
  store double %i.wa, ptr %.067.i312, align 8, !tbaa !42
  %i.wb = getelementptr inbounds nuw i8, ptr %.058.i311, i64 16
  %i.wc = getelementptr inbounds nuw i8, ptr %.067.i312, i64 16
  %i.wd = load double, ptr %i.vv, align 8, !tbaa !42
  %i.we = load double, ptr %2, align 8, !tbaa !42
  %i.wf = fcmp une double %i.wd, %i.we
  %i.wg = uitofp i1 %i.wf to double
  store double %i.wg, ptr %i.vw, align 8, !tbaa !42
  %i.wh = getelementptr inbounds nuw i8, ptr %.058.i311, i64 24
  %i.wi = getelementptr inbounds nuw i8, ptr %.067.i312, i64 24
  %i.wj = load double, ptr %i.wb, align 8, !tbaa !42
  %i.wk = load double, ptr %2, align 8, !tbaa !42
  %i.wl = fcmp une double %i.wj, %i.wk
  %i.wm = uitofp i1 %i.wl to double
  store double %i.wm, ptr %i.wc, align 8, !tbaa !42
  %i.wn = getelementptr inbounds nuw i8, ptr %.058.i311, i64 32 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.067.i312, i64 32 ; 2 uses
  %i.wp = load double, ptr %i.wh, align 8, !tbaa !42
  %i.wq = load double, ptr %2, align 8, !tbaa !42
  %i.wr = fcmp une double %i.wp, %i.wq
  %i.ws = uitofp i1 %i.wr to double
  store double %i.ws, ptr %i.wi, align 8, !tbaa !42
  %niter1328.next.3 = add nuw nsw i64 %niter1328, 4 ; 2 uses
  %niter1328.ncmp.3 = icmp eq i64 %niter1328.next.3, %unroll_iter1327
  br i1 %niter1328.ncmp.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1222.unr-lcssa, label %.lr.ph.i309, !llvm.loop !139

bb.y:                                             ; preds = %bb.a
  %i.wt = icmp sgt i64 %4, 0
  br i1 %i.wt, label %.lr.ph.i314.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i314.preheader:                            ; preds = %bb.y
  %i.wu = add nsw i64 %4, -1
  %xtraiter1317 = and i64 %4, 3                   ; 3 uses
  %i.wv = icmp ult i64 %i.wu, 3
  br i1 %i.wv, label %.lr.ph.i314.epil.preheader, label %.lr.ph.i314.preheader.new

.lr.ph.i314.preheader.new:                        ; preds = %.lr.ph.i314.preheader
  %unroll_iter1321 = and i64 %4, 9223372036854775804
  br label %.lr.ph.i314

.lr.ph.i314:                                      ; preds = %.lr.ph.i314, %.lr.ph.i314.preheader.new
  %.058.i316 = phi ptr [ %1, %.lr.ph.i314.preheader.new ], [ %i.xl, %.lr.ph.i314 ] ; 5 uses
  %.067.i317 = phi ptr [ %3, %.lr.ph.i314.preheader.new ], [ %i.xm, %.lr.ph.i314 ] ; 5 uses
  %niter1322 = phi i64 [ 0, %.lr.ph.i314.preheader.new ], [ %niter1322.next.3, %.lr.ph.i314 ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.058.i316, i64 8
  %i.wx = getelementptr inbounds nuw i8, ptr %.067.i317, i64 8
  %i.wy = load double, ptr %.058.i316, align 8, !tbaa !42
  %i.wz = fcmp oeq double %i.wy, 0.000000e+00
  %i.xa = uitofp i1 %i.wz to double
  store double %i.xa, ptr %.067.i317, align 8, !tbaa !42
  %i.xb = getelementptr inbounds nuw i8, ptr %.058.i316, i64 16
  %i.xc = getelementptr inbounds nuw i8, ptr %.067.i317, i64 16
  %i.xd = load double, ptr %i.ww, align 8, !tbaa !42
  %i.xe = fcmp oeq double %i.xd, 0.000000e+00
  %i.xf = uitofp i1 %i.xe to double
  store double %i.xf, ptr %i.wx, align 8, !tbaa !42
  %i.xg = getelementptr inbounds nuw i8, ptr %.058.i316, i64 24
  %i.xh = getelementptr inbounds nuw i8, ptr %.067.i317, i64 24
  %i.xi = load double, ptr %i.xb, align 8, !tbaa !42
  %i.xj = fcmp oeq double %i.xi, 0.000000e+00
  %i.xk = uitofp i1 %i.xj to double
  store double %i.xk, ptr %i.xc, align 8, !tbaa !42
  %i.xl = getelementptr inbounds nuw i8, ptr %.058.i316, i64 32 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.067.i317, i64 32 ; 2 uses
  %i.xn = load double, ptr %i.xg, align 8, !tbaa !42
  %i.xo = fcmp oeq double %i.xn, 0.000000e+00
  %i.xp = uitofp i1 %i.xo to double
  store double %i.xp, ptr %i.xh, align 8, !tbaa !42
  %niter1322.next.3 = add nuw nsw i64 %niter1322, 4 ; 2 uses
  %niter1322.ncmp.3 = icmp eq i64 %niter1322.next.3, %unroll_iter1321
  br i1 %niter1322.ncmp.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit.loopexit1223.unr-lcssa, label %.lr.ph.i314, !llvm.loop !140

bb.z:                                             ; preds = %bb.a
  %i.xq = icmp sgt i64 %4, 0
  br i1 %i.xq, label %.lr.ph.i319.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i319.preheader:                            ; preds = %bb.z
  %min.iters.check936 = icmp ult i64 %4, 8
  br i1 %min.iters.check936, label %.lr.ph.i319.preheader1224, label %vector.memcheck937

vector.memcheck937:                               ; preds = %.lr.ph.i319.preheader
  %i.xr = shl i64 %4, 3                           ; 2 uses
  %i.xs = getelementptr i8, ptr %3, i64 %i.xr     ; 2 uses
  %i.xt = getelementptr i8, ptr %1, i64 %i.xr
  %bound0938 = icmp ult ptr %3, %i.xt
  %bound0938.a = icmp ult ptr %1, %i.xs
  %found.conflict940 = and i1 %bound0938, %bound0938.a
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0941 = icmp ult ptr %3, %9
  %bound1942 = icmp ult ptr %2, %i.xs
  %found.conflict943 = and i1 %bound0941, %bound1942
  %conflict.rdx944 = or i1 %found.conflict940, %found.conflict943
  br i1 %conflict.rdx944, label %.lr.ph.i319.preheader1224, label %vector.ph945

vector.ph945:                                     ; preds = %vector.memcheck937
  %n.vec946 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.xu = shl i64 %n.vec946, 3                    ; 2 uses
  %i.xv = getelementptr i8, ptr %1, i64 %i.xu
  %i.xw = getelementptr i8, ptr %3, i64 %i.xu
  %i.xx = load double, ptr %2, align 8, !alias.scope !247
  %i.xy = fcmp une double %i.xx, 0.000000e+00
  %broadcast.splatinsert947 = insertelement <2 x i1> poison, i1 %i.xy, i64 0
  %broadcast.splat948 = shufflevector <2 x i1> %broadcast.splatinsert947, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.xz = uitofp <2 x i1> %broadcast.splat948 to <2 x double> ; 2 uses
  br label %vector.body949

vector.body949:                                   ; preds = %vector.body949, %vector.ph945
  %index950 = phi i64 [ 0, %vector.ph945 ], [ %index.next955, %vector.body949 ] ; 2 uses
  %i.ya = shl i64 %index950, 3                    ; 2 uses
  %next.gep951 = getelementptr i8, ptr %1, i64 %i.ya ; 2 uses
  %next.gep952 = getelementptr i8, ptr %3, i64 %i.ya ; 2 uses
  %i.yb = getelementptr i8, ptr %next.gep951, i64 16
  %wide.load953 = load <2 x double>, ptr %next.gep951, align 8, !tbaa !42, !alias.scope !248
  %wide.load954 = load <2 x double>, ptr %i.yb, align 8, !tbaa !42, !alias.scope !248
  %i.yc = fcmp une <2 x double> %wide.load953, zeroinitializer
  %i.yd = fcmp une <2 x double> %wide.load954, zeroinitializer
  %i.ye = select <2 x i1> %i.yc, <2 x double> %i.xz, <2 x double> zeroinitializer
  %i.yf = select <2 x i1> %i.yd, <2 x double> %i.xz, <2 x double> zeroinitializer
  %i.yg = getelementptr i8, ptr %next.gep952, i64 16
  store <2 x double> %i.ye, ptr %next.gep952, align 8, !tbaa !42, !alias.scope !249, !noalias !250
  store <2 x double> %i.yf, ptr %i.yg, align 8, !tbaa !42, !alias.scope !249, !noalias !250
  %index.next955 = add nuw i64 %index950, 4       ; 2 uses
  %i.yh = icmp eq i64 %index.next955, %n.vec946
  br i1 %i.yh, label %middle.block956, label %vector.body949, !llvm.loop !145

middle.block956:                                  ; preds = %vector.body949
  %cmp.n957 = icmp eq i64 %4, %n.vec946
  br i1 %cmp.n957, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i319.preheader1224

.lr.ph.i319.preheader1224:                        ; preds = %vector.memcheck937, %.lr.ph.i319.preheader, %middle.block956
  %.09.i320.ph = phi i64 [ 0, %vector.memcheck937 ], [ 0, %.lr.ph.i319.preheader ], [ %n.vec946, %middle.block956 ] ; 3 uses
  %.058.i321.ph = phi ptr [ %1, %vector.memcheck937 ], [ %1, %.lr.ph.i319.preheader ], [ %i.xv, %middle.block956 ] ; 3 uses
  %.067.i322.ph = phi ptr [ %3, %vector.memcheck937 ], [ %3, %.lr.ph.i319.preheader ], [ %i.xw, %middle.block956 ] ; 3 uses
  %.neg1429 = or disjoint i64 %.09.i320.ph, 1
  %xtraiter1314 = and i64 %4, 1
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1314, 0
  br i1 %lcmp.mod1315.not, label %.lr.ph.i319.prol.loopexit, label %.lr.ph.i319.prol

.lr.ph.i319.prol:                                 ; preds = %.lr.ph.i319.preheader1224
  %i.yi = getelementptr inbounds nuw i8, ptr %.058.i321.ph, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %.067.i322.ph, i64 8
  %i.yk = load double, ptr %.058.i321.ph, align 8, !tbaa !42
  %i.yl = fcmp une double %i.yk, 0.000000e+00
  %i.ym = load double, ptr %2, align 8
  %i.yn = fcmp une double %i.ym, 0.000000e+00
  %i.yo = uitofp i1 %i.yn to double
  %i.yp = select i1 %i.yl, double %i.yo, double 0.000000e+00
  store double %i.yp, ptr %.067.i322.ph, align 8, !tbaa !42
  %i.yq = or disjoint i64 %.09.i320.ph, 1
  br label %.lr.ph.i319.prol.loopexit

.lr.ph.i319.prol.loopexit:                        ; preds = %.lr.ph.i319.prol, %.lr.ph.i319.preheader1224
  %.09.i320.unr = phi i64 [ %.09.i320.ph, %.lr.ph.i319.preheader1224 ], [ %i.yq, %.lr.ph.i319.prol ]
  %.058.i321.unr = phi ptr [ %.058.i321.ph, %.lr.ph.i319.preheader1224 ], [ %i.yi, %.lr.ph.i319.prol ]
  %.067.i322.unr = phi ptr [ %.067.i322.ph, %.lr.ph.i319.preheader1224 ], [ %i.yj, %.lr.ph.i319.prol ]
  %i.yr = icmp eq i64 %4, %.neg1429
  br i1 %i.yr, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i319

.lr.ph.i319:                                      ; preds = %.lr.ph.i319.prol.loopexit, %.lr.ph.i319
  %.09.i320 = phi i64 [ %i.zi, %.lr.ph.i319 ], [ %.09.i320.unr, %.lr.ph.i319.prol.loopexit ]
  %.058.i321 = phi ptr [ %i.za, %.lr.ph.i319 ], [ %.058.i321.unr, %.lr.ph.i319.prol.loopexit ] ; 3 uses
  %.067.i322 = phi ptr [ %i.zb, %.lr.ph.i319 ], [ %.067.i322.unr, %.lr.ph.i319.prol.loopexit ] ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.058.i321, i64 8
  %i.yt = getelementptr inbounds nuw i8, ptr %.067.i322, i64 8
  %i.yu = load double, ptr %.058.i321, align 8, !tbaa !42
  %i.yv = fcmp une double %i.yu, 0.000000e+00
  %i.yw = load double, ptr %2, align 8
  %i.yx = fcmp une double %i.yw, 0.000000e+00
  %i.yy = uitofp i1 %i.yx to double
  %i.yz = select i1 %i.yv, double %i.yy, double 0.000000e+00
  store double %i.yz, ptr %.067.i322, align 8, !tbaa !42
  %i.za = getelementptr inbounds nuw i8, ptr %.058.i321, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %.067.i322, i64 16
  %i.zc = load double, ptr %i.ys, align 8, !tbaa !42
  %i.zd = fcmp une double %i.zc, 0.000000e+00
  %i.ze = load double, ptr %2, align 8
  %i.zf = fcmp une double %i.ze, 0.000000e+00
  %i.zg = uitofp i1 %i.zf to double
  %i.zh = select i1 %i.zd, double %i.zg, double 0.000000e+00
  store double %i.zh, ptr %i.yt, align 8, !tbaa !42
  %i.zi = add nuw nsw i64 %.09.i320, 2            ; 2 uses
  %exitcond.not.i323.1 = icmp eq i64 %i.zi, %4
  br i1 %exitcond.not.i323.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i319, !llvm.loop !146

bb.aa:                                            ; preds = %bb.a
  %i.zj = icmp sgt i64 %4, 0
  br i1 %i.zj, label %.lr.ph.i324.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i324.preheader:                            ; preds = %bb.aa
  %min.iters.check900 = icmp ult i64 %4, 8
  br i1 %min.iters.check900, label %.lr.ph.i324.preheader1226, label %vector.memcheck901

vector.memcheck901:                               ; preds = %.lr.ph.i324.preheader
  %i.zk = shl i64 %4, 3                           ; 2 uses
  %i.zl = getelementptr i8, ptr %3, i64 %i.zk     ; 2 uses
  %i.zm = getelementptr i8, ptr %1, i64 %i.zk
  %bound0902 = icmp ult ptr %3, %i.zm
  %bound0902.a = icmp ult ptr %1, %i.zl
  %found.conflict904 = and i1 %bound0902, %bound0902.a
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0905 = icmp ult ptr %3, %10
  %bound1906 = icmp ult ptr %2, %i.zl
  %found.conflict907 = and i1 %bound0905, %bound1906
  %conflict.rdx908 = or i1 %found.conflict904, %found.conflict907
  br i1 %conflict.rdx908, label %.lr.ph.i324.preheader1226, label %vector.ph909

vector.ph909:                                     ; preds = %vector.memcheck901
  %n.vec910 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.zn = shl i64 %n.vec910, 3                    ; 2 uses
  %i.zo = getelementptr i8, ptr %1, i64 %i.zn
  %i.zp = getelementptr i8, ptr %3, i64 %i.zn
  %i.zq = load double, ptr %2, align 8, !alias.scope !251
  %i.zr = fcmp une double %i.zq, 0.000000e+00
  %broadcast.splatinsert911 = insertelement <2 x i1> poison, i1 %i.zr, i64 0
  %broadcast.splat912 = shufflevector <2 x i1> %broadcast.splatinsert911, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.zs = uitofp <2 x i1> %broadcast.splat912 to <2 x double> ; 2 uses
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph909
  %index914 = phi i64 [ 0, %vector.ph909 ], [ %index.next919, %vector.body913 ] ; 2 uses
  %i.zt = shl i64 %index914, 3                    ; 2 uses
  %next.gep915 = getelementptr i8, ptr %1, i64 %i.zt ; 2 uses
  %next.gep916 = getelementptr i8, ptr %3, i64 %i.zt ; 2 uses
  %i.zu = getelementptr i8, ptr %next.gep915, i64 16
  %wide.load917 = load <2 x double>, ptr %next.gep915, align 8, !tbaa !42, !alias.scope !252
  %wide.load918 = load <2 x double>, ptr %i.zu, align 8, !tbaa !42, !alias.scope !252
  %i.zv = fcmp une <2 x double> %wide.load917, zeroinitializer
  %i.zw = fcmp une <2 x double> %wide.load918, zeroinitializer
  %i.zx = select <2 x i1> %i.zv, <2 x double> splat (double 1.000000e+00), <2 x double> %i.zs
  %i.zy = select <2 x i1> %i.zw, <2 x double> splat (double 1.000000e+00), <2 x double> %i.zs
  %i.zz = getelementptr i8, ptr %next.gep916, i64 16
  store <2 x double> %i.zx, ptr %next.gep916, align 8, !tbaa !42, !alias.scope !253, !noalias !254
  store <2 x double> %i.zy, ptr %i.zz, align 8, !tbaa !42, !alias.scope !253, !noalias !254
  %index.next919 = add nuw i64 %index914, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next919, %n.vec910
  br i1 %i.aaa, label %middle.block920, label %vector.body913, !llvm.loop !151

middle.block920:                                  ; preds = %vector.body913
  %cmp.n921 = icmp eq i64 %4, %n.vec910
  br i1 %cmp.n921, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i324.preheader1226

.lr.ph.i324.preheader1226:                        ; preds = %vector.memcheck901, %.lr.ph.i324.preheader, %middle.block920
  %.09.i325.ph = phi i64 [ 0, %vector.memcheck901 ], [ 0, %.lr.ph.i324.preheader ], [ %n.vec910, %middle.block920 ] ; 3 uses
  %.058.i326.ph = phi ptr [ %1, %vector.memcheck901 ], [ %1, %.lr.ph.i324.preheader ], [ %i.zo, %middle.block920 ] ; 3 uses
  %.067.i327.ph = phi ptr [ %3, %vector.memcheck901 ], [ %3, %.lr.ph.i324.preheader ], [ %i.zp, %middle.block920 ] ; 3 uses
  %.neg1428 = or disjoint i64 %.09.i325.ph, 1
  %xtraiter1311 = and i64 %4, 1
  %lcmp.mod1312.not = icmp eq i64 %xtraiter1311, 0
  br i1 %lcmp.mod1312.not, label %.lr.ph.i324.prol.loopexit, label %.lr.ph.i324.prol

.lr.ph.i324.prol:                                 ; preds = %.lr.ph.i324.preheader1226
  %i.aab = getelementptr inbounds nuw i8, ptr %.058.i326.ph, i64 8
  %i.aac = getelementptr inbounds nuw i8, ptr %.067.i327.ph, i64 8
  %i.aad = load double, ptr %.058.i326.ph, align 8, !tbaa !42
  %i.aae = fcmp une double %i.aad, 0.000000e+00
  %i.aaf = load double, ptr %2, align 8
  %i.aag = fcmp une double %i.aaf, 0.000000e+00
  %i.aah = uitofp i1 %i.aag to double
  %i.aai = select i1 %i.aae, double 1.000000e+00, double %i.aah
  store double %i.aai, ptr %.067.i327.ph, align 8, !tbaa !42
  %i.aaj = or disjoint i64 %.09.i325.ph, 1
  br label %.lr.ph.i324.prol.loopexit

.lr.ph.i324.prol.loopexit:                        ; preds = %.lr.ph.i324.prol, %.lr.ph.i324.preheader1226
  %.09.i325.unr = phi i64 [ %.09.i325.ph, %.lr.ph.i324.preheader1226 ], [ %i.aaj, %.lr.ph.i324.prol ]
  %.058.i326.unr = phi ptr [ %.058.i326.ph, %.lr.ph.i324.preheader1226 ], [ %i.aab, %.lr.ph.i324.prol ]
  %.067.i327.unr = phi ptr [ %.067.i327.ph, %.lr.ph.i324.preheader1226 ], [ %i.aac, %.lr.ph.i324.prol ]
  %i.aak = icmp eq i64 %4, %.neg1428
  br i1 %i.aak, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %.lr.ph.i324.prol.loopexit, %.lr.ph.i324
  %.09.i325 = phi i64 [ %i.abb, %.lr.ph.i324 ], [ %.09.i325.unr, %.lr.ph.i324.prol.loopexit ]
  %.058.i326 = phi ptr [ %i.aat, %.lr.ph.i324 ], [ %.058.i326.unr, %.lr.ph.i324.prol.loopexit ] ; 3 uses
  %.067.i327 = phi ptr [ %i.aau, %.lr.ph.i324 ], [ %.067.i327.unr, %.lr.ph.i324.prol.loopexit ] ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.058.i326, i64 8
  %i.aam = getelementptr inbounds nuw i8, ptr %.067.i327, i64 8
  %i.aan = load double, ptr %.058.i326, align 8, !tbaa !42
  %i.aao = fcmp une double %i.aan, 0.000000e+00
  %i.aap = load double, ptr %2, align 8
  %i.aaq = fcmp une double %i.aap, 0.000000e+00
  %i.aar = uitofp i1 %i.aaq to double
  %i.aas = select i1 %i.aao, double 1.000000e+00, double %i.aar
  store double %i.aas, ptr %.067.i327, align 8, !tbaa !42
  %i.aat = getelementptr inbounds nuw i8, ptr %.058.i326, i64 16
  %i.aau = getelementptr inbounds nuw i8, ptr %.067.i327, i64 16
  %i.aav = load double, ptr %i.aal, align 8, !tbaa !42
  %i.aaw = fcmp une double %i.aav, 0.000000e+00
  %i.aax = load double, ptr %2, align 8
  %i.aay = fcmp une double %i.aax, 0.000000e+00
  %i.aaz = uitofp i1 %i.aay to double
  %i.aba = select i1 %i.aaw, double 1.000000e+00, double %i.aaz
  store double %i.aba, ptr %i.aam, align 8, !tbaa !42
  %i.abb = add nuw nsw i64 %.09.i325, 2           ; 2 uses
  %exitcond.not.i328.1 = icmp eq i64 %i.abb, %4
  br i1 %exitcond.not.i328.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i324, !llvm.loop !152

bb.ab:                                            ; preds = %bb.a
  %i.abc = icmp sgt i64 %4, 0
  br i1 %i.abc, label %.lr.ph.i329.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i329.preheader:                            ; preds = %bb.ab
  %min.iters.check864 = icmp ult i64 %4, 10
  br i1 %min.iters.check864, label %.lr.ph.i329.preheader1228, label %vector.memcheck865

vector.memcheck865:                               ; preds = %.lr.ph.i329.preheader
  %i.abd = shl i64 %4, 3                          ; 2 uses
  %i.abe = getelementptr i8, ptr %3, i64 %i.abd   ; 2 uses
  %i.abf = getelementptr i8, ptr %1, i64 %i.abd
  %bound0866 = icmp ult ptr %3, %i.abf
  %bound0866.a = icmp ult ptr %1, %i.abe
  %found.conflict868 = and i1 %bound0866, %bound0866.a
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0869 = icmp ult ptr %3, %11
  %bound1870 = icmp ult ptr %2, %i.abe
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx872 = or i1 %found.conflict868, %found.conflict871
  br i1 %conflict.rdx872, label %.lr.ph.i329.preheader1228, label %vector.ph873

vector.ph873:                                     ; preds = %vector.memcheck865
  %n.vec874 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.abg = shl i64 %n.vec874, 3                   ; 2 uses
  %i.abh = getelementptr i8, ptr %1, i64 %i.abg
  %i.abi = getelementptr i8, ptr %3, i64 %i.abg
  %i.abj = load double, ptr %2, align 8, !tbaa !42, !alias.scope !255
  %broadcast.splatinsert881 = insertelement <2 x double> poison, double %i.abj, i64 0
  %broadcast.splat882 = shufflevector <2 x double> %broadcast.splatinsert881, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body875

vector.body875:                                   ; preds = %vector.body875, %vector.ph873
  %index876 = phi i64 [ 0, %vector.ph873 ], [ %index.next883, %vector.body875 ] ; 2 uses
  %i.abk = shl i64 %index876, 3                   ; 2 uses
  %next.gep877 = getelementptr i8, ptr %1, i64 %i.abk ; 2 uses
  %next.gep878 = getelementptr i8, ptr %3, i64 %i.abk ; 2 uses
  %i.abl = getelementptr i8, ptr %next.gep877, i64 16
  %wide.load879 = load <2 x double>, ptr %next.gep877, align 8, !tbaa !42, !alias.scope !256
  %wide.load880 = load <2 x double>, ptr %i.abl, align 8, !tbaa !42, !alias.scope !256
  %i.abm = fcmp oeq <2 x double> %wide.load879, zeroinitializer
  %i.abn = fcmp oeq <2 x double> %wide.load880, zeroinitializer
  %i.abo = select <2 x i1> %i.abm, <2 x double> zeroinitializer, <2 x double> %broadcast.splat882
  %i.abp = select <2 x i1> %i.abn, <2 x double> zeroinitializer, <2 x double> %broadcast.splat882
  %i.abq = getelementptr i8, ptr %next.gep878, i64 16
  store <2 x double> %i.abo, ptr %next.gep878, align 8, !tbaa !42, !alias.scope !257, !noalias !258
  store <2 x double> %i.abp, ptr %i.abq, align 8, !tbaa !42, !alias.scope !257, !noalias !258
  %index.next883 = add nuw i64 %index876, 4       ; 2 uses
  %i.abr = icmp eq i64 %index.next883, %n.vec874
  br i1 %i.abr, label %middle.block884, label %vector.body875, !llvm.loop !157

middle.block884:                                  ; preds = %vector.body875
  %cmp.n885 = icmp eq i64 %4, %n.vec874
  br i1 %cmp.n885, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i329.preheader1228

.lr.ph.i329.preheader1228:                        ; preds = %vector.memcheck865, %.lr.ph.i329.preheader, %middle.block884
  %.09.i330.ph = phi i64 [ 0, %vector.memcheck865 ], [ 0, %.lr.ph.i329.preheader ], [ %n.vec874, %middle.block884 ] ; 3 uses
  %.058.i331.ph = phi ptr [ %1, %vector.memcheck865 ], [ %1, %.lr.ph.i329.preheader ], [ %i.abh, %middle.block884 ] ; 3 uses
  %.067.i332.ph = phi ptr [ %3, %vector.memcheck865 ], [ %3, %.lr.ph.i329.preheader ], [ %i.abi, %middle.block884 ] ; 3 uses
  %.neg1427 = or disjoint i64 %.09.i330.ph, 1
  %xtraiter1308 = and i64 %4, 1
  %lcmp.mod1309.not = icmp eq i64 %xtraiter1308, 0
  br i1 %lcmp.mod1309.not, label %.lr.ph.i329.prol.loopexit, label %.lr.ph.i329.prol

.lr.ph.i329.prol:                                 ; preds = %.lr.ph.i329.preheader1228
  %i.abs = getelementptr inbounds nuw i8, ptr %.058.i331.ph, i64 8
  %i.abt = getelementptr inbounds nuw i8, ptr %.067.i332.ph, i64 8
  %i.abu = load double, ptr %.058.i331.ph, align 8, !tbaa !42
  %i.abv = load double, ptr %2, align 8, !tbaa !42
  %i.abw = fcmp oeq double %i.abu, 0.000000e+00
  %i.abx = select i1 %i.abw, double 0.000000e+00, double %i.abv
  store double %i.abx, ptr %.067.i332.ph, align 8, !tbaa !42
  %i.aby = or disjoint i64 %.09.i330.ph, 1
  br label %.lr.ph.i329.prol.loopexit

.lr.ph.i329.prol.loopexit:                        ; preds = %.lr.ph.i329.prol, %.lr.ph.i329.preheader1228
  %.09.i330.unr = phi i64 [ %.09.i330.ph, %.lr.ph.i329.preheader1228 ], [ %i.aby, %.lr.ph.i329.prol ]
  %.058.i331.unr = phi ptr [ %.058.i331.ph, %.lr.ph.i329.preheader1228 ], [ %i.abs, %.lr.ph.i329.prol ]
  %.067.i332.unr = phi ptr [ %.067.i332.ph, %.lr.ph.i329.preheader1228 ], [ %i.abt, %.lr.ph.i329.prol ]
  %i.abz = icmp eq i64 %4, %.neg1427
  br i1 %i.abz, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i329

.lr.ph.i329:                                      ; preds = %.lr.ph.i329.prol.loopexit, %.lr.ph.i329
  %.09.i330 = phi i64 [ %i.acm, %.lr.ph.i329 ], [ %.09.i330.unr, %.lr.ph.i329.prol.loopexit ]
  %.058.i331 = phi ptr [ %i.acg, %.lr.ph.i329 ], [ %.058.i331.unr, %.lr.ph.i329.prol.loopexit ] ; 3 uses
  %.067.i332 = phi ptr [ %i.ach, %.lr.ph.i329 ], [ %.067.i332.unr, %.lr.ph.i329.prol.loopexit ] ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.058.i331, i64 8
  %i.acb = getelementptr inbounds nuw i8, ptr %.067.i332, i64 8
  %i.acc = load double, ptr %.058.i331, align 8, !tbaa !42
  %i.acd = load double, ptr %2, align 8, !tbaa !42
  %i.ace = fcmp oeq double %i.acc, 0.000000e+00
  %i.acf = select i1 %i.ace, double 0.000000e+00, double %i.acd
  store double %i.acf, ptr %.067.i332, align 8, !tbaa !42
  %i.acg = getelementptr inbounds nuw i8, ptr %.058.i331, i64 16
  %i.ach = getelementptr inbounds nuw i8, ptr %.067.i332, i64 16
  %i.aci = load double, ptr %i.aca, align 8, !tbaa !42
  %i.acj = load double, ptr %2, align 8, !tbaa !42
  %i.ack = fcmp oeq double %i.aci, 0.000000e+00
  %i.acl = select i1 %i.ack, double 0.000000e+00, double %i.acj
  store double %i.acl, ptr %i.acb, align 8, !tbaa !42
  %i.acm = add nuw nsw i64 %.09.i330, 2           ; 2 uses
  %exitcond.not.i333.1 = icmp eq i64 %i.acm, %4
  br i1 %exitcond.not.i333.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i329, !llvm.loop !158

bb.ac:                                            ; preds = %bb.a
  %i.acn = icmp sgt i64 %4, 0
  br i1 %i.acn, label %.lr.ph.i334.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i334.preheader:                            ; preds = %bb.ac
  %min.iters.check837 = icmp ult i64 %4, 8
  %i.aco = sub i64 %i.a, %i.b
  %diff.check839 = icmp ugt i64 %i.aco, -16
  %or.cond1187 = or i1 %min.iters.check837, %diff.check839
  br i1 %or.cond1187, label %.lr.ph.i334.preheader1230, label %vector.ph840

vector.ph840:                                     ; preds = %.lr.ph.i334.preheader
  %n.vec841 = and i64 %4, 9223372036854775806     ; 4 uses
  %i.acp = shl i64 %n.vec841, 3                   ; 2 uses
  %i.acq = getelementptr i8, ptr %1, i64 %i.acp
  %i.acr = getelementptr i8, ptr %3, i64 %i.acp
  br label %vector.body842

vector.body842:                                   ; preds = %vector.body842, %vector.ph840
  %index843 = phi i64 [ 0, %vector.ph840 ], [ %index.next847, %vector.body842 ] ; 2 uses
  %i.acs = shl i64 %index843, 3                   ; 2 uses
  %next.gep844 = getelementptr i8, ptr %1, i64 %i.acs
  %next.gep845 = getelementptr i8, ptr %3, i64 %i.acs
  %wide.load846 = load <2 x double>, ptr %next.gep844, align 8, !tbaa !42
  %i.act = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %wide.load846)
  store <2 x double> %i.act, ptr %next.gep845, align 8, !tbaa !42
  %index.next847 = add nuw i64 %index843, 2       ; 2 uses
  %i.acu = icmp eq i64 %index.next847, %n.vec841
  br i1 %i.acu, label %middle.block848, label %vector.body842, !llvm.loop !159

middle.block848:                                  ; preds = %vector.body842
  %cmp.n849 = icmp eq i64 %4, %n.vec841
  br i1 %cmp.n849, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i334.preheader1230

.lr.ph.i334.preheader1230:                        ; preds = %.lr.ph.i334.preheader, %middle.block848
  %.09.i335.ph = phi i64 [ 0, %.lr.ph.i334.preheader ], [ %n.vec841, %middle.block848 ] ; 4 uses
  %.058.i336.ph = phi ptr [ %1, %.lr.ph.i334.preheader ], [ %i.acq, %middle.block848 ] ; 2 uses
  %.067.i337.ph = phi ptr [ %3, %.lr.ph.i334.preheader ], [ %i.acr, %middle.block848 ] ; 2 uses
  %i.acv = sub nsw i64 %4, %.09.i335.ph
  %xtraiter1305 = and i64 %i.acv, 3               ; 2 uses
  %lcmp.mod1306.not = icmp eq i64 %xtraiter1305, 0
  br i1 %lcmp.mod1306.not, label %.lr.ph.i334.prol.loopexit, label %.lr.ph.i334.prol

.lr.ph.i334.prol:                                 ; preds = %.lr.ph.i334.preheader1230, %.lr.ph.i334.prol
  %.09.i335.prol = phi i64 [ %i.ada, %.lr.ph.i334.prol ], [ %.09.i335.ph, %.lr.ph.i334.preheader1230 ]
  %.058.i336.prol = phi ptr [ %i.acw, %.lr.ph.i334.prol ], [ %.058.i336.ph, %.lr.ph.i334.preheader1230 ] ; 2 uses
  %.067.i337.prol = phi ptr [ %i.acx, %.lr.ph.i334.prol ], [ %.067.i337.ph, %.lr.ph.i334.preheader1230 ] ; 2 uses
  %prol.iter1307 = phi i64 [ %prol.iter1307.next, %.lr.ph.i334.prol ], [ 0, %.lr.ph.i334.preheader1230 ]
  %i.acw = getelementptr inbounds nuw i8, ptr %.058.i336.prol, i64 8 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.067.i337.prol, i64 8 ; 2 uses
  %i.acy = load double, ptr %.058.i336.prol, align 8, !tbaa !42
  %i.acz = tail call double @llvm.floor.f64(double %i.acy)
  store double %i.acz, ptr %.067.i337.prol, align 8, !tbaa !42
  %i.ada = add nuw nsw i64 %.09.i335.prol, 1      ; 2 uses
  %prol.iter1307.next = add i64 %prol.iter1307, 1 ; 2 uses
  %prol.iter1307.cmp.not = icmp eq i64 %prol.iter1307.next, %xtraiter1305
  br i1 %prol.iter1307.cmp.not, label %.lr.ph.i334.prol.loopexit, label %.lr.ph.i334.prol, !llvm.loop !160

.lr.ph.i334.prol.loopexit:                        ; preds = %.lr.ph.i334.prol, %.lr.ph.i334.preheader1230
  %.09.i335.unr = phi i64 [ %.09.i335.ph, %.lr.ph.i334.preheader1230 ], [ %i.ada, %.lr.ph.i334.prol ]
  %.058.i336.unr = phi ptr [ %.058.i336.ph, %.lr.ph.i334.preheader1230 ], [ %i.acw, %.lr.ph.i334.prol ]
  %.067.i337.unr = phi ptr [ %.067.i337.ph, %.lr.ph.i334.preheader1230 ], [ %i.acx, %.lr.ph.i334.prol ]
  %i.adb = sub nsw i64 %.09.i335.ph, %4
  %i.adc = icmp ugt i64 %i.adb, -4
  br i1 %i.adc, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i334

.lr.ph.i334:                                      ; preds = %.lr.ph.i334.prol.loopexit, %.lr.ph.i334
  %.09.i335 = phi i64 [ %i.adt, %.lr.ph.i334 ], [ %.09.i335.unr, %.lr.ph.i334.prol.loopexit ]
  %.058.i336 = phi ptr [ %i.adp, %.lr.ph.i334 ], [ %.058.i336.unr, %.lr.ph.i334.prol.loopexit ] ; 5 uses
  %.067.i337 = phi ptr [ %i.adq, %.lr.ph.i334 ], [ %.067.i337.unr, %.lr.ph.i334.prol.loopexit ] ; 5 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.058.i336, i64 8
  %i.ade = getelementptr inbounds nuw i8, ptr %.067.i337, i64 8
  %i.adf = load double, ptr %.058.i336, align 8, !tbaa !42
  %i.adg = tail call double @llvm.floor.f64(double %i.adf)
  store double %i.adg, ptr %.067.i337, align 8, !tbaa !42
  %i.adh = getelementptr inbounds nuw i8, ptr %.058.i336, i64 16
  %i.adi = getelementptr inbounds nuw i8, ptr %.067.i337, i64 16
  %i.adj = load double, ptr %i.add, align 8, !tbaa !42
  %i.adk = tail call double @llvm.floor.f64(double %i.adj)
  store double %i.adk, ptr %i.ade, align 8, !tbaa !42
  %i.adl = getelementptr inbounds nuw i8, ptr %.058.i336, i64 24
  %i.adm = getelementptr inbounds nuw i8, ptr %.067.i337, i64 24
  %i.adn = load double, ptr %i.adh, align 8, !tbaa !42
  %i.ado = tail call double @llvm.floor.f64(double %i.adn)
  store double %i.ado, ptr %i.adi, align 8, !tbaa !42
  %i.adp = getelementptr inbounds nuw i8, ptr %.058.i336, i64 32
  %i.adq = getelementptr inbounds nuw i8, ptr %.067.i337, i64 32
  %i.adr = load double, ptr %i.adl, align 8, !tbaa !42
  %i.ads = tail call double @llvm.floor.f64(double %i.adr)
  store double %i.ads, ptr %i.adm, align 8, !tbaa !42
  %i.adt = add nuw nsw i64 %.09.i335, 4           ; 2 uses
  %exitcond.not.i338.3 = icmp eq i64 %i.adt, %4
  br i1 %exitcond.not.i338.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i334, !llvm.loop !161

bb.ad:                                            ; preds = %bb.a
  %i.adu = icmp sgt i64 %4, 0
  br i1 %i.adu, label %.lr.ph.i339.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i339.preheader:                            ; preds = %bb.ad
  %min.iters.check818 = icmp ult i64 %4, 8
  %i.adv = sub i64 %i.a, %i.b
  %diff.check820 = icmp ugt i64 %i.adv, -16
  %or.cond1188 = or i1 %min.iters.check818, %diff.check820
  br i1 %or.cond1188, label %.lr.ph.i339.preheader1232, label %vector.ph821

vector.ph821:                                     ; preds = %.lr.ph.i339.preheader
  %n.vec822 = and i64 %4, 9223372036854775806     ; 4 uses
  %i.adw = shl i64 %n.vec822, 3                   ; 2 uses
  %i.adx = getelementptr i8, ptr %1, i64 %i.adw
  %i.ady = getelementptr i8, ptr %3, i64 %i.adw
  br label %vector.body823

end_hunk_1
begin_hunk_2_@_ZN6casadi11casadi_mathIdE3funEhPKdRS2_Pdx:bb.a
  %diff.check800 = icmp ugt i64 %i.afq, -32
  %or.cond1189 = or i1 %min.iters.check798, %diff.check800
  br i1 %or.cond1189, label %.lr.ph.i354.preheader1236, label %vector.ph801

vector.ph801:                                     ; preds = %.lr.ph.i354.preheader
  %n.vec802 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.afr = shl i64 %n.vec802, 3                   ; 2 uses
  %i.afs = getelementptr i8, ptr %1, i64 %i.afr
  %i.aft = getelementptr i8, ptr %3, i64 %i.afr
  br label %vector.body803

vector.body803:                                   ; preds = %vector.body803, %vector.ph801
  %index804 = phi i64 [ 0, %vector.ph801 ], [ %index.next809, %vector.body803 ] ; 2 uses
  %i.afu = shl i64 %index804, 3                   ; 2 uses
  %next.gep805 = getelementptr i8, ptr %1, i64 %i.afu ; 2 uses
  %next.gep806 = getelementptr i8, ptr %3, i64 %i.afu ; 2 uses
  %i.afv = getelementptr i8, ptr %next.gep805, i64 16
  %wide.load807 = load <2 x double>, ptr %next.gep805, align 8, !tbaa !42
  %wide.load808 = load <2 x double>, ptr %i.afv, align 8, !tbaa !42
  %i.afw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load807)
  %i.afx = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load808)
  %i.afy = getelementptr i8, ptr %next.gep806, i64 16
  store <2 x double> %i.afw, ptr %next.gep806, align 8, !tbaa !42
  store <2 x double> %i.afx, ptr %i.afy, align 8, !tbaa !42
  %index.next809 = add nuw i64 %index804, 4       ; 2 uses
  %i.afz = icmp eq i64 %index.next809, %n.vec802
  br i1 %i.afz, label %middle.block810, label %vector.body803, !llvm.loop !167

middle.block810:                                  ; preds = %vector.body803
  %cmp.n811 = icmp eq i64 %4, %n.vec802
  br i1 %cmp.n811, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i354.preheader1236

.lr.ph.i354.preheader1236:                        ; preds = %.lr.ph.i354.preheader, %middle.block810
  %.09.i355.ph = phi i64 [ 0, %.lr.ph.i354.preheader ], [ %n.vec802, %middle.block810 ] ; 3 uses
  %.058.i356.ph = phi ptr [ %1, %.lr.ph.i354.preheader ], [ %i.afs, %middle.block810 ] ; 2 uses
  %.067.i357.ph = phi ptr [ %3, %.lr.ph.i354.preheader ], [ %i.aft, %middle.block810 ] ; 2 uses
  %xtraiter1299 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod1300.not = icmp eq i64 %xtraiter1299, 0
  br i1 %lcmp.mod1300.not, label %.lr.ph.i354.prol.loopexit, label %.lr.ph.i354.prol

.lr.ph.i354.prol:                                 ; preds = %.lr.ph.i354.preheader1236, %.lr.ph.i354.prol
  %.09.i355.prol = phi i64 [ %i.age, %.lr.ph.i354.prol ], [ %.09.i355.ph, %.lr.ph.i354.preheader1236 ]
  %.058.i356.prol = phi ptr [ %i.aga, %.lr.ph.i354.prol ], [ %.058.i356.ph, %.lr.ph.i354.preheader1236 ] ; 2 uses
  %.067.i357.prol = phi ptr [ %i.agb, %.lr.ph.i354.prol ], [ %.067.i357.ph, %.lr.ph.i354.preheader1236 ] ; 2 uses
  %prol.iter1301 = phi i64 [ %prol.iter1301.next, %.lr.ph.i354.prol ], [ 0, %.lr.ph.i354.preheader1236 ]
  %i.aga = getelementptr inbounds nuw i8, ptr %.058.i356.prol, i64 8 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.067.i357.prol, i64 8 ; 2 uses
  %i.agc = load double, ptr %.058.i356.prol, align 8, !tbaa !42
  %i.agd = tail call double @llvm.fabs.f64(double %i.agc)
  store double %i.agd, ptr %.067.i357.prol, align 8, !tbaa !42
  %i.age = add nuw nsw i64 %.09.i355.prol, 1      ; 2 uses
  %prol.iter1301.next = add i64 %prol.iter1301, 1 ; 2 uses
  %prol.iter1301.cmp.not = icmp eq i64 %prol.iter1301.next, %xtraiter1299
  br i1 %prol.iter1301.cmp.not, label %.lr.ph.i354.prol.loopexit, label %.lr.ph.i354.prol, !llvm.loop !168

.lr.ph.i354.prol.loopexit:                        ; preds = %.lr.ph.i354.prol, %.lr.ph.i354.preheader1236
  %.09.i355.unr = phi i64 [ %.09.i355.ph, %.lr.ph.i354.preheader1236 ], [ %i.age, %.lr.ph.i354.prol ]
  %.058.i356.unr = phi ptr [ %.058.i356.ph, %.lr.ph.i354.preheader1236 ], [ %i.aga, %.lr.ph.i354.prol ]
  %.067.i357.unr = phi ptr [ %.067.i357.ph, %.lr.ph.i354.preheader1236 ], [ %i.agb, %.lr.ph.i354.prol ]
  %i.agf = sub nsw i64 %.09.i355.ph, %4
  %i.agg = icmp ugt i64 %i.agf, -4
  br i1 %i.agg, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.lr.ph.i354.prol.loopexit, %.lr.ph.i354
  %.09.i355 = phi i64 [ %i.agx, %.lr.ph.i354 ], [ %.09.i355.unr, %.lr.ph.i354.prol.loopexit ]
  %.058.i356 = phi ptr [ %i.agt, %.lr.ph.i354 ], [ %.058.i356.unr, %.lr.ph.i354.prol.loopexit ] ; 5 uses
  %.067.i357 = phi ptr [ %i.agu, %.lr.ph.i354 ], [ %.067.i357.unr, %.lr.ph.i354.prol.loopexit ] ; 5 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.058.i356, i64 8
  %i.agi = getelementptr inbounds nuw i8, ptr %.067.i357, i64 8
  %i.agj = load double, ptr %.058.i356, align 8, !tbaa !42
  %i.agk = tail call double @llvm.fabs.f64(double %i.agj)
  store double %i.agk, ptr %.067.i357, align 8, !tbaa !42
  %i.agl = getelementptr inbounds nuw i8, ptr %.058.i356, i64 16
  %i.agm = getelementptr inbounds nuw i8, ptr %.067.i357, i64 16
  %i.agn = load double, ptr %i.agh, align 8, !tbaa !42
  %i.ago = tail call double @llvm.fabs.f64(double %i.agn)
  store double %i.ago, ptr %i.agi, align 8, !tbaa !42
  %i.agp = getelementptr inbounds nuw i8, ptr %.058.i356, i64 24
  %i.agq = getelementptr inbounds nuw i8, ptr %.067.i357, i64 24
  %i.agr = load double, ptr %i.agl, align 8, !tbaa !42
  %i.ags = tail call double @llvm.fabs.f64(double %i.agr)
  store double %i.ags, ptr %i.agm, align 8, !tbaa !42
  %i.agt = getelementptr inbounds nuw i8, ptr %.058.i356, i64 32
  %i.agu = getelementptr inbounds nuw i8, ptr %.067.i357, i64 32
  %i.agv = load double, ptr %i.agp, align 8, !tbaa !42
  %i.agw = tail call double @llvm.fabs.f64(double %i.agv)
  store double %i.agw, ptr %i.agq, align 8, !tbaa !42
  %i.agx = add nuw nsw i64 %.09.i355, 4           ; 2 uses
  %exitcond.not.i358.3 = icmp eq i64 %i.agx, %4
  br i1 %exitcond.not.i358.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i354, !llvm.loop !169

bb.ah:                                            ; preds = %bb.a
  %i.agy = icmp sgt i64 %4, 0
  br i1 %i.agy, label %.lr.ph.i359.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i359.preheader:                            ; preds = %bb.ah
  %min.iters.check778 = icmp ult i64 %4, 4
  %i.agz = sub i64 %i.a, %i.b
  %diff.check780 = icmp ugt i64 %i.agz, -32
  %or.cond1190 = or i1 %min.iters.check778, %diff.check780
  br i1 %or.cond1190, label %.lr.ph.i359.preheader1238, label %vector.ph781

vector.ph781:                                     ; preds = %.lr.ph.i359.preheader
  %n.vec782 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.aha = shl i64 %n.vec782, 3                   ; 2 uses
  %i.ahb = getelementptr i8, ptr %1, i64 %i.aha
  %i.ahc = getelementptr i8, ptr %3, i64 %i.aha
  br label %vector.body783

vector.body783:                                   ; preds = %vector.body783, %vector.ph781
  %index784 = phi i64 [ 0, %vector.ph781 ], [ %index.next789, %vector.body783 ] ; 2 uses
  %i.ahd = shl i64 %index784, 3                   ; 2 uses
  %next.gep785 = getelementptr i8, ptr %1, i64 %i.ahd ; 2 uses
  %next.gep786 = getelementptr i8, ptr %3, i64 %i.ahd ; 2 uses
  %i.ahe = getelementptr i8, ptr %next.gep785, i64 16
  %wide.load787 = load <2 x double>, ptr %next.gep785, align 8, !tbaa !42 ; 3 uses
  %wide.load788 = load <2 x double>, ptr %i.ahe, align 8, !tbaa !42 ; 3 uses
  %i.ahf = fcmp olt <2 x double> %wide.load787, zeroinitializer
  %i.ahg = fcmp olt <2 x double> %wide.load788, zeroinitializer
  %i.ahh = fcmp ogt <2 x double> %wide.load787, zeroinitializer
  %i.ahi = fcmp ogt <2 x double> %wide.load788, zeroinitializer
  %i.ahj = select <2 x i1> %i.ahh, <2 x double> splat (double 1.000000e+00), <2 x double> %wide.load787
  %i.ahk = select <2 x i1> %i.ahi, <2 x double> splat (double 1.000000e+00), <2 x double> %wide.load788
  %i.ahl = select <2 x i1> %i.ahf, <2 x double> splat (double -1.000000e+00), <2 x double> %i.ahj
  %i.ahm = select <2 x i1> %i.ahg, <2 x double> splat (double -1.000000e+00), <2 x double> %i.ahk
  %i.ahn = getelementptr i8, ptr %next.gep786, i64 16
  store <2 x double> %i.ahl, ptr %next.gep786, align 8, !tbaa !42
  store <2 x double> %i.ahm, ptr %i.ahn, align 8, !tbaa !42
  %index.next789 = add nuw i64 %index784, 4       ; 2 uses
  %i.aho = icmp eq i64 %index.next789, %n.vec782
  br i1 %i.aho, label %middle.block790, label %vector.body783, !llvm.loop !170

middle.block790:                                  ; preds = %vector.body783
  %cmp.n791 = icmp eq i64 %4, %n.vec782
  br i1 %cmp.n791, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i359.preheader1238

.lr.ph.i359.preheader1238:                        ; preds = %.lr.ph.i359.preheader, %middle.block790
  %.09.i360.ph = phi i64 [ 0, %.lr.ph.i359.preheader ], [ %n.vec782, %middle.block790 ] ; 3 uses
  %.058.i361.ph = phi ptr [ %1, %.lr.ph.i359.preheader ], [ %i.ahb, %middle.block790 ] ; 3 uses
  %.067.i362.ph = phi ptr [ %3, %.lr.ph.i359.preheader ], [ %i.ahc, %middle.block790 ] ; 3 uses
  %.neg1426 = or disjoint i64 %.09.i360.ph, 1
  %xtraiter1296 = and i64 %4, 1
  %lcmp.mod1297.not = icmp eq i64 %xtraiter1296, 0
  br i1 %lcmp.mod1297.not, label %.lr.ph.i359.prol.loopexit, label %.lr.ph.i359.prol

.lr.ph.i359.prol:                                 ; preds = %.lr.ph.i359.preheader1238
  %i.ahp = getelementptr inbounds nuw i8, ptr %.058.i361.ph, i64 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %.067.i362.ph, i64 8
  %i.ahr = load double, ptr %.058.i361.ph, align 8, !tbaa !42 ; 3 uses
  %i.ahs = fcmp olt double %i.ahr, 0.000000e+00
  %i.aht = fcmp ogt double %i.ahr, 0.000000e+00
  %i.ahu = select i1 %i.aht, double 1.000000e+00, double %i.ahr
  %i.ahv = select i1 %i.ahs, double -1.000000e+00, double %i.ahu
  store double %i.ahv, ptr %.067.i362.ph, align 8, !tbaa !42
  %i.ahw = or disjoint i64 %.09.i360.ph, 1
  br label %.lr.ph.i359.prol.loopexit

.lr.ph.i359.prol.loopexit:                        ; preds = %.lr.ph.i359.prol, %.lr.ph.i359.preheader1238
  %.09.i360.unr = phi i64 [ %.09.i360.ph, %.lr.ph.i359.preheader1238 ], [ %i.ahw, %.lr.ph.i359.prol ]
  %.058.i361.unr = phi ptr [ %.058.i361.ph, %.lr.ph.i359.preheader1238 ], [ %i.ahp, %.lr.ph.i359.prol ]
  %.067.i362.unr = phi ptr [ %.067.i362.ph, %.lr.ph.i359.preheader1238 ], [ %i.ahq, %.lr.ph.i359.prol ]
  %i.ahx = icmp eq i64 %4, %.neg1426
  br i1 %i.ahx, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i359

.lr.ph.i359:                                      ; preds = %.lr.ph.i359.prol.loopexit, %.lr.ph.i359
  %.09.i360 = phi i64 [ %i.aim, %.lr.ph.i359 ], [ %.09.i360.unr, %.lr.ph.i359.prol.loopexit ]
  %.058.i361 = phi ptr [ %i.aif, %.lr.ph.i359 ], [ %.058.i361.unr, %.lr.ph.i359.prol.loopexit ] ; 3 uses
  %.067.i362 = phi ptr [ %i.aig, %.lr.ph.i359 ], [ %.067.i362.unr, %.lr.ph.i359.prol.loopexit ] ; 3 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.058.i361, i64 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %.067.i362, i64 8
  %i.aia = load double, ptr %.058.i361, align 8, !tbaa !42 ; 3 uses
  %i.aib = fcmp olt double %i.aia, 0.000000e+00
  %i.aic = fcmp ogt double %i.aia, 0.000000e+00
  %i.aid = select i1 %i.aic, double 1.000000e+00, double %i.aia
  %i.aie = select i1 %i.aib, double -1.000000e+00, double %i.aid
  store double %i.aie, ptr %.067.i362, align 8, !tbaa !42
  %i.aif = getelementptr inbounds nuw i8, ptr %.058.i361, i64 16
  %i.aig = getelementptr inbounds nuw i8, ptr %.067.i362, i64 16
  %i.aih = load double, ptr %i.ahy, align 8, !tbaa !42 ; 3 uses
  %i.aii = fcmp olt double %i.aih, 0.000000e+00
  %i.aij = fcmp ogt double %i.aih, 0.000000e+00
  %i.aik = select i1 %i.aij, double 1.000000e+00, double %i.aih
  %i.ail = select i1 %i.aii, double -1.000000e+00, double %i.aik
  store double %i.ail, ptr %i.ahz, align 8, !tbaa !42
  %i.aim = add nuw nsw i64 %.09.i360, 2           ; 2 uses
  %exitcond.not.i363.1 = icmp eq i64 %i.aim, %4
  br i1 %exitcond.not.i363.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i359, !llvm.loop !171

bb.ai:                                            ; preds = %bb.a
  %i.ain = icmp sgt i64 %4, 0
  br i1 %i.ain, label %.lr.ph.i364.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i364.preheader:                            ; preds = %bb.ai
  %min.iters.check750 = icmp ult i64 %4, 12
  br i1 %min.iters.check750, label %.lr.ph.i364.preheader1240, label %vector.memcheck751

vector.memcheck751:                               ; preds = %.lr.ph.i364.preheader
  %i.aio = shl i64 %4, 3                          ; 2 uses
  %i.aip = getelementptr i8, ptr %3, i64 %i.aio   ; 2 uses
  %i.aiq = getelementptr i8, ptr %1, i64 %i.aio
  %bound0752 = icmp ult ptr %3, %i.aiq
  %bound0752.a = icmp ult ptr %1, %i.aip
  %found.conflict754 = and i1 %bound0752, %bound0752.a
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0755 = icmp ult ptr %3, %12
  %bound1756 = icmp ult ptr %2, %i.aip
  %found.conflict757 = and i1 %bound0755, %bound1756
  %conflict.rdx758 = or i1 %found.conflict754, %found.conflict757
  br i1 %conflict.rdx758, label %.lr.ph.i364.preheader1240, label %vector.ph759

vector.ph759:                                     ; preds = %vector.memcheck751
  %n.vec760 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.air = shl i64 %n.vec760, 3                   ; 2 uses
  %i.ais = getelementptr i8, ptr %1, i64 %i.air
  %i.ait = getelementptr i8, ptr %3, i64 %i.air
  %i.aiu = load double, ptr %2, align 8, !tbaa !42, !alias.scope !259
  %broadcast.splatinsert767 = insertelement <2 x double> poison, double %i.aiu, i64 0
  %broadcast.splat768 = shufflevector <2 x double> %broadcast.splatinsert767, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body761

vector.body761:                                   ; preds = %vector.body761, %vector.ph759
  %index762 = phi i64 [ 0, %vector.ph759 ], [ %index.next769, %vector.body761 ] ; 2 uses
  %i.aiv = shl i64 %index762, 3                   ; 2 uses
  %next.gep763 = getelementptr i8, ptr %1, i64 %i.aiv ; 2 uses
  %next.gep764 = getelementptr i8, ptr %3, i64 %i.aiv ; 2 uses
  %i.aiw = getelementptr i8, ptr %next.gep763, i64 16
  %wide.load765 = load <2 x double>, ptr %next.gep763, align 8, !tbaa !42, !alias.scope !260
  %wide.load766 = load <2 x double>, ptr %i.aiw, align 8, !tbaa !42, !alias.scope !260
  %i.aix = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %wide.load765, <2 x double> %broadcast.splat768)
  %i.aiy = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %wide.load766, <2 x double> %broadcast.splat768)
  %i.aiz = getelementptr i8, ptr %next.gep764, i64 16
  store <2 x double> %i.aix, ptr %next.gep764, align 8, !tbaa !42, !alias.scope !261, !noalias !262
  store <2 x double> %i.aiy, ptr %i.aiz, align 8, !tbaa !42, !alias.scope !261, !noalias !262
  %index.next769 = add nuw i64 %index762, 4       ; 2 uses
  %i.aja = icmp eq i64 %index.next769, %n.vec760
  br i1 %i.aja, label %middle.block770, label %vector.body761, !llvm.loop !176

middle.block770:                                  ; preds = %vector.body761
  %cmp.n771 = icmp eq i64 %4, %n.vec760
  br i1 %cmp.n771, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i364.preheader1240

.lr.ph.i364.preheader1240:                        ; preds = %vector.memcheck751, %.lr.ph.i364.preheader, %middle.block770
  %.09.i365.ph = phi i64 [ 0, %vector.memcheck751 ], [ 0, %.lr.ph.i364.preheader ], [ %n.vec760, %middle.block770 ] ; 3 uses
  %.058.i366.ph = phi ptr [ %1, %vector.memcheck751 ], [ %1, %.lr.ph.i364.preheader ], [ %i.ais, %middle.block770 ] ; 2 uses
  %.067.i367.ph = phi ptr [ %3, %vector.memcheck751 ], [ %3, %.lr.ph.i364.preheader ], [ %i.ait, %middle.block770 ] ; 2 uses
  %xtraiter1293 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod1294.not = icmp eq i64 %xtraiter1293, 0
  br i1 %lcmp.mod1294.not, label %.lr.ph.i364.prol.loopexit, label %.lr.ph.i364.prol

.lr.ph.i364.prol:                                 ; preds = %.lr.ph.i364.preheader1240, %.lr.ph.i364.prol
  %.09.i365.prol = phi i64 [ %i.ajg, %.lr.ph.i364.prol ], [ %.09.i365.ph, %.lr.ph.i364.preheader1240 ]
  %.058.i366.prol = phi ptr [ %i.ajb, %.lr.ph.i364.prol ], [ %.058.i366.ph, %.lr.ph.i364.preheader1240 ] ; 2 uses
  %.067.i367.prol = phi ptr [ %i.ajc, %.lr.ph.i364.prol ], [ %.067.i367.ph, %.lr.ph.i364.preheader1240 ] ; 2 uses
  %prol.iter1295 = phi i64 [ %prol.iter1295.next, %.lr.ph.i364.prol ], [ 0, %.lr.ph.i364.preheader1240 ]
  %i.ajb = getelementptr inbounds nuw i8, ptr %.058.i366.prol, i64 8 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.067.i367.prol, i64 8 ; 2 uses
  %i.ajd = load double, ptr %.058.i366.prol, align 8, !tbaa !42
  %i.aje = load double, ptr %2, align 8, !tbaa !42
  %i.ajf = tail call double @llvm.copysign.f64(double %i.ajd, double %i.aje)
  store double %i.ajf, ptr %.067.i367.prol, align 8, !tbaa !42
  %i.ajg = add nuw nsw i64 %.09.i365.prol, 1      ; 2 uses
  %prol.iter1295.next = add i64 %prol.iter1295, 1 ; 2 uses
  %prol.iter1295.cmp.not = icmp eq i64 %prol.iter1295.next, %xtraiter1293
  br i1 %prol.iter1295.cmp.not, label %.lr.ph.i364.prol.loopexit, label %.lr.ph.i364.prol, !llvm.loop !177

.lr.ph.i364.prol.loopexit:                        ; preds = %.lr.ph.i364.prol, %.lr.ph.i364.preheader1240
  %.09.i365.unr = phi i64 [ %.09.i365.ph, %.lr.ph.i364.preheader1240 ], [ %i.ajg, %.lr.ph.i364.prol ]
  %.058.i366.unr = phi ptr [ %.058.i366.ph, %.lr.ph.i364.preheader1240 ], [ %i.ajb, %.lr.ph.i364.prol ]
  %.067.i367.unr = phi ptr [ %.067.i367.ph, %.lr.ph.i364.preheader1240 ], [ %i.ajc, %.lr.ph.i364.prol ]
  %i.ajh = sub nsw i64 %.09.i365.ph, %4
  %i.aji = icmp ugt i64 %i.ajh, -4
  br i1 %i.aji, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %.lr.ph.i364.prol.loopexit, %.lr.ph.i364
  %.09.i365 = phi i64 [ %i.akd, %.lr.ph.i364 ], [ %.09.i365.unr, %.lr.ph.i364.prol.loopexit ]
  %.058.i366 = phi ptr [ %i.ajy, %.lr.ph.i364 ], [ %.058.i366.unr, %.lr.ph.i364.prol.loopexit ] ; 5 uses
  %.067.i367 = phi ptr [ %i.ajz, %.lr.ph.i364 ], [ %.067.i367.unr, %.lr.ph.i364.prol.loopexit ] ; 5 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.058.i366, i64 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %.067.i367, i64 8
  %i.ajl = load double, ptr %.058.i366, align 8, !tbaa !42
  %i.ajm = load double, ptr %2, align 8, !tbaa !42
  %i.ajn = tail call double @llvm.copysign.f64(double %i.ajl, double %i.ajm)
  store double %i.ajn, ptr %.067.i367, align 8, !tbaa !42
  %i.ajo = getelementptr inbounds nuw i8, ptr %.058.i366, i64 16
  %i.ajp = getelementptr inbounds nuw i8, ptr %.067.i367, i64 16
  %i.ajq = load double, ptr %i.ajj, align 8, !tbaa !42
  %i.ajr = load double, ptr %2, align 8, !tbaa !42
  %i.ajs = tail call double @llvm.copysign.f64(double %i.ajq, double %i.ajr)
  store double %i.ajs, ptr %i.ajk, align 8, !tbaa !42
  %i.ajt = getelementptr inbounds nuw i8, ptr %.058.i366, i64 24
  %i.aju = getelementptr inbounds nuw i8, ptr %.067.i367, i64 24
  %i.ajv = load double, ptr %i.ajo, align 8, !tbaa !42
  %i.ajw = load double, ptr %2, align 8, !tbaa !42
  %i.ajx = tail call double @llvm.copysign.f64(double %i.ajv, double %i.ajw)
  store double %i.ajx, ptr %i.ajp, align 8, !tbaa !42
  %i.ajy = getelementptr inbounds nuw i8, ptr %.058.i366, i64 32
  %i.ajz = getelementptr inbounds nuw i8, ptr %.067.i367, i64 32
  %i.aka = load double, ptr %i.ajt, align 8, !tbaa !42
  %i.akb = load double, ptr %2, align 8, !tbaa !42
  %i.akc = tail call double @llvm.copysign.f64(double %i.aka, double %i.akb)
  store double %i.akc, ptr %i.aju, align 8, !tbaa !42
  %i.akd = add nuw nsw i64 %.09.i365, 4           ; 2 uses
  %exitcond.not.i368.3 = icmp eq i64 %i.akd, %4
  br i1 %exitcond.not.i368.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i364, !llvm.loop !178

bb.aj:                                            ; preds = %bb.a
  %i.ake = icmp sgt i64 %4, 0
  br i1 %i.ake, label %.lr.ph.i369, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i369:                                      ; preds = %bb.aj, %.lr.ph.i369
  %.09.i370 = phi i64 [ %i.akj, %.lr.ph.i369 ], [ 0, %bb.aj ]
  %.058.i371 = phi ptr [ %i.akf, %.lr.ph.i369 ], [ %1, %bb.aj ] ; 2 uses
  %.067.i372 = phi ptr [ %i.akg, %.lr.ph.i369 ], [ %3, %bb.aj ] ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.058.i371, i64 8
  %i.akg = getelementptr inbounds nuw i8, ptr %.067.i372, i64 8
  %i.akh = load double, ptr %.058.i371, align 8, !tbaa !42
  %i.aki = tail call double @erf(double noundef %i.akh) #17
  store double %i.aki, ptr %.067.i372, align 8, !tbaa !42
  %i.akj = add nuw nsw i64 %.09.i370, 1           ; 2 uses
  %exitcond.not.i373 = icmp eq i64 %i.akj, %4
  br i1 %exitcond.not.i373, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i369, !llvm.loop !179

bb.ak:                                            ; preds = %bb.a
  %i.akk = icmp sgt i64 %4, 0
  br i1 %i.akk, label %.lr.ph.i374.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i374.preheader:                            ; preds = %bb.ak
  %min.iters.check714 = icmp ult i64 %4, 8
  br i1 %min.iters.check714, label %.lr.ph.i374.preheader1243, label %vector.memcheck715

vector.memcheck715:                               ; preds = %.lr.ph.i374.preheader
  %i.akl = shl i64 %4, 3                          ; 2 uses
  %i.akm = getelementptr i8, ptr %3, i64 %i.akl   ; 2 uses
  %i.akn = getelementptr i8, ptr %1, i64 %i.akl
  %bound0716 = icmp ult ptr %3, %i.akn
  %bound0716.a = icmp ult ptr %1, %i.akm
  %found.conflict718 = and i1 %bound0716, %bound0716.a
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0719 = icmp ult ptr %3, %13
  %bound1720 = icmp ult ptr %2, %i.akm
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %found.conflict718, %found.conflict721
  br i1 %conflict.rdx722, label %.lr.ph.i374.preheader1243, label %vector.ph723

vector.ph723:                                     ; preds = %vector.memcheck715
  %n.vec724 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.ako = shl i64 %n.vec724, 3                   ; 2 uses
  %i.akp = getelementptr i8, ptr %1, i64 %i.ako
  %i.akq = getelementptr i8, ptr %3, i64 %i.ako
  %i.akr = load double, ptr %2, align 8, !tbaa !42, !alias.scope !263
  %broadcast.splatinsert731 = insertelement <2 x double> poison, double %i.akr, i64 0
  %broadcast.splat732 = shufflevector <2 x double> %broadcast.splatinsert731, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body725

vector.body725:                                   ; preds = %vector.body725, %vector.ph723
  %index726 = phi i64 [ 0, %vector.ph723 ], [ %index.next733, %vector.body725 ] ; 2 uses
  %i.aks = shl i64 %index726, 3                   ; 2 uses
  %next.gep727 = getelementptr i8, ptr %1, i64 %i.aks ; 2 uses
  %next.gep728 = getelementptr i8, ptr %3, i64 %i.aks ; 2 uses
  %i.akt = getelementptr i8, ptr %next.gep727, i64 16
  %wide.load729 = load <2 x double>, ptr %next.gep727, align 8, !tbaa !42, !alias.scope !264
  %wide.load730 = load <2 x double>, ptr %i.akt, align 8, !tbaa !42, !alias.scope !264
  %i.aku = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %wide.load729, <2 x double> %broadcast.splat732)
  %i.akv = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %wide.load730, <2 x double> %broadcast.splat732)
  %i.akw = getelementptr i8, ptr %next.gep728, i64 16
  store <2 x double> %i.aku, ptr %next.gep728, align 8, !tbaa !42, !alias.scope !265, !noalias !266
  store <2 x double> %i.akv, ptr %i.akw, align 8, !tbaa !42, !alias.scope !265, !noalias !266
  %index.next733 = add nuw i64 %index726, 4       ; 2 uses
  %i.akx = icmp eq i64 %index.next733, %n.vec724
  br i1 %i.akx, label %middle.block734, label %vector.body725, !llvm.loop !184

middle.block734:                                  ; preds = %vector.body725
  %cmp.n735 = icmp eq i64 %4, %n.vec724
  br i1 %cmp.n735, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i374.preheader1243

.lr.ph.i374.preheader1243:                        ; preds = %vector.memcheck715, %.lr.ph.i374.preheader, %middle.block734
  %.09.i375.ph = phi i64 [ 0, %vector.memcheck715 ], [ 0, %.lr.ph.i374.preheader ], [ %n.vec724, %middle.block734 ] ; 3 uses
  %.058.i376.ph = phi ptr [ %1, %vector.memcheck715 ], [ %1, %.lr.ph.i374.preheader ], [ %i.akp, %middle.block734 ] ; 3 uses
  %.067.i377.ph = phi ptr [ %3, %vector.memcheck715 ], [ %3, %.lr.ph.i374.preheader ], [ %i.akq, %middle.block734 ] ; 3 uses
  %.neg1425 = or disjoint i64 %.09.i375.ph, 1
  %xtraiter1290 = and i64 %4, 1
  %lcmp.mod1291.not = icmp eq i64 %xtraiter1290, 0
  br i1 %lcmp.mod1291.not, label %.lr.ph.i374.prol.loopexit, label %.lr.ph.i374.prol

.lr.ph.i374.prol:                                 ; preds = %.lr.ph.i374.preheader1243
  %i.aky = getelementptr inbounds nuw i8, ptr %.058.i376.ph, i64 8
  %i.akz = getelementptr inbounds nuw i8, ptr %.067.i377.ph, i64 8
  %i.ala = load double, ptr %.058.i376.ph, align 8, !tbaa !42
  %i.alb = load double, ptr %2, align 8, !tbaa !42
  %i.alc = tail call nsz double @llvm.minnum.f64(double %i.ala, double %i.alb)
  store double %i.alc, ptr %.067.i377.ph, align 8, !tbaa !42
  %i.ald = or disjoint i64 %.09.i375.ph, 1
  br label %.lr.ph.i374.prol.loopexit

.lr.ph.i374.prol.loopexit:                        ; preds = %.lr.ph.i374.prol, %.lr.ph.i374.preheader1243
  %.09.i375.unr = phi i64 [ %.09.i375.ph, %.lr.ph.i374.preheader1243 ], [ %i.ald, %.lr.ph.i374.prol ]
  %.058.i376.unr = phi ptr [ %.058.i376.ph, %.lr.ph.i374.preheader1243 ], [ %i.aky, %.lr.ph.i374.prol ]
  %.067.i377.unr = phi ptr [ %.067.i377.ph, %.lr.ph.i374.preheader1243 ], [ %i.akz, %.lr.ph.i374.prol ]
  %i.ale = icmp eq i64 %4, %.neg1425
  br i1 %i.ale, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %.lr.ph.i374.prol.loopexit, %.lr.ph.i374
  %.09.i375 = phi i64 [ %i.alp, %.lr.ph.i374 ], [ %.09.i375.unr, %.lr.ph.i374.prol.loopexit ]
  %.058.i376 = phi ptr [ %i.alk, %.lr.ph.i374 ], [ %.058.i376.unr, %.lr.ph.i374.prol.loopexit ] ; 3 uses
  %.067.i377 = phi ptr [ %i.all, %.lr.ph.i374 ], [ %.067.i377.unr, %.lr.ph.i374.prol.loopexit ] ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.058.i376, i64 8
  %i.alg = getelementptr inbounds nuw i8, ptr %.067.i377, i64 8
  %i.alh = load double, ptr %.058.i376, align 8, !tbaa !42
  %i.ali = load double, ptr %2, align 8, !tbaa !42
  %i.alj = tail call nsz double @llvm.minnum.f64(double %i.alh, double %i.ali)
  store double %i.alj, ptr %.067.i377, align 8, !tbaa !42
  %i.alk = getelementptr inbounds nuw i8, ptr %.058.i376, i64 16
  %i.all = getelementptr inbounds nuw i8, ptr %.067.i377, i64 16
  %i.alm = load double, ptr %i.alf, align 8, !tbaa !42
  %i.aln = load double, ptr %2, align 8, !tbaa !42
  %i.alo = tail call nsz double @llvm.minnum.f64(double %i.alm, double %i.aln)
  store double %i.alo, ptr %i.alg, align 8, !tbaa !42
  %i.alp = add nuw nsw i64 %.09.i375, 2           ; 2 uses
  %exitcond.not.i378.1 = icmp eq i64 %i.alp, %4
  br i1 %exitcond.not.i378.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i374, !llvm.loop !185

bb.al:                                            ; preds = %bb.a
  %i.alq = icmp sgt i64 %4, 0
  br i1 %i.alq, label %.lr.ph.i379.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i379.preheader:                            ; preds = %bb.al
  %min.iters.check684 = icmp ult i64 %4, 8
  br i1 %min.iters.check684, label %.lr.ph.i379.preheader1245, label %vector.memcheck685

vector.memcheck685:                               ; preds = %.lr.ph.i379.preheader
  %i.alr = shl i64 %4, 3                          ; 2 uses
  %i.als = getelementptr i8, ptr %3, i64 %i.alr   ; 2 uses
  %i.alt = getelementptr i8, ptr %1, i64 %i.alr
  %bound0 = icmp ult ptr %3, %i.alt
  %bound0.a = icmp ult ptr %1, %i.als
  %found.conflict = and i1 %bound0, %bound0.a
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bound0686 = icmp ult ptr %3, %14
  %bound1687 = icmp ult ptr %2, %i.als
  %found.conflict688 = and i1 %bound0686, %bound1687
  %conflict.rdx = or i1 %found.conflict, %found.conflict688
  br i1 %conflict.rdx, label %.lr.ph.i379.preheader1245, label %vector.ph689

vector.ph689:                                     ; preds = %vector.memcheck685
  %n.vec690 = and i64 %4, 9223372036854775804     ; 4 uses
  %i.alu = shl i64 %n.vec690, 3                   ; 2 uses
  %i.alv = getelementptr i8, ptr %1, i64 %i.alu
  %i.alw = getelementptr i8, ptr %3, i64 %i.alu
  %i.alx = load double, ptr %2, align 8, !tbaa !42, !alias.scope !267
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.alx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body691

vector.body691:                                   ; preds = %vector.body691, %vector.ph689
  %index692 = phi i64 [ 0, %vector.ph689 ], [ %index.next697, %vector.body691 ] ; 2 uses
  %i.aly = shl i64 %index692, 3                   ; 2 uses
  %next.gep693 = getelementptr i8, ptr %1, i64 %i.aly ; 2 uses
  %next.gep694 = getelementptr i8, ptr %3, i64 %i.aly ; 2 uses
  %i.alz = getelementptr i8, ptr %next.gep693, i64 16
  %wide.load695 = load <2 x double>, ptr %next.gep693, align 8, !tbaa !42, !alias.scope !268
  %wide.load696 = load <2 x double>, ptr %i.alz, align 8, !tbaa !42, !alias.scope !268
  %i.ama = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %wide.load695, <2 x double> %broadcast.splat)
  %i.amb = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %wide.load696, <2 x double> %broadcast.splat)
  %i.amc = getelementptr i8, ptr %next.gep694, i64 16
  store <2 x double> %i.ama, ptr %next.gep694, align 8, !tbaa !42, !alias.scope !269, !noalias !270
  store <2 x double> %i.amb, ptr %i.amc, align 8, !tbaa !42, !alias.scope !269, !noalias !270
  %index.next697 = add nuw i64 %index692, 4       ; 2 uses
  %i.amd = icmp eq i64 %index.next697, %n.vec690
  br i1 %i.amd, label %middle.block698, label %vector.body691, !llvm.loop !190

middle.block698:                                  ; preds = %vector.body691
  %cmp.n699 = icmp eq i64 %4, %n.vec690
  br i1 %cmp.n699, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i379.preheader1245

.lr.ph.i379.preheader1245:                        ; preds = %vector.memcheck685, %.lr.ph.i379.preheader, %middle.block698
  %.09.i380.ph = phi i64 [ 0, %vector.memcheck685 ], [ 0, %.lr.ph.i379.preheader ], [ %n.vec690, %middle.block698 ] ; 3 uses
  %.058.i381.ph = phi ptr [ %1, %vector.memcheck685 ], [ %1, %.lr.ph.i379.preheader ], [ %i.alv, %middle.block698 ] ; 3 uses
  %.067.i382.ph = phi ptr [ %3, %vector.memcheck685 ], [ %3, %.lr.ph.i379.preheader ], [ %i.alw, %middle.block698 ] ; 3 uses
  %.neg = or disjoint i64 %.09.i380.ph, 1
  %xtraiter1287 = and i64 %4, 1
  %lcmp.mod1288.not = icmp eq i64 %xtraiter1287, 0
  br i1 %lcmp.mod1288.not, label %.lr.ph.i379.prol.loopexit, label %.lr.ph.i379.prol

.lr.ph.i379.prol:                                 ; preds = %.lr.ph.i379.preheader1245
  %i.ame = getelementptr inbounds nuw i8, ptr %.058.i381.ph, i64 8
  %i.amf = getelementptr inbounds nuw i8, ptr %.067.i382.ph, i64 8
  %i.amg = load double, ptr %.058.i381.ph, align 8, !tbaa !42
  %i.amh = load double, ptr %2, align 8, !tbaa !42
  %i.ami = tail call nsz double @llvm.maxnum.f64(double %i.amg, double %i.amh)
  store double %i.ami, ptr %.067.i382.ph, align 8, !tbaa !42
  %i.amj = or disjoint i64 %.09.i380.ph, 1
  br label %.lr.ph.i379.prol.loopexit

.lr.ph.i379.prol.loopexit:                        ; preds = %.lr.ph.i379.prol, %.lr.ph.i379.preheader1245
  %.09.i380.unr = phi i64 [ %.09.i380.ph, %.lr.ph.i379.preheader1245 ], [ %i.amj, %.lr.ph.i379.prol ]
  %.058.i381.unr = phi ptr [ %.058.i381.ph, %.lr.ph.i379.preheader1245 ], [ %i.ame, %.lr.ph.i379.prol ]
  %.067.i382.unr = phi ptr [ %.067.i382.ph, %.lr.ph.i379.preheader1245 ], [ %i.amf, %.lr.ph.i379.prol ]
  %i.amk = icmp eq i64 %4, %.neg
  br i1 %i.amk, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i379

.lr.ph.i379:                                      ; preds = %.lr.ph.i379.prol.loopexit, %.lr.ph.i379
  %.09.i380 = phi i64 [ %i.amv, %.lr.ph.i379 ], [ %.09.i380.unr, %.lr.ph.i379.prol.loopexit ]
  %.058.i381 = phi ptr [ %i.amq, %.lr.ph.i379 ], [ %.058.i381.unr, %.lr.ph.i379.prol.loopexit ] ; 3 uses
  %.067.i382 = phi ptr [ %i.amr, %.lr.ph.i379 ], [ %.067.i382.unr, %.lr.ph.i379.prol.loopexit ] ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.058.i381, i64 8
  %i.amm = getelementptr inbounds nuw i8, ptr %.067.i382, i64 8
  %i.amn = load double, ptr %.058.i381, align 8, !tbaa !42
  %i.amo = load double, ptr %2, align 8, !tbaa !42
  %i.amp = tail call nsz double @llvm.maxnum.f64(double %i.amn, double %i.amo)
  store double %i.amp, ptr %.067.i382, align 8, !tbaa !42
  %i.amq = getelementptr inbounds nuw i8, ptr %.058.i381, i64 16
  %i.amr = getelementptr inbounds nuw i8, ptr %.067.i382, i64 16
  %i.ams = load double, ptr %i.aml, align 8, !tbaa !42
  %i.amt = load double, ptr %2, align 8, !tbaa !42
  %i.amu = tail call nsz double @llvm.maxnum.f64(double %i.ams, double %i.amt)
  store double %i.amu, ptr %i.amm, align 8, !tbaa !42
  %i.amv = add nuw nsw i64 %.09.i380, 2           ; 2 uses
  %exitcond.not.i383.1 = icmp eq i64 %i.amv, %4
  br i1 %exitcond.not.i383.1, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i379, !llvm.loop !191

bb.am:                                            ; preds = %bb.a
  %i.amw = icmp sgt i64 %4, 0
  br i1 %i.amw, label %.lr.ph.i384.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i384.preheader:                            ; preds = %bb.am
  %min.iters.check661 = icmp eq i64 %4, 1
  %i.amx = sub i64 %i.a, %i.b
  %diff.check663 = icmp ugt i64 %i.amx, -16
  %or.cond1191 = or i1 %min.iters.check661, %diff.check663
  br i1 %or.cond1191, label %.lr.ph.i384.preheader1247, label %vector.ph664

vector.ph664:                                     ; preds = %.lr.ph.i384.preheader
  %n.vec665 = and i64 %4, 9223372036854775806     ; 4 uses
  %i.amy = shl i64 %n.vec665, 3                   ; 2 uses
  %i.amz = getelementptr i8, ptr %1, i64 %i.amy
  %i.ana = getelementptr i8, ptr %3, i64 %i.amy
  br label %vector.body666

vector.body666:                                   ; preds = %vector.body666, %vector.ph664
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next671, %vector.body666 ] ; 2 uses
  %i.anb = shl i64 %index667, 3                   ; 2 uses
  %next.gep668 = getelementptr i8, ptr %1, i64 %i.anb
  %next.gep669 = getelementptr i8, ptr %3, i64 %i.anb
  %wide.load670 = load <2 x double>, ptr %next.gep668, align 8, !tbaa !42
  %i.anc = fdiv <2 x double> splat (double 1.000000e+00), %wide.load670
  store <2 x double> %i.anc, ptr %next.gep669, align 8, !tbaa !42
  %index.next671 = add nuw i64 %index667, 2       ; 2 uses
  %i.and = icmp eq i64 %index.next671, %n.vec665
  br i1 %i.and, label %middle.block672, label %vector.body666, !llvm.loop !192

middle.block672:                                  ; preds = %vector.body666
  %cmp.n673 = icmp eq i64 %4, %n.vec665
  br i1 %cmp.n673, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i384.preheader1247

.lr.ph.i384.preheader1247:                        ; preds = %.lr.ph.i384.preheader, %middle.block672
  %.09.i385.ph = phi i64 [ 0, %.lr.ph.i384.preheader ], [ %n.vec665, %middle.block672 ] ; 4 uses
  %.058.i386.ph = phi ptr [ %1, %.lr.ph.i384.preheader ], [ %i.amz, %middle.block672 ] ; 2 uses
  %.067.i387.ph = phi ptr [ %3, %.lr.ph.i384.preheader ], [ %i.ana, %middle.block672 ] ; 2 uses
  %i.ane = sub nsw i64 %4, %.09.i385.ph
  %xtraiter1284 = and i64 %i.ane, 3               ; 2 uses
  %lcmp.mod1285.not = icmp eq i64 %xtraiter1284, 0
  br i1 %lcmp.mod1285.not, label %.lr.ph.i384.prol.loopexit, label %.lr.ph.i384.prol

.lr.ph.i384.prol:                                 ; preds = %.lr.ph.i384.preheader1247, %.lr.ph.i384.prol
  %.09.i385.prol = phi i64 [ %i.anj, %.lr.ph.i384.prol ], [ %.09.i385.ph, %.lr.ph.i384.preheader1247 ]
  %.058.i386.prol = phi ptr [ %i.anf, %.lr.ph.i384.prol ], [ %.058.i386.ph, %.lr.ph.i384.preheader1247 ] ; 2 uses
  %.067.i387.prol = phi ptr [ %i.ang, %.lr.ph.i384.prol ], [ %.067.i387.ph, %.lr.ph.i384.preheader1247 ] ; 2 uses
  %prol.iter1286 = phi i64 [ %prol.iter1286.next, %.lr.ph.i384.prol ], [ 0, %.lr.ph.i384.preheader1247 ]
  %i.anf = getelementptr inbounds nuw i8, ptr %.058.i386.prol, i64 8 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.067.i387.prol, i64 8 ; 2 uses
  %i.anh = load double, ptr %.058.i386.prol, align 8, !tbaa !42
  %i.ani = fdiv double 1.000000e+00, %i.anh
  store double %i.ani, ptr %.067.i387.prol, align 8, !tbaa !42
  %i.anj = add nuw nsw i64 %.09.i385.prol, 1      ; 2 uses
  %prol.iter1286.next = add i64 %prol.iter1286, 1 ; 2 uses
  %prol.iter1286.cmp.not = icmp eq i64 %prol.iter1286.next, %xtraiter1284
  br i1 %prol.iter1286.cmp.not, label %.lr.ph.i384.prol.loopexit, label %.lr.ph.i384.prol, !llvm.loop !193

.lr.ph.i384.prol.loopexit:                        ; preds = %.lr.ph.i384.prol, %.lr.ph.i384.preheader1247
  %.09.i385.unr = phi i64 [ %.09.i385.ph, %.lr.ph.i384.preheader1247 ], [ %i.anj, %.lr.ph.i384.prol ]
  %.058.i386.unr = phi ptr [ %.058.i386.ph, %.lr.ph.i384.preheader1247 ], [ %i.anf, %.lr.ph.i384.prol ]
  %.067.i387.unr = phi ptr [ %.067.i387.ph, %.lr.ph.i384.preheader1247 ], [ %i.ang, %.lr.ph.i384.prol ]
  %i.ank = sub nsw i64 %.09.i385.ph, %4
  %i.anl = icmp ugt i64 %i.ank, -4
  br i1 %i.anl, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %.lr.ph.i384.prol.loopexit, %.lr.ph.i384
  %.09.i385 = phi i64 [ %i.aoc, %.lr.ph.i384 ], [ %.09.i385.unr, %.lr.ph.i384.prol.loopexit ]
  %.058.i386 = phi ptr [ %i.any, %.lr.ph.i384 ], [ %.058.i386.unr, %.lr.ph.i384.prol.loopexit ] ; 5 uses
  %.067.i387 = phi ptr [ %i.anz, %.lr.ph.i384 ], [ %.067.i387.unr, %.lr.ph.i384.prol.loopexit ] ; 5 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.058.i386, i64 8
  %i.ann = getelementptr inbounds nuw i8, ptr %.067.i387, i64 8
  %i.ano = load double, ptr %.058.i386, align 8, !tbaa !42
  %i.anp = fdiv double 1.000000e+00, %i.ano
  store double %i.anp, ptr %.067.i387, align 8, !tbaa !42
  %i.anq = getelementptr inbounds nuw i8, ptr %.058.i386, i64 16
  %i.anr = getelementptr inbounds nuw i8, ptr %.067.i387, i64 16
  %i.ans = load double, ptr %i.anm, align 8, !tbaa !42
  %i.ant = fdiv double 1.000000e+00, %i.ans
  store double %i.ant, ptr %i.ann, align 8, !tbaa !42
  %i.anu = getelementptr inbounds nuw i8, ptr %.058.i386, i64 24
  %i.anv = getelementptr inbounds nuw i8, ptr %.067.i387, i64 24
  %i.anw = load double, ptr %i.anq, align 8, !tbaa !42
  %i.anx = fdiv double 1.000000e+00, %i.anw
  store double %i.anx, ptr %i.anr, align 8, !tbaa !42
  %i.any = getelementptr inbounds nuw i8, ptr %.058.i386, i64 32
  %i.anz = getelementptr inbounds nuw i8, ptr %.067.i387, i64 32
  %i.aoa = load double, ptr %i.anu, align 8, !tbaa !42
  %i.aob = fdiv double 1.000000e+00, %i.aoa
  store double %i.aob, ptr %i.anv, align 8, !tbaa !42
  %i.aoc = add nuw nsw i64 %.09.i385, 4           ; 2 uses
  %exitcond.not.i388.3 = icmp eq i64 %i.aoc, %4
  br i1 %exitcond.not.i388.3, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit, label %.lr.ph.i384, !llvm.loop !194

bb.an:                                            ; preds = %bb.a
  %i.aod = icmp sgt i64 %4, 0
  br i1 %i.aod, label %.lr.ph.i389.preheader, label %_ZN6casadi17BinaryOperationVSILx0EE3fcnIdEEvPKT_RS4_PS3_x.exit

.lr.ph.i389.preheader:                            ; preds = %bb.an
  %i.aoe = add nsw i64 %4, -1
  %xtraiter1278 = and i64 %4, 3                   ; 3 uses
  %i.aof = icmp ult i64 %i.aoe, 3
  br i1 %i.aof, label %.lr.ph.i389.epil.preheader, label %.lr.ph.i389.preheader.new

.lr.ph.i389.preheader.new:                        ; preds = %.lr.ph.i389.preheader
  %unroll_iter1282 = and i64 %4, 9223372036854775804
  br label %.lr.ph.i389

.lr.ph.i389:                                      ; preds = %.lr.ph.i389, %.lr.ph.i389.preheader.new
  %.058.i391 = phi ptr [ %1, %.lr.ph.i389.preheader.new ], [ %i.aos, %.lr.ph.i389 ] ; 5 uses
  %.067.i392 = phi ptr [ %3, %.lr.ph.i389.preheader.new ], [ %i.aot, %.lr.ph.i389 ] ; 5 uses
  %niter1283 = phi i64 [ 0, %.lr.ph.i389.preheader.new ], [ %niter1283.next.3, %.lr.ph.i389 ]
  %i.aog = getelementptr inbounds nuw i8, ptr %.058.i391, i64 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %.067.i392, i64 8
  %i.aoi = load double, ptr %.058.i391, align 8, !tbaa !42
  %i.aoj = tail call double @sinh(double noundef %i.aoi) #17
  store double %i.aoj, ptr %.067.i392, align 8, !tbaa !42
end_hunk_2
