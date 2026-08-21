Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS5_DpOT0_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(28) %i.q, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.r, label %bb.f, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %.not3.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 1, !tbaa !58
  %i.y = icmp ne i32 %i.x, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.i:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.z, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.j:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !360
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !361
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i.i7 = icmp ugt i64 %i.ag, %i.aj
  br i1 %.not.i.i.i7, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.al = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(20) %i.ak, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.al, label %bb.l, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = load i32, ptr %i.am, align 1, !tbaa !58
  %i.ao = icmp ne i32 %i.an, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.i, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.d ], [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ true, %bb.a ], [ %i.aa, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ %i.y, %bb.h ], [ false, %bb.e ], [ %i.ao, %bb.l ], [ false, %bb.k ], [ false, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.k = load i32, ptr %0, align 1, !tbaa !58
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !48

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !669

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !58
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !58
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !58
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.aq = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op = add i64 %i.aq, %i.ac
  %invariant.op215 = add i64 %invariant.op, 2
  %invariant.op217 = add i64 %i.aq, %i.ac
  %i.ar = xor i64 %i.aq, -1
  %i.as = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op218 = add i64 %i.as, %i.ah
  %invariant.op220 = add i64 %invariant.op218, 4
  %invariant.op222 = add i64 %i.as, %i.ah
  %i.at = xor i64 %i.as, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5285

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 6 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.au = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.av = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.au, i32 %i.am) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 0       ; 2 uses
  %i.ax = extractvalue { i32, i1 } %i.av, 1
  br i1 %i.ax, label %.critedge, label %bb.g, !prof !787

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.ao, %i.az
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !361
  %i.bc = zext i32 %i.bb to i64
  %.not.i.i83 = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !787

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ao
  %i.bg = trunc i64 %i.bf to i32
  %.not12.i.i84 = icmp ugt i32 %i.aw, %i.bg
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !787

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.bh = load i32, ptr %i.an, align 4, !tbaa !363
  %i.bi = sub i32 %i.bh, %i.aw                    ; 3 uses
  store i32 %i.bi, ptr %i.an, align 4, !tbaa !363
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %.critedge, !prof !669

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bk = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bk
  %i.bl = add i32 %.neg79, %i.bi                  ; 2 uses
  store i32 %i.bl, ptr %i.an, align 4, !tbaa !363
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.au, i32 %i.ak)
  %i.bo = extractvalue { i32, i1 } %i.bn, 1
  br i1 %i.bo, label %.critedge, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.bp = mul i32 %i.au, %i.ak
  %i.bq = zext i32 %i.bp to i64
  %.idx80 = shl nuw nsw i64 %i.bq, 1              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bs = mul i32 %.062174, %i.ak
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.bt, 1                ; 3 uses
  %i.bu = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.bu, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass216 = add i64 %.idx, %invariant.op215
  %.reass = add i64 %.idx80, %invariant.op217
  %i.bw = tail call i64 @llvm.umax.i64(i64 %.reass216, i64 %.reass)
  %i.bx = add i64 %i.bw, %i.ar
  %3 = shl nuw nsw i64 %i.bt, 1
  %i.by = add nuw nsw i64 %3, %i.ac
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = add nuw i64 %i.ca, 1                    ; 2 uses
  %min.iters.check190 = icmp ult i64 %i.bz, 14
  br i1 %min.iters.check190, label %.lr.ph162.preheader208, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph162.preheader
  %n.vec192 = and i64 %i.cb, -8                   ; 3 uses
  %i.cc = shl i64 %n.vec192, 1
  %i.cd = getelementptr i8, ptr %i.bv, i64 %i.cc
  %broadcast.splatinsert193 = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat194 = shufflevector <4 x i32> %broadcast.splatinsert193, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph191
  %index196 = phi i64 [ 0, %vector.ph191 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %vec.phi197 = phi <4 x i32> [ %broadcast.splat194, %vector.ph191 ], [ %i.cm, %vector.body195 ]
  %vec.phi198 = phi <4 x i32> [ %broadcast.splat194, %vector.ph191 ], [ %i.cn, %vector.body195 ]
  %i.ce = shl i64 %index196, 1
  %next.gep199 = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep199, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep199, align 1, !tbaa !62
  %wide.load200 = load <4 x i16>, ptr %i.cf, align 1, !tbaa !62
  %i.cg = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ch = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load200)
  %i.ci = zext <4 x i16> %i.cg to <4 x i32>
  %i.cj = zext <4 x i16> %i.ch to <4 x i32>
  %i.ck = add nuw nsw <4 x i32> %i.ci, splat (i32 1)
  %i.cl = add nuw nsw <4 x i32> %i.cj, splat (i32 1)
  %i.cm = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi197, <4 x i32> %i.ck) ; 2 uses
  %i.cn = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi198, <4 x i32> %i.cl) ; 2 uses
  %index.next201 = add nuw i64 %index196, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next201, %n.vec192
  br i1 %i.co, label %middle.block202, label %vector.body195, !llvm.loop !5286

middle.block202:                                  ; preds = %vector.body195
  %rdx.minmax203 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cm, <4 x i32> %i.cn)
  %i.cp = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax203) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec192
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader208

.lr.ph162.preheader208:                           ; preds = %.lr.ph162.preheader, %middle.block202
  %.058161.ph = phi ptr [ %i.bv, %.lr.ph162.preheader ], [ %i.cd, %middle.block202 ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cp, %middle.block202 ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader208, %.lr.ph162
  %.058161 = phi ptr [ %i.cu, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader208 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader208 ]
  %i.cq = load i16, ptr %.058161, align 1, !tbaa !62
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cs, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.ct) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.br
  br i1 %i.cv, label %.lr.ph162, label %.loopexit184, !llvm.loop !5287

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block202, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cp, %middle.block202 ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.au, %bb.k ], [ %i.au, %middle.block202 ], [ %i.au, %.lr.ph162 ] ; 2 uses
  %i.cw = shl nuw nsw i32 %.5150, 2               ; 2 uses
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.ap, %i.cy
  %i.da = load i32, ptr %i.g, align 8, !tbaa !361
  %i.db = zext i32 %i.da to i64
  %.not.i.i.i = icmp ugt i64 %i.cz, %i.db
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !787

bb.l:                                             ; preds = %.loopexit184
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.ap
  %i.df = trunc i64 %i.de to i32
  %.not12.i.i.i = icmp ugt i32 %i.cw, %i.df
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit, !prof !787

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit: ; preds = %bb.l
  %i.dg = load i32, ptr %i.an, align 4, !tbaa !363
  %i.dh = sub i32 %i.dg, %i.cw                    ; 3 uses
  store i32 %i.dh, ptr %i.an, align 4, !tbaa !363
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %bb.m, label %.critedge, !prof !669

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dj = add i32 %i.dh, %.neg81                  ; 2 uses
  store i32 %i.dj, ptr %i.an, align 4, !tbaa !363
  %i.dk = icmp slt i32 %i.dj, 1
  br i1 %i.dk, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = zext i32 %.5150 to i64                  ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dl
  %i.dn = icmp ult i32 %.0147170, %.5150
  br i1 %i.dn, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.do = zext i32 %.0147170 to i64               ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.do ; 4 uses
  %i.dq = shl nuw nsw i64 %i.do, 2
  %.reass221 = add i64 %i.dq, %invariant.op220
  %i.dr = shl nuw nsw i64 %i.dl, 2
  %.reass223 = add i64 %i.dr, %invariant.op222
  %i.ds = tail call i64 @llvm.umax.i64(i64 %.reass221, i64 %.reass223)
  %i.dt = add i64 %i.ds, %i.at
  %4 = shl nuw nsw i64 %i.do, 2
  %i.du = add nuw nsw i64 %4, %i.ah
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dv, 32
  br i1 %min.iters.check, label %.lr.ph167.preheader207, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167.preheader
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %i.dy = and i64 %i.dx, 7                        ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = select i1 %i.dz, i64 8, i64 %i.dy
  %n.vec = sub nsw i64 %i.dx, %i.ea               ; 2 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.dp, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0145172, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.em, %vector.body ]
  %i.ed = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.ed
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep186 = getelementptr i8, ptr %i.ee, i64 16
  %wide.vec = load <8 x i16>, ptr %next.gep, align 1, !tbaa !62
  %wide.vec187 = load <8 x i16>, ptr %next.gep186, align 1, !tbaa !62
  %wide.vec.fr = freeze <8 x i16> %wide.vec
  %i.ef = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec.fr)
  %i.eg = bitcast <8 x i16> %i.ef to <4 x i32>
  %i.eh = and <4 x i32> %i.eg, splat (i32 65535)
  %wide.vec187.fr = freeze <8 x i16> %wide.vec187
  %i.ei = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec187.fr)
  %i.ej = bitcast <8 x i16> %i.ei to <4 x i32>
  %i.ek = and <4 x i32> %i.ej, splat (i32 65535)
  %i.el = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.eh) ; 2 uses
  %i.em = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.ek) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !5288

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.el, <4 x i32> %i.em)
  %i.eo = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  br label %.lr.ph167.preheader207

.lr.ph167.preheader207:                           ; preds = %.lr.ph167.preheader, %middle.block
  %.0166.ph = phi ptr [ %i.dp, %.lr.ph167.preheader ], [ %i.ec, %middle.block ]
  %.1146164.ph = phi i32 [ %.0145172, %.lr.ph167.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader207, %.lr.ph167
  %.0166 = phi ptr [ %i.es, %.lr.ph167 ], [ %.0166.ph, %.lr.ph167.preheader207 ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.1146164.ph, %.lr.ph167.preheader207 ]
  %i.ep = load i16, ptr %.0166, align 1, !tbaa !62
  %i.eq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ep)
  %i.er = zext i16 %i.eq to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.er) ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0166, i64 4 ; 2 uses
  %i.et = icmp ult ptr %i.es, %i.dm
  br i1 %i.et, label %.lr.ph167, label %.loopexit, !llvm.loop !5289

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !139
  br label %.critedge

.critedge:                                        ; preds = %.loopexit184, %bb.l, %bb.g, %bb.h, %bb.f, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, %bb.i, %bb.j, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit, %bb.m, %bb.c, %bb.p, %bb.o, %bb.d, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.o ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.loopexit184 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  br i1 %.not, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.j = load i16, ptr %0, align 1, !tbaa !62
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  switch i16 %i.k, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit [
    i16 0, label %bb.c
    i16 2, label %bb.f
    i16 4, label %bb.j
    i16 6, label %bb.k
    i16 8, label %bb.o
    i16 10, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !351  ; 2 uses
  %i.n = shl nuw i32 %i.m, 1                      ; 2 uses
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.d, !prof !787

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.e, !prof !787

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !359
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.d
  %i.y = trunc i64 %i.x to i32
  %.not12.i.i.i.i.i = icmp ugt i32 %i.n, %i.y
  br i1 %.not12.i.i.i.i.i, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i, !prof !787

_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !363
  %i.ab = sub i32 %i.aa, %i.n                     ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !363
  %i.ac = icmp sgt i32 %i.ab, 0
  br label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit

bb.f:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !361
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i = icmp ugt i64 %i.ah, %i.aj
  br i1 %.not.i.i, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.g, !prof !787

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ak = load i16, ptr %i.a, align 1, !tbaa !62
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak) ; 2 uses
  %i.am = icmp ugt i16 %i.al, 5
  br i1 %i.am, label %bb.h, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, !prof !383

bb.h:                                             ; preds = %bb.g
  %i.an = zext i16 %i.al to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !62
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32
  %i.as = mul nuw i32 %i.ar, %i.an                ; 2 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.af, %i.au
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !361
  %i.ax = zext i32 %i.aw to i64
  %.not.i.i.i.i = icmp ugt i64 %i.av, %i.ax
  br i1 %.not.i.i.i.i, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.i, !prof !787

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !359
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.af
  %i.bc = trunc i64 %i.bb to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.as, %i.bc
  br i1 %.not12.i.i.i.i, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, !prof !787

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i: ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !363
  %i.bf = sub i32 %i.be, %i.as                    ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !363
  %i.bg = icmp sgt i32 %i.bf, 0
  br label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit

bb.j:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.bh = tail call noundef zeroext i1 @_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull %1)
  br label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit

bb.k:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.bk = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
end_hunk_0
begin_hunk_1_@_ZNK3AAT18ContextualSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t:bb.a
  %wide.trip.count.i.i.i = zext nneg i32 %.029.lcssa to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.g, !llvm.loop !5291

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !360
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = load i32, ptr %i.o, align 8, !tbaa !361
  %i.at = zext i32 %i.as to i64
  %.not.i.not.i.i.i.i.i = icmp ugt i64 %i.ar, %i.at
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i, !prof !48

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i: ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.au = load i32, ptr %i.am, align 1, !tbaa !58
  %i.av = call noundef i32 @llvm.bswap.i32(i32 %i.au)
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aw
  %i.ay = call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.ax, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.ay, label %bb.f, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !669

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02930 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2, %.lr.ph ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !62 ; 2 uses
  %i.bc = call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i32
  %.not = icmp eq i16 %i.bb, -1
  %i.be = add nuw nsw i32 %i.bd, 1
  %.sroa.speculated18 = call i32 @llvm.umax.i32(i32 %.02930, i32 %i.be)
  %.1 = select i1 %.not, i32 %.02930, i32 %.sroa.speculated18 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !62 ; 2 uses
  %i.bh = call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32
  %.not12 = icmp eq i16 %i.bg, -1
  %i.bj = add nuw nsw i32 %i.bi, 1
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.1, i32 %i.bj)
  %.2 = select i1 %.not12, i32 %.1, i32 %.sroa.speculated ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5292

_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.f, %bb.g, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i, %._crit_edge, %bb.c, %bb.d, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i, %bb.e, %bb.a
  %.011 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ false, %bb.c ], [ false, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.g ], [ true, %bb.f ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  ret i1 %.011
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.k = load i32, ptr %0, align 1, !tbaa !58
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !48

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !669

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !58
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !58
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !58
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.aq = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op = add i64 %i.aq, %i.ac
  %invariant.op218 = add i64 %invariant.op, 2
  %invariant.op220 = add i64 %i.aq, %i.ac
  %i.ar = xor i64 %i.aq, -1
  %i.as = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op221 = add i64 %i.as, %i.ah
  %invariant.op223 = add i64 %invariant.op221, 8
  %invariant.op225 = add i64 %i.as, %i.ah
  %i.at = xor i64 %i.as, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5293

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 6 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.au = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.av = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.au, i32 %i.am) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 0       ; 2 uses
  %i.ax = extractvalue { i32, i1 } %i.av, 1
  br i1 %i.ax, label %.critedge, label %bb.g, !prof !787

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.ao, %i.az
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !361
  %i.bc = zext i32 %i.bb to i64
  %.not.i.i83 = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !787

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ao
  %i.bg = trunc i64 %i.bf to i32
  %.not12.i.i84 = icmp ugt i32 %i.aw, %i.bg
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !787

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.bh = load i32, ptr %i.an, align 4, !tbaa !363
  %i.bi = sub i32 %i.bh, %i.aw                    ; 3 uses
  store i32 %i.bi, ptr %i.an, align 4, !tbaa !363
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %.critedge, !prof !669

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bk = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bk
  %i.bl = add i32 %.neg79, %i.bi                  ; 2 uses
  store i32 %i.bl, ptr %i.an, align 4, !tbaa !363
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.au, i32 %i.ak)
  %i.bo = extractvalue { i32, i1 } %i.bn, 1
  br i1 %i.bo, label %.critedge, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.bp = mul i32 %i.au, %i.ak
  %i.bq = zext i32 %i.bp to i64
  %.idx80 = shl nuw nsw i64 %i.bq, 1              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bs = mul i32 %.062174, %i.ak
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.bt, 1                ; 3 uses
  %i.bu = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.bu, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass219 = add i64 %.idx, %invariant.op218
  %.reass = add i64 %.idx80, %invariant.op220
  %i.bw = tail call i64 @llvm.umax.i64(i64 %.reass219, i64 %.reass)
  %i.bx = add i64 %i.bw, %i.ar
  %3 = shl nuw nsw i64 %i.bt, 1
  %i.by = add nuw nsw i64 %3, %i.ac
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = add nuw i64 %i.ca, 1                    ; 2 uses
  %min.iters.check194 = icmp ult i64 %i.bz, 14
  br i1 %min.iters.check194, label %.lr.ph162.preheader211, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph162.preheader
  %n.vec196 = and i64 %i.cb, -8                   ; 3 uses
  %i.cc = shl i64 %n.vec196, 1
  %i.cd = getelementptr i8, ptr %i.bv, i64 %i.cc
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph195
  %index200 = phi i64 [ 0, %vector.ph195 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %vec.phi201 = phi <4 x i32> [ %broadcast.splat198, %vector.ph195 ], [ %i.cm, %vector.body199 ]
  %vec.phi202 = phi <4 x i32> [ %broadcast.splat198, %vector.ph195 ], [ %i.cn, %vector.body199 ]
  %i.ce = shl i64 %index200, 1
  %next.gep203 = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep203, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep203, align 1, !tbaa !62
  %wide.load204 = load <4 x i16>, ptr %i.cf, align 1, !tbaa !62
  %i.cg = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ch = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load204)
  %i.ci = zext <4 x i16> %i.cg to <4 x i32>
  %i.cj = zext <4 x i16> %i.ch to <4 x i32>
  %i.ck = add nuw nsw <4 x i32> %i.ci, splat (i32 1)
  %i.cl = add nuw nsw <4 x i32> %i.cj, splat (i32 1)
  %i.cm = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi201, <4 x i32> %i.ck) ; 2 uses
  %i.cn = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi202, <4 x i32> %i.cl) ; 2 uses
  %index.next205 = add nuw i64 %index200, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next205, %n.vec196
  br i1 %i.co, label %middle.block206, label %vector.body199, !llvm.loop !5294

middle.block206:                                  ; preds = %vector.body199
  %rdx.minmax207 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cm, <4 x i32> %i.cn)
  %i.cp = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax207) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec196
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader211

.lr.ph162.preheader211:                           ; preds = %.lr.ph162.preheader, %middle.block206
  %.058161.ph = phi ptr [ %i.bv, %.lr.ph162.preheader ], [ %i.cd, %middle.block206 ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cp, %middle.block206 ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader211, %.lr.ph162
  %.058161 = phi ptr [ %i.cu, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader211 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader211 ]
  %i.cq = load i16, ptr %.058161, align 1, !tbaa !62
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cs, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.ct) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.br
  br i1 %i.cv, label %.lr.ph162, label %.loopexit184, !llvm.loop !5295

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block206, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cp, %middle.block206 ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.au, %bb.k ], [ %i.au, %middle.block206 ], [ %i.au, %.lr.ph162 ] ; 2 uses
  %i.cw = shl nuw nsw i32 %.5150, 3               ; 2 uses
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.ap, %i.cy
  %i.da = load i32, ptr %i.g, align 8, !tbaa !361
  %i.db = zext i32 %i.da to i64
  %.not.i.i.i = icmp ugt i64 %i.cz, %i.db
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !787

bb.l:                                             ; preds = %.loopexit184
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.ap
  %i.df = trunc i64 %i.de to i32
  %.not12.i.i.i = icmp ugt i32 %i.cw, %i.df
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit, !prof !787

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.dg = load i32, ptr %i.an, align 4, !tbaa !363
  %i.dh = sub i32 %i.dg, %i.cw                    ; 3 uses
  store i32 %i.dh, ptr %i.an, align 4, !tbaa !363
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %bb.m, label %.critedge, !prof !669

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dj = add i32 %i.dh, %.neg81                  ; 2 uses
  store i32 %i.dj, ptr %i.an, align 4, !tbaa !363
  %i.dk = icmp slt i32 %i.dj, 1
  br i1 %i.dk, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = zext i32 %.5150 to i64                  ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.dl
  %i.dn = icmp ult i32 %.0147170, %.5150
  br i1 %i.dn, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.do = zext i32 %.0147170 to i64               ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.do ; 10 uses
  %i.dq = shl nuw nsw i64 %i.do, 3
  %.reass224 = add i64 %i.dq, %invariant.op223
  %i.dr = shl nuw nsw i64 %i.dl, 3
  %.reass226 = add i64 %i.dr, %invariant.op225
  %i.ds = tail call i64 @llvm.umax.i64(i64 %.reass224, i64 %.reass226)
  %i.dt = add i64 %i.ds, %i.at
  %4 = shl nuw nsw i64 %i.do, 3
  %i.du = add nuw nsw i64 %4, %i.ah
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dv, 64
  br i1 %min.iters.check, label %.lr.ph167.preheader210, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167.preheader
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %i.dy = and i64 %i.dx, 7                        ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = select i1 %i.dz, i64 8, i64 %i.dy
  %n.vec = sub nsw i64 %i.dx, %i.ea               ; 2 uses
  %i.eb = shl i64 %n.vec, 3
  %i.ec = getelementptr i8, ptr %i.dp, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0145172, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ff, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fg, %vector.body ]
  %i.ed = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.ed
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep186 = getelementptr i8, ptr %i.ee, i64 8
  %i.ef = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep187 = getelementptr i8, ptr %i.ef, i64 16
  %i.eg = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep188 = getelementptr i8, ptr %i.eg, i64 24
  %i.eh = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep189 = getelementptr i8, ptr %i.eh, i64 32
  %i.ei = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep190 = getelementptr i8, ptr %i.ei, i64 40
  %i.ej = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep191 = getelementptr i8, ptr %i.ej, i64 48
  %i.ek = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep192 = getelementptr i8, ptr %i.ek, i64 56
  %i.el = load i16, ptr %next.gep, align 1, !tbaa !62
  %i.em = load i16, ptr %next.gep186, align 1, !tbaa !62
  %i.en = load i16, ptr %next.gep187, align 1, !tbaa !62
  %i.eo = load i16, ptr %next.gep188, align 1, !tbaa !62
  %i.ep = insertelement <4 x i16> poison, i16 %i.el, i64 0
  %i.eq = insertelement <4 x i16> %i.ep, i16 %i.em, i64 1
  %i.er = insertelement <4 x i16> %i.eq, i16 %i.en, i64 2
  %i.es = insertelement <4 x i16> %i.er, i16 %i.eo, i64 3
  %i.et = load i16, ptr %next.gep189, align 1, !tbaa !62
  %i.eu = load i16, ptr %next.gep190, align 1, !tbaa !62
  %i.ev = load i16, ptr %next.gep191, align 1, !tbaa !62
  %i.ew = load i16, ptr %next.gep192, align 1, !tbaa !62
  %i.ex = insertelement <4 x i16> poison, i16 %i.et, i64 0
  %i.ey = insertelement <4 x i16> %i.ex, i16 %i.eu, i64 1
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 2
  %i.fa = insertelement <4 x i16> %i.ez, i16 %i.ew, i64 3
  %i.fb = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.es)
  %i.fc = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.fa)
  %i.fd = zext <4 x i16> %i.fb to <4 x i32>
  %i.fe = zext <4 x i16> %i.fc to <4 x i32>
  %i.ff = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.fd) ; 2 uses
  %i.fg = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.fe) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !5296

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ff, <4 x i32> %i.fg)
  %i.fi = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  br label %.lr.ph167.preheader210

.lr.ph167.preheader210:                           ; preds = %.lr.ph167.preheader, %middle.block
  %.0166.ph = phi ptr [ %i.dp, %.lr.ph167.preheader ], [ %i.ec, %middle.block ]
  %.1146164.ph = phi i32 [ %.0145172, %.lr.ph167.preheader ], [ %i.fi, %middle.block ]
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader210, %.lr.ph167
  %.0166 = phi ptr [ %i.fm, %.lr.ph167 ], [ %.0166.ph, %.lr.ph167.preheader210 ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.1146164.ph, %.lr.ph167.preheader210 ]
  %i.fj = load i16, ptr %.0166, align 1, !tbaa !62
  %i.fk = tail call noundef i16 @llvm.bswap.i16(i16 %i.fj)
  %i.fl = zext i16 %i.fk to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.fl) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0166, i64 8 ; 2 uses
  %i.fn = icmp ult ptr %i.fm, %i.dm
  br i1 %i.fn, label %.lr.ph167, label %.loopexit, !llvm.loop !5297

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !139
  br label %.critedge

.critedge:                                        ; preds = %.loopexit184, %bb.l, %bb.g, %bb.h, %bb.f, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, %bb.i, %bb.j, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit, %bb.m, %bb.c, %bb.p, %bb.o, %bb.d, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.o ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.loopexit184 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  br i1 %.not, label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.j = load i16, ptr %0, align 1, !tbaa !62
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  switch i16 %i.k, label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit [
    i16 0, label %bb.c
    i16 2, label %bb.f
    i16 4, label %bb.j
    i16 6, label %bb.k
    i16 8, label %bb.o
    i16 10, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !351  ; 2 uses
  %i.n = shl nuw i32 %i.m, 1                      ; 2 uses
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.d, !prof !787

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.e, !prof !787

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !359
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.d
  %i.y = trunc i64 %i.x to i32
  %.not12.i.i.i.i.i = icmp ugt i32 %i.n, %i.y
  br i1 %.not12.i.i.i.i.i, label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT14UnsizedArrayOfINS_11HBGlyphID16EE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i, !prof !787

_ZNK2OT14UnsizedArrayOfINS_11HBGlyphID16EE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !363
  %i.ab = sub i32 %i.aa, %i.n                     ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !363
  %i.ac = icmp sgt i32 %i.ab, 0
  br label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit

bb.f:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !361
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i = icmp ugt i64 %i.ah, %i.aj
  br i1 %.not.i.i, label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.g, !prof !787

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ak = load i16, ptr %i.a, align 1, !tbaa !62
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak) ; 2 uses
  %i.am = icmp ugt i16 %i.al, 5
  br i1 %i.am, label %bb.h, label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit, !prof !383

bb.h:                                             ; preds = %bb.g
  %i.an = zext i16 %i.al to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !62
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32
  %i.as = mul nuw i32 %i.ar, %i.an                ; 2 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.af, %i.au
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !361
  %i.ax = zext i32 %i.aw to i64
  %.not.i.i.i.i = icmp ugt i64 %i.av, %i.ax
  br i1 %.not.i.i.i.i, label %_ZNK3AAT13LookupFormat0IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.i, !prof !787

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !359
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.af
  %i.bc = trunc i64 %i.bb to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.as, %i.bc
end_hunk_1
begin_hunk_2_@_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !361
  %i.ca = zext i32 %i.bz to i64
  %.not7.i = icmp ugt i64 %i.by, %i.ca
  br i1 %.not7.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.l, !prof !787

bb.l:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i5, i64 2
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !62
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc) ; 2 uses
  %i.ce = load i16, ptr %.0.i5, align 1, !tbaa !62
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce) ; 2 uses
  %.not.i6 = icmp ugt i16 %i.cd, %i.cf
  br i1 %.not.i6, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.m, !prof !787

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !360
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.bw, %i.ch
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !361
  %i.ck = zext i32 %i.cj to i64
  %.not.i.not.i = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not.i.not.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.n, !prof !48

bb.n:                                             ; preds = %bb.m
  %narrow.i = sub nuw i16 %i.cf, %i.cd
  %i.cl = zext i16 %narrow.i to i32
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = add nuw nsw i32 %i.cm, 2                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i5, i64 4
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !62
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !360
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = load i32, ptr %i.h, align 8, !tbaa !361
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.o, !prof !787

bb.o:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.y, align 8, !tbaa !359
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cu
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %i.cn, %i.dc
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit, !prof !787

_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit: ; preds = %bb.o
  %i.dd = load i32, ptr %i.ad, align 4, !tbaa !363
  %i.de = sub i32 %i.dd, %i.cn                    ; 2 uses
  store i32 %i.de, ptr %i.ad, align 4, !tbaa !363
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.h, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !669

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.h, %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit, %bb.l, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit, %bb.m, %bb.n, %bb.o, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit, %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  %.2.i = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit ], [ false, %bb.n ], [ false, %bb.m ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit ], [ false, %bb.l ], [ false, %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit ], [ true, %bb.h ], [ false, %bb.o ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.k = load i32, ptr %0, align 1, !tbaa !58
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !48

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !669

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !58
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !58
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !58
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.aq = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op = add i64 %i.aq, %i.ac
  %invariant.op190 = add i64 %invariant.op, 2
  %invariant.op192 = add i64 %i.aq, %i.ac
  %i.ar = xor i64 %i.aq, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5299

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 5 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.as = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.at = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.am) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.av, label %.critedge, label %bb.g, !prof !787

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ao, %i.ax
  %i.az = load i32, ptr %i.g, align 8, !tbaa !361
  %i.ba = zext i32 %i.az to i64
  %.not.i.i83 = icmp ugt i64 %i.ay, %i.ba
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !787

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = trunc i64 %i.bd to i32
  %.not12.i.i84 = icmp ugt i32 %i.au, %i.be
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !787

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !363
  %i.bg = sub i32 %i.bf, %i.au                    ; 3 uses
  store i32 %i.bg, ptr %i.an, align 4, !tbaa !363
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %.critedge, !prof !669

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bi = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bi
  %i.bj = add i32 %.neg79, %i.bg                  ; 2 uses
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !363
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.ak)
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.critedge, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.bn = mul i32 %i.as, %i.ak
  %i.bo = zext i32 %i.bn to i64
  %.idx80 = shl nuw nsw i64 %i.bo, 1              ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bq = mul i32 %.062174, %i.ak
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.br, 1                ; 3 uses
  %i.bs = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.bs, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass191 = add i64 %.idx, %invariant.op190
  %.reass = add i64 %.idx80, %invariant.op192
  %i.bu = tail call i64 @llvm.umax.i64(i64 %.reass191, i64 %.reass)
  %i.bv = add i64 %i.bu, %i.ar
  %3 = shl nuw nsw i64 %i.br, 1
  %i.bw = add nuw nsw i64 %3, %i.ac
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 14
  br i1 %min.iters.check, label %.lr.ph162.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.preheader
  %n.vec = and i64 %i.bz, -8                      ; 3 uses
  %i.ca = shl i64 %n.vec, 1
  %i.cb = getelementptr i8, ptr %i.bt, i64 %i.ca
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ck, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cl, %vector.body ]
  %i.cc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !62
  %wide.load186 = load <4 x i16>, ptr %i.cd, align 1, !tbaa !62
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.cf = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load186)
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = zext <4 x i16> %i.cf to <4 x i32>
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = add nuw nsw <4 x i32> %i.ch, splat (i32 1)
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ci) ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.cj) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !5300

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ck, <4 x i32> %i.cl)
  %i.cn = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader187

.lr.ph162.preheader187:                           ; preds = %.lr.ph162.preheader, %middle.block
  %.058161.ph = phi ptr [ %i.bt, %.lr.ph162.preheader ], [ %i.cb, %middle.block ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader187, %.lr.ph162
  %.058161 = phi ptr [ %i.cs, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader187 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader187 ]
  %i.co = load i16, ptr %.058161, align 1, !tbaa !62
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cq, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cr) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.bp
  br i1 %i.ct, label %.lr.ph162, label %.loopexit184, !llvm.loop !5301

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cn, %middle.block ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.as, %bb.k ], [ %i.as, %middle.block ], [ %i.as, %.lr.ph162 ] ; 2 uses
  %i.cu = mul i32 %.5150, 6                       ; 2 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.ap, %i.cw
  %i.cy = load i32, ptr %i.g, align 8, !tbaa !361
  %i.cz = zext i32 %i.cy to i64
  %.not.i.i.i = icmp ugt i64 %i.cx, %i.cz
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !787

bb.l:                                             ; preds = %.loopexit184
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.ap
  %i.dd = trunc i64 %i.dc to i32
  %.not12.i.i.i = icmp ugt i32 %i.cu, %i.dd
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit, !prof !787

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.de = load i32, ptr %i.an, align 4, !tbaa !363
  %i.df = sub i32 %i.de, %i.cu                    ; 3 uses
  store i32 %i.df, ptr %i.an, align 4, !tbaa !363
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.m, label %.critedge, !prof !669

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dh = add i32 %i.df, %.neg81                  ; 2 uses
  store i32 %i.dh, ptr %i.an, align 4, !tbaa !363
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = zext nneg i32 %.5150 to i64
  %i.dk = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dj
  %i.dl = icmp ult i32 %.0147170, %.5150
  br i1 %i.dl, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dm = zext nneg i32 %.0147170 to i64
  %i.dn = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dm
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.0166 = phi ptr [ %i.dr, %.lr.ph167 ], [ %i.dn, %.lr.ph167.preheader ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.0145172, %.lr.ph167.preheader ]
  %i.do = load i16, ptr %.0166, align 1, !tbaa !62
  %i.dp = tail call noundef i16 @llvm.bswap.i16(i16 %i.do)
  %i.dq = zext i16 %i.dp to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.dq) ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0166, i64 6 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dk
  br i1 %i.ds, label %.lr.ph167, label %.loopexit, !llvm.loop !5302

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !139
  br label %.critedge

.critedge:                                        ; preds = %.loopexit184, %bb.l, %bb.g, %bb.h, %bb.f, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, %bb.i, %bb.j, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit, %bb.m, %bb.c, %bb.p, %bb.o, %bb.d, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.o ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.loopexit184 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.k = load i32, ptr %0, align 1, !tbaa !58
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !48

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !669

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !58
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !58
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !58
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.aq = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op = add i64 %i.aq, %i.ac
  %invariant.op218 = add i64 %invariant.op, 2
  %invariant.op220 = add i64 %i.aq, %i.ac
  %i.ar = xor i64 %i.aq, -1
  %i.as = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op221 = add i64 %i.as, %i.ah
  %invariant.op223 = add i64 %invariant.op221, 8
  %invariant.op225 = add i64 %i.as, %i.ah
  %i.at = xor i64 %i.as, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5303

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 6 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.au = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.av = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.au, i32 %i.am) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 0       ; 2 uses
  %i.ax = extractvalue { i32, i1 } %i.av, 1
  br i1 %i.ax, label %.critedge, label %bb.g, !prof !787

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.ao, %i.az
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !361
  %i.bc = zext i32 %i.bb to i64
  %.not.i.i83 = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !787

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ao
  %i.bg = trunc i64 %i.bf to i32
  %.not12.i.i84 = icmp ugt i32 %i.aw, %i.bg
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !787

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.bh = load i32, ptr %i.an, align 4, !tbaa !363
  %i.bi = sub i32 %i.bh, %i.aw                    ; 3 uses
  store i32 %i.bi, ptr %i.an, align 4, !tbaa !363
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %.critedge, !prof !669

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bk = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bk
  %i.bl = add i32 %.neg79, %i.bi                  ; 2 uses
  store i32 %i.bl, ptr %i.an, align 4, !tbaa !363
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.au, i32 %i.ak)
  %i.bo = extractvalue { i32, i1 } %i.bn, 1
  br i1 %i.bo, label %.critedge, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.bp = mul i32 %i.au, %i.ak
  %i.bq = zext i32 %i.bp to i64
  %.idx80 = shl nuw nsw i64 %i.bq, 1              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bs = mul i32 %.062174, %i.ak
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.bt, 1                ; 3 uses
  %i.bu = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.bu, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass219 = add i64 %.idx, %invariant.op218
  %.reass = add i64 %.idx80, %invariant.op220
  %i.bw = tail call i64 @llvm.umax.i64(i64 %.reass219, i64 %.reass)
  %i.bx = add i64 %i.bw, %i.ar
  %3 = shl nuw nsw i64 %i.bt, 1
  %i.by = add nuw nsw i64 %3, %i.ac
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = add nuw i64 %i.ca, 1                    ; 2 uses
  %min.iters.check194 = icmp ult i64 %i.bz, 14
  br i1 %min.iters.check194, label %.lr.ph162.preheader211, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph162.preheader
  %n.vec196 = and i64 %i.cb, -8                   ; 3 uses
  %i.cc = shl i64 %n.vec196, 1
  %i.cd = getelementptr i8, ptr %i.bv, i64 %i.cc
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph195
  %index200 = phi i64 [ 0, %vector.ph195 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %vec.phi201 = phi <4 x i32> [ %broadcast.splat198, %vector.ph195 ], [ %i.cm, %vector.body199 ]
  %vec.phi202 = phi <4 x i32> [ %broadcast.splat198, %vector.ph195 ], [ %i.cn, %vector.body199 ]
  %i.ce = shl i64 %index200, 1
  %next.gep203 = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep203, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep203, align 1, !tbaa !62
  %wide.load204 = load <4 x i16>, ptr %i.cf, align 1, !tbaa !62
  %i.cg = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ch = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load204)
  %i.ci = zext <4 x i16> %i.cg to <4 x i32>
  %i.cj = zext <4 x i16> %i.ch to <4 x i32>
  %i.ck = add nuw nsw <4 x i32> %i.ci, splat (i32 1)
  %i.cl = add nuw nsw <4 x i32> %i.cj, splat (i32 1)
  %i.cm = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi201, <4 x i32> %i.ck) ; 2 uses
  %i.cn = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi202, <4 x i32> %i.cl) ; 2 uses
  %index.next205 = add nuw i64 %index200, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next205, %n.vec196
  br i1 %i.co, label %middle.block206, label %vector.body199, !llvm.loop !5304

middle.block206:                                  ; preds = %vector.body199
  %rdx.minmax207 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cm, <4 x i32> %i.cn)
  %i.cp = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax207) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec196
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader211

.lr.ph162.preheader211:                           ; preds = %.lr.ph162.preheader, %middle.block206
  %.058161.ph = phi ptr [ %i.bv, %.lr.ph162.preheader ], [ %i.cd, %middle.block206 ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cp, %middle.block206 ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader211, %.lr.ph162
  %.058161 = phi ptr [ %i.cu, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader211 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader211 ]
  %i.cq = load i16, ptr %.058161, align 1, !tbaa !62
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cs, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.ct) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.br
  br i1 %i.cv, label %.lr.ph162, label %.loopexit184, !llvm.loop !5305

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block206, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cp, %middle.block206 ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.au, %bb.k ], [ %i.au, %middle.block206 ], [ %i.au, %.lr.ph162 ] ; 2 uses
  %i.cw = shl nuw nsw i32 %.5150, 3               ; 2 uses
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.ap, %i.cy
  %i.da = load i32, ptr %i.g, align 8, !tbaa !361
  %i.db = zext i32 %i.da to i64
  %.not.i.i.i = icmp ugt i64 %i.cz, %i.db
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !787

bb.l:                                             ; preds = %.loopexit184
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.ap
  %i.df = trunc i64 %i.de to i32
  %.not12.i.i.i = icmp ugt i32 %i.cw, %i.df
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit, !prof !787

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.dg = load i32, ptr %i.an, align 4, !tbaa !363
  %i.dh = sub i32 %i.dg, %i.cw                    ; 3 uses
  store i32 %i.dh, ptr %i.an, align 4, !tbaa !363
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %bb.m, label %.critedge, !prof !669

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dj = add i32 %i.dh, %.neg81                  ; 2 uses
  store i32 %i.dj, ptr %i.an, align 4, !tbaa !363
  %i.dk = icmp slt i32 %i.dj, 1
  br i1 %i.dk, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = zext i32 %.5150 to i64                  ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.dl
  %i.dn = icmp ult i32 %.0147170, %.5150
  br i1 %i.dn, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.do = zext i32 %.0147170 to i64               ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.do ; 10 uses
  %i.dq = shl nuw nsw i64 %i.do, 3
  %.reass224 = add i64 %i.dq, %invariant.op223
  %i.dr = shl nuw nsw i64 %i.dl, 3
  %.reass226 = add i64 %i.dr, %invariant.op225
  %i.ds = tail call i64 @llvm.umax.i64(i64 %.reass224, i64 %.reass226)
  %i.dt = add i64 %i.ds, %i.at
  %4 = shl nuw nsw i64 %i.do, 3
  %i.du = add nuw nsw i64 %4, %i.ah
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dv, 64
  br i1 %min.iters.check, label %.lr.ph167.preheader210, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167.preheader
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %i.dy = and i64 %i.dx, 7                        ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = select i1 %i.dz, i64 8, i64 %i.dy
  %n.vec = sub nsw i64 %i.dx, %i.ea               ; 2 uses
  %i.eb = shl i64 %n.vec, 3
  %i.ec = getelementptr i8, ptr %i.dp, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0145172, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ff, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fg, %vector.body ]
  %i.ed = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.ed
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep186 = getelementptr i8, ptr %i.ee, i64 8
  %i.ef = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep187 = getelementptr i8, ptr %i.ef, i64 16
  %i.eg = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep188 = getelementptr i8, ptr %i.eg, i64 24
  %i.eh = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep189 = getelementptr i8, ptr %i.eh, i64 32
  %i.ei = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep190 = getelementptr i8, ptr %i.ei, i64 40
  %i.ej = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep191 = getelementptr i8, ptr %i.ej, i64 48
  %i.ek = getelementptr i8, ptr %i.dp, i64 %i.ed
  %next.gep192 = getelementptr i8, ptr %i.ek, i64 56
  %i.el = load i16, ptr %next.gep, align 1, !tbaa !62
  %i.em = load i16, ptr %next.gep186, align 1, !tbaa !62
  %i.en = load i16, ptr %next.gep187, align 1, !tbaa !62
  %i.eo = load i16, ptr %next.gep188, align 1, !tbaa !62
  %i.ep = insertelement <4 x i16> poison, i16 %i.el, i64 0
  %i.eq = insertelement <4 x i16> %i.ep, i16 %i.em, i64 1
  %i.er = insertelement <4 x i16> %i.eq, i16 %i.en, i64 2
  %i.es = insertelement <4 x i16> %i.er, i16 %i.eo, i64 3
  %i.et = load i16, ptr %next.gep189, align 1, !tbaa !62
  %i.eu = load i16, ptr %next.gep190, align 1, !tbaa !62
  %i.ev = load i16, ptr %next.gep191, align 1, !tbaa !62
  %i.ew = load i16, ptr %next.gep192, align 1, !tbaa !62
  %i.ex = insertelement <4 x i16> poison, i16 %i.et, i64 0
  %i.ey = insertelement <4 x i16> %i.ex, i16 %i.eu, i64 1
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 2
  %i.fa = insertelement <4 x i16> %i.ez, i16 %i.ew, i64 3
  %i.fb = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.es)
  %i.fc = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.fa)
  %i.fd = zext <4 x i16> %i.fb to <4 x i32>
  %i.fe = zext <4 x i16> %i.fc to <4 x i32>
  %i.ff = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.fd) ; 2 uses
  %i.fg = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.fe) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !5306

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ff, <4 x i32> %i.fg)
  %i.fi = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  br label %.lr.ph167.preheader210

.lr.ph167.preheader210:                           ; preds = %.lr.ph167.preheader, %middle.block
  %.0166.ph = phi ptr [ %i.dp, %.lr.ph167.preheader ], [ %i.ec, %middle.block ]
  %.1146164.ph = phi i32 [ %.0145172, %.lr.ph167.preheader ], [ %i.fi, %middle.block ]
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader210, %.lr.ph167
  %.0166 = phi ptr [ %i.fm, %.lr.ph167 ], [ %.0166.ph, %.lr.ph167.preheader210 ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.1146164.ph, %.lr.ph167.preheader210 ]
  %i.fj = load i16, ptr %.0166, align 1, !tbaa !62
  %i.fk = tail call noundef i16 @llvm.bswap.i16(i16 %i.fj)
  %i.fl = zext i16 %i.fk to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.fl) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0166, i64 8 ; 2 uses
  %i.fn = icmp ult ptr %i.fm, %i.dm
  br i1 %i.fn, label %.lr.ph167, label %.loopexit, !llvm.loop !5307

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !139
  br label %.critedge

.critedge:                                        ; preds = %.loopexit184, %bb.l, %bb.g, %bb.h, %bb.f, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, %bb.i, %bb.j, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit, %bb.m, %bb.c, %bb.p, %bb.o, %bb.d, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.o ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.loopexit184 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3AAT8mortmorxINS_4morxENS_13ExtendedTypesELj1836020344EE13accelerator_tD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !506
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN3AAT33hb_aat_layout_chain_accelerator_t7destroyEv.exit, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !512
  tail call void @free(ptr noundef %i.e) #63
  %i.f = load ptr, ptr %0, align 8, !tbaa !51     ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN13hb_blob_ptr_tIN3AAT4morxEE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 0 uses
  %i.h = load atomic i32, ptr %i.f monotonic, align 4
  %.not.i7.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i7.i.i.i.i, label %_ZN13hb_blob_ptr_tIN3AAT4morxEE7destroyEv.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i, !prof !48

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i: ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %.not6.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not6.i.i.i.i, label %bb.c, label %_ZN13hb_blob_ptr_tIN3AAT4morxEE7destroyEv.exit

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i
  store atomic i32 -57005, ptr %i.f monotonic, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 5 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i3.i.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.m = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.k) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.k) #63
  store atomic ptr null, ptr %i.j monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !364  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !365
  tail call void %i.o(ptr noundef %i.q) #63, !inline_history !5308
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i:  ; preds = %bb.e, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i
  tail call void @free(ptr noundef nonnull %i.f) #63
  br label %_ZN13hb_blob_ptr_tIN3AAT4morxEE7destroyEv.exit

_ZN13hb_blob_ptr_tIN3AAT4morxEE7destroyEv.exit:   ; preds = %._crit_edge, %bb.b, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8 ; 8 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN3AAT16hb_aat_scratch_tD2Ev.exit, label %bb.f, !prof !48

bb.f:                                             ; preds = %_ZN13hb_blob_ptr_tIN3AAT4morxEE7destroyEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !415
  %i.v = add i32 %i.u, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.v, -2
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !411
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !416
  tail call void @free(ptr noundef %i.y) #63
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !417
  %i.ab = add i32 %i.aa, -1
  %spec.select.i.i1.i.i = icmp ult i32 %i.ab, -2
  br i1 %spec.select.i.i1.i.i, label %bb.h, label %_ZN12hb_bit_set_t4finiEv.exit.i

bb.h:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 0, ptr %i.ac, align 4, !tbaa !410
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  tail call void @free(ptr noundef %i.ae) #63
  br label %_ZN12hb_bit_set_t4finiEv.exit.i

_ZN12hb_bit_set_t4finiEv.exit.i:                  ; preds = %bb.h, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i
  tail call void @free(ptr noundef nonnull %i.s) #63
  br label %_ZN3AAT16hb_aat_scratch_tD2Ev.exit
end_hunk_2
begin_hunk_3_@_ZNK3AAT12KerxSubTable8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS3_DpOT0_:bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.bt = load i32, ptr %i.bd, align 1, !tbaa !58
  %i.bu = tail call noundef i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %i.bx = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.bw, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.bx, label %bb.j, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !669

bb.j:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.by = load i32, ptr %i.bm, align 1, !tbaa !58
  %i.bz = tail call noundef i32 @llvm.bswap.i32(i32 %i.by) ; 2 uses
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !360
  %i.cb = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = load i32, ptr %i.az, align 8, !tbaa !361
  %i.cf = zext i32 %i.ce to i64
  %.not.i.i.i.i8 = icmp ugt i64 %i.cd, %i.cf
  br i1 %.not.i.i.i.i8, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %i.bc, align 8, !tbaa !359
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cb
  %i.cj = trunc i64 %i.ci to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.bz, %i.cj
  br i1 %.not12.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !363
  %i.cm = sub i32 %i.cl, %i.bz                    ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !363
  %i.cn = icmp sgt i32 %i.cm, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.m:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !360
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !361
  %i.cw = zext i32 %i.cv to i64
  %.not.i.i.i9 = icmp ugt i64 %i.ct, %i.cw
  br i1 %.not.i.i.i9, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.n, !prof !48

bb.n:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cy = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.o:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cz = tail call noundef zeroext i1 @_ZNK3AAT19KerxSubTableFormat6INS_18KerxSubTableHeaderEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i, %bb.i, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i, %bb.h, %bb.g, %bb.f, %_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.o
  %.0 = phi i1 [ %i.cz, %bb.o ], [ true, %bb.a ], [ false, %bb.e ], [ %i.as, %bb.g ], [ %i.cn, %bb.l ], [ false, %bb.d ], [ %i.ah, %_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.i ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.m ], [ %i.cy, %bb.n ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.k = load i32, ptr %0, align 1, !tbaa !58
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !48

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !669

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !58
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !58
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !58
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.aq = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op = add i64 %i.aq, %i.ac
  %invariant.op190 = add i64 %invariant.op, 2
  %invariant.op192 = add i64 %i.aq, %i.ac
  %i.ar = xor i64 %i.aq, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5628

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 5 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.as = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.at = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.am) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.av, label %.critedge, label %bb.g, !prof !787

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ao, %i.ax
  %i.az = load i32, ptr %i.g, align 8, !tbaa !361
  %i.ba = zext i32 %i.az to i64
  %.not.i.i83 = icmp ugt i64 %i.ay, %i.ba
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !787

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = trunc i64 %i.bd to i32
  %.not12.i.i84 = icmp ugt i32 %i.au, %i.be
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !787

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !363
  %i.bg = sub i32 %i.bf, %i.au                    ; 3 uses
  store i32 %i.bg, ptr %i.an, align 4, !tbaa !363
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %.critedge, !prof !669

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bi = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bi
  %i.bj = add i32 %.neg79, %i.bg                  ; 2 uses
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !363
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.ak)
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.critedge, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.bn = mul i32 %i.as, %i.ak
  %i.bo = zext i32 %i.bn to i64
  %.idx80 = shl nuw nsw i64 %i.bo, 1              ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bq = mul i32 %.062174, %i.ak
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.br, 1                ; 3 uses
  %i.bs = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.bs, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass191 = add i64 %.idx, %invariant.op190
  %.reass = add i64 %.idx80, %invariant.op192
  %i.bu = tail call i64 @llvm.umax.i64(i64 %.reass191, i64 %.reass)
  %i.bv = add i64 %i.bu, %i.ar
  %3 = shl nuw nsw i64 %i.br, 1
  %i.bw = add nuw nsw i64 %3, %i.ac
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 14
  br i1 %min.iters.check, label %.lr.ph162.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.preheader
  %n.vec = and i64 %i.bz, -8                      ; 3 uses
  %i.ca = shl i64 %n.vec, 1
  %i.cb = getelementptr i8, ptr %i.bt, i64 %i.ca
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ck, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cl, %vector.body ]
  %i.cc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !62
  %wide.load186 = load <4 x i16>, ptr %i.cd, align 1, !tbaa !62
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.cf = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load186)
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = zext <4 x i16> %i.cf to <4 x i32>
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = add nuw nsw <4 x i32> %i.ch, splat (i32 1)
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ci) ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.cj) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !5629

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ck, <4 x i32> %i.cl)
  %i.cn = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader187

.lr.ph162.preheader187:                           ; preds = %.lr.ph162.preheader, %middle.block
  %.058161.ph = phi ptr [ %i.bt, %.lr.ph162.preheader ], [ %i.cb, %middle.block ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader187, %.lr.ph162
  %.058161 = phi ptr [ %i.cs, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader187 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader187 ]
  %i.co = load i16, ptr %.058161, align 1, !tbaa !62
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cq, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cr) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.bp
  br i1 %i.ct, label %.lr.ph162, label %.loopexit184, !llvm.loop !5630

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cn, %middle.block ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.as, %bb.k ], [ %i.as, %middle.block ], [ %i.as, %.lr.ph162 ] ; 2 uses
  %i.cu = mul i32 %.5150, 6                       ; 2 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.ap, %i.cw
  %i.cy = load i32, ptr %i.g, align 8, !tbaa !361
  %i.cz = zext i32 %i.cy to i64
  %.not.i.i.i = icmp ugt i64 %i.cx, %i.cz
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !787

bb.l:                                             ; preds = %.loopexit184
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.ap
  %i.dd = trunc i64 %i.dc to i32
  %.not12.i.i.i = icmp ugt i32 %i.cu, %i.dd
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit, !prof !787

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.de = load i32, ptr %i.an, align 4, !tbaa !363
  %i.df = sub i32 %i.de, %i.cu                    ; 3 uses
  store i32 %i.df, ptr %i.an, align 4, !tbaa !363
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.m, label %.critedge, !prof !669

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dh = add i32 %i.df, %.neg81                  ; 2 uses
  store i32 %i.dh, ptr %i.an, align 4, !tbaa !363
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = zext nneg i32 %.5150 to i64
  %i.dk = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dj
  %i.dl = icmp ult i32 %.0147170, %.5150
  br i1 %i.dl, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dm = zext nneg i32 %.0147170 to i64
  %i.dn = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dm
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.0166 = phi ptr [ %i.dr, %.lr.ph167 ], [ %i.dn, %.lr.ph167.preheader ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.0145172, %.lr.ph167.preheader ]
  %i.do = load i16, ptr %.0166, align 1, !tbaa !62
  %i.dp = tail call noundef i16 @llvm.bswap.i16(i16 %i.do)
  %i.dq = zext i16 %i.dp to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.dq) ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0166, i64 6 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dk
  br i1 %i.ds, label %.lr.ph167, label %.loopexit, !llvm.loop !5631

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !139
  br label %.critedge

.critedge:                                        ; preds = %.loopexit184, %bb.l, %bb.g, %bb.h, %bb.f, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, %bb.i, %bb.j, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit, %bb.m, %bb.c, %bb.p, %bb.o, %bb.d, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.o ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.loopexit184 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.k = load i32, ptr %0, align 1, !tbaa !58
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !48

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !669

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !58
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !58
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !58
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.aq = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %invariant.op = add i64 %i.aq, %i.ac
  %invariant.op190 = add i64 %invariant.op, 2
  %invariant.op192 = add i64 %i.aq, %i.ac
  %i.ar = xor i64 %i.aq, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5632

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 5 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.as = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.at = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.am) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.av, label %.critedge, label %bb.g, !prof !787

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ao, %i.ax
  %i.az = load i32, ptr %i.g, align 8, !tbaa !361
  %i.ba = zext i32 %i.az to i64
  %.not.i.i83 = icmp ugt i64 %i.ay, %i.ba
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !787

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = trunc i64 %i.bd to i32
  %.not12.i.i84 = icmp ugt i32 %i.au, %i.be
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !787

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !363
  %i.bg = sub i32 %i.bf, %i.au                    ; 3 uses
  store i32 %i.bg, ptr %i.an, align 4, !tbaa !363
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %.critedge, !prof !669

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bi = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bi
  %i.bj = add i32 %.neg79, %i.bg                  ; 2 uses
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !363
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.ak)
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.critedge, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.bn = mul i32 %i.as, %i.ak
  %i.bo = zext i32 %i.bn to i64
  %.idx80 = shl nuw nsw i64 %i.bo, 1              ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bq = mul i32 %.062174, %i.ak
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.br, 1                ; 3 uses
  %i.bs = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.bs, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass191 = add i64 %.idx, %invariant.op190
  %.reass = add i64 %.idx80, %invariant.op192
  %i.bu = tail call i64 @llvm.umax.i64(i64 %.reass191, i64 %.reass)
  %i.bv = add i64 %i.bu, %i.ar
  %3 = shl nuw nsw i64 %i.br, 1
  %i.bw = add nuw nsw i64 %3, %i.ac
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 14
  br i1 %min.iters.check, label %.lr.ph162.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.preheader
  %n.vec = and i64 %i.bz, -8                      ; 3 uses
  %i.ca = shl i64 %n.vec, 1
  %i.cb = getelementptr i8, ptr %i.bt, i64 %i.ca
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ck, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cl, %vector.body ]
  %i.cc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !62
  %wide.load186 = load <4 x i16>, ptr %i.cd, align 1, !tbaa !62
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.cf = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load186)
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = zext <4 x i16> %i.cf to <4 x i32>
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = add nuw nsw <4 x i32> %i.ch, splat (i32 1)
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ci) ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.cj) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !5633

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ck, <4 x i32> %i.cl)
  %i.cn = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader187

.lr.ph162.preheader187:                           ; preds = %.lr.ph162.preheader, %middle.block
  %.058161.ph = phi ptr [ %i.bt, %.lr.ph162.preheader ], [ %i.cb, %middle.block ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader187, %.lr.ph162
  %.058161 = phi ptr [ %i.cs, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader187 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader187 ]
  %i.co = load i16, ptr %.058161, align 1, !tbaa !62
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cq, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cr) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.bp
  br i1 %i.ct, label %.lr.ph162, label %.loopexit184, !llvm.loop !5634

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cn, %middle.block ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.as, %bb.k ], [ %i.as, %middle.block ], [ %i.as, %.lr.ph162 ] ; 2 uses
  %i.cu = mul i32 %.5150, 6                       ; 2 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.ap, %i.cw
  %i.cy = load i32, ptr %i.g, align 8, !tbaa !361
  %i.cz = zext i32 %i.cy to i64
  %.not.i.i.i = icmp ugt i64 %i.cx, %i.cz
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !787

bb.l:                                             ; preds = %.loopexit184
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.ap
  %i.dd = trunc i64 %i.dc to i32
  %.not12.i.i.i = icmp ugt i32 %i.cu, %i.dd
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_19KerxSubTableFormat4INS1_18KerxSubTableHeaderEE9EntryDataEEEEEbPKT_j.exit, !prof !787

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_19KerxSubTableFormat4INS1_18KerxSubTableHeaderEE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.de = load i32, ptr %i.an, align 4, !tbaa !363
  %i.df = sub i32 %i.de, %i.cu                    ; 3 uses
  store i32 %i.df, ptr %i.an, align 4, !tbaa !363
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.m, label %.critedge, !prof !669

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_19KerxSubTableFormat4INS1_18KerxSubTableHeaderEE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dh = add i32 %i.df, %.neg81                  ; 2 uses
  store i32 %i.dh, ptr %i.an, align 4, !tbaa !363
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = zext nneg i32 %.5150 to i64
  %i.dk = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dj
  %i.dl = icmp ult i32 %.0147170, %.5150
  br i1 %i.dl, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dm = zext nneg i32 %.0147170 to i64
  %i.dn = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dm
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.0166 = phi ptr [ %i.dr, %.lr.ph167 ], [ %i.dn, %.lr.ph167.preheader ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.0145172, %.lr.ph167.preheader ]
  %i.do = load i16, ptr %.0166, align 1, !tbaa !62
  %i.dp = tail call noundef i16 @llvm.bswap.i16(i16 %i.do)
  %i.dq = zext i16 %i.dp to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.dq) ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0166, i64 6 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dk
  br i1 %i.ds, label %.lr.ph167, label %.loopexit, !llvm.loop !5635

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !139
  br label %.critedge

.critedge:                                        ; preds = %.loopexit184, %bb.l, %bb.g, %bb.h, %bb.f, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, %bb.i, %bb.j, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_19KerxSubTableFormat4INS1_18KerxSubTableHeaderEE9EntryDataEEEEEbPKT_j.exit, %bb.m, %bb.c, %bb.p, %bb.o, %bb.d, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.o ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_19KerxSubTableFormat4INS1_18KerxSubTableHeaderEE9EntryDataEEEEEbPKT_j.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.loopexit184 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT19KerxSubTableFormat6INS_18KerxSubTableHeaderEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !361
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit16.thread, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 1, !tbaa !58
  %i.m = and i32 %i.l, 16777216
  %.not31 = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !361
  %i.t = zext i32 %i.s to i64
  %.not.i20.not = icmp ugt i64 %i.r, %i.t         ; 2 uses
  br i1 %.not31, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i20.not, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit16.thread, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit16, !prof !48

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit16: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit16.thread, !prof !669

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = load i32, ptr %i.g, align 8, !tbaa !361
  %i.ag = zext i32 %i.af to i64
  %.not.i18.not = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i18.not, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit16.thread, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !48

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ah = load i32, ptr %i.n, align 1, !tbaa !58
  %i.ai = tail call noundef i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.ak, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.al, label %bb.e, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit16.thread, !prof !669

bb.e:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EjLj4EEEEES4_vLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.am = load i32, ptr %i.aa, align 1, !tbaa !58
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am) ; 2 uses
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !360 ; 2 uses
  %i.ap = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
end_hunk_3
