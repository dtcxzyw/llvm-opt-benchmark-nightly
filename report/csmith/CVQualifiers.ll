Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/CVQualifiers?download=true
inline.NumInlined: 806
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12CVQualifiers17random_qualifiersEbN6Effect6AccessERK9CGContext:bb.a
  %i.id = sub i64 %i.ib, %i.ic                    ; 2 uses
  %i.ie = ashr exact i64 %i.id, 3
  %i.if = sub nsw i64 0, %i.ie
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.if
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.id) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit55

_ZNSt13_Bvector_baseISaIbEED2Ev.exit55:           ; preds = %_ZN12CVQualifiersC2ERKSt6vectorIbSaIbEES4_.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ih = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i56, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit57, label %bb.an

bb.an:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit55
  %i.ii = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.ij, %i.ik                    ; 2 uses
  %i.im = ashr exact i64 %i.il, 3
  %i.in = sub nsw i64 0, %i.im
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.in
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.il) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit57

_ZNSt13_Bvector_baseISaIbEED2Ev.exit57:           ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit55, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

.body:                                            ; preds = %bb.ak, %bb.al, %bb.ae, %bb.af, %bb.u, %bb.v, %bb.o, %bb.p, %bb.c, %bb.ag, %bb.q, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.q ], [ %i.bi, %bb.h ], [ %i.hp, %bb.al ], [ %i.gq, %bb.ag ], [ %i.hp, %bb.ak ], [ %i.gg, %bb.ae ], [ %i.bz, %bb.o ], [ %i.dn, %bb.u ], [ %i.x, %bb.c ], [ %i.bz, %bb.p ], [ %i.dn, %bb.v ], [ %i.gg, %bb.af ]
  %i.ip = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i58, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit59, label %bb.ao

bb.ao:                                            ; preds = %.body
  %i.iq = load ptr, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = ashr exact i64 %i.it, 3
  %i.iv = sub nsw i64 0, %i.iu
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.iv
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.it) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit59

_ZNSt13_Bvector_baseISaIbEED2Ev.exit59:           ; preds = %.body, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ix = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i60, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit61, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit59
  %i.iy = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.ix to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 2 uses
  %i.jc = ashr exact i64 %i.jb, 3
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.jd
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jb) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit61

_ZNSt13_Bvector_baseISaIbEED2Ev.exit61:           ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit59, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers23random_looser_volatilesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 11 uses
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  store ptr null, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o                   ; 5 uses
  %i.q = invoke noundef zeroext i1 @_ZN9CGOptions22match_exact_qualifiersEv()
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not2351.not = icmp eq i64 %i.p, 0
  br i1 %.not2351.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35
  %i.t = trunc i64 %i.s to i1                     ; 2 uses
  %.not69 = icmp eq i64 %i.p, 1
  %or.cond = select i1 %i.t, i1 %.not69, i1 false
  br i1 %or.cond, label %bb.c, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  %i.u = invoke noundef i32 @_ZN9DepthSpec20depth_guard_by_depthEi(i32 noundef 1)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %.not.peel = icmp eq i32 %i.u, 0
  br i1 %.not.peel, label %bb.e, label %.loopexit55

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 8)
          to label %_Z19RegularVolatileProbv.exit.peel unwind label %.loopexit.split-lp57

_Z19RegularVolatileProbv.exit.peel:               ; preds = %bb.e
  %i.w = invoke noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.v, ptr noundef null, ptr noundef null)
          to label %bb.f unwind label %.loopexit.split-lp57 ; 2 uses

bb.f:                                             ; preds = %_Z19RegularVolatileProbv.exit.peel
  %i.x = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !40
  %.not22.peel = icmp eq i32 %i.x, 0
  br i1 %.not22.peel, label %bb.g, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit41

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !30   ; 6 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i36.peel = icmp eq ptr %i.y, %i.z
  %.sroa.2.0.copyload.i11.i38.peel = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i36.peel, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add i32 %.sroa.2.0.copyload.i11.i38.peel, 1
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !31
  %i.ab = icmp eq i32 %.sroa.2.0.copyload.i11.i38.peel, 63
  br i1 %i.ab, label %bb.i, label %_ZNSt13_Bit_iteratorppEi.exit.i39.peel

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i39.peel

_ZNSt13_Bit_iteratorppEi.exit.i39.peel:           ; preds = %bb.i, %bb.h
  %i.ad = zext nneg i32 %.sroa.2.0.copyload.i11.i38.peel to i64
  %i.ae = shl nuw i64 1, %i.ad                    ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i39.peel
  %i.af = xor i64 %i.ae, -1
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !35
  %i.ah = and i64 %i.ag, %i.af
  br label %.critedge.sink.split

bb.k:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i39.peel
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !35
  %i.aj = or i64 %i.ai, %i.ae
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.y, i32 %.sroa.2.0.copyload.i11.i38.peel, i1 noundef zeroext %i.w)
          to label %.critedge unwind label %.loopexit.split-lp57

bb.m:                                             ; preds = %.lr.ph
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr null, i32 0, i1 noundef zeroext %i.t)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel unwind label %.loopexit.split-lp

_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel:       ; preds = %bb.m
  %.not23.peel.not = icmp eq i64 %i.p, 1
  br i1 %.not23.peel.not, label %.critedge, label %.peel.next

bb.n:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.ah unwind label %bb.o

bb.o:                                             ; preds = %bb.af, %.critedge, %bb.n, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.peel.next:                                       ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.052 = phi i64 [ %i.by, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ 1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel ] ; 5 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.am = sdiv i64 %.052, 64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = and i64 %.052, -9223372036854775745
  %i.ap = icmp ugt i64 %i.ao, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ap, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.an, i64 %storemerge.idx.i.i.i.i.i
  %i.aq = and i64 %.052, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.at = and i64 %i.as, %i.ar                    ; 2 uses
  %i.au = icmp ne i64 %i.at, 0                    ; 2 uses
  %.not71 = icmp eq i64 %i.at, 0
  %i.av = sub nuw i64 %i.p, %.052
  %3 = icmp ugt i64 %i.av, 2
  %or.cond73.not = select i1 %.not71, i1 true, i1 %3
  br i1 %or.cond73.not, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.peel.next
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !30  ; 7 uses
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.aw, %i.ax
  %.sroa.2.0.copyload.i11.i = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ay, ptr %i.c, align 8, !tbaa !31
  %i.az = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.az, label %bb.r, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.r, %bb.q
  %i.bb = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.bc = shl nuw i64 1, %i.bb                    ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !35
  %i.be = or i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.t:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.bf = xor i64 %i.bc, -1
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !35
  %i.bh = and i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.aw, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.u:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.aw, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.au)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.c, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %.peel.next
  %i.bi = invoke noundef i32 @_ZN9DepthSpec20depth_guard_by_depthEi(i32 noundef 1)
          to label %bb.w unwind label %.loopexit

bb.w:                                             ; preds = %bb.v
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.x, label %.loopexit55

.loopexit55:                                      ; preds = %bb.w, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.bj = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 8)
          to label %_Z19RegularVolatileProbv.exit unwind label %.loopexit56

_Z19RegularVolatileProbv.exit:                    ; preds = %bb.x
  %i.bk = invoke noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.bj, ptr noundef null, ptr noundef null)
          to label %bb.y unwind label %.loopexit56 ; 2 uses

bb.y:                                             ; preds = %_Z19RegularVolatileProbv.exit
  %i.bl = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !40
  %.not22 = icmp eq i32 %i.bl, 0
  br i1 %.not22, label %bb.z, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit41

.loopexit56:                                      ; preds = %_Z19RegularVolatileProbv.exit, %bb.x, %bb.ae
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp57:                             ; preds = %bb.e, %_Z19RegularVolatileProbv.exit.peel, %bb.l
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !30  ; 7 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i36 = icmp eq ptr %i.bm, %i.bn
  %.sroa.2.0.copyload.i11.i38 = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i36, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = add i32 %.sroa.2.0.copyload.i11.i38, 1
  store i32 %i.bo, ptr %i.c, align 8, !tbaa !31
  %i.bp = icmp eq i32 %.sroa.2.0.copyload.i11.i38, 63
  br i1 %i.bp, label %bb.ab, label %_ZNSt13_Bit_iteratorppEi.exit.i39

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i39

_ZNSt13_Bit_iteratorppEi.exit.i39:                ; preds = %bb.ab, %bb.aa
  %i.br = zext nneg i32 %.sroa.2.0.copyload.i11.i38 to i64
  %i.bs = shl nuw i64 1, %i.br                    ; 2 uses
  br i1 %i.bk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i39
  %i.bt = load i64, ptr %i.bm, align 8, !tbaa !35
  %i.bu = or i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ad:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i39
  %i.bv = xor i64 %i.bs, -1
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !35
  %i.bx = and i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %i.bm, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ae:                                            ; preds = %bb.z
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.bm, i32 %.sroa.2.0.copyload.i11.i38, i1 noundef zeroext %i.bk)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %.loopexit56

_ZNSt6vectorIbSaIbEE9push_backEb.exit41:          ; preds = %bb.y, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.ae, %bb.ac, %bb.ad, %bb.t, %bb.s, %bb.u
  %i.by = add nuw i64 %.052, 1                    ; 2 uses
  %.not23 = icmp ult i64 %i.by, %i.p
  br i1 %.not23, label %.peel.next, label %.critedge, !llvm.loop !128

.critedge.sink.split:                             ; preds = %bb.k, %bb.j
  %.sink = phi i64 [ %i.ah, %bb.j ], [ %i.aj, %bb.k ]
  store i64 %.sink, ptr %i.y, align 8, !tbaa !35
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %.critedge.sink.split, %bb.l, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel, %.preheader
  %i.bz = invoke noundef zeroext i1 @_ZN9CGOptions17volatile_pointersEv()
          to label %.noexc42 unwind label %bb.o

.noexc42:                                         ; preds = %.critedge
  br i1 %i.bz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc42
  %i.ca = invoke noundef zeroext i1 @_ZN9CGOptions16global_variablesEv()
          to label %.noexc43 unwind label %bb.o

.noexc43:                                         ; preds = %bb.af
  br i1 %i.ca, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit, label %bb.ag

bb.ag:                                            ; preds = %.noexc43, %.noexc42
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.cc = load i32, ptr %i.c, align 8, !tbaa !31
  %i.cd = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = shl nsw i64 %i.cg, 3
  %i.ci = zext i32 %i.cc to i64
  %i.cj = add nsw i64 %i.ch, %i.ci                ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, 1
  br i1 %i.ck, label %.lr.ph.i, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.i
  %.04.i = phi i64 [ %i.cu, %.lr.ph.i ], [ 1, %bb.ag ] ; 4 uses
  %i.cl = sdiv i64 %.04.i, 64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cl
  %i.cn = and i64 %.04.i, -9223372036854775745
  %i.co = icmp ugt i64 %i.cn, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.co, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cm, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.cp = and i64 %.04.i, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = xor i64 %i.cq, -1
  %i.cs = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !35
  %i.ct = and i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !35
  %i.cu = add nuw i64 %.04.i, 1                   ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cj
  br i1 %i.cv, label %.lr.ph.i, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit, !llvm.loop !2

_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit: ; preds = %.lr.ph.i, %bb.ag, %.noexc43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.ah:                                            ; preds = %bb.n
  %.pr = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %.pr to i64
end_hunk_0
begin_hunk_1_@_ZNK12CVQualifiers25random_stricter_volatilesEv:bb.a
  br label %bb.av

bb.al:                                            ; preds = %bb.ak
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !30  ; 7 uses
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i45 = icmp eq ptr %i.cu, %i.cv
  %.sroa.2.0.copyload.i11.i47 = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i45, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cw = add i32 %.sroa.2.0.copyload.i11.i47, 1
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !31
  %i.cx = icmp eq i32 %.sroa.2.0.copyload.i11.i47, 63
  br i1 %i.cx, label %bb.an, label %_ZNSt13_Bit_iteratorppEi.exit.i48

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cy, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i48

_ZNSt13_Bit_iteratorppEi.exit.i48:                ; preds = %bb.an, %bb.am
  %i.cz = zext nneg i32 %.sroa.2.0.copyload.i11.i47 to i64
  %i.da = shl nuw i64 1, %i.cz                    ; 2 uses
  br i1 %i.cs, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i48
  %i.db = load i64, ptr %i.cu, align 8, !tbaa !35
  %i.dc = or i64 %i.db, %i.da
  store i64 %i.dc, ptr %i.cu, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ap:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i48
  %i.dd = xor i64 %i.da, -1
  %i.de = load i64, ptr %i.cu, align 8, !tbaa !35
  %i.df = and i64 %i.de, %i.dd
  store i64 %i.df, ptr %i.cu, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.aq:                                            ; preds = %bb.al
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.cu, i32 %.sroa.2.0.copyload.i11.i47, i1 noundef zeroext %i.cs)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %.loopexit66

_ZNSt6vectorIbSaIbEE9push_backEb.exit50:          ; preds = %bb.ak, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %.invoke, %bb.aq, %bb.ao, %bb.ap, %_ZNSt13_Bit_iteratorppEi.exit.i37, %bb.aa, %bb.z
  %i.dg = add nuw i64 %.062, 1                    ; 2 uses
  %.not24 = icmp ult i64 %i.dg, %i.p
  br i1 %.not24, label %.peel.next, label %.critedge, !llvm.loop !129

.critedge:                                        ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %_ZNSt13_Bit_iteratorppEi.exit.i37.peel, %bb.i, %bb.q, %bb.r, %bb.s, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel, %.preheader
  %i.dh = invoke noundef zeroext i1 @_ZN9CGOptions17volatile_pointersEv()
          to label %.noexc51 unwind label %bb.v

.noexc51:                                         ; preds = %.critedge
  br i1 %i.dh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.noexc51
  %i.di = invoke noundef zeroext i1 @_ZN9CGOptions16global_variablesEv()
          to label %.noexc52 unwind label %bb.v

.noexc52:                                         ; preds = %bb.ar
  br i1 %i.di, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit, label %bb.as

bb.as:                                            ; preds = %.noexc52, %.noexc51
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.dk = load i32, ptr %i.c, align 8, !tbaa !31
  %i.dl = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = shl nsw i64 %i.do, 3
  %i.dq = zext i32 %i.dk to i64
  %i.dr = add nsw i64 %i.dp, %i.dq                ; 2 uses
  %i.ds = icmp ugt i64 %i.dr, 1
  br i1 %i.ds, label %.lr.ph.i, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit

.lr.ph.i:                                         ; preds = %bb.as, %.lr.ph.i
  %.04.i = phi i64 [ %i.ec, %.lr.ph.i ], [ 1, %bb.as ] ; 4 uses
  %i.dt = sdiv i64 %.04.i, 64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dt
  %i.dv = and i64 %.04.i, -9223372036854775745
  %i.dw = icmp ugt i64 %i.dv, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.dw, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.du, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.dx = and i64 %.04.i, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = xor i64 %i.dy, -1
  %i.ea = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !35
  %i.eb = and i64 %i.ea, %i.dz
  store i64 %i.eb, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !35
  %i.ec = add nuw i64 %.04.i, 1                   ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.dr
  br i1 %i.ed, label %.lr.ph.i, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit, !llvm.loop !2

_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit: ; preds = %.lr.ph.i, %bb.as, %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.at:                                            ; preds = %bb.u
  %.pr = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %.pr to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = ashr exact i64 %i.eh, 3
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ej
  tail call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eh) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit, %_ZNSt6vectorIbSaIbEE9push_backEb.exit50, %.loopexit65, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.av:                                            ; preds = %.loopexit66, %.loopexit.split-lp67, %.loopexit, %.loopexit.split-lp, %bb.v
  %.pn26 = phi { ptr, i32 } [ %i.az, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit68, %.loopexit66 ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp67 ]
  %i.el = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.el, null
  br i1 %.not.i.i57, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit58, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.er
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ep) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit58

_ZNSt13_Bvector_baseISaIbEED2Ev.exit58:           ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn26
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers20random_looser_constsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o                   ; 3 uses
  %i.q = invoke noundef zeroext i1 @_ZN9CGOptions22match_exact_qualifiersEv()
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not2047.not = icmp eq i64 %i.p, 0
  br i1 %.not2047.not, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.sink.split, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.048 = phi i64 [ %i.bh, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ 0, %.preheader ] ; 5 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.t = sdiv i64 %.048, 64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = and i64 %.048, -9223372036854775745
  %i.w = icmp ugt i64 %i.v, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.w, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.u, i64 %storemerge.idx.i.i.i.i.i
  %i.x = and i64 %.048, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.aa = and i64 %i.z, %i.y                      ; 2 uses
  %i.ab = icmp ne i64 %i.aa, 0                    ; 2 uses
  %.not48 = icmp eq i64 %i.aa, 0
  %i.ac = sub nuw i64 %i.p, %.048
  %3 = icmp ugt i64 %i.ac, 2
  %or.cond = or i1 %3, %.not48
  br i1 %or.cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !30  ; 7 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.ad, %i.ae
  %.sroa.2.0.copyload.i11.i = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.af, ptr %i.c, align 8, !tbaa !31
  %i.ag = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ag, label %bb.g, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.g, %bb.f
  %i.ai = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.aj = shl nuw i64 1, %i.ai                    ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.al = or i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.i:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.am = xor i64 %i.aj, -1
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.ao = and i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.j:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.ad, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.ab)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %.lr.ph
  %i.aq = invoke noundef i32 @_ZN9DepthSpec20depth_guard_by_depthEi(i32 noundef 1)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.n, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ar = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 11)
          to label %_Z15LooserConstProbv.exit unwind label %bb.p

_Z15LooserConstProbv.exit:                        ; preds = %bb.n
  %i.as = invoke noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.ar, ptr noundef null, ptr noundef null)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %_Z15LooserConstProbv.exit
  %i.at = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !40
  %.not19 = icmp eq i32 %i.at, 0
  br i1 %.not19, label %bb.q, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.sink.split

bb.p:                                             ; preds = %bb.v, %bb.n, %_Z15LooserConstProbv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !30  ; 7 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i33 = icmp eq ptr %i.av, %i.aw
  %.sroa.2.0.copyload.i11.i35 = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i33, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = add i32 %.sroa.2.0.copyload.i11.i35, 1
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !31
  %i.ay = icmp eq i32 %.sroa.2.0.copyload.i11.i35, 63
  br i1 %i.ay, label %bb.s, label %_ZNSt13_Bit_iteratorppEi.exit.i36

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i36

_ZNSt13_Bit_iteratorppEi.exit.i36:                ; preds = %bb.s, %bb.r
  %i.ba = zext nneg i32 %.sroa.2.0.copyload.i11.i35 to i64
  %i.bb = shl nuw i64 1, %i.ba                    ; 2 uses
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i36
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !35
  %i.bd = or i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.u:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i36
  %i.be = xor i64 %i.bb, -1
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !35
  %i.bg = and i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.av, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.v:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.av, i32 %.sroa.2.0.copyload.i11.i35, i1 noundef zeroext %i.as)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.p

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.v, %bb.t, %bb.u, %bb.i, %bb.h, %bb.j
  %i.bh = add nuw i64 %.048, 1                    ; 2 uses
  %.not20 = icmp ult i64 %i.bh, %i.p
  br i1 %.not20, label %.lr.ph, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.sink.split, !llvm.loop !130

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.sink.split:  ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.o, %bb.m, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.sink.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.w:                                             ; preds = %bb.k, %bb.p, %bb.d
  %.pn22 = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ap, %bb.k ], [ %i.au, %bb.p ]
  %i.bi = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i43, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit44, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bo
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bm) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit44

_ZNSt13_Bvector_baseISaIbEED2Ev.exit44:           ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn22
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers22random_stricter_constsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 10 uses
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  store ptr null, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o                   ; 3 uses
  %i.q = invoke noundef zeroext i1 @_ZN9CGOptions22match_exact_qualifiersEv()
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not2155.not = icmp eq i64 %i.p, 0
  br i1 %.not2155.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.ad unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.056 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 5 uses
end_hunk_1
