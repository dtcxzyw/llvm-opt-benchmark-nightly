Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/IiqDecoder?download=true
inline.NumInlined: 1447
inline.NumDeleted: 765
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEj:bb.a
  %.not.i.i = icmp ugt i32 %i.cd, %2
  br i1 %.not.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE7reserveEm.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
          to label %.noexc20 unwind label %bb.aa

.noexc20:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE7reserveEm.exit
  %i.cf = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.cf)
  %.sroa.023.045 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !199
  %.not3746 = icmp ult ptr %.sroa.023.045, %i.cg
  br i1 %.not3746, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %.sroa.2.0..0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.023.050 = phi ptr [ %.sroa.023.045, %.lr.ph ], [ %.sroa.023.0, %bb.z ]
  %.sroa.026.048 = phi ptr [ %i.cb, %.lr.ph ], [ %i.cv, %bb.z ] ; 4 uses
  %.sroa.9.047 = phi i32 [ %i.cd, %.lr.ph ], [ %i.cq, %bb.z ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.026.048, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.026.048, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !23
  %i.cm = sub i32 %i.cj, %i.cl                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cn = zext i32 %.sroa.9.047 to i64            ; 2 uses
  %i.co = zext i32 %i.cm to i64                   ; 2 uses
  %i.cp = add nuw nsw i64 %i.co, %i.cn
  %.not.i.i.i.i21 = icmp samesign ugt i64 %i.cp, %i.ce
  br i1 %.not.i.i.i.i21, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cq = add nuw nsw i32 %i.cm, %.sroa.9.047     ; 2 uses
  %i.cr = icmp samesign ule i32 %i.cq, %2
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.ct = icmp sgt i32 %i.cm, -1
  call void @llvm.assume(i1 %i.ct)
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %i.co, 244834610708480
  store ptr %i.cs, ptr %5, align 8, !alias.scope !200
  store i64 %.sroa.2.8.insert.insert.i.i.i, ptr %.sroa.2.0..0..sroa_idx.i4.i.i.i, align 8, !alias.scope !200
  store i32 0, ptr %i.ch, align 8, !tbaa !36, !alias.scope !200
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12emplace_backIJRjNS0_10ByteStreamEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.026.048, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.026.048, i64 8
  %.sroa.023.0 = getelementptr inbounds nuw i8, ptr %.sroa.023.050, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !199
  %.not37 = icmp ult ptr %.sroa.023.0, %i.cw
  br i1 %.not37, label %bb.w, label %._crit_edge, !llvm.loop !198

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIN8rawspeed13PhaseOneStripESaIS1_EE11_M_allocateEm.exit.i, %bb.u
  %i.cx = phi ptr [ null, %_ZNSt12_Vector_baseIN8rawspeed13PhaseOneStripESaIS1_EE11_M_allocateEm.exit.i ], [ %i.ca, %bb.u ]
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.x
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.z, %bb.v
  ret void

bb.ab:                                            ; preds = %bb.aa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cz = phi ptr [ %.pre, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cx, %bb.aa ] ; 3 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cy, %bb.aa ]
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #26
  br label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit

_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit: ; preds = %bb.ab, %bb.ac
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12emplace_backIJRjNS0_10ByteStreamEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i32 %i.e, ptr %i.b, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.a, align 8, !tbaa !30
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !29     ; 5 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775776
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #28
  unreachable

_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 5                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 288230376151711743)
  %i.r = select i1 %i.p, i64 288230376151711743, i64 %i.q ; 3 uses
  %.not.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #27 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i32 %i.v, ptr %i.u, align 8, !tbaa !206
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !207
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i, !llvm.loop !204

_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.y, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i34.i = icmp eq ptr %i.i, null
  br i1 %.not.i34.i, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ac) #26
  br label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !29
  store ptr %i.z, ptr %i.a, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  %i.ae = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.g, %bb.b ]
  ret ptr %i.ae
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10IiqDecoder17decodeRawInternalEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rawspeed::RawImage") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.6", align 8     ; 9 uses
  %3 = alloca %"class.std::vector.11", align 8    ; 4 uses
  %4 = alloca %"class.rawspeed::PhaseOneDecompressor", align 8 ; 9 uses
  %5 = alloca %"class.rawspeed::RawImage", align 8 ; 4 uses
  %6 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %.not.i = icmp ult i32 %i.b, 8
  br i1 %.not.i, label %bb.b, label %_ZNK8rawspeed6Buffer10getSubViewEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #18
  unreachable

_ZNK8rawspeed6Buffer10getSubViewEj.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = add nsw i32 %i.b, -8                     ; 10 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %7 = icmp sgt i32 %i.b, -1
  tail call void @llvm.assume(i1 %7)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  %i.g = zext nneg i32 %i.d to i64                ; 6 uses
  %.not.i.i = icmp samesign ult i32 %i.b, 12
  br i1 %.not.i.i, label %bb.c, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.c:                                             ; preds = %_ZNK8rawspeed6Buffer10getSubViewEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEj.exit
  %.not.i.i77 = icmp samesign ult i32 %i.b, 16
  br i1 %.not.i.i77, label %bb.d, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit78

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit78:      ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %.not.i.i.i.i.i.i = icmp samesign ult i32 %i.b, 20
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZN8rawspeed10ByteStream6getU32Ev.exit

bb.e:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit78
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit78
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.h, align 1 ; 5 uses
  %.not.i.i79 = icmp ugt i32 %.0.copyload.i.i.i.i.i.i, %i.d
  br i1 %.not.i.i79, label %bb.f, label %_ZN8rawspeed10ByteStream11setPositionEj.exit

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream11setPositionEj.exit:     ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  %i.i = zext nneg i32 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 4
  %.not.i.i.i.i.i.i80 = icmp samesign ugt i64 %i.j, %i.g
  br i1 %.not.i.i.i.i.i.i80, label %bb.g, label %_ZN8rawspeed10ByteStream6getU32Ev.exit83

bb.g:                                             ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit83:         ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  %i.k = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i, 4
  %i.l = icmp samesign ule i32 %i.k, %i.d
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %.0.copyload.i.i.i.i.i.i81 = load i32, ptr %i.m, align 1 ; 5 uses
  %i.n = zext nneg i32 %.0.copyload.i.i.i.i.i.i to i64
  %i.o = add nuw nsw i64 %i.n, 8
  %.not.i.i84 = icmp samesign ugt i64 %i.o, %i.g
  br i1 %.not.i.i84, label %bb.h, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit85

bb.h:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit83
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit85:      ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit83
  %i.p = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i, 8 ; 3 uses
  %i.q = icmp samesign ule i32 %i.p, %i.d
  tail call void @llvm.assume(i1 %i.q)
  %mul.ov.i = icmp ugt i32 %.0.copyload.i.i.i.i.i.i81, 268435455
  br i1 %mul.ov.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit85
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10ByteStream9getStreamEjj) #18, !noalias !233
  unreachable

bb.j:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit85
  %i.r = shl nuw i32 %.0.copyload.i.i.i.i.i.i81, 4 ; 3 uses
  %i.s = zext nneg i32 %i.p to i64                ; 2 uses
  %i.t = zext i32 %i.r to i64                     ; 3 uses
  %i.u = add nuw nsw i64 %i.t, %i.s
  %.not.i.i.i.i.i = icmp samesign ugt i64 %i.u, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZN8rawspeed10ByteStream11setPositionEj.exit87

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !234
  unreachable

_ZN8rawspeed10ByteStream11setPositionEj.exit87:   ; preds = %bb.j
  %i.v = add nuw nsw i32 %i.r, %i.p
  %i.w = icmp samesign ule i32 %i.v, %i.d
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s ; 3 uses
  %i.y = icmp sgt i32 %i.r, -1
  tail call void @llvm.assume(i1 %i.y)
  %.not563 = icmp eq i32 %.0.copyload.i.i.i.i.i.i81, 0
  br i1 %.not563, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit87
  %invariant.op = add nsw i64 %i.t, -4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit
  %i.aa = add i32 %.166, -11977
  %i.ab = icmp ult i32 %i.aa, -11976
  %i.ac = add i32 %.1, -8855
  %i.ad = icmp ult i32 %i.ac, -8854
  %or.cond5 = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond5, label %._crit_edge.thread, label %bb.ae

bb.l:                                             ; preds = %.lr.ph, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 4 uses
  %.060519 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 2 uses
  %.061518 = phi i32 [ 0, %.lr.ph ], [ %.162, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.063517 = phi i32 [ 0, %.lr.ph ], [ %.164, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.065516 = phi i32 [ 0, %.lr.ph ], [ %.166, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.0209.0514 = phi ptr [ null, %.lr.ph ], [ %.sroa.0209.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.6210.sroa.0.0513 = phi i32 [ 0, %.lr.ph ], [ %.sroa.6210.sroa.0.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.0211.0511 = phi ptr [ null, %.lr.ph ], [ %.sroa.0211.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.6212.0510 = phi i64 [ 244834610708480, %.lr.ph ], [ %.sroa.6212.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.0214.0509 = phi ptr [ null, %.lr.ph ], [ %.sroa.0214.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.8.0508 = phi i64 [ 244834610708480, %.lr.ph ], [ %.sroa.8.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.0315507 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.0222.0506 = phi ptr [ undef, %.lr.ph ], [ %.sroa.0222.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.6223.0505 = phi i32 [ undef, %.lr.ph ], [ %.sroa.6223.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.11226.0504 = phi i1 [ false, %.lr.ph ], [ %.sroa.11226.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.5231.0503 = phi i8 [ 0, %.lr.ph ], [ %.sroa.5231.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 11 uses
  %exitcond.not = icmp eq i32 %.060519, %.0.copyload.i.i.i.i.i.i81
  br i1 %exitcond.not, label %bb.m, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit93

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit93:      ; preds = %bb.l
  %i.ae = or disjoint i64 %indvars.iv, 8          ; 2 uses
  %.not.i.i.i.i.i.i94 = icmp ult i64 %invariant.op, %i.ae
  br i1 %.not.i.i.i.i.i.i94, label %bb.n, label %_ZN8rawspeed10ByteStream6getU32Ev.exit101

bb.n:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit93
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit101:        ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit93
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  %.0.copyload.i.i.i.i.i.i89 = load i32, ptr %i.af, align 1
  %i.ag = or disjoint i64 %indvars.iv, 12         ; 2 uses
  %i.ah = icmp samesign ule i64 %i.ag, %i.t
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ae
  %.0.copyload.i.i.i.i.i.i95 = load i32, ptr %i.ai, align 1
  %.0.copyload.i.i.i.i.i.i95.fr = freeze i32 %.0.copyload.i.i.i.i.i.i95 ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag
  %.0.copyload.i.i.i.i.i.i99 = load i32, ptr %i.aj, align 1 ; 16 uses
  switch i32 %.0.copyload.i.i.i.i.i.i89, label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit [
    i32 263, label %bb.o
    i32 264, label %bb.q
    i32 265, label %bb.r
    i32 270, label %bb.s
    i32 271, label %bb.v
    i32 272, label %bb.x
    i32 540, label %bb.z
    i32 541, label %bb.ab
    i32 546, label %bb.ac
    i32 548, label %bb.ad
  ]

bb.o:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.ak = zext i32 %.0.copyload.i.i.i.i.i.i99 to i64 ; 2 uses
  %i.al = zext i32 %.0.copyload.i.i.i.i.i.i95.fr to i64 ; 2 uses
  %i.am = add nuw nsw i64 %i.ak, %i.al
  %.not.i.i102 = icmp samesign ugt i64 %i.am, %i.g
  br i1 %.not.i.i102, label %bb.p, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !235
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.o
  %i.an = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i99, %.0.copyload.i.i.i.i.i.i95.fr
  %i.ao = icmp samesign ule i32 %i.an, %i.d
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ak
  %i.aq = icmp sgt i32 %.0.copyload.i.i.i.i.i.i95.fr, -1
  tail call void @llvm.assume(i1 %i.aq)
  %.sroa.2.8.insert.insert.i = or disjoint i64 %i.al, 244834610708480
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.q:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.r:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.s:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.ar = trunc nuw i8 %.sroa.5231.0503 to i1
  br i1 %i.ar, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv) #18
  unreachable

bb.u:                                             ; preds = %bb.s
  %cond = icmp eq i32 %.0.copyload.i.i.i.i.i.i99, 3
  br i1 %cond, label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit, label %.thread

.thread:                                          ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv, i32 noundef %.0.copyload.i.i.i.i.i.i99) #18
  unreachable

bb.v:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.as = zext i32 %.0.copyload.i.i.i.i.i.i99 to i64 ; 2 uses
  %i.at = zext i32 %.0.copyload.i.i.i.i.i.i95.fr to i64
  %i.au = add nuw nsw i64 %i.as, %i.at
  %.not.i103 = icmp samesign ugt i64 %i.au, %i.g
  br i1 %.not.i103, label %bb.w, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZNK8rawspeed6Buffer10getSubViewEjj.exit:         ; preds = %bb.v
  %i.av = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i99, %.0.copyload.i.i.i.i.i.i95.fr
  %i.aw = icmp samesign ule i32 %i.av, %i.d
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.as
  %i.ay = icmp sgt i32 %.0.copyload.i.i.i.i.i.i95.fr, -1
  tail call void @llvm.assume(i1 %i.ay)
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.x:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %.not.i.i104 = icmp ugt i32 %.0.copyload.i.i.i.i.i.i99, %i.d
  br i1 %.not.i.i104, label %bb.y, label %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #18, !noalias !236
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEj.exit:   ; preds = %bb.x
  %i.az = zext i32 %.0.copyload.i.i.i.i.i.i99 to i64
  %i.ba = sub nuw nsw i32 %i.d, %.0.copyload.i.i.i.i.i.i99
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.az
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.z:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.bc = zext i32 %.0.copyload.i.i.i.i.i.i99 to i64 ; 2 uses
  %i.bd = zext i32 %.0.copyload.i.i.i.i.i.i95.fr to i64 ; 2 uses
  %i.be = add nuw nsw i64 %i.bc, %i.bd
  %.not.i.i108 = icmp samesign ugt i64 %i.be, %i.g
  br i1 %.not.i.i108, label %bb.aa, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !237
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113: ; preds = %bb.z
  %i.bf = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i99, %.0.copyload.i.i.i.i.i.i95.fr
  %i.bg = icmp samesign ule i32 %i.bf, %i.d
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bc
  %i.bi = icmp sgt i32 %.0.copyload.i.i.i.i.i.i95.fr, -1
  tail call void @llvm.assume(i1 %i.bi)
  %.sroa.2.8.insert.insert.i111 = or disjoint i64 %i.bd, 244834610708480
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.ab:                                            ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.bj = lshr i32 %.0.copyload.i.i.i.i.i.i99, 2
  store i32 %i.bj, ptr %i.z, align 8, !tbaa !67
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.ac:                                            ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.ad:                                            ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit: ; preds = %bb.u, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit, %_ZN8rawspeed10ByteStream6getU32Ev.exit101, %bb.ad, %bb.ac, %bb.ab, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit, %bb.r, %bb.q, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %.sroa.5231.1 = phi i8 [ %.sroa.5231.0503, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.5231.0503, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.5231.0503, %bb.q ], [ %.sroa.5231.0503, %bb.r ], [ %.sroa.5231.0503, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.5231.0503, %bb.ad ], [ %.sroa.5231.0503, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.5231.0503, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.5231.0503, %bb.ab ], [ %.sroa.5231.0503, %bb.ac ], [ 1, %bb.u ] ; 2 uses
  %.sroa.11226.1 = phi i1 [ %.sroa.11226.0504, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.11226.0504, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.11226.0504, %bb.q ], [ %.sroa.11226.0504, %bb.r ], [ true, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.11226.0504, %bb.ad ], [ %.sroa.11226.0504, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.11226.0504, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.11226.0504, %bb.ab ], [ %.sroa.11226.0504, %bb.ac ], [ %.sroa.11226.0504, %bb.u ] ; 2 uses
  %.sroa.6223.1 = phi i32 [ %.sroa.6223.0505, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.6223.0505, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.6223.0505, %bb.q ], [ %.sroa.6223.0505, %bb.r ], [ %.0.copyload.i.i.i.i.i.i95.fr, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.6223.0505, %bb.ad ], [ %.sroa.6223.0505, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.6223.0505, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.6223.0505, %bb.ab ], [ %.sroa.6223.0505, %bb.ac ], [ %.sroa.6223.0505, %bb.u ] ; 4 uses
  %.sroa.0222.1 = phi ptr [ %.sroa.0222.0506, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.0222.0506, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.0222.0506, %bb.q ], [ %.sroa.0222.0506, %bb.r ], [ %i.ax, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.0222.0506, %bb.ad ], [ %.sroa.0222.0506, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.0222.0506, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.0222.0506, %bb.ab ], [ %.sroa.0222.0506, %bb.ac ], [ %.sroa.0222.0506, %bb.u ] ; 2 uses
  %.1 = phi i32 [ %.0315507, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.0315507, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.0315507, %bb.q ], [ %.0.copyload.i.i.i.i.i.i99, %bb.r ], [ %.0315507, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.0315507, %bb.ad ], [ %.0315507, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.0315507, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.0315507, %bb.ab ], [ %.0315507, %bb.ac ], [ %.0315507, %bb.u ] ; 14 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.0508, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.8.0508, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.8.0508, %bb.q ], [ %.sroa.8.0508, %bb.r ], [ %.sroa.8.0508, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.8.0508, %bb.ad ], [ %.sroa.8.0508, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.2.8.insert.insert.i111, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.8.0508, %bb.ab ], [ %.sroa.8.0508, %bb.ac ], [ %.sroa.8.0508, %bb.u ] ; 4 uses
  %.sroa.0214.1 = phi ptr [ %.sroa.0214.0509, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.0214.0509, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.0214.0509, %bb.q ], [ %.sroa.0214.0509, %bb.r ], [ %.sroa.0214.0509, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.0214.0509, %bb.ad ], [ %.sroa.0214.0509, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %i.bh, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.0214.0509, %bb.ab ], [ %.sroa.0214.0509, %bb.ac ], [ %.sroa.0214.0509, %bb.u ] ; 3 uses
  %.sroa.6212.1 = phi i64 [ %.sroa.6212.0510, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.2.8.insert.insert.i, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.6212.0510, %bb.q ], [ %.sroa.6212.0510, %bb.r ], [ %.sroa.6212.0510, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.6212.0510, %bb.ad ], [ %.sroa.6212.0510, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.6212.0510, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.6212.0510, %bb.ab ], [ %.sroa.6212.0510, %bb.ac ], [ %.sroa.6212.0510, %bb.u ] ; 4 uses
  %.sroa.0211.1 = phi ptr [ %.sroa.0211.0511, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %i.ap, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.0211.0511, %bb.q ], [ %.sroa.0211.0511, %bb.r ], [ %.sroa.0211.0511, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.0211.0511, %bb.ad ], [ %.sroa.0211.0511, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.0211.0511, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.0211.0511, %bb.ab ], [ %.sroa.0211.0511, %bb.ac ], [ %.sroa.0211.0511, %bb.u ] ; 5 uses
  %.sroa.6210.sroa.0.1 = phi i32 [ %.sroa.6210.sroa.0.0513, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.6210.sroa.0.0513, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.6210.sroa.0.0513, %bb.q ], [ %.sroa.6210.sroa.0.0513, %bb.r ], [ %.sroa.6210.sroa.0.0513, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.6210.sroa.0.0513, %bb.ad ], [ %i.ba, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.6210.sroa.0.0513, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.6210.sroa.0.0513, %bb.ab ], [ %.sroa.6210.sroa.0.0513, %bb.ac ], [ %.sroa.6210.sroa.0.0513, %bb.u ] ; 3 uses
  %.sroa.0209.1 = phi ptr [ %.sroa.0209.0514, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.0209.0514, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.0209.0514, %bb.q ], [ %.sroa.0209.0514, %bb.r ], [ %.sroa.0209.0514, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.0209.0514, %bb.ad ], [ %i.bb, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.0209.0514, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.0209.0514, %bb.ab ], [ %.sroa.0209.0514, %bb.ac ], [ %.sroa.0209.0514, %bb.u ] ; 2 uses
  %.166 = phi i32 [ %.065516, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.065516, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.0.copyload.i.i.i.i.i.i99, %bb.q ], [ %.065516, %bb.r ], [ %.065516, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.065516, %bb.ad ], [ %.065516, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.065516, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.065516, %bb.ab ], [ %.065516, %bb.ac ], [ %.065516, %bb.u ] ; 5 uses
  %.164 = phi i32 [ %.063517, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.063517, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.063517, %bb.q ], [ %.063517, %bb.r ], [ %.063517, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.0.copyload.i.i.i.i.i.i99, %bb.ad ], [ %.063517, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.063517, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.063517, %bb.ab ], [ %.063517, %bb.ac ], [ %.063517, %bb.u ] ; 4 uses
  %.162 = phi i32 [ %.061518, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.061518, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.061518, %bb.q ], [ %.061518, %bb.r ], [ %.061518, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.061518, %bb.ad ], [ %.061518, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.061518, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.061518, %bb.ab ], [ %.0.copyload.i.i.i.i.i.i99, %bb.ac ], [ %.061518, %bb.u ] ; 4 uses
  %i.bk = add nuw nsw i32 %.060519, 1             ; 2 uses
  %exitcond591.not.a = icmp eq i32 %i.bk, %.0.copyload.i.i.i.i.i.i81
  br i1 %exitcond591.not.a, label %._crit_edge, label %bb.l, !llvm.loop !222

._crit_edge.thread:                               ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit87, %._crit_edge
  %.065.lcssa655 = phi i32 [ %.166, %._crit_edge ], [ 0, %_ZN8rawspeed10ByteStream11setPositionEj.exit87 ]
  %.0315.lcssa654 = phi i32 [ %.1, %._crit_edge ], [ 0, %_ZN8rawspeed10ByteStream11setPositionEj.exit87 ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv, i32 noundef %.065.lcssa655, i32 noundef %.0315.lcssa654) #18
  unreachable

bb.ae:                                            ; preds = %._crit_edge
  %i.bl = trunc nuw i8 %.sroa.5231.1 to i1
  br i1 %i.bl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv) #18
  unreachable

bb.ag:                                            ; preds = %bb.ae
  br i1 %.sroa.11226.1, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv) #18
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.bm = icmp ugt i32 %.162, %.166
  %i.bn = icmp ugt i32 %.164, %.1
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv, i32 noundef %.164, i32 noundef %.162) #18
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bo = shl nuw nsw i32 %.1, 2                  ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = and i64 %.sroa.8.1, 4294967295
  %.not.i.i.i.i.i116 = icmp samesign ult i64 %i.bq, %i.bp
  br i1 %.not.i.i.i.i.i116, label %bb.al, label %.lr.ph539

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !238
  unreachable

.lr.ph539:                                        ; preds = %bb.ak
  %.sroa.8.8.extract.trunc = trunc i64 %.sroa.8.1 to i32 ; 2 uses
  %8 = icmp samesign ule i32 %i.bo, %.sroa.8.8.extract.trunc
  tail call void @llvm.assume(i1 %8)
  %9 = icmp sgt i32 %.sroa.8.8.extract.trunc, -1
  tail call void @llvm.assume(i1 %9)
  %i.br = add nuw nsw i32 %.1, 1
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #27 ; 5 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs ; 2 uses
  %i.bw = and i64 %.sroa.8.1, 281470681743360
  %i.bx = icmp eq i64 %i.bw, 244834610708480
  br i1 %i.bx, label %.lr.ph539.split.us, label %.lr.ph539.split

.lr.ph539.split.us:                               ; preds = %.lr.ph539, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us
  %indvars.iv597 = phi i64 [ %indvars.iv.next598, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ 0, %.lr.ph539 ] ; 2 uses
  %storemerge538.us = phi i32 [ %i.cp, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ 0, %.lr.ph539 ] ; 4 uses
  %.sroa.25.0537.us = phi ptr [ %.sroa.25.3.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %i.bv, %.lr.ph539 ] ; 6 uses
  %.sroa.15.0536.us = phi ptr [ %.sroa.15.2.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %i.bu, %.lr.ph539 ] ; 4 uses
  %.sroa.0169.0535.us = phi ptr [ %.sroa.0169.3.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %i.bu, %.lr.ph539 ] ; 7 uses
  %exitcond600.not = icmp eq i32 %storemerge538.us, %.1
  br i1 %exitcond600.not, label %.split.us, label %bb.am

bb.am:                                            ; preds = %.lr.ph539.split.us
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 4
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0214.1, i64 %indvars.iv597
  %.0.copyload.i.i.i.i.i.i123.us = load i32, ptr %i.by, align 1 ; 2 uses
  %.not.i127.us = icmp eq ptr %.sroa.15.0536.us, %.sroa.25.0537.us
  br i1 %.not.i127.us, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %storemerge538.us, ptr %.sroa.15.0536.us, align 4, !tbaa !239
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.15.0536.us, i64 4
  store i32 %.0.copyload.i.i.i.i.i.i123.us, ptr %i.bz, align 4, !tbaa !23
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us

bb.ao:                                            ; preds = %bb.am
  %i.ca = ptrtoint ptr %.sroa.25.0537.us to i64
  %i.cb = ptrtoint ptr %.sroa.0169.0535.us to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 6 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %.split546.us, label %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ao
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.us, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.us)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #27
          to label %.noexc129.us unwind label %.loopexit.split.us ; 4 uses

.noexc129.us:                                     ; preds = %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 3 uses
  store i32 %storemerge538.us, ptr %i.cl, align 4, !tbaa !239
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 %.0.copyload.i.i.i.i.i.i123.us, ptr %i.cm, align 4, !tbaa !23
  %i.cn = icmp sgt i64 %i.cc, 0
  br i1 %i.cn, label %bb.ap, label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us

bb.ap:                                            ; preds = %.noexc129.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 4 %.sroa.0169.0535.us, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us: ; preds = %bb.ap, %.noexc129.us
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0535.us, i64 noundef %i.cc) #26
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us: ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us, %bb.an
  %.sroa.0169.3.us = phi ptr [ %i.ck, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us ], [ %.sroa.0169.0535.us, %bb.an ] ; 2 uses
  %.pn334.us = phi ptr [ %i.cl, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us ], [ %.sroa.15.0536.us, %bb.an ]
  %.sroa.25.3.us = phi ptr [ %i.co, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us ], [ %.sroa.25.0537.us, %bb.an ] ; 2 uses
  %.sroa.15.2.us = getelementptr inbounds nuw i8, ptr %.pn334.us, i64 8 ; 2 uses
  %i.cp = add nuw nsw i32 %storemerge538.us, 1    ; 2 uses
  %exitcond601.not = icmp eq i32 %i.cp, %.1
  br i1 %exitcond601.not, label %._crit_edge540, label %.lr.ph539.split.us, !llvm.loop !231

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph539.split:                                  ; preds = %.lr.ph539, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit
  %indvars.iv592 = phi i64 [ %indvars.iv.next593, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ 0, %.lr.ph539 ] ; 2 uses
  %storemerge538 = phi i32 [ %i.di, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ 0, %.lr.ph539 ] ; 4 uses
  %.sroa.25.0537 = phi ptr [ %.sroa.25.3, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ %i.bv, %.lr.ph539 ] ; 6 uses
  %.sroa.15.0536 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ %i.bu, %.lr.ph539 ] ; 4 uses
  %.sroa.0169.0535 = phi ptr [ %.sroa.0169.3, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ %i.bu, %.lr.ph539 ] ; 7 uses
  %exitcond595.not = icmp eq i32 %storemerge538, %.1
  br i1 %exitcond595.not, label %.split.us, label %bb.aq

.split.us:                                        ; preds = %.lr.ph539.split, %.lr.ph539.split.us
  %.us-phi = phi ptr [ %.sroa.0169.0535.us, %.lr.ph539.split.us ], [ %.sroa.0169.0535, %.lr.ph539.split ]
  %.us-phi544 = phi ptr [ %.sroa.25.0537.us, %.lr.ph539.split.us ], [ %.sroa.25.0537, %.lr.ph539.split ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
          to label %.noexc125 unwind label %.loopexit.split-lp

.noexc125:                                        ; preds = %.split.us
  unreachable

bb.aq:                                            ; preds = %.lr.ph539.split
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0214.1, i64 %indvars.iv592
  %.0.copyload.i.i.i.i.i.i123 = load i32, ptr %i.cq, align 1
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i123) ; 2 uses
  %.not.i127 = icmp eq ptr %.sroa.15.0536, %.sroa.25.0537
  br i1 %.not.i127, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %storemerge538, ptr %.sroa.15.0536, align 4, !tbaa !239
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.15.0536, i64 4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !23
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit

bb.as:                                            ; preds = %bb.aq
  %i.ct = ptrtoint ptr %.sroa.25.0537 to i64
  %i.cu = ptrtoint ptr %.sroa.0169.0535 to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 6 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %.split546.us, label %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.split546.us:                                     ; preds = %bb.as, %bb.ao
  %.us-phi547 = phi ptr [ %.sroa.0169.0535.us, %bb.ao ], [ %.sroa.0169.0535, %bb.as ]
  %.us-phi548 = phi ptr [ %.sroa.25.0537.us, %bb.ao ], [ %.sroa.25.0537, %bb.as ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #28
          to label %.noexc128 unwind label %.loopexit.split-lp

.noexc128:                                        ; preds = %.split546.us
  unreachable

_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #27
          to label %.noexc129 unwind label %.loopexit.split ; 4 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cv ; 3 uses
  store i32 %storemerge538, ptr %i.de, align 4, !tbaa !239
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.cr, ptr %i.df, align 4, !tbaa !23
  %i.dg = icmp sgt i64 %i.cv, 0
  br i1 %i.dg, label %bb.at, label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

bb.at:                                            ; preds = %.noexc129
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dd, ptr align 4 %.sroa.0169.0535, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.at, %.noexc129
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0535, i64 noundef %i.cv) #26
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ar
  %.sroa.0169.3 = phi ptr [ %i.dd, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0169.0535, %bb.ar ] ; 2 uses
  %.pn334 = phi ptr [ %i.de, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.15.0536, %bb.ar ]
  %.sroa.25.3 = phi ptr [ %i.dh, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.25.0537, %bb.ar ] ; 2 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn334, i64 8 ; 2 uses
  %i.di = add nuw nsw i32 %storemerge538, 1       ; 2 uses
  %exitcond596.not = icmp eq i32 %i.di, %.1
  br i1 %exitcond596.not, label %._crit_edge540, label %.lr.ph539.split, !llvm.loop !231

._crit_edge540:                                   ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us
  %.sroa.0169.0.lcssa = phi ptr [ %.sroa.0169.3.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %.sroa.0169.3, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ] ; 6 uses
  %.sroa.15.0.lcssa = phi ptr [ %.sroa.15.2.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %.sroa.15.2, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ] ; 7 uses
  %.sroa.25.0.lcssa = phi ptr [ %.sroa.25.3.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %.sroa.25.3, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ] ; 2 uses
  %.not.i130 = icmp eq ptr %.sroa.15.0.lcssa, %.sroa.25.0.lcssa
  br i1 %.not.i130, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge540
  store i32 %.1, ptr %.sroa.15.0.lcssa, align 4, !tbaa !239
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa, i64 4
  store i32 %.sroa.6223.1, ptr %i.dj, align 4, !tbaa !23
  br label %bb.ay

bb.av:                                            ; preds = %._crit_edge540
  %i.dk = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.dl = ptrtoint ptr %.sroa.0169.0.lcssa to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 6 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775800
  br i1 %i.dn, label %bb.aw, label %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i131

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #28
          to label %.noexc137 unwind label %.loopexit.split-lp

.noexc137:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i131: ; preds = %bb.av
  %i.do = ashr exact i64 %i.dm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i132 = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i132, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 1152921504606846975)
  %i.ds = select i1 %i.dq, i64 1152921504606846975, i64 %i.dr ; 3 uses
  %.not.i.i.i133 = icmp ne i64 %i.ds, 0
  tail call void @llvm.assume(i1 %.not.i.i.i133)
  %i.dt = shl nuw nsw i64 %i.ds, 3
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #27
          to label %.noexc138 unwind label %.loopexit.split-lp ; 4 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i131
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.dm ; 3 uses
  store i32 %.1, ptr %i.dv, align 4, !tbaa !239
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %.sroa.6223.1, ptr %i.dw, align 4, !tbaa !23
  %i.dx = icmp sgt i64 %i.dm, 0
  br i1 %i.dx, label %bb.ax, label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136

bb.ax:                                            ; preds = %.noexc138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %.sroa.0169.0.lcssa, i64 %i.dm, i1 false)
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136: ; preds = %bb.ax, %.noexc138
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0.lcssa, i64 noundef %i.dm) #26
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ds
  br label %bb.ay

bb.ay:                                            ; preds = %bb.au, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136
  %.sroa.0169.4 = phi ptr [ %i.du, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136 ], [ %.sroa.0169.0.lcssa, %bb.au ] ; 4 uses
  %.pn333 = phi ptr [ %i.dv, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136 ], [ %.sroa.15.0.lcssa, %bb.au ]
  %.sroa.25.4 = phi ptr [ %i.dy, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136 ], [ %.sroa.25.0.lcssa, %bb.au ] ; 3 uses
  %.sroa.15.3 = getelementptr inbounds nuw i8, ptr %.pn333, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %.sroa.0169.4, ptr %3, align 8, !tbaa !241
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.15.3, ptr %i.dz, align 8, !tbaa !242
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.25.4, ptr %i.ea, align 8, !tbaa !243
  invoke void @_ZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %2, ptr %.sroa.0222.1, i32 %.sroa.6223.1, ptr noundef nonnull align 8 %3, i32 noundef %.1)
          to label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit unwind label %bb.bn

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit: ; preds = %bb.ay
  %i.eb = ptrtoint ptr %.sroa.25.4 to i64
  %i.ec = ptrtoint ptr %.sroa.0169.4 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.4, i64 noundef %i.ed) #26
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !68 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %.sroa.4162.0.insert.ext = zext nneg i32 %.1 to i64
  %.sroa.4162.0.insert.shift = shl nuw nsw i64 %.sroa.4162.0.insert.ext, 32
  %.sroa.0161.0.insert.ext = zext nneg i32 %.166 to i64
  %.sroa.0161.0.insert.insert = or disjoint i64 %.sroa.4162.0.insert.shift, %.sroa.0161.0.insert.ext
  store i64 %.sroa.0161.0.insert.insert, ptr %i.eg, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.ef, ptr %5, align 8, !tbaa !68
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !69 ; 3 uses
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i141 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i141, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !24
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !24
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.bb:                                            ; preds = %bb.az
  %i.eo = atomicrmw volatile add ptr %i.ek, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit, %bb.ba, %bb.bb
  invoke void @_ZN8rawspeed20PhaseOneDecompressorC1ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.bc unwind label %bb.bo

bb.bc:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.ep = load ptr, ptr %i.eh, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i142 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i142, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.eq, align 8, !tbaa !71
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !72
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !74
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #25, !call_target !79, !inline_history !1
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !74
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #25, !call_target !81, !inline_history !1
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i143 = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i.i143, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i = phi i32 [ %i.et, %bb.bg ], [ %i.fd, %bb.bh ]
  %i.fe = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fe, label %bb.bi, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !82

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #25
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.bc, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bi
  %i.ff = load ptr, ptr %i.ee, align 8, !tbaa !68
  invoke void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624) %i.ff)
          to label %bb.bj unwind label %bb.cb

bb.bj:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  invoke void @_ZNK8rawspeed20PhaseOneDecompressor10decompressEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.bk unwind label %bb.cb

bb.bk:                                            ; preds = %bb.bj
  %.not = icmp eq i32 %.sroa.6210.sroa.0.1, 0
  br i1 %.not, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.fh = load i8, ptr %i.fg, align 2, !tbaa !244, !range !83, !noundef !84
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  store ptr %.sroa.0209.1, ptr %6, align 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.6210.sroa.0.0.insert.ext = zext i32 %.sroa.6210.sroa.0.1 to i64
  %.sroa.6210.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6210.sroa.0.0.insert.ext, 244834610708480
  store i64 %.sroa.6210.sroa.0.0.insert.insert, ptr %.sroa.6210.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 8
  invoke void @_ZNK8rawspeed10IiqDecoder16CorrectPhaseOneCENS_10ByteStreamEjj(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %6, i32 noundef %.164, i32 noundef %.162)
          to label %bb.bp unwind label %bb.cb

.loopexit.split:                                  ; preds = %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.aw, %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i131, %.split546.us, %.split.us
  %.sroa.0169.0347 = phi ptr [ %.sroa.0169.0.lcssa, %bb.aw ], [ %.sroa.0169.0.lcssa, %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i131 ], [ %.us-phi547, %.split546.us ], [ %.us-phi, %.split.us ]
  %.sroa.25.0339 = phi ptr [ %.sroa.15.0.lcssa, %bb.aw ], [ %.sroa.15.0.lcssa, %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i131 ], [ %.us-phi548, %.split546.us ], [ %.us-phi544, %.split.us ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.bn:                                            ; preds = %bb.ay
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145.sink.split

bb.bo:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.cc

bb.bp:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.fl = and i64 %.sroa.6212.1, 281470681743360
  %i.fm = icmp eq i64 %i.fl, 244834610708480
  %i.fn = and i64 %.sroa.6212.1, 2147483648
  %i.fo = icmp eq i64 %i.fn, 0                    ; 2 uses
  %i.fp = lshr i64 %.sroa.6212.1, 2
  %i.fq = and i64 %i.fp, 1073741823               ; 3 uses
  %exitcond618 = icmp eq i64 %i.fq, 0             ; 2 uses
  br i1 %i.fm, label %.split557.us.preheader, label %.split557.preheader

.split557.preheader:                              ; preds = %bb.bp
  br i1 %exitcond618, label %.split559.us, label %.split557.1

.split557.us.preheader:                           ; preds = %bb.bp
  br i1 %exitcond618, label %.split559.us, label %.split557.us.1

.split557.us.1:                                   ; preds = %.split557.us.preheader
  call void @llvm.assume(i1 %i.fo)
  %switch = icmp samesign ult i64 %i.fq, 3
  br i1 %switch, label %.split559.us, label %.split561.us.loopexit

.split561.us.loopexit:                            ; preds = %.split557.us.1
  %i.fr = load <2 x float>, ptr %.sroa.0211.1, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0211.1, i64 8
  %.0.copyload.i.i.i.i.i.i155.us.2 = load float, ptr %i.fs, align 1
  br label %.split561.us

.split561.us:                                     ; preds = %.split561.us.loopexit568, %.split561.us.loopexit
  %.sroa.9.0 = phi float [ %.0.copyload.i.i.i.i.i.i155.us.2, %.split561.us.loopexit ], [ %i.hm, %.split561.us.loopexit568 ]
  %i.ft = phi <2 x float> [ %i.fr, %.split561.us.loopexit ], [ %i.hj, %.split561.us.loopexit568 ]
  %i.fu = load ptr, ptr %i.ee, align 8, !tbaa !68 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 256
  store <2 x float> %i.ft, ptr %i.fv, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 264
  store float %.sroa.9.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 268
  store float 0.000000e+00, ptr %.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 272
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fw = load ptr, ptr %i.ei, align 8, !tbaa !69 ; 2 uses
  %i.fx = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !245
  store <2 x ptr> %i.fx, ptr %0, align 8, !tbaa !245
  %.not.i.i.i.i146 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i146, label %_ZN8rawspeed8RawImageC2ERKS0_.exit148, label %bb.bq

bb.bq:                                            ; preds = %.split561.us
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 3 uses
  %i.fz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i147 = icmp eq i8 %i.fz, 0
  br i1 %.not.i.i.i.i.i147, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !24
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fy, align 4, !tbaa !24
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit148

bb.bs:                                            ; preds = %bb.bq
  %i.gc = atomicrmw volatile add ptr %i.fy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit148

_ZN8rawspeed8RawImageC2ERKS0_.exit148:            ; preds = %.split561.us, %bb.br, %bb.bs
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i149, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit148
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !31
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #26
  br label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit.i: ; preds = %bb.bt, %_ZN8rawspeed8RawImageC2ERKS0_.exit148
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i1.i, label %_ZN8rawspeed20PhaseOneDecompressorD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.gm, align 8, !tbaa !71
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !72
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !74
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #25, !call_target !79, !inline_history !232
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !74
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #25, !call_target !81, !inline_history !232
  br label %_ZN8rawspeed20PhaseOneDecompressorD2Ev.exit

bb.bw:                                            ; preds = %bb.bu
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i150 = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i150, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i = phi i32 [ %i.gp, %bb.bx ], [ %i.gz, %bb.by ]
  %i.ha = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ha, label %bb.bz, label %_ZN8rawspeed20PhaseOneDecompressorD2Ev.exit, !prof !82

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #25
  br label %_ZN8rawspeed20PhaseOneDecompressorD2Ev.exit

_ZN8rawspeed20PhaseOneDecompressorD2Ev.exit:      ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit.i, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.hb = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit153, label %bb.ca

bb.ca:                                            ; preds = %_ZN8rawspeed20PhaseOneDecompressorD2Ev.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !31
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %i.hb to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hg) #26
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit153

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit153: ; preds = %bb.ca, %_ZN8rawspeed20PhaseOneDecompressorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.split559.us:                                     ; preds = %.split557.1, %.split557.us.1, %.split557.preheader, %.split557.us.preheader
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
          to label %.noexc156 unwind label %bb.cb

.noexc156:                                        ; preds = %.split559.us
  unreachable

.split557.1:                                      ; preds = %.split557.preheader
  call void @llvm.assume(i1 %i.fo)
  %switch683 = icmp samesign ult i64 %i.fq, 3
  br i1 %switch683, label %.split559.us, label %.split561.us.loopexit568

.split561.us.loopexit568:                         ; preds = %.split557.1
  %i.hh = load <2 x i32>, ptr %.sroa.0211.1, align 1
  %i.hi = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.hh)
  %i.hj = bitcast <2 x i32> %i.hi to <2 x float>
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0211.1, i64 8
  %.0.copyload.i.i.i.i.i.i155566.2 = load i32, ptr %i.hk, align 1
  %i.hl = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i155566.2)
  %i.hm = bitcast i32 %i.hl to float
  br label %.split561.us

bb.cb:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit, %bb.bj, %bb.bm, %.split559.us
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed20PhaseOneDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #25
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bo
  %.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.cb ], [ %i.fk, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ho = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !31
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145.sink.split

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145.sink.split: ; preds = %bb.bn, %bb.cd
  %.sink681 = phi ptr [ %i.hq, %bb.cd ], [ %.sroa.25.4, %bb.bn ]
  %.sink680 = phi ptr [ %i.ho, %bb.cd ], [ %.sroa.0169.4, %bb.bn ] ; 2 uses
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %bb.cd ], [ %i.fj, %bb.bn ]
  %i.hr = ptrtoint ptr %.sink681 to i64
  %i.hs = ptrtoint ptr %.sink680 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sink680, i64 noundef %i.ht) #26
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145: ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145.sink.split, %bb.cc
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cc ], [ %.pn.pn.pn.ph, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit160

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split
  %.sroa.0169.0346 = phi ptr [ %.sroa.0169.0347, %.loopexit.split-lp ], [ %.sroa.0169.0535, %.loopexit.split ], [ %.sroa.0169.0535.us, %.loopexit.split.us ] ; 2 uses
  %.sroa.25.0338 = phi ptr [ %.sroa.25.0339, %.loopexit.split-lp ], [ %.sroa.25.0537, %.loopexit.split ], [ %.sroa.25.0537.us, %.loopexit.split.us ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  %i.hu = ptrtoint ptr %.sroa.25.0338 to i64
  %i.hv = ptrtoint ptr %.sroa.0169.0346 to i64
  %i.hw = sub i64 %i.hu, %i.hv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0346, i64 noundef %i.hw) #26
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit160

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit160: ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145, %.loopexit
  %.pn70331 = phi { ptr, i32 } [ %lpad.phi, %.loopexit ], [ %.pn.pn.pn, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EED2Ev.exit145 ]
  resume { ptr, i32 } %.pn70331
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d
}

declare void @_ZN8rawspeed20PhaseOneDecompressorC1ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !72
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !79, !inline_history !246
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !81, !inline_history !246
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !82

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624)) local_unnamed_addr #2

declare void @_ZNK8rawspeed20PhaseOneDecompressor10decompressEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10IiqDecoder16CorrectPhaseOneCENS_10ByteStreamEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %5 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %6 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %7 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37   ; 12 uses
  %i.g = zext i32 %i.f to i64                     ; 9 uses
  %.not.i.i = icmp samesign ugt i64 %i.d, %i.g
  br i1 %.not.i.i, label %bb.b, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.a
  %8 = add nuw nsw i32 %i.b, 8                    ; 2 uses
  %9 = icmp samesign ule i32 %8, %i.f
  tail call void @llvm.assume(i1 %9)
  %10 = icmp sgt i32 %i.f, -1
  tail call void @llvm.assume(i1 %10)
  %i.h = zext i32 %8 to i64                       ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 4
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN8rawspeed10ByteStream6getU32Ev.exit

bb.c:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i16, ptr %i.j, align 4, !tbaa !85   ; 2 uses
  %i.l = icmp eq i16 %i.k, -8531                  ; 5 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !38     ; 7 uses
  %i.n = add nuw nsw i32 %i.b, 12
  %i.o = icmp samesign ule i32 %i.n, %i.f
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.p, align 1 ; 2 uses
  %i.q = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.l, i32 %.0.copyload.i.i.i.i.i.i, i32 %i.q ; 5 uses
  %.not.i.i21 = icmp ugt i32 %spec.select.i.i.i.i.i.i, %i.f
  br i1 %.not.i.i21, label %bb.d, label %_ZN8rawspeed10ByteStream11setPositionEj.exit

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream11setPositionEj.exit:     ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  %i.r = zext nneg i32 %spec.select.i.i.i.i.i.i to i64 ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 4
  %.not.i.i.i.i.i.i22 = icmp samesign ugt i64 %i.s, %i.g
  br i1 %.not.i.i.i.i.i.i22, label %bb.e, label %_ZN8rawspeed10ByteStream6getU32Ev.exit25

bb.e:                                             ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit25:         ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  %i.t = add nuw nsw i32 %spec.select.i.i.i.i.i.i, 4
  %i.u = icmp samesign ule i32 %i.t, %i.f
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %.0.copyload.i.i.i.i.i.i23 = load i32, ptr %i.v, align 1 ; 2 uses
  %i.w = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i23)
  %spec.select.i.i.i.i.i.i24 = select i1 %i.l, i32 %.0.copyload.i.i.i.i.i.i23, i32 %i.w ; 4 uses
  %i.x = zext nneg i32 %spec.select.i.i.i.i.i.i to i64
  %i.y = add nuw nsw i64 %i.x, 8
  %.not.i.i26 = icmp samesign ugt i64 %i.y, %i.g
  br i1 %.not.i.i26, label %bb.f, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit27

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit25
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit27:      ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit25
  %i.z = add nuw nsw i32 %spec.select.i.i.i.i.i.i, 8 ; 3 uses
  %i.aa = icmp samesign ule i32 %i.z, %i.f
  tail call void @llvm.assume(i1 %i.aa)
  %mul.ov.i = icmp ugt i32 %spec.select.i.i.i.i.i.i24, 357913941
  br i1 %mul.ov.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit27
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10ByteStream9getStreamEjj) #18, !noalias !264
  unreachable

bb.h:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit27
  %i.ab = mul nuw i32 %spec.select.i.i.i.i.i.i24, 12 ; 3 uses
  %i.ac = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ad = zext i32 %i.ab to i64                   ; 6 uses
  %i.ae = add nuw nsw i64 %i.ad, %i.ac
  %.not.i.i.i.i.i = icmp samesign ugt i64 %i.ae, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZN8rawspeed10ByteStream9getStreamEjj.exit

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !265
  unreachable

_ZN8rawspeed10ByteStream9getStreamEjj.exit:       ; preds = %bb.h
  %i.af = add nuw nsw i32 %i.ab, %i.z
  %i.ag = icmp samesign ule i32 %i.af, %i.f
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac ; 3 uses
  %i.ai = icmp sgt i32 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ai)
  %.sroa.4.8.insert.ext.i.i.i.i = zext i16 %i.k to i64
  %.sroa.4.8.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i.i.i, 32 ; 4 uses
  %.not = icmp eq i32 %spec.select.i.i.i.i.i.i24, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8rawspeed10ByteStream9getStreamEjj.exit
  %invariant.op = add nsw i64 %i.ad, -4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %.sroa.2.0..0..sroa_idx.i4.i58 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0..0..sroa_idx.i4.i52 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.2.0..0..sroa_idx.i4.i46 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %bb.aa, %_ZN8rawspeed10ByteStream9getStreamEjj.exit
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 6 uses
  %.077 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.aa ]
  %.01876 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.aa ] ; 6 uses
  %.01975 = phi i1 [ false, %.lr.ph ], [ %.120, %bb.aa ] ; 5 uses
  %.not.i.i.i.i.i.i29.not = icmp samesign ult i64 %indvars.iv, %i.ad
  br i1 %.not.i.i.i.i.i.i29.not, label %_ZN8rawspeed10ByteStream6getU32Ev.exit32, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit32:         ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  %.0.copyload.i.i.i.i.i.i30 = load i32, ptr %i.ao, align 1 ; 2 uses
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i30)
  %spec.select.i.i.i.i.i.i31 = select i1 %i.l, i32 %.0.copyload.i.i.i.i.i.i30, i32 %i.ap
  %.not.i.i.i.i.i.i33.not = icmp ugt i64 %invariant.op, %indvars.iv
  br i1 %.not.i.i.i.i.i.i33.not, label %_ZN8rawspeed10ByteStream6getU32Ev.exit36, label %bb.l

bb.l:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit36:         ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit32
  %i.aq = add nuw nsw i64 %indvars.iv, 8          ; 3 uses
  %i.ar = icmp samesign ule i64 %i.aq, %i.ad
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.0.copyload.i.i.i.i.i.i34 = load i32, ptr %i.at, align 1 ; 2 uses
  %i.au = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i34)
  %spec.select.i.i.i.i.i.i35 = select i1 %i.l, i32 %.0.copyload.i.i.i.i.i.i34, i32 %i.au ; 12 uses
  %.not.i.i.i.i.i.i37.not = icmp samesign ult i64 %i.aq, %i.ad
  br i1 %.not.i.i.i.i.i.i37.not, label %_ZN8rawspeed10ByteStream6getU32Ev.exit40, label %bb.m

bb.m:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit36
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit40:         ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 12 ; 2 uses
  %i.av = icmp samesign ule i64 %indvars.iv.next, %i.ad
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %.0.copyload.i.i.i.i.i.i38 = load i32, ptr %i.aw, align 1 ; 2 uses
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i38)
  %spec.select.i.i.i.i.i.i39 = select i1 %i.l, i32 %.0.copyload.i.i.i.i.i.i38, i32 %i.ax ; 8 uses
  switch i32 %spec.select.i.i.i.i.i.i31, label %bb.aa [
    i32 1024, label %bb.n
    i32 1035, label %bb.r
    i32 1040, label %bb.t
    i32 1073, label %bb.v
  ]

bb.n:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit40
  br i1 %.01876, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10IiqDecoder16CorrectPhaseOneCENS_10ByteStreamEjj) #18
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.ay = zext i32 %spec.select.i.i.i.i.i.i39 to i64 ; 2 uses
  %i.az = zext i32 %spec.select.i.i.i.i.i.i35 to i64 ; 2 uses
  %i.ba = add nuw nsw i64 %i.ay, %i.az
  %.not.i.i41 = icmp samesign ugt i64 %i.ba, %i.g
  br i1 %.not.i.i41, label %bb.q, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !266
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.p
  %i.bb = add nuw nsw i32 %spec.select.i.i.i.i.i.i39, %spec.select.i.i.i.i.i.i35
  %i.bc = icmp samesign ule i32 %i.bb, %i.f
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ay
  %i.be = icmp sgt i32 %spec.select.i.i.i.i.i.i35, -1
  tail call void @llvm.assume(i1 %i.be)
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i, %i.az
  store ptr %i.bd, ptr %4, align 8, !alias.scope !266
  store i64 %.sroa.2.8.insert.insert.i, ptr %.sroa.2.0..0..sroa_idx.i4.i, align 8, !alias.scope !266
  store i32 0, ptr %i.an, align 8, !tbaa !36, !alias.scope !266
  tail call void @_ZNK8rawspeed10IiqDecoder20correctSensorDefectsENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %4)
  br label %bb.aa

bb.r:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.bf = zext i32 %spec.select.i.i.i.i.i.i39 to i64 ; 2 uses
  %i.bg = zext i32 %spec.select.i.i.i.i.i.i35 to i64 ; 2 uses
  %i.bh = add nuw nsw i64 %i.bf, %i.bg
  %.not.i.i42 = icmp samesign ugt i64 %i.bh, %i.g
  br i1 %.not.i.i42, label %bb.s, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit47
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrE:bb.a

.thread:                                          ; preds = %.lr.ph663, %bb.v
  %i.ih = phi i32 [ %i.if, %bb.v ], [ 0, %.lr.ph663 ]
  %i.ii = icmp samesign ult i32 %.084475662, %i.i
  tail call void @llvm.assume(i1 %i.ii)
  tail call void @llvm.assume(i1 %i.gj)
  %i.ij = zext nneg i32 %.084475662 to i64
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.ij ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !160
  %i.im = uitofp i16 %i.il to float
  %i.in = zext nneg i32 %i.ih to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.in
  %i.ip = load float, ptr %i.io, align 4, !tbaa !284
  %i.iq = fmul float %i.ip, %i.im
  %i.ir = fptoui float %i.iq to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.ir, i32 65535)
  %i.is = trunc nuw i32 %.sroa.speculated to i16
  store i16 %i.is, ptr %i.ik, align 2, !tbaa !160
  br label %.preheader672

.thread611:                                       ; preds = %bb.u
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.thread373

bb.w:                                             ; preds = %bb.x, %.preheader672
  %i.iu = phi float [ %i.jc, %bb.x ], [ %i.ia, %.preheader672 ] ; 3 uses
  %i.iv = add nsw i32 %.084475662, 1              ; 4 uses
  %i.iw = load ptr, ptr %i.a, align 8, !tbaa !68  ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !151
  %i.iz = icmp slt i32 %i.iv, %i.iy
  %i.ja = icmp slt i32 %i.iv, %i.ho
  %or.cond109 = and i1 %i.iz, %i.ja
  br i1 %or.cond109, label %.lr.ph, label %..critedge2.loopexit_crit_edge, !llvm.loop !278

.preheader672:                                    ; preds = %bb.v, %.thread
  %i.jb = fadd float %i.he, %i.ib                 ; 2 uses
  store float %i.jb, ptr %3, align 4, !tbaa !284
  br i1 %i.q, label %bb.x, label %bb.w

bb.x:                                             ; preds = %.preheader672
  %i.jc = fadd float %i.hf, %i.ia                 ; 2 uses
  store float %i.jc, ptr %i.cw, align 4, !tbaa !284
  br label %bb.w

.preheader:                                       ; preds = %.preheader390, %bb.z
  %indvars.iv582 = phi i64 [ %indvars.iv.next583.1, %bb.z ], [ 0, %.preheader390 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.z ], [ 0, %.preheader390 ]
  %i.jd = mul nuw nsw i64 %indvars.iv582, %i.cn   ; 2 uses
  %i.je = add nuw nsw i64 %i.jd, %i.cn
  %i.jf = icmp samesign ule i64 %i.je, %i.bv
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.jd ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !284
  %i.jj = load float, ptr %i.jg, align 4, !tbaa !284
  %i.jk = fadd float %i.ji, %i.jj
  store float %i.jk, ptr %i.jg, align 4, !tbaa !284
  br i1 %i.q, label %.preheader.1, label %.critedge697

.unr-lcssa:                                       ; preds = %bb.z
  br i1 %lcmp.mod.not.not, label %.preheader.epil.preheader, label %.epilog-lcssa

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader390
  %indvars.iv582.epil.init = phi i64 [ 0, %.preheader390 ], [ %indvars.iv.next583.1, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod685)
  %i.jl = mul nuw nsw i64 %indvars.iv582.epil.init, %i.cn ; 2 uses
  %i.jm = add nuw nsw i64 %i.jl, %i.cn
  %i.jn = icmp samesign ule i64 %i.jm, %i.bv
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.jl ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !284
  %i.jr = load float, ptr %i.jo, align 4, !tbaa !284
  %i.js = fadd float %i.jq, %i.jr
  store float %i.js, ptr %i.jo, align 4, !tbaa !284
  br i1 %i.q, label %bb.y, label %.epilog-lcssa

bb.y:                                             ; preds = %.preheader.epil.preheader
  tail call void @llvm.assume(i1 %i.q)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !284
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !284
  %i.jx = fadd float %i.ju, %i.jw
  store float %i.jx, ptr %i.jv, align 4, !tbaa !284
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader.epil.preheader, %bb.y, %.unr-lcssa
  %i.jy = add nsw i32 %.087483667, 1              ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gp, i64 44
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !158
  %i.kb = icmp slt i32 %i.jy, %i.ka
  %i.kc = icmp slt i32 %i.jy, %i.fy
  %or.cond = and i1 %i.kb, %i.kc
  br i1 %or.cond, label %.lr.ph484, label %..critedge.loopexit_crit_edge, !llvm.loop !277

.critedge697:                                     ; preds = %.preheader
  %indvars.iv.next583.c = or disjoint i64 %indvars.iv582, 1
  %i.kd = mul nuw nsw i64 %indvars.iv.next583.c, %i.cn ; 2 uses
  %i.ke = add nuw nsw i64 %i.kd, %i.cn
  %i.kf = icmp samesign ule i64 %i.ke, %i.bv
  tail call void @llvm.assume(i1 %i.kf)
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.kd ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !284
  %i.kj = load float, ptr %i.kg, align 4, !tbaa !284
  %i.kk = fadd float %i.ki, %i.kj
  store float %i.kk, ptr %i.kg, align 4, !tbaa !284
  br label %bb.z

bb.z:                                             ; preds = %.critedge697, %.preheader.1
  %indvars.iv.next583.1 = add nuw nsw i64 %indvars.iv582, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %.preheader, !llvm.loop !280

.preheader.1:                                     ; preds = %.preheader
  tail call void @llvm.assume(i1 %i.q)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.km = load float, ptr %i.kl, align 4, !tbaa !284
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !284
  %i.kp = fadd float %i.km, %i.ko
  store float %i.kp, ptr %i.kn, align 4, !tbaa !284
  %indvars.iv.next583 = or disjoint i64 %indvars.iv582, 1
  %i.kq = mul nuw nsw i64 %indvars.iv.next583, %i.cn ; 2 uses
  %i.kr = add nuw nsw i64 %i.kq, %i.cn
  %i.ks = icmp samesign ule i64 %i.kr, %i.bv
  tail call void @llvm.assume(i1 %i.ks)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.kq ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !284
  %i.kw = load float, ptr %i.kt, align 4, !tbaa !284
  %i.kx = fadd float %i.kv, %i.kw
  store float %i.kx, ptr %i.kt, align 4, !tbaa !284
  tail call void @llvm.assume(i1 %i.q)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !284
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !284
  %i.lc = fadd float %i.kz, %i.lb
  store float %i.lc, ptr %i.la, align 4, !tbaa !284
  br label %bb.z

..critedge.loopexit_crit_edge:                    ; preds = %.epilog-lcssa
  br label %.critedge, !llvm.loop !277

.critedge:                                        ; preds = %.lr.ph484, %..critedge.loopexit_crit_edge, %bb.q, %.split455.us
  %i.ld = phi float [ %i.cz, %.split455.us ], [ %i.gn, %..critedge.loopexit_crit_edge ], [ %i.cz, %bb.q ], [ %i.gn, %.lr.ph484 ]
  %i.le = phi float [ %i.da, %.split455.us ], [ %i.go, %..critedge.loopexit_crit_edge ], [ %i.da, %bb.q ], [ %i.go, %.lr.ph484 ]
  %i.lf = add nuw nsw i32 %.090493, 1
  %.not385.not = icmp samesign ult i32 %.090493, %.zext384
  br i1 %.not385.not, label %.preheader393, label %bb.m, !llvm.loop !281

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.m, %.split397.us
  ret void

bb.aa:                                            ; preds = %.split405.us
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %.thread373

.thread373:                                       ; preds = %bb.aa, %.thread611
  %.pn106.pn618 = phi { ptr, i32 } [ %i.it, %.thread611 ], [ %i.lg, %bb.aa ]
  %.idx = shl nuw nsw i64 %i.bv, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %.idx) #26
  resume { ptr, i32 } %.pn106.pn618
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef byval(%"class.rawspeed::ByteStream") align 8 captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.96", align 4    ; 13 uses
  %5 = alloca %"struct.std::array.98", align 8    ; 24 uses
  %6 = alloca %"class.rawspeed::Spline", align 8  ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.a, align 8, !tbaa !36   ; 8 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 4
  %i.f = load i32, ptr %i.b, align 8, !tbaa !37   ; 9 uses
  %i.g = zext i32 %i.f to i64                     ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.e, %i.g
  %indvars.iv285.sroa.gep597 = getelementptr inbounds nuw i8, ptr %5, i64 48
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.i"

bb.b:                                             ; preds = %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.5.i", %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.4.i", %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.3.i", %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.2.i", %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.1.i", %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.i", %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.i": ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i16, ptr %i.i, align 4, !tbaa !85
  %i.k = icmp eq i16 %i.j, -8531                  ; 8 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !38     ; 8 uses
  %7 = add nuw nsw i32 %i.c, 4                    ; 2 uses
  %8 = icmp samesign ule i32 %7, %i.f
  tail call void @llvm.assume(i1 %8)
  %9 = icmp sgt i32 %i.f, -1
  tail call void @llvm.assume(i1 %9)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 1 ; 2 uses
  %i.n = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i.i.i, i32 %i.n ; 3 uses
  store i32 %spec.select.i.i.i.i.i.i.i.i, ptr %i.h, align 4, !tbaa !24
  %i.o = zext i32 %7 to i64                       ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 4
  %.not.i.i.i.i.i.i.i.1.i = icmp samesign ugt i64 %i.p, %i.g
  br i1 %.not.i.i.i.i.i.i.i.1.i, label %bb.b, label %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.1.i"

"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.1.i": ; preds = %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.i"
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = add nuw nsw i32 %i.c, 8                  ; 2 uses
  %i.s = icmp samesign ule i32 %i.r, %i.f
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %.0.copyload.i.i.i.i.i.i.i.1.i = load i32, ptr %i.t, align 1 ; 2 uses
  %i.u = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.1.i)
  %spec.select.i.i.i.i.i.i.i.1.i = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i.i.1.i, i32 %i.u ; 3 uses
  store i32 %spec.select.i.i.i.i.i.i.i.1.i, ptr %i.q, align 4, !tbaa !24
  %i.v = zext nneg i32 %i.r to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 4
  %.not.i.i.i.i.i.i.i.2.i = icmp samesign ugt i64 %i.w, %i.g
  br i1 %.not.i.i.i.i.i.i.i.2.i, label %bb.b, label %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.2.i"

"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.2.i": ; preds = %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.1.i"
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.y = add nuw nsw i32 %i.c, 12                 ; 2 uses
  %i.z = icmp samesign ule i32 %i.y, %i.f
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %.0.copyload.i.i.i.i.i.i.i.2.i = load i32, ptr %i.aa, align 1 ; 2 uses
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.2.i)
  %spec.select.i.i.i.i.i.i.i.2.i = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i.i.2.i, i32 %i.ab ; 3 uses
  store i32 %spec.select.i.i.i.i.i.i.i.2.i, ptr %i.x, align 4, !tbaa !24
  %i.ac = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 4
  %.not.i.i.i.i.i.i.i.3.i = icmp samesign ugt i64 %i.ad, %i.g
  br i1 %.not.i.i.i.i.i.i.i.3.i, label %bb.b, label %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.3.i"

"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.3.i": ; preds = %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.2.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = add nuw nsw i32 %i.c, 16                ; 2 uses
  %i.ag = icmp samesign ule i32 %i.af, %i.f
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ac
  %.0.copyload.i.i.i.i.i.i.i.3.i = load i32, ptr %i.ah, align 1 ; 2 uses
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.3.i)
  %spec.select.i.i.i.i.i.i.i.3.i = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i.i.3.i, i32 %i.ai ; 3 uses
  store i32 %spec.select.i.i.i.i.i.i.i.3.i, ptr %i.ae, align 4, !tbaa !24
  %i.aj = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 4
  %.not.i.i.i.i.i.i.i.4.i = icmp samesign ugt i64 %i.ak, %i.g
  br i1 %.not.i.i.i.i.i.i.i.4.i, label %bb.b, label %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.4.i"

"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.4.i": ; preds = %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.3.i"
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.am = add nuw nsw i32 %i.c, 20                ; 2 uses
  %i.an = icmp samesign ule i32 %i.am, %i.f
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aj
  %.0.copyload.i.i.i.i.i.i.i.4.i = load i32, ptr %i.ao, align 1 ; 2 uses
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.4.i)
  %spec.select.i.i.i.i.i.i.i.4.i = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i.i.4.i, i32 %i.ap ; 3 uses
  store i32 %spec.select.i.i.i.i.i.i.i.4.i, ptr %i.al, align 4, !tbaa !24
  %i.aq = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 4
  %.not.i.i.i.i.i.i.i.5.i = icmp samesign ugt i64 %i.ar, %i.g
  br i1 %.not.i.i.i.i.i.i.i.5.i, label %bb.b, label %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.5.i"

"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.5.i": ; preds = %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.4.i"
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = add nuw nsw i32 %i.c, 24                ; 2 uses
  %i.au = icmp samesign ule i32 %i.at, %i.f
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  %.0.copyload.i.i.i.i.i.i.i.5.i = load i32, ptr %i.av, align 1 ; 2 uses
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.5.i)
  %spec.select.i.i.i.i.i.i.i.5.i = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i.i.5.i, i32 %i.aw ; 3 uses
  store i32 %spec.select.i.i.i.i.i.i.i.5.i, ptr %i.as, align 4, !tbaa !24
  %i.ax = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 4
  %.not.i.i.i.i.i.i.i.6.i = icmp samesign ugt i64 %i.ay, %i.g
  br i1 %.not.i.i.i.i.i.i.i.6.i, label %bb.b, label %"_ZSt10generate_nIPjiZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS1_10ByteStreamEjjE3$_0ET_S5_T0_T1_.exit"

"_ZSt10generate_nIPjiZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS1_10ByteStreamEjjE3$_0ET_S5_T0_T1_.exit": ; preds = %"_ZZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjjENK3$_0clEv.exit.5.i"
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ba = add nuw nsw i32 %i.c, 28                ; 3 uses
  %i.bb = icmp samesign ule i32 %i.ba, %i.f
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ax
  %.0.copyload.i.i.i.i.i.i.i.6.i = load i32, ptr %i.bc, align 1 ; 2 uses
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.6.i)
  %spec.select.i.i.i.i.i.i.i.6.i = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i.i.6.i, i32 %i.bd ; 3 uses
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !36
  store i32 %spec.select.i.i.i.i.i.i.i.6.i, ptr %i.az, align 4, !tbaa !24
  store i32 0, ptr %4, align 4, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 65535, ptr %i.be, align 4, !tbaa !24
  %.not18.i.i.not = icmp ne i32 %spec.select.i.i.i.i.i.i.i.i, 0
  %.not18.i.i.1 = icmp ult i32 %spec.select.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.1.i
  %or.cond361 = select i1 %.not18.i.i.not, i1 %.not18.i.i.1, i1 false
  %.not18.i.i.2 = icmp ult i32 %spec.select.i.i.i.i.i.i.i.1.i, %spec.select.i.i.i.i.i.i.i.2.i
  %or.cond362 = select i1 %or.cond361, i1 %.not18.i.i.2, i1 false
  %.not18.i.i.3 = icmp ult i32 %spec.select.i.i.i.i.i.i.i.2.i, %spec.select.i.i.i.i.i.i.i.3.i
  %or.cond363 = select i1 %or.cond362, i1 %.not18.i.i.3, i1 false
  %.not18.i.i.4 = icmp ult i32 %spec.select.i.i.i.i.i.i.i.3.i, %spec.select.i.i.i.i.i.i.i.4.i
  %or.cond364 = select i1 %or.cond363, i1 %.not18.i.i.4, i1 false
  %.not18.i.i.5 = icmp ult i32 %spec.select.i.i.i.i.i.i.i.4.i, %spec.select.i.i.i.i.i.i.i.5.i
  %or.cond365 = select i1 %or.cond364, i1 %.not18.i.i.5, i1 false
  %.not18.i.i.6 = icmp ult i32 %spec.select.i.i.i.i.i.i.i.5.i, %spec.select.i.i.i.i.i.i.i.6.i
  %.not18.i.i.7 = icmp ult i32 %spec.select.i.i.i.i.i.i.i.6.i, 65535
  %i.bf = and i1 %.not18.i.i.6, %.not18.i.i.7
  %or.cond367 = select i1 %or.cond365, i1 %i.bf, i1 false
  br i1 %or.cond367, label %_ZSt13adjacent_findIPKjSt13greater_equalIvEET_S4_S4_T0_.exit.thread, label %_ZSt13adjacent_findIPKjSt13greater_equalIvEET_S4_S4_T0_.exit

_ZSt13adjacent_findIPKjSt13greater_equalIvEET_S4_S4_T0_.exit: ; preds = %"_ZSt10generate_nIPjiZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS1_10ByteStreamEjjE3$_0ET_S5_T0_T1_.exit"
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjj) #18
  unreachable

_ZSt13adjacent_findIPKjSt13greater_equalIvEET_S4_S4_T0_.exit.thread: ; preds = %"_ZSt10generate_nIPjiZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS1_10ByteStreamEjjE3$_0ET_S5_T0_T1_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i64 96, i1 false)
  %i.bg = zext i32 %i.ba to i64
  br label %.lr.ph.preheader

.loopexit199:                                     ; preds = %_ZNSt6vectorIN8rawspeed8iPoint2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit90
  %.not66 = icmp eq i64 %.063.add, 96
  br i1 %.not66, label %.preheader193, label %.lr.ph.preheader

.preheader193:                                    ; preds = %.loopexit199
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.preheader192

.lr.ph.preheader:                                 ; preds = %.loopexit199, %_ZSt13adjacent_findIPKjSt13greater_equalIvEET_S4_S4_T0_.exit.thread
  %.063.idx242 = phi i64 [ 0, %_ZSt13adjacent_findIPKjSt13greater_equalIvEET_S4_S4_T0_.exit.thread ], [ %.063.add, %.loopexit199 ] ; 2 uses
  %.lcssa216223.lcssa233241 = phi i64 [ %i.bg, %_ZSt13adjacent_findIPKjSt13greater_equalIvEET_S4_S4_T0_.exit.thread ], [ %i.hi, %.loopexit199 ]
  %.063.add = add nuw nsw i64 %.063.idx242, 48    ; 3 uses
  %.ptr190 = getelementptr inbounds nuw i8, ptr %5, i64 %.063.add
  %.063.ptr = getelementptr inbounds nuw i8, ptr %5, i64 %.063.idx242
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN8rawspeed8iPoint2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit90
  %.062232 = phi ptr [ %i.jr, %_ZNSt6vectorIN8rawspeed8iPoint2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit90 ], [ %.063.ptr, %.lr.ph.preheader ] ; 10 uses
  %.lcssa216223231 = phi i64 [ %i.hi, %_ZNSt6vectorIN8rawspeed8iPoint2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit90 ], [ %.lcssa216223.lcssa233241, %.lr.ph.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.062232, i64 16 ; 9 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !328 ; 2 uses
  %i.br = load ptr, ptr %.062232, align 8, !tbaa !329 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, 65
  %i.bw = getelementptr inbounds nuw i8, ptr %.062232, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !330 ; 2 uses
  br i1 %i.bv, label %_ZNSt12_Vector_baseIN8rawspeed8iPoint2DESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN8rawspeed8iPoint2DESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN8rawspeed8iPoint2DESaIS1_EE11_M_allocateEm.exit.i: ; preds = %.lr.ph
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bt
  %i.ca = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27
          to label %.noexc unwind label %.loopexit.split-lp195.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN8rawspeed8iPoint2DESaIS1_EE11_M_allocateEm.exit.i
  %i.cb = load ptr, ptr %.062232, align 8, !tbaa !329 ; 10 uses
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !330 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8rawspeed8iPoint2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %iter.check504

iter.check504:                                    ; preds = %.noexc
  %i.cd = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.ca to i64
  %i.cf = ptrtoaddr ptr %i.cc to i64
  %i.cg = add i64 %i.cf, -8
  %i.ch = sub i64 %i.cg, %i.cd                    ; 3 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 5 uses
  %min.iters.check486 = icmp ult i64 %i.ch, 24
  %i.ck = sub i64 %i.cd, %i.ce
  %diff.check485 = icmp ugt i64 %i.ck, -128
  %or.cond568 = or i1 %min.iters.check486, %diff.check485
  br i1 %or.cond568, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check487

vector.main.loop.iter.check487:                   ; preds = %iter.check504
  %min.iters.check488 = icmp ult i64 %i.ch, 120
  br i1 %min.iters.check488, label %vec.epilog.ph508, label %vector.ph489

vector.ph489:                                     ; preds = %vector.main.loop.iter.check487
  %i.cl = and i64 %i.cj, 12
  %n.vec490 = and i64 %i.cj, 4611686018427387888  ; 4 uses
  %i.cm = shl i64 %n.vec490, 3                    ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ca, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cb, i64 %i.cm
  br label %vector.body491

vector.body491:                                   ; preds = %vector.ph489, %vector.body491
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next499, %vector.body491 ] ; 2 uses
  %i.cp = shl i64 %index492, 3                    ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.ca, i64 %i.cp ; 4 uses
end_hunk_1
