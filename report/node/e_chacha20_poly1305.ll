inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@chacha_cipher:bb.a

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.o, 28
  %n.vec = and i64 %i.o, 96                       ; 7 uses
  %4 = add nuw nsw i64 %n.vec, %i.l               ; 2 uses
  %5 = getelementptr i8, ptr %1, i64 %n.vec       ; 2 uses
  %6 = sub i64 %3, %n.vec                         ; 2 uses
  %7 = getelementptr i8, ptr %2, i64 %n.vec       ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.k, i64 %i.l
  br label %vector.ph.a

vector.ph.a:                                      ; preds = %vector.ph.a, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.ph.a ] ; 4 uses
  %i.t = getelementptr i8, ptr %1, i64 %index     ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !tbaa !15
  %wide.load123 = load <16 x i8>, ptr %i.v, align 1, !tbaa !15
  %i.w = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load124 = load <16 x i8>, ptr %i.w, align 1, !tbaa !15
  %wide.load125 = load <16 x i8>, ptr %i.x, align 1, !tbaa !15
  %i.y = xor <16 x i8> %wide.load124, %wide.load
  %i.z = xor <16 x i8> %wide.load125, %wide.load123
  %i.aa = getelementptr i8, ptr %i.t, i64 16
  store <16 x i8> %i.y, ptr %i.t, align 1, !tbaa !15
  store <16 x i8> %i.z, ptr %i.aa, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %cmp.n.a = icmp eq i64 %index.next, %n.vec
  br i1 %cmp.n.a, label %middle.block, label %vector.ph.a, !llvm.loop !18

middle.block:                                     ; preds = %vector.ph.a
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@chacha_cipher:bb.a
  store <4 x i8> %i.af, ptr %next.gep132, align 1, !tbaa !15
  %index.next136 = add nuw i64 %index131, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %i.o, %n.vec130
end_hunk_1
begin_hunk_2_@chacha_cipher:bb.a

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.06783.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.06982.ph = phi i64 [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.07281.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
end_hunk_2
begin_hunk_3_@chacha_cipher:bb.a
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = icmp samesign ult i64 %indvars.iv, 63
  %i.aq = and i1 %i.ao, %i.ap
  br i1 %i.aq, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa119 = phi ptr [ %i.ae, %vec.epilog.middle.block ], [ %7, %middle.block ], [ %i.ah, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.ab, %vec.epilog.middle.block ], [ %4, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa118 = phi ptr [ %i.ac, %vec.epilog.middle.block ], [ %5, %middle.block ], [ %i.am, %vec.epilog.scalar.ph ]
  %.lcssa117 = phi i64 [ %i.ad, %vec.epilog.middle.block ], [ %6, %middle.block ], [ %i.an, %vec.epilog.scalar.ph ]
  %i.ar = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

end_hunk_3
begin_hunk_4_@chacha_cipher:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not78 = icmp eq i64 %i.bo, 0
  br i1 %.not78, label %._crit_edge95, label %bb.f, !llvm.loop !25

._crit_edge95:                                    ; preds = %bb.h, %bb.e
  %.274.lcssa = phi ptr [ %.173, %bb.e ], [ %i.bp, %bb.h ] ; 8 uses
end_hunk_4
begin_hunk_5_@chacha_cipher:bb.a
  store <8 x i8> %i.cd, ptr %i.cf, align 1, !tbaa !15
  %index.next160 = add nuw i64 %index155, 16      ; 2 uses
  %i.cg = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.cg, label %middle.block161, label %vector.body154, !llvm.loop !26

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %wide.trip.count, %n.vec153
end_hunk_5
begin_hunk_6_@chacha_cipher:bb.a

vec.epilog.iter.check166:                         ; preds = %middle.block161
  %min.epilog.iters.check167 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check167, label %vec.epilog.scalar.ph165.preheader, label %vec.epilog.ph168, !prof !27

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check166
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check149 ]
end_hunk_6
begin_hunk_7_@chacha_cipher:bb.a
  store <4 x i8> %i.cj, ptr %i.ck, align 1, !tbaa !15
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.cl, label %vec.epilog.middle.block176, label %vec.epilog.vector.body171, !llvm.loop !28

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body171
  %cmp.n177 = icmp eq i64 %wide.trip.count, %n.vec170
end_hunk_7
begin_hunk_8_@chacha_cipher:bb.a
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph165.prol.loopexit, label %vec.epilog.scalar.ph165.prol, !llvm.loop !29

vec.epilog.scalar.ph165.prol.loopexit:            ; preds = %vec.epilog.scalar.ph165.prol, %vec.epilog.scalar.ph165.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %vec.epilog.scalar.ph165.preheader ], [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph165.prol ]
end_hunk_8
begin_hunk_9_@chacha_cipher:bb.a
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !15
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph165, !llvm.loop !31

.loopexit:                                        ; preds = %vec.epilog.scalar.ph165.prol.loopexit, %vec.epilog.scalar.ph165, %vec.epilog.middle.block176, %middle.block161
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !16
end_hunk_9
begin_hunk_10_@chacha20_poly1305_init_key:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.g, align 8, !tbaa !32
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35   ; 2 uses
  %i.j = icmp slt i32 %i.i, 17
  br i1 %i.j, label %bb.d, label %bb.e

end_hunk_10
begin_hunk_11_@chacha20_poly1305_cipher:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 46 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 188 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.u

end_hunk_11
begin_hunk_12_@chacha20_poly1305_cipher:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  call void @Poly1305_Init(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a) #9
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 13, ptr %i.u, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i64 %i.f, ptr %i.v, align 8, !tbaa !39
  %.not106.i = icmp eq i64 %i.f, 0
  br i1 %.not106.i, label %bb.n, label %bb.f

end_hunk_12
begin_hunk_13_@chacha20_poly1305_cipher:bb.a
  call void @Poly1305_Init(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a) #9
  store i32 1, ptr %i.o, align 8, !tbaa !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.af, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  call void @Poly1305_Update(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ag, i64 noundef 16) #9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 13, ptr %i.ah, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i64 %i.f, ptr %i.ai, align 8, !tbaa !39
  %i.aj = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #9
  %.not105.i = icmp eq i32 %i.aj, 0
  br i1 %.not105.i, label %bb.l, label %bb.k
end_hunk_13
begin_hunk_14_@chacha20_poly1305_cipher:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 132 ; 2 uses
  %i.as = select i1 %.not108.i, ptr %.098.i, ptr %i.ar
  call void @Poly1305_Final(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.as) #9
  store i64 -1, ptr %i.e, align 8, !tbaa !32
  %i.at = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #9
  %.not109.i = icmp eq i32 %i.at, 0
  br i1 %.not109.i, label %bb.p, label %bb.o
end_hunk_14
begin_hunk_15_@chacha20_poly1305_cipher:bb.a
  tail call void @Poly1305_Init(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ba) #9
  store i32 1, ptr %i.az, align 8, !tbaa !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.bc, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.g, align 4, !tbaa !36
  br i1 %i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.be, i64 noundef 13) #9
  store i64 13, ptr %i.bd, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 1, ptr %i.bf, align 8, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.a
end_hunk_15
begin_hunk_16_@chacha20_poly1305_cipher:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bh, ptr noundef nonnull %2, i64 noundef %3) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !38
  %i.bk = add i64 %i.bj, %3
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 1, ptr %i.bl, align 8, !tbaa !40
  %i.bm = trunc i64 %3 to i32
  br label %bb.aw

bb.x:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !40
  %.not117 = icmp eq i32 %i.bo, 0
  br i1 %.not117, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !38
  %i.br = and i64 %i.bq, 15                       ; 2 uses
  %.not118 = icmp eq i64 %i.br, 0
  br i1 %.not118, label %bb.aa, label %bb.z
end_hunk_16
begin_hunk_17_@chacha20_poly1305_cipher:bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !40
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  store i64 -1, ptr %i.e, align 8, !tbaa !32
  %i.bu = icmp eq i64 %i.f, -1
  br i1 %i.bu, label %bb.ad, label %bb.ac

end_hunk_17
begin_hunk_18_@chacha20_poly1305_cipher:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !39
  %i.cd = add i64 %i.cc, %.0105
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !39
  %.0107 = getelementptr inbounds nuw i8, ptr %1, i64 %.0105
  %.0108 = getelementptr inbounds nuw i8, ptr %2, i64 %.0105
  %.not121 = icmp eq i64 %.0105, %3
end_hunk_18
begin_hunk_19_@chacha20_poly1305_cipher:bb.a
  %.0108139 = phi ptr [ null, %.thread ], [ %.0108, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !40
  %.not122 = icmp eq i32 %i.cf, 0
  br i1 %.not122, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !38
  %i.ci = and i64 %i.ch, 15                       ; 2 uses
  %.not123 = icmp eq i64 %i.ci, 0
  br i1 %.not123, label %bb.ak, label %bb.aj
end_hunk_19
begin_hunk_20_@chacha20_poly1305_cipher:bb.a
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i32 0, ptr %i.ce, align 8, !tbaa !40
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !39
  %i.co = and i64 %i.cn, 15                       ; 2 uses
  %.not124 = icmp eq i64 %i.co, 0
  br i1 %.not124, label %bb.an, label %bb.am
end_hunk_20
begin_hunk_21_@chacha20_poly1305_cipher:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 132 ; 3 uses
  %i.cu = select i1 %.not125, ptr %i.b, ptr %i.ct
  call void @Poly1305_Final(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu) #9
  store i32 0, ptr %i.g, align 4, !tbaa !36
  %.not126 = icmp eq ptr %.0108139, null
  %or.cond133 = select i1 %.not126, i1 true, i1 %.not121142
  %i.cv = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #9
end_hunk_21
begin_hunk_22_@chacha20_poly1305_cipher:bb.a

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !41
  %i.db = sext i32 %i.da to i64
  %i.dc = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ct, i64 noundef %i.db) #9
  %.not129 = icmp eq i32 %i.dc, 0
end_hunk_22
begin_hunk_23_@chacha20_poly1305_ctrl:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.096110, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %.096110, i64 196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 12, ptr %i.i, align 4, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %.096110, i64 200
  store i64 -1, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %.096110, i64 148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %.critedge
end_hunk_23
begin_hunk_24_@chacha20_poly1305_ctrl:bb.a

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  store i32 %i.q, ptr %3, align 4, !tbaa !5
  br label %.critedge

end_hunk_24
begin_hunk_25_@chacha20_poly1305_ctrl:bb.a

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  store i32 %2, ptr %i.s, align 4, !tbaa !35
  br label %.critedge

bb.k:                                             ; preds = %bb.a
end_hunk_25
begin_hunk_26_@chacha20_poly1305_ctrl:bb.a
  %i.ag = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 1 %3, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i32 %2, ptr %i.ah, align 8, !tbaa !41
  br label %.critedge

bb.p:                                             ; preds = %bb.a
end_hunk_26
begin_hunk_27_@chacha20_poly1305_ctrl:bb.a
  %.0 = phi i32 [ %i.au, %bb.t ], [ %i.ax, %bb.v ]
  %i.bd = zext nneg i32 %.0 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 36
end_hunk_27
begin_hunk_28_@chacha20_poly1305_ctrl:bb.a
  %i.bm = xor <2 x i32> %i.bl, %i.bk
  store <2 x i32> %i.bm, ptr %i.bj, align 8, !tbaa !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i32 0, ptr %i.bn, align 4, !tbaa !36
  br label %.critedge

bb.x:                                             ; preds = %bb.a
end_hunk_28
begin_hunk_29_@llvm.umin.i64
!15 = !{!7, !7, i64 0}
!16 = !{!17, !6, i64 112}
!17 = !{!"", !7, i64 0, !7, i64 32, !7, i64 48, !6, i64 112}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 28}
!23 = distinct !{!23, !19, !20, !21}
!24 = distinct !{!24, !19, !20}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19, !20, !21}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = distinct !{!28, !19, !20, !21}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !19, !20}
!32 = !{!33, !14, i64 200}
!33 = !{!"", !17, i64 0, !7, i64 120, !7, i64 132, !7, i64 148, !34, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !14, i64 200}
!34 = !{!"", !14, i64 0, !14, i64 8}
!35 = !{!33, !6, i64 196}
!36 = !{!33, !6, i64 188}
!37 = !{!33, !6, i64 112}
!38 = !{!33, !14, i64 168}
!39 = !{!33, !14, i64 176}
!40 = !{!33, !6, i64 184}
!41 = !{!33, !6, i64 192}
end_hunk_29
