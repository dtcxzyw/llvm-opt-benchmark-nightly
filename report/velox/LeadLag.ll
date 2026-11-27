Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/LeadLag?download=true
inline.NumInlined: 3743
inline.NumDeleted: 1391
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EED2Ev:bb.a
  %.not.i.i.i4 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !192
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.o:                                             ; preds = %bb.m
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i6 = phi i32 [ %i.as, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.bd, label %bb.p, label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !174

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #26
  br label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !186 ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !188
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !189
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !191
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !8
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !191
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !8
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !172
  %.not.i.i.i8 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i8, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !192
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i10 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i10, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11, !prof !174

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9, %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox4exec14WindowFunctionE, i64 16), ptr %0, align 8, !tbaa !191
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !343
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #28, !inline_history !344
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i

_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i: ; preds = %bb.w, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !186 ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i12, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ce, align 8, !tbaa !188
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !189
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !191
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !10
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !191
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !10
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !172
  %.not.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !192
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi i32 [ %i.ch, %bb.aa ], [ %i.cr, %bb.ab ]
  %i.cs = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cs, label %bb.ac, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, !prof !174

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !344
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 8)) %0) unnamed_addr #14 align 2 !guid !540 {
bb.a:
  tail call void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EE14resetPartitionEPKNS0_4exec15WindowPartitionE(ptr noundef nonnull align 8 dereferenceable(224) initializes((81, 82), (144, 152), (192, 196)) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !544 {
bb.a:
  %2 = alloca %"class.std::optional.355", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !345
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.b, align 8, !tbaa !346
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !347
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i8, ptr %i.d, align 8, !tbaa !290, !range !214, !noundef !215
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit, label %bb.c

_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !351
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = lshr exact i64 %i.m, 3                   ; 3 uses
  %i.o = trunc i64 %i.n to i32                    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %sext = shl i64 %i.m, 29
  %i.q = ashr i64 %sext, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.r, align 1, !tbaa !353
  %i.s = add nsw i64 %i.q, 7
  %i.t = lshr i64 %i.s, 3
  call void @_ZN8facebook5velox13AlignedBuffer10reallocateIcEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef nonnull %i.p, i64 noundef %i.t, ptr noundef nonnull align 1 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !345
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = load i32, ptr %i.v, align 4, !tbaa !300
  call void @_ZNK8facebook5velox4exec15WindowPartition12extractNullsEiiiRKN5boost13intrusive_ptrINS0_6BufferEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.u, i32 noundef %i.w, i32 noundef 0, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !334
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !329  ; 4 uses
  %.not.i.i = icmp sgt i32 %i.o, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.b:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit
  %i.aa = and i32 %i.o, 2147483584                ; 2 uses
  %.not3342.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.ab = and i64 %i.n, 2147483584                ; 4 uses
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 64)
  %i.ad = lshr exact i64 %i.ac, 6
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ab, 256
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp samesign ult i64 %i.ab, 1024
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, 67108848                ; 4 uses
  %i.ag = shl nuw nsw i64 %n.vec, 6               ; 2 uses
  %i.ah = or disjoint i64 %i.ag, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ai = shl nuw nsw i64 %index, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %wide.load = load <4 x i64>, ptr %i.aj, align 8, !tbaa !247
  %wide.load14 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !247
  %wide.load15 = load <4 x i64>, ptr %i.al, align 8, !tbaa !247
  %wide.load16 = load <4 x i64>, ptr %i.am, align 8, !tbaa !247
  %i.an = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.ao = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load14)
  %i.ap = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load15)
  %i.aq = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load16)
  %i.ar = trunc nuw nsw <4 x i64> %i.an to <4 x i32>
  %i.as = trunc nuw nsw <4 x i64> %i.ao to <4 x i32>
  %i.at = trunc nuw nsw <4 x i64> %i.ap to <4 x i32>
  %i.au = trunc nuw nsw <4 x i64> %i.aq to <4 x i32>
  %i.av = add <4 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.aw = add <4 x i32> %vec.phi11, %i.as         ; 2 uses
  %i.ax = add <4 x i32> %vec.phi12, %i.at         ; 2 uses
  %i.ay = add <4 x i32> %vec.phi13, %i.au         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !541

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %bin.rdx17 = add <4 x i32> %i.ax, %bin.rdx
  %bin.rdx18 = add <4 x i32> %i.ay, %bin.rdx17
  %i.ba = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx18) ; 3 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !356

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ba, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.ae, 67108860              ; 3 uses
  %i.bb = shl nuw nsw i64 %n.vec19, 6             ; 2 uses
  %i.bc = or disjoint i64 %i.bb, 64
  %i.bd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi21 = phi <4 x i32> [ %i.bd, %vec.epilog.ph ], [ %i.bi, %vec.epilog.vector.body ]
  %i.be = shl nuw nsw i64 %index20, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.be
  %wide.load22 = load <4 x i64>, ptr %i.bf, align 8, !tbaa !247
  %i.bg = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load22)
  %i.bh = trunc nuw nsw <4 x i64> %i.bg to <4 x i32>
  %i.bi = add <4 x i32> %vec.phi21, %i.bh         ; 2 uses
  %index.next23 = add nuw i64 %index20, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next23, %n.vec19
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !542

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bi) ; 2 uses
  %cmp.n24 = icmp eq i64 %i.ae, %n.vec19
  br i1 %cmp.n24, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv4.ph = phi i64 [ 0, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.1.i = phi i32 [ 0, %bb.b ], [ %i.bk, %vec.epilog.middle.block ], [ %i.ba, %middle.block ], [ %i.br, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %i.aa, %i.o
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %.sink.split.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %.lr.ph.i.i ], [ %indvars.iv4.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bl = phi i32 [ %i.br, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.bm = lshr exact i64 %indvars.iv4, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !247
  %i.bp = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bo)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bl, %i.bq            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ab
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !543

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i
  %i.bs = lshr i64 %i.m, 9
  %i.bt = and i64 %i.n, 63
  %notmask.i36.i.i = shl nsw i64 -1, %i.bt
  %i.bu = xor i64 %notmask.i36.i.i, -1
  %i.bv = and i64 %i.bs, 67108863
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !247
  %i.by = and i64 %i.bx, %i.bu
  %i.bz = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.by)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = add nsw i32 %.1.i, %i.ca
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.cb, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit ]
  %i.cc = icmp sgt i32 %.3.i, 0
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.c, align 1, !tbaa !347
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EE5applyERKN5boost13intrusive_ptrINS0_6BufferEEESB_SB_SB_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !575 {
bb.a:
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.335", align 16 ; 5 uses
  %9 = alloca %"class.std::optional.78", align 8  ; 4 uses
  %10 = alloca %"class.std::shared_ptr.94", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.335", align 16 ; 5 uses
  %13 = alloca %"class.std::optional.78", align 8 ; 4 uses
  %14 = alloca %"class.std::shared_ptr.94", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !334
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !333
  %i.d = lshr i64 %i.c, 2                         ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 13 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !357  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !335  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.d, %i.l
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %i.d, %i.l
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !357
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !291, !range !214, !noundef !215
  %i.t = trunc nuw i8 %i.s to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !292, !range !214
  %i.u = trunc nuw i8 %.pre to i1                 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  br i1 %i.u, label %.thread146, label %bb.q

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  br i1 %i.u, label %.thread146, label %bb.g

.thread146:                                       ; preds = %bb.e, %bb.f
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !358  ; 3 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !358  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not5.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EE30setRowNumbersForConstantOffsetEv.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %.thread146
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = ptrtoaddr ptr %i.v to i64
  %reass.sub = sub i64 %i.x, %i.y
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EED2Ev:bb.a
  %.not.i.i.i4 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !192
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.o:                                             ; preds = %bb.m
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i6 = phi i32 [ %i.as, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.bd, label %bb.p, label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !174

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #26
  br label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !186 ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !188
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !189
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !191
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !8
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !191
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !8
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !172
  %.not.i.i.i8 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i8, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !192
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i10 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i10, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11, !prof !174

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9, %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox4exec14WindowFunctionE, i64 16), ptr %0, align 8, !tbaa !191
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !343
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #28, !inline_history !344
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i

_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i: ; preds = %bb.w, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !186 ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i12, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ce, align 8, !tbaa !188
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !189
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !191
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !10
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !191
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !10
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !172
  %.not.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !192
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi i32 [ %i.ch, %bb.aa ], [ %i.cr, %bb.ab ]
  %i.cs = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cs, label %bb.ac, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, !prof !174

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !344
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 8)) %0) unnamed_addr #14 align 2 !guid !864 {
bb.a:
  tail call void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EE14resetPartitionEPKNS0_4exec15WindowPartitionE(ptr noundef nonnull align 8 dereferenceable(224) initializes((81, 82), (144, 152), (192, 196)) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !868 {
bb.a:
  %2 = alloca %"class.std::optional.355", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !416
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.b, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !418
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i8, ptr %i.d, align 8, !tbaa !411, !range !214, !noundef !215
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit, label %bb.c

_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !351
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = lshr exact i64 %i.m, 3                   ; 3 uses
  %i.o = trunc i64 %i.n to i32                    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %sext = shl i64 %i.m, 29
  %i.q = ashr i64 %sext, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.r, align 1, !tbaa !353
  %i.s = add nsw i64 %i.q, 7
  %i.t = lshr i64 %i.s, 3
  call void @_ZN8facebook5velox13AlignedBuffer10reallocateIcEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef nonnull %i.p, i64 noundef %i.t, ptr noundef nonnull align 1 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !416
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = load i32, ptr %i.v, align 4, !tbaa !414
  call void @_ZNK8facebook5velox4exec15WindowPartition12extractNullsEiiiRKN5boost13intrusive_ptrINS0_6BufferEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.u, i32 noundef %i.w, i32 noundef 0, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !334
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !329  ; 4 uses
  %.not.i.i = icmp sgt i32 %i.o, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.b:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit
  %i.aa = and i32 %i.o, 2147483584                ; 2 uses
  %.not3342.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.ab = and i64 %i.n, 2147483584                ; 4 uses
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 64)
  %i.ad = lshr exact i64 %i.ac, 6
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ab, 256
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp samesign ult i64 %i.ab, 1024
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, 67108848                ; 4 uses
  %i.ag = shl nuw nsw i64 %n.vec, 6               ; 2 uses
  %i.ah = or disjoint i64 %i.ag, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ai = shl nuw nsw i64 %index, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %wide.load = load <4 x i64>, ptr %i.aj, align 8, !tbaa !247
  %wide.load14 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !247
  %wide.load15 = load <4 x i64>, ptr %i.al, align 8, !tbaa !247
  %wide.load16 = load <4 x i64>, ptr %i.am, align 8, !tbaa !247
  %i.an = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.ao = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load14)
  %i.ap = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load15)
  %i.aq = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load16)
  %i.ar = trunc nuw nsw <4 x i64> %i.an to <4 x i32>
  %i.as = trunc nuw nsw <4 x i64> %i.ao to <4 x i32>
  %i.at = trunc nuw nsw <4 x i64> %i.ap to <4 x i32>
  %i.au = trunc nuw nsw <4 x i64> %i.aq to <4 x i32>
  %i.av = add <4 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.aw = add <4 x i32> %vec.phi11, %i.as         ; 2 uses
  %i.ax = add <4 x i32> %vec.phi12, %i.at         ; 2 uses
  %i.ay = add <4 x i32> %vec.phi13, %i.au         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !865

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %bin.rdx17 = add <4 x i32> %i.ax, %bin.rdx
  %bin.rdx18 = add <4 x i32> %i.ay, %bin.rdx17
  %i.ba = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx18) ; 3 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !356

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ba, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.ae, 67108860              ; 3 uses
  %i.bb = shl nuw nsw i64 %n.vec19, 6             ; 2 uses
  %i.bc = or disjoint i64 %i.bb, 64
  %i.bd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi21 = phi <4 x i32> [ %i.bd, %vec.epilog.ph ], [ %i.bi, %vec.epilog.vector.body ]
  %i.be = shl nuw nsw i64 %index20, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.be
  %wide.load22 = load <4 x i64>, ptr %i.bf, align 8, !tbaa !247
  %i.bg = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load22)
  %i.bh = trunc nuw nsw <4 x i64> %i.bg to <4 x i32>
  %i.bi = add <4 x i32> %vec.phi21, %i.bh         ; 2 uses
  %index.next23 = add nuw i64 %index20, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next23, %n.vec19
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !866

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bi) ; 2 uses
  %cmp.n24 = icmp eq i64 %i.ae, %n.vec19
  br i1 %cmp.n24, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv4.ph = phi i64 [ 0, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.1.i = phi i32 [ 0, %bb.b ], [ %i.bk, %vec.epilog.middle.block ], [ %i.ba, %middle.block ], [ %i.br, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %i.aa, %i.o
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %.sink.split.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %.lr.ph.i.i ], [ %indvars.iv4.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bl = phi i32 [ %i.br, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.bm = lshr exact i64 %indvars.iv4, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !247
  %i.bp = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bo)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bl, %i.bq            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ab
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !867

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i
  %i.bs = lshr i64 %i.m, 9
  %i.bt = and i64 %i.n, 63
  %notmask.i36.i.i = shl nsw i64 -1, %i.bt
  %i.bu = xor i64 %notmask.i36.i.i, -1
  %i.bv = and i64 %i.bs, 67108863
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !247
  %i.by = and i64 %i.bx, %i.bu
  %i.bz = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.by)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = add nsw i32 %.1.i, %i.ca
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.cb, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit ]
  %i.cc = icmp sgt i32 %.3.i, 0
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.c, align 1, !tbaa !418
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EE5applyERKN5boost13intrusive_ptrINS0_6BufferEEESB_SB_SB_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !899 {
bb.a:
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.335", align 16 ; 5 uses
  %9 = alloca %"class.std::optional.78", align 8  ; 4 uses
  %10 = alloca %"class.std::shared_ptr.94", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.335", align 16 ; 5 uses
  %13 = alloca %"class.std::optional.78", align 8 ; 4 uses
  %14 = alloca %"class.std::shared_ptr.94", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !334
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !333
  %i.d = lshr i64 %i.c, 2                         ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !357  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !335  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.d, %i.l
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %i.d, %i.l
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !357
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !291, !range !214, !noundef !215
  %i.t = trunc nuw i8 %i.s to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !412, !range !214
  %i.u = trunc nuw i8 %.pre to i1                 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  br i1 %i.u, label %.thread171, label %bb.n

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  br i1 %i.u, label %.thread171, label %bb.g

.thread171:                                       ; preds = %bb.e, %bb.f
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !358  ; 3 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !358  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not5.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EE30setRowNumbersForConstantOffsetEv.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %.thread171
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = ptrtoaddr ptr %i.v to i64
  %reass.sub = sub i64 %i.x, %i.y
end_hunk_1
