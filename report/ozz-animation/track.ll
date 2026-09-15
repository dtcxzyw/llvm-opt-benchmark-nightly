Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/track?download=true
inline.NumInlined: 439
inline.NumDeleted: 160
begin_hunk_0_@_ZNK3ozz9animation8internal5TrackIfE4SaveERNS_2io8OArchiveE:bb.a
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !2 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bo = add nuw i64 %.06.i.i.i24, 1             ; 2 uses
  %exitcond58.not = icmp eq i64 %i.bo, %.sroa.22.0.copyload
  br i1 %exitcond58.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit26, label %.lr.ph.i.i.i23, !llvm.loop !3

bb.e:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %i.bp = shl i64 %.sroa.22.0.copyload, 2
  %i.bq = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i64 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef %.sroa.01.0.copyload, i64 noundef %i.bp), !inline_history !4 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit26

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit26: ; preds = %.lr.ph.i.i.i23, %.preheader.i.i.i21, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.bv, align 8, !tbaa !36 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !34 ; 3 uses
  %i.bw = load i8, ptr %i.k, align 8, !tbaa !49, !range !50, !noundef !51
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.preheader.i.i.i27, label %bb.f

.preheader.i.i.i27:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit26
  %.not.i.i.i28 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i28, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.preheader.i.i.i27, %.lr.ph.i.i.i29
  %.06.i.i.i30 = phi i64 [ %i.cf, %.lr.ph.i.i.i29 ], [ 0, %.preheader.i.i.i27 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.06.i.i.i30
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 %i.bz, ptr %i.b, align 1, !tbaa !57
  %i.ca = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.cf = add nuw i64 %.06.i.i.i30, 1             ; 2 uses
  %exitcond59.not = icmp eq i64 %i.cf, %.sroa.2.0.copyload
  br i1 %exitcond59.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i29, !llvm.loop !6

bb.f:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit26
  %i.cg = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !43
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !7 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i29, %.preheader.i.i.i27, %bb.f
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !45  ; 2 uses
  %i.cm = load i8, ptr %i.k, align 8, !tbaa !49, !range !50, !noundef !51
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.preheader.i.i.i31, label %bb.g

.preheader.i.i.i31:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %.not.i.i.i32 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i32, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %.preheader.i.i.i31, %.lr.ph.i.i.i33
  %.06.i.i.i34 = phi i64 [ %i.cv, %.lr.ph.i.i.i33 ], [ 0, %.preheader.i.i.i31 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.06.i.i.i34
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 %i.cp, ptr %i.a, align 1, !tbaa !57
  %i.cq = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef i64 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cv = add nuw i64 %.06.i.i.i34, 1             ; 2 uses
  %exitcond60.not = icmp eq i64 %i.cv, %i.v
  br i1 %exitcond60.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i33, !llvm.loop !9

bb.g:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %i.cw = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %i.cl, i64 noundef %i.v), !inline_history !10 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i33, %.preheader.i.i.i31, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackIfE4LoadERNS_2io8IArchiveEj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.ozz::log::Err", align 8     ; 7 uses
  %i.c = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !41
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d), !inline_history !44
  store ptr null, ptr %0, align 8, !tbaa !41
  %i.h = icmp ugt i32 %2, 1
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %3)
  %i.i = load ptr, ptr %3, align 8, !tbaa !60, !nonnull !51, !align !61 ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 26)
          to label %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit unwind label %bb.f ; 0 uses

_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit:         ; preds = %bb.b
  %i.k = zext i32 %2 to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 6 uses
  %.not.i.i.i25 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i25, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !81
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
          to label %.noexc26 unwind label %bb.f

.noexc26:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.f, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc26, %bb.d
  %.0.i.i.i = phi i8 [ %i.w, %bb.d ], [ %i.aa, %.noexc26 ]
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i)
          to label %.noexc28 unwind label %bb.f

.noexc28:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc28
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

bb.f:                                             ; preds = %.noexc28, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc26, %bb.e, %bb.c, %_ZNSolsEj.exit, %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ae = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !12 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i32, ptr %i.b, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.an = select i1 %i.al, i32 %.sroa.0.0.insert.insert.i, i32 %i.am ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ao = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !13 ; 0 uses
  %i.at = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i32, ptr %i.a, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i20 = call i32 @llvm.bswap.i32(i32 %i.av)
  %i.aw = select i1 %i.au, i32 %.sroa.0.0.insert.insert.i20, i32 %i.av ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ax = zext i32 %i.an to i64                   ; 5 uses
  %i.ay = sext i32 %i.aw to i64                   ; 3 uses
  %i.az = shl nuw nsw i64 %i.ax, 3
  %i.ba = add nuw nsw i64 %i.ax, 7
  %i.bb = lshr i64 %i.ba, 3                       ; 4 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.az
  %.not.i = icmp eq i32 %i.aw, 0
  %i.bd = add nsw i64 %i.ay, 1                    ; 2 uses
  %i.be = select i1 %.not.i, i64 0, i64 %i.bd
  %i.bf = add nsw i64 %i.bc, %i.be
  %i.bg = call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bf, i64 noundef 4), !inline_history !130 ; 4 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !41
  %.not.i.i = icmp ne i32 %i.an, 0                ; 2 uses
  br i1 %.not.i.i, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit19.i, label %_ZN3ozz9animation8internal5TrackIfE8AllocateEmm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit19.i: ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %i.ax, 2            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i.i ; 2 uses
  %.not.i20.i = icmp eq i64 %i.bb, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bb
  %spec.select54.i = select i1 %.not.i20.i, ptr null, ptr %i.bm
  br label %_ZN3ozz9animation8internal5TrackIfE8AllocateEmm.exit

_ZN3ozz9animation8internal5TrackIfE8AllocateEmm.exit: ; preds = %bb.g, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit19.i
  %.pre-phi = phi i64 [ %.idx.i.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit19.i ], [ 0, %bb.g ] ; 3 uses
  %.sink56.i = phi ptr [ %i.bk, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit19.i ], [ null, %bb.g ]
  %.sink.i = phi ptr [ %i.bl, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit19.i ], [ null, %bb.g ] ; 5 uses
  %.sroa.036.2.i = phi ptr [ %i.bn, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit19.i ], [ %i.bk, %bb.g ]
  %.sroa.04.0.i22.i = phi ptr [ %spec.select54.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit19.i ], [ null, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.sink56.i, ptr %i.bo, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.ax, ptr %i.bp, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.bq, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %.sroa.04.0.i22.i, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.bb, ptr %i.bt, align 8, !tbaa !39
  %i.bu = icmp ult i64 %i.bd, 2
  %i.bv = select i1 %i.bu, ptr null, ptr %.sroa.036.2.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !45
  %i.bx = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %.sink.i, i64 noundef %.pre-phi), !inline_history !14 ; 0 uses
  %i.cc = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond.not = and i1 %.not.i.i, %i.cd
  br i1 %or.cond.not, label %iter.check, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit

iter.check:                                       ; preds = %_ZN3ozz9animation8internal5TrackIfE8AllocateEmm.exit
  %i.ce = call i64 @llvm.usub.sat.i64(i64 %.pre-phi, i64 4) ; 3 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ce, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check54 = icmp samesign ult i64 %i.ce, 60
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ch = and i64 %i.cg, 12
  %n.vec = and i64 %i.cg, 4611686018427387888     ; 4 uses
  %i.ci = shl nuw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl nuw i64 %index, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cj ; 2 uses
  %wide.vec = load <64 x i8>, ptr %i.ck, align 1, !tbaa !57
  %interleaved.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <64 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12, i32 19, i32 18, i32 17, i32 16, i32 23, i32 22, i32 21, i32 20, i32 27, i32 26, i32 25, i32 24, i32 31, i32 30, i32 29, i32 28, i32 35, i32 34, i32 33, i32 32, i32 39, i32 38, i32 37, i32 36, i32 43, i32 42, i32 41, i32 40, i32 47, i32 46, i32 45, i32 44, i32 51, i32 50, i32 49, i32 48, i32 55, i32 54, i32 53, i32 52, i32 59, i32 58, i32 57, i32 56, i32 63, i32 62, i32 61, i32 60>
  store <64 x i8> %interleaved.vec, ptr %i.ck, align 1, !tbaa !57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec58 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.cm = shl nuw i64 %n.vec58, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = shl nuw i64 %index59, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cn ; 2 uses
  %wide.vec60 = load <16 x i8>, ptr %i.co, align 1, !tbaa !57
  %interleaved.vec65 = shufflevector <16 x i8> %wide.vec60, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %interleaved.vec65, ptr %i.co, align 1, !tbaa !57
  %index.next66 = add nuw i64 %index59, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next66, %n.vec58
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %i.cg, %n.vec58
  br i1 %cmp.n67, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i3.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.0.i3.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %.0.i3.i.i.i ; 2 uses
  %i.cr = load <4 x i8>, ptr %i.cq, align 1, !tbaa !57
  %i.cs = shufflevector <4 x i8> %i.cr, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cs, ptr %i.cq, align 1, !tbaa !57
  %i.ct = add nuw nsw i64 %.0.i3.i.i.i, 4         ; 2 uses
  %i.cu = icmp samesign ult i64 %i.ct, %.pre-phi
  br i1 %i.cu, label %.lr.ph.i.i.i, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, !llvm.loop !126

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN3ozz9animation8internal5TrackIfE8AllocateEmm.exit
  %.sroa.01.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !29 ; 4 uses
  %.sroa.22.0.copyload = load i64, ptr %i.bp, align 8, !tbaa !34
  %i.cv = shl i64 %.sroa.22.0.copyload, 2         ; 4 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %.sroa.01.0.copyload, i64 noundef %i.cv), !inline_history !14 ; 0 uses
  %i.db = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.dc = trunc nuw i8 %i.db to i1
  %.not.i.i.i21 = icmp ne i64 %i.cv, 0
  %or.cond50.not = and i1 %.not.i.i.i21, %i.dc
  br i1 %or.cond50.not, label %iter.check86, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit24

iter.check86:                                     ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit
  %i.dd = add i64 %i.cv, -4                       ; 3 uses
  %i.de = lshr exact i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 5 uses
  %min.iters.check69 = icmp ult i64 %i.dd, 12
  br i1 %min.iters.check69, label %.lr.ph.i.i.i22.preheader, label %vector.main.loop.iter.check70

vector.main.loop.iter.check70:                    ; preds = %iter.check86
  %min.iters.check71 = icmp ult i64 %i.dd, 60
  br i1 %min.iters.check71, label %vec.epilog.ph90, label %vector.ph72

vector.ph72:                                      ; preds = %vector.main.loop.iter.check70
  %i.dg = and i64 %i.df, 12
  %n.vec73 = and i64 %i.df, 9223372036854775792   ; 4 uses
  %i.dh = shl i64 %n.vec73, 2
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next82, %vector.body74 ] ; 2 uses
  %i.di = shl nuw i64 %index75, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %i.di ; 2 uses
  %wide.vec76 = load <64 x i8>, ptr %i.dj, align 1, !tbaa !57
  %interleaved.vec81 = shufflevector <64 x i8> %wide.vec76, <64 x i8> poison, <64 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12, i32 19, i32 18, i32 17, i32 16, i32 23, i32 22, i32 21, i32 20, i32 27, i32 26, i32 25, i32 24, i32 31, i32 30, i32 29, i32 28, i32 35, i32 34, i32 33, i32 32, i32 39, i32 38, i32 37, i32 36, i32 43, i32 42, i32 41, i32 40, i32 47, i32 46, i32 45, i32 44, i32 51, i32 50, i32 49, i32 48, i32 55, i32 54, i32 53, i32 52, i32 59, i32 58, i32 57, i32 56, i32 63, i32 62, i32 61, i32 60>
  store <64 x i8> %interleaved.vec81, ptr %i.dj, align 1, !tbaa !57
  %index.next82 = add nuw i64 %index75, 16        ; 2 uses
  %i.dk = icmp eq i64 %index.next82, %n.vec73
  br i1 %i.dk, label %middle.block83, label %vector.body74, !llvm.loop !127

middle.block83:                                   ; preds = %vector.body74
  %cmp.n84 = icmp eq i64 %i.df, %n.vec73
  br i1 %cmp.n84, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit24, label %vec.epilog.iter.check88

vec.epilog.iter.check88:                          ; preds = %middle.block83
  %min.epilog.iters.check89 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check89, label %.lr.ph.i.i.i22.preheader, label %vec.epilog.ph90, !prof !87

vec.epilog.ph90:                                  ; preds = %vector.main.loop.iter.check70, %vec.epilog.iter.check88
  %vec.epilog.resume.val85 = phi i64 [ %n.vec73, %vec.epilog.iter.check88 ], [ 0, %vector.main.loop.iter.check70 ]
  %n.vec91 = and i64 %i.df, 9223372036854775804   ; 3 uses
  %i.dl = shl i64 %n.vec91, 2
  br label %vec.epilog.vector.body92

vec.epilog.vector.body92:                         ; preds = %vec.epilog.vector.body92, %vec.epilog.ph90
  %index93 = phi i64 [ %vec.epilog.resume.val85, %vec.epilog.ph90 ], [ %index.next100, %vec.epilog.vector.body92 ] ; 2 uses
  %i.dm = shl nuw i64 %index93, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %i.dm ; 2 uses
  %wide.vec94 = load <16 x i8>, ptr %i.dn, align 1, !tbaa !57
  %interleaved.vec99 = shufflevector <16 x i8> %wide.vec94, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %interleaved.vec99, ptr %i.dn, align 1, !tbaa !57
  %index.next100 = add nuw i64 %index93, 4        ; 2 uses
  %i.do = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.do, label %vec.epilog.middle.block101, label %vec.epilog.vector.body92, !llvm.loop !128

vec.epilog.middle.block101:                       ; preds = %vec.epilog.vector.body92
  %cmp.n102 = icmp eq i64 %i.df, %n.vec91
  br i1 %cmp.n102, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit24, label %.lr.ph.i.i.i22.preheader

.lr.ph.i.i.i22.preheader:                         ; preds = %iter.check86, %vec.epilog.iter.check88, %vec.epilog.middle.block101
  %.0.i3.i.i.i23.ph = phi i64 [ 0, %iter.check86 ], [ %i.dh, %vec.epilog.iter.check88 ], [ %i.dl, %vec.epilog.middle.block101 ]
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22.preheader, %.lr.ph.i.i.i22
  %.0.i3.i.i.i23 = phi i64 [ %i.ds, %.lr.ph.i.i.i22 ], [ %.0.i3.i.i.i23.ph, %.lr.ph.i.i.i22.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %.0.i3.i.i.i23 ; 2 uses
  %i.dq = load <4 x i8>, ptr %i.dp, align 1, !tbaa !57
  %i.dr = shufflevector <4 x i8> %i.dq, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.dr, ptr %i.dp, align 1, !tbaa !57
  %i.ds = add nuw i64 %.0.i3.i.i.i23, 4           ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cv
  br i1 %i.dt, label %.lr.ph.i.i.i22, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit24, !llvm.loop !129

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit24: ; preds = %.lr.ph.i.i.i22, %middle.block83, %vec.epilog.middle.block101, %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !36
  %.sroa.2.0.copyload = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.du = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !15 ; 0 uses
  %i.dz = load ptr, ptr %i.bw, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit24
  %i.ea = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !43
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i64 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull %i.dz, i64 noundef %i.ay), !inline_history !16 ; 0 uses
  %i.ef = load ptr, ptr %i.bw, align 8, !tbaa !45
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.ay
  store i8 0, ptr %i.eg, align 1, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit24, %bb.h, %_ZNSolsEPFRSoS_E.exit
  ret void
}

declare void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackIfE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %1, 3
  %i.b = add i64 %1, 7
  %i.c = lshr i64 %i.b, 3                         ; 4 uses
  %i.d = add i64 %i.c, %i.a
  %.not = icmp eq i64 %2, 0
  %i.e = add i64 %2, 1                            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK3ozz9animation8internal5TrackINS_4math6Float2EE4SaveERNS_2io8OArchiveE:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !2 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ar = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %.sroa.24.0.copyload
  br i1 %exitcond.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

bb.d:                                             ; preds = %bb.c
  %i.as = shl i64 %.sroa.24.0.copyload, 2
  %i.at = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %.sroa.03.0.copyload, i64 noundef %i.as), !inline_history !4 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload = load ptr, ptr %i.ay, align 8, !tbaa !89
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !34
  call void @_ZN3ozz2io6ExternINS_4math6Float2EE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !34 ; 3 uses
  %i.ba = load i8, ptr %i.j, align 8, !tbaa !49, !range !50, !noundef !51
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.preheader.i.i.i21, label %bb.e

.preheader.i.i.i21:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %.not.i.i.i22 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i22, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %.preheader.i.i.i21, %.lr.ph.i.i.i23
  %.06.i.i.i24 = phi i64 [ %i.bj, %.lr.ph.i.i.i23 ], [ 0, %.preheader.i.i.i21 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.06.i.i.i24
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !57
  %i.be = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.bj = add nuw i64 %.06.i.i.i24, 1             ; 2 uses
  %exitcond49.not = icmp eq i64 %i.bj, %.sroa.2.0.copyload
  br i1 %exitcond49.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i23, !llvm.loop !6

bb.e:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !7 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i23, %.preheader.i.i.i21, %bb.e
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !96  ; 2 uses
  %i.bq = load i8, ptr %i.j, align 8, !tbaa !49, !range !50, !noundef !51
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.preheader.i.i.i25, label %bb.f

.preheader.i.i.i25:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %.not.i.i.i26 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i26, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.preheader.i.i.i25, %.lr.ph.i.i.i27
  %.06.i.i.i28 = phi i64 [ %i.bz, %.lr.ph.i.i.i27 ], [ 0, %.preheader.i.i.i25 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.06.i.i.i28
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 %i.bt, ptr %i.a, align 1, !tbaa !57
  %i.bu = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bz = add nuw i64 %.06.i.i.i28, 1             ; 2 uses
  %exitcond50.not = icmp eq i64 %i.bz, %i.u
  br i1 %exitcond50.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i27, !llvm.loop !9

bb.f:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.bp, i64 noundef %i.u), !inline_history !10 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i27, %.preheader.i.i.i25, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float2EE4LoadERNS_2io8IArchiveEj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.ozz::log::Err", align 8     ; 7 uses
  %i.c = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !94
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d), !inline_history !95
  store ptr null, ptr %0, align 8, !tbaa !94
  %i.h = icmp ugt i32 %2, 1
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %3)
  %i.i = load ptr, ptr %3, align 8, !tbaa !60, !nonnull !51, !align !61 ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 26)
          to label %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit unwind label %bb.f ; 0 uses

_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit:         ; preds = %bb.b
  %i.k = zext i32 %2 to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 6 uses
  %.not.i.i.i21 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i21, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !81
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
          to label %.noexc22 unwind label %bb.f

.noexc22:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.f, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc22, %bb.d
  %.0.i.i.i = phi i8 [ %i.w, %bb.d ], [ %i.aa, %.noexc22 ]
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i)
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc24
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

bb.f:                                             ; preds = %.noexc24, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc22, %bb.e, %bb.c, %_ZNSolsEj.exit, %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ae = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !12 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i32, ptr %i.b, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.an = select i1 %i.al, i32 %.sroa.0.0.insert.insert.i, i32 %i.am ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ao = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !13 ; 0 uses
  %i.at = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i32, ptr %i.a, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i20 = call i32 @llvm.bswap.i32(i32 %i.av)
  %i.aw = select i1 %i.au, i32 %.sroa.0.0.insert.insert.i20, i32 %i.av ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ax = zext i32 %i.an to i64                   ; 6 uses
  %i.ay = sext i32 %i.aw to i64                   ; 3 uses
  %i.az = mul nuw nsw i64 %i.ax, 12
  %i.ba = add nuw nsw i64 %i.ax, 7
  %i.bb = lshr i64 %i.ba, 3                       ; 4 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.az
  %.not.i = icmp eq i32 %i.aw, 0
  %i.bd = add nsw i64 %i.ay, 1                    ; 2 uses
  %i.be = select i1 %.not.i, i64 0, i64 %i.bd
  %i.bf = add nsw i64 %i.bc, %i.be
  %i.bg = call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bf, i64 noundef 4), !inline_history !134 ; 4 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !94
  %.not.i.i = icmp ne i32 %i.an, 0                ; 2 uses
  br i1 %.not.i.i, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i, label %_ZN3ozz9animation8internal5TrackINS_4math6Float2EE8AllocateEmm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i: ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %i.ax, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i ; 2 uses
  %.idx.i14.i = shl nuw nsw i64 %i.ax, 2          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i14.i ; 2 uses
  %.not.i19.i = icmp eq i64 %i.bb, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bb
  %spec.select53.i = select i1 %.not.i19.i, ptr null, ptr %i.bm
  br label %_ZN3ozz9animation8internal5TrackINS_4math6Float2EE8AllocateEmm.exit

_ZN3ozz9animation8internal5TrackINS_4math6Float2EE8AllocateEmm.exit: ; preds = %bb.g, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i
  %.pre-phi = phi i64 [ %.idx.i14.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ 0, %bb.g ] ; 3 uses
  %.sink55.i = phi ptr [ %i.bk, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ]
  %.sink.i = phi ptr [ %i.bl, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ] ; 5 uses
  %.sroa.035.2.i = phi ptr [ %i.bn, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ %i.bk, %bb.g ]
  %.sroa.04.0.i21.i = phi ptr [ %spec.select53.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.sink55.i, ptr %i.bo, align 8, !tbaa !91
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.ax, ptr %i.bp, align 8, !tbaa !92
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.bq, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %.sroa.04.0.i21.i, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.bb, ptr %i.bt, align 8, !tbaa !39
  %i.bu = icmp ult i64 %i.bd, 2
  %i.bv = select i1 %i.bu, ptr null, ptr %.sroa.035.2.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !96
  %i.bx = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %.sink.i, i64 noundef %.pre-phi), !inline_history !14 ; 0 uses
  %i.cc = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond.not = and i1 %.not.i.i, %i.cd
  br i1 %or.cond.not, label %iter.check, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit

iter.check:                                       ; preds = %_ZN3ozz9animation8internal5TrackINS_4math6Float2EE8AllocateEmm.exit
  %i.ce = call i64 @llvm.usub.sat.i64(i64 %.pre-phi, i64 4) ; 3 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ce, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i64 %i.ce, 60
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ch = and i64 %i.cg, 12
  %n.vec = and i64 %i.cg, 4611686018427387888     ; 4 uses
  %i.ci = shl nuw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl nuw i64 %index, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cj ; 2 uses
  %wide.vec = load <64 x i8>, ptr %i.ck, align 1, !tbaa !57
  %interleaved.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <64 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12, i32 19, i32 18, i32 17, i32 16, i32 23, i32 22, i32 21, i32 20, i32 27, i32 26, i32 25, i32 24, i32 31, i32 30, i32 29, i32 28, i32 35, i32 34, i32 33, i32 32, i32 39, i32 38, i32 37, i32 36, i32 43, i32 42, i32 41, i32 40, i32 47, i32 46, i32 45, i32 44, i32 51, i32 50, i32 49, i32 48, i32 55, i32 54, i32 53, i32 52, i32 59, i32 58, i32 57, i32 56, i32 63, i32 62, i32 61, i32 60>
  store <64 x i8> %interleaved.vec, ptr %i.ck, align 1, !tbaa !57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.cm = shl nuw i64 %n.vec49, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = shl nuw i64 %index50, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cn ; 2 uses
  %wide.vec51 = load <16 x i8>, ptr %i.co, align 1, !tbaa !57
  %interleaved.vec56 = shufflevector <16 x i8> %wide.vec51, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %interleaved.vec56, ptr %i.co, align 1, !tbaa !57
  %index.next57 = add nuw i64 %index50, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next57, %n.vec49
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !132

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.cg, %n.vec49
  br i1 %cmp.n58, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i3.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.0.i3.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %.0.i3.i.i.i ; 2 uses
  %i.cr = load <4 x i8>, ptr %i.cq, align 1, !tbaa !57
  %i.cs = shufflevector <4 x i8> %i.cr, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cs, ptr %i.cq, align 1, !tbaa !57
  %i.ct = add nuw nsw i64 %.0.i3.i.i.i, 4         ; 2 uses
  %i.cu = icmp samesign ult i64 %i.ct, %.pre-phi
  br i1 %i.cu, label %.lr.ph.i.i.i, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, !llvm.loop !133

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN3ozz9animation8internal5TrackINS_4math6Float2EE8AllocateEmm.exit
  %.sroa.01.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !89
  %.sroa.22.0.copyload = load i64, ptr %i.bp, align 8, !tbaa !34
  call void @_ZN3ozz2io6ExternINS_4math6Float2EE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload, i32 noundef 0)
  %.sroa.0.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !36
  %.sroa.2.0.copyload = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.cv = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !15 ; 0 uses
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !96 ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit
  %i.db = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %i.da, i64 noundef %i.ay), !inline_history !16 ; 0 uses
  %i.dg = load ptr, ptr %i.bw, align 8, !tbaa !96
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.ay
  store i8 0, ptr %i.dh, align 1, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, %bb.h, %_ZNSolsEPFRSoS_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float2EE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = mul i64 %1, 12
  %i.b = add i64 %1, 7
  %i.c = lshr i64 %i.b, 3                         ; 4 uses
  %i.d = add i64 %i.c, %i.a
  %.not = icmp eq i64 %2, 0
  %i.e = add i64 %2, 1                            ; 2 uses
  %i.f = select i1 %.not, i64 0, i64 %i.e
  %i.g = add i64 %i.d, %i.f
  %i.h = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.g, i64 noundef 4) ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !94
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 2 uses
  %.idx.i14 = shl nuw nsw i64 %1, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i14 ; 2 uses
  %.not.i19 = icmp eq i64 %i.c, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c
  %spec.select53 = select i1 %.not.i19, ptr null, ptr %i.n
  br label %_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit
  %.sink55 = phi ptr [ %i.l, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %.sink = phi ptr [ %i.m, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %.sroa.035.2 = phi ptr [ %i.o, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.l, %bb.a ]
  %.sroa.04.0.i21 = phi ptr [ %spec.select53, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink55, ptr %i.p, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.q, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.04.0.i21, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.c, ptr %i.u, align 8, !tbaa !39
  %i.v = icmp ult i64 %i.e, 2
  %i.w = select i1 %i.v, ptr null, ptr %.sroa.035.2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.x, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat($_ZN3ozz9animation8internal5TrackINS_4math6Float3EEC5Ev) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float3EEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat($_ZN3ozz9animation8internal5TrackINS_4math6Float3EEC5EOS5_) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.e, ptr %0, align 8, !tbaa !27
  store ptr null, ptr %1, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  store ptr %i.g, ptr %i.a, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !33
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !32
  store i64 0, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i6.i = load ptr, ptr %i.b, align 8, !tbaa !98
  %.sroa.4.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.4.0.copyload.i8.i = load i64, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !tbaa !34
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100
  store ptr %i.k, ptr %i.b, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !101
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !tbaa !101
  store ptr %.sroa.0.0.copyload.i6.i, ptr %i.j, align 8, !tbaa !100
  store i64 %.sroa.4.0.copyload.i8.i, ptr %i.l, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %i.c, align 8, !tbaa !36
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.4.0.copyload.i11.i = load i64, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !34
end_hunk_1
begin_hunk_2_@_ZNK3ozz9animation8internal5TrackINS_4math6Float3EE4SaveERNS_2io8OArchiveE:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !2 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ar = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %.sroa.24.0.copyload
  br i1 %exitcond.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

bb.d:                                             ; preds = %bb.c
  %i.as = shl i64 %.sroa.24.0.copyload, 2
  %i.at = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %.sroa.03.0.copyload, i64 noundef %i.as), !inline_history !4 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload = load ptr, ptr %i.ay, align 8, !tbaa !98
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !34
  call void @_ZN3ozz2io6ExternINS_4math6Float3EE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !34 ; 3 uses
  %i.ba = load i8, ptr %i.j, align 8, !tbaa !49, !range !50, !noundef !51
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.preheader.i.i.i21, label %bb.e

.preheader.i.i.i21:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %.not.i.i.i22 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i22, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %.preheader.i.i.i21, %.lr.ph.i.i.i23
  %.06.i.i.i24 = phi i64 [ %i.bj, %.lr.ph.i.i.i23 ], [ 0, %.preheader.i.i.i21 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.06.i.i.i24
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !57
  %i.be = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.bj = add nuw i64 %.06.i.i.i24, 1             ; 2 uses
  %exitcond49.not = icmp eq i64 %i.bj, %.sroa.2.0.copyload
  br i1 %exitcond49.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i23, !llvm.loop !6

bb.e:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !7 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i23, %.preheader.i.i.i21, %bb.e
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !105 ; 2 uses
  %i.bq = load i8, ptr %i.j, align 8, !tbaa !49, !range !50, !noundef !51
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.preheader.i.i.i25, label %bb.f

.preheader.i.i.i25:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %.not.i.i.i26 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i26, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.preheader.i.i.i25, %.lr.ph.i.i.i27
  %.06.i.i.i28 = phi i64 [ %i.bz, %.lr.ph.i.i.i27 ], [ 0, %.preheader.i.i.i25 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.06.i.i.i28
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 %i.bt, ptr %i.a, align 1, !tbaa !57
  %i.bu = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bz = add nuw i64 %.06.i.i.i28, 1             ; 2 uses
  %exitcond50.not = icmp eq i64 %i.bz, %i.u
  br i1 %exitcond50.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i27, !llvm.loop !9

bb.f:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.bp, i64 noundef %i.u), !inline_history !10 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i27, %.preheader.i.i.i25, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float3EE4LoadERNS_2io8IArchiveEj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.ozz::log::Err", align 8     ; 7 uses
  %i.c = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !103
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d), !inline_history !104
  store ptr null, ptr %0, align 8, !tbaa !103
  %i.h = icmp ugt i32 %2, 1
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %3)
  %i.i = load ptr, ptr %3, align 8, !tbaa !60, !nonnull !51, !align !61 ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 26)
          to label %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit unwind label %bb.f ; 0 uses

_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit:         ; preds = %bb.b
  %i.k = zext i32 %2 to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 6 uses
  %.not.i.i.i21 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i21, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !81
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
          to label %.noexc22 unwind label %bb.f

.noexc22:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.f, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc22, %bb.d
  %.0.i.i.i = phi i8 [ %i.w, %bb.d ], [ %i.aa, %.noexc22 ]
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i)
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc24
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

bb.f:                                             ; preds = %.noexc24, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc22, %bb.e, %bb.c, %_ZNSolsEj.exit, %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ae = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !12 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i32, ptr %i.b, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.an = select i1 %i.al, i32 %.sroa.0.0.insert.insert.i, i32 %i.am ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ao = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !13 ; 0 uses
  %i.at = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i32, ptr %i.a, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i20 = call i32 @llvm.bswap.i32(i32 %i.av)
  %i.aw = select i1 %i.au, i32 %.sroa.0.0.insert.insert.i20, i32 %i.av ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ax = zext i32 %i.an to i64                   ; 6 uses
  %i.ay = sext i32 %i.aw to i64                   ; 3 uses
  %i.az = shl nuw nsw i64 %i.ax, 4
  %i.ba = add nuw nsw i64 %i.ax, 7
  %i.bb = lshr i64 %i.ba, 3                       ; 4 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.az
  %.not.i = icmp eq i32 %i.aw, 0
  %i.bd = add nsw i64 %i.ay, 1                    ; 2 uses
  %i.be = select i1 %.not.i, i64 0, i64 %i.bd
  %i.bf = add nsw i64 %i.bc, %i.be
  %i.bg = call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bf, i64 noundef 4), !inline_history !138 ; 4 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !103
  %.not.i.i = icmp ne i32 %i.an, 0                ; 2 uses
  br i1 %.not.i.i, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i, label %_ZN3ozz9animation8internal5TrackINS_4math6Float3EE8AllocateEmm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i: ; preds = %bb.g
  %.idx.i.i = mul nuw nsw i64 %i.ax, 12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i ; 2 uses
  %.idx.i14.i = shl nuw nsw i64 %i.ax, 2          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i14.i ; 2 uses
  %.not.i19.i = icmp eq i64 %i.bb, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bb
  %spec.select53.i = select i1 %.not.i19.i, ptr null, ptr %i.bm
  br label %_ZN3ozz9animation8internal5TrackINS_4math6Float3EE8AllocateEmm.exit

_ZN3ozz9animation8internal5TrackINS_4math6Float3EE8AllocateEmm.exit: ; preds = %bb.g, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i
  %.pre-phi = phi i64 [ %.idx.i14.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ 0, %bb.g ] ; 3 uses
  %.sink55.i = phi ptr [ %i.bk, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ]
  %.sink.i = phi ptr [ %i.bl, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ] ; 5 uses
  %.sroa.035.2.i = phi ptr [ %i.bn, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ %i.bk, %bb.g ]
  %.sroa.04.0.i21.i = phi ptr [ %spec.select53.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.sink55.i, ptr %i.bo, align 8, !tbaa !100
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.ax, ptr %i.bp, align 8, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.bq, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %.sroa.04.0.i21.i, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.bb, ptr %i.bt, align 8, !tbaa !39
  %i.bu = icmp ult i64 %i.bd, 2
  %i.bv = select i1 %i.bu, ptr null, ptr %.sroa.035.2.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !105
  %i.bx = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %.sink.i, i64 noundef %.pre-phi), !inline_history !14 ; 0 uses
  %i.cc = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond.not = and i1 %.not.i.i, %i.cd
  br i1 %or.cond.not, label %iter.check, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit

iter.check:                                       ; preds = %_ZN3ozz9animation8internal5TrackINS_4math6Float3EE8AllocateEmm.exit
  %i.ce = call i64 @llvm.usub.sat.i64(i64 %.pre-phi, i64 4) ; 3 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ce, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i64 %i.ce, 60
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ch = and i64 %i.cg, 12
  %n.vec = and i64 %i.cg, 4611686018427387888     ; 4 uses
  %i.ci = shl nuw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl nuw i64 %index, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cj ; 2 uses
  %wide.vec = load <64 x i8>, ptr %i.ck, align 1, !tbaa !57
  %interleaved.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <64 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12, i32 19, i32 18, i32 17, i32 16, i32 23, i32 22, i32 21, i32 20, i32 27, i32 26, i32 25, i32 24, i32 31, i32 30, i32 29, i32 28, i32 35, i32 34, i32 33, i32 32, i32 39, i32 38, i32 37, i32 36, i32 43, i32 42, i32 41, i32 40, i32 47, i32 46, i32 45, i32 44, i32 51, i32 50, i32 49, i32 48, i32 55, i32 54, i32 53, i32 52, i32 59, i32 58, i32 57, i32 56, i32 63, i32 62, i32 61, i32 60>
  store <64 x i8> %interleaved.vec, ptr %i.ck, align 1, !tbaa !57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.cm = shl nuw i64 %n.vec49, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = shl nuw i64 %index50, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cn ; 2 uses
  %wide.vec51 = load <16 x i8>, ptr %i.co, align 1, !tbaa !57
  %interleaved.vec56 = shufflevector <16 x i8> %wide.vec51, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %interleaved.vec56, ptr %i.co, align 1, !tbaa !57
  %index.next57 = add nuw i64 %index50, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next57, %n.vec49
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !136

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.cg, %n.vec49
  br i1 %cmp.n58, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i3.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.0.i3.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %.0.i3.i.i.i ; 2 uses
  %i.cr = load <4 x i8>, ptr %i.cq, align 1, !tbaa !57
  %i.cs = shufflevector <4 x i8> %i.cr, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cs, ptr %i.cq, align 1, !tbaa !57
  %i.ct = add nuw nsw i64 %.0.i3.i.i.i, 4         ; 2 uses
  %i.cu = icmp samesign ult i64 %i.ct, %.pre-phi
  br i1 %i.cu, label %.lr.ph.i.i.i, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, !llvm.loop !137

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN3ozz9animation8internal5TrackINS_4math6Float3EE8AllocateEmm.exit
  %.sroa.01.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !98
  %.sroa.22.0.copyload = load i64, ptr %i.bp, align 8, !tbaa !34
  call void @_ZN3ozz2io6ExternINS_4math6Float3EE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload, i32 noundef 0)
  %.sroa.0.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !36
  %.sroa.2.0.copyload = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.cv = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !15 ; 0 uses
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !105 ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit
  %i.db = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %i.da, i64 noundef %i.ay), !inline_history !16 ; 0 uses
  %i.dg = load ptr, ptr %i.bw, align 8, !tbaa !105
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.ay
  store i8 0, ptr %i.dh, align 1, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, %bb.h, %_ZNSolsEPFRSoS_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float3EE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %1, 4
  %i.b = add i64 %1, 7
  %i.c = lshr i64 %i.b, 3                         ; 4 uses
  %i.d = add i64 %i.c, %i.a
  %.not = icmp eq i64 %2, 0
  %i.e = add i64 %2, 1                            ; 2 uses
  %i.f = select i1 %.not, i64 0, i64 %i.e
  %i.g = add i64 %i.d, %i.f
  %i.h = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.g, i64 noundef 4) ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !103
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a
  %.idx.i = mul nuw nsw i64 %1, 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 2 uses
  %.idx.i14 = shl nuw nsw i64 %1, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i14 ; 2 uses
  %.not.i19 = icmp eq i64 %i.c, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c
  %spec.select53 = select i1 %.not.i19, ptr null, ptr %i.n
  br label %_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit
  %.sink55 = phi ptr [ %i.l, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %.sink = phi ptr [ %i.m, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %.sroa.035.2 = phi ptr [ %i.o, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.l, %bb.a ]
  %.sroa.04.0.i21 = phi ptr [ %spec.select53, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink55, ptr %i.p, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.q, align 8, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.04.0.i21, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.c, ptr %i.u, align 8, !tbaa !39
  %i.v = icmp ult i64 %i.e, 2
  %i.w = select i1 %i.v, ptr null, ptr %.sroa.035.2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.x, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float4EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat($_ZN3ozz9animation8internal5TrackINS_4math6Float4EEC5Ev) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float4EEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat($_ZN3ozz9animation8internal5TrackINS_4math6Float4EEC5EOS5_) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.e, ptr %0, align 8, !tbaa !27
  store ptr null, ptr %1, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  store ptr %i.g, ptr %i.a, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !33
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !32
  store i64 0, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i6.i = load ptr, ptr %i.b, align 8, !tbaa !107
  %.sroa.4.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.4.0.copyload.i8.i = load i64, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !tbaa !34
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109
  store ptr %i.k, ptr %i.b, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !110
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !tbaa !110
  store ptr %.sroa.0.0.copyload.i6.i, ptr %i.j, align 8, !tbaa !109
  store i64 %.sroa.4.0.copyload.i8.i, ptr %i.l, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %i.c, align 8, !tbaa !36
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.4.0.copyload.i11.i = load i64, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !34
end_hunk_2
begin_hunk_3_@_ZNK3ozz9animation8internal5TrackINS_4math6Float4EE4SaveERNS_2io8OArchiveE:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !2 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ar = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %.sroa.24.0.copyload
  br i1 %exitcond.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

bb.d:                                             ; preds = %bb.c
  %i.as = shl i64 %.sroa.24.0.copyload, 2
  %i.at = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %.sroa.03.0.copyload, i64 noundef %i.as), !inline_history !4 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload = load ptr, ptr %i.ay, align 8, !tbaa !107
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !34
  call void @_ZN3ozz2io6ExternINS_4math6Float4EE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !34 ; 3 uses
  %i.ba = load i8, ptr %i.j, align 8, !tbaa !49, !range !50, !noundef !51
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.preheader.i.i.i21, label %bb.e

.preheader.i.i.i21:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %.not.i.i.i22 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i22, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %.preheader.i.i.i21, %.lr.ph.i.i.i23
  %.06.i.i.i24 = phi i64 [ %i.bj, %.lr.ph.i.i.i23 ], [ 0, %.preheader.i.i.i21 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.06.i.i.i24
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !57
  %i.be = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.bj = add nuw i64 %.06.i.i.i24, 1             ; 2 uses
  %exitcond49.not = icmp eq i64 %i.bj, %.sroa.2.0.copyload
  br i1 %exitcond49.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i23, !llvm.loop !6

bb.e:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !7 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i23, %.preheader.i.i.i21, %bb.e
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !114 ; 2 uses
  %i.bq = load i8, ptr %i.j, align 8, !tbaa !49, !range !50, !noundef !51
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.preheader.i.i.i25, label %bb.f

.preheader.i.i.i25:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %.not.i.i.i26 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i26, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.preheader.i.i.i25, %.lr.ph.i.i.i27
  %.06.i.i.i28 = phi i64 [ %i.bz, %.lr.ph.i.i.i27 ], [ 0, %.preheader.i.i.i25 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.06.i.i.i28
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 %i.bt, ptr %i.a, align 1, !tbaa !57
  %i.bu = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bz = add nuw i64 %.06.i.i.i28, 1             ; 2 uses
  %exitcond50.not = icmp eq i64 %i.bz, %i.u
  br i1 %exitcond50.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i27, !llvm.loop !9

bb.f:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.bp, i64 noundef %i.u), !inline_history !10 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i27, %.preheader.i.i.i25, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float4EE4LoadERNS_2io8IArchiveEj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.ozz::log::Err", align 8     ; 7 uses
  %i.c = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !112
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d), !inline_history !113
  store ptr null, ptr %0, align 8, !tbaa !112
  %i.h = icmp ugt i32 %2, 1
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %3)
  %i.i = load ptr, ptr %3, align 8, !tbaa !60, !nonnull !51, !align !61 ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 26)
          to label %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit unwind label %bb.f ; 0 uses

_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit:         ; preds = %bb.b
  %i.k = zext i32 %2 to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 6 uses
  %.not.i.i.i21 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i21, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !81
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
          to label %.noexc22 unwind label %bb.f

.noexc22:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.f, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc22, %bb.d
  %.0.i.i.i = phi i8 [ %i.w, %bb.d ], [ %i.aa, %.noexc22 ]
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i)
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc24
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

bb.f:                                             ; preds = %.noexc24, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc22, %bb.e, %bb.c, %_ZNSolsEj.exit, %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ae = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !12 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i32, ptr %i.b, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.an = select i1 %i.al, i32 %.sroa.0.0.insert.insert.i, i32 %i.am ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ao = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !13 ; 0 uses
  %i.at = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i32, ptr %i.a, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i20 = call i32 @llvm.bswap.i32(i32 %i.av)
  %i.aw = select i1 %i.au, i32 %.sroa.0.0.insert.insert.i20, i32 %i.av ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ax = zext i32 %i.an to i64                   ; 6 uses
  %i.ay = sext i32 %i.aw to i64                   ; 3 uses
  %i.az = mul nuw nsw i64 %i.ax, 20
  %i.ba = add nuw nsw i64 %i.ax, 7
  %i.bb = lshr i64 %i.ba, 3                       ; 4 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.az
  %.not.i = icmp eq i32 %i.aw, 0
  %i.bd = add nsw i64 %i.ay, 1                    ; 2 uses
  %i.be = select i1 %.not.i, i64 0, i64 %i.bd
  %i.bf = add nsw i64 %i.bc, %i.be
  %i.bg = call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bf, i64 noundef 4), !inline_history !142 ; 4 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !112
  %.not.i.i = icmp ne i32 %i.an, 0                ; 2 uses
  br i1 %.not.i.i, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i, label %_ZN3ozz9animation8internal5TrackINS_4math6Float4EE8AllocateEmm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i: ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i ; 2 uses
  %.idx.i14.i = shl nuw nsw i64 %i.ax, 2          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i14.i ; 2 uses
  %.not.i19.i = icmp eq i64 %i.bb, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bb
  %spec.select53.i = select i1 %.not.i19.i, ptr null, ptr %i.bm
  br label %_ZN3ozz9animation8internal5TrackINS_4math6Float4EE8AllocateEmm.exit

_ZN3ozz9animation8internal5TrackINS_4math6Float4EE8AllocateEmm.exit: ; preds = %bb.g, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i
  %.pre-phi = phi i64 [ %.idx.i14.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ 0, %bb.g ] ; 3 uses
  %.sink55.i = phi ptr [ %i.bk, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ]
  %.sink.i = phi ptr [ %i.bl, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ] ; 5 uses
  %.sroa.035.2.i = phi ptr [ %i.bn, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ %i.bk, %bb.g ]
  %.sroa.04.0.i21.i = phi ptr [ %spec.select53.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.sink55.i, ptr %i.bo, align 8, !tbaa !109
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.ax, ptr %i.bp, align 8, !tbaa !110
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.bq, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %.sroa.04.0.i21.i, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.bb, ptr %i.bt, align 8, !tbaa !39
  %i.bu = icmp ult i64 %i.bd, 2
  %i.bv = select i1 %i.bu, ptr null, ptr %.sroa.035.2.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !114
  %i.bx = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %.sink.i, i64 noundef %.pre-phi), !inline_history !14 ; 0 uses
  %i.cc = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond.not = and i1 %.not.i.i, %i.cd
  br i1 %or.cond.not, label %iter.check, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit

iter.check:                                       ; preds = %_ZN3ozz9animation8internal5TrackINS_4math6Float4EE8AllocateEmm.exit
  %i.ce = call i64 @llvm.usub.sat.i64(i64 %.pre-phi, i64 4) ; 3 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ce, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i64 %i.ce, 60
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ch = and i64 %i.cg, 12
  %n.vec = and i64 %i.cg, 4611686018427387888     ; 4 uses
  %i.ci = shl nuw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl nuw i64 %index, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cj ; 2 uses
  %wide.vec = load <64 x i8>, ptr %i.ck, align 1, !tbaa !57
  %interleaved.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <64 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12, i32 19, i32 18, i32 17, i32 16, i32 23, i32 22, i32 21, i32 20, i32 27, i32 26, i32 25, i32 24, i32 31, i32 30, i32 29, i32 28, i32 35, i32 34, i32 33, i32 32, i32 39, i32 38, i32 37, i32 36, i32 43, i32 42, i32 41, i32 40, i32 47, i32 46, i32 45, i32 44, i32 51, i32 50, i32 49, i32 48, i32 55, i32 54, i32 53, i32 52, i32 59, i32 58, i32 57, i32 56, i32 63, i32 62, i32 61, i32 60>
  store <64 x i8> %interleaved.vec, ptr %i.ck, align 1, !tbaa !57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.cm = shl nuw i64 %n.vec49, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = shl nuw i64 %index50, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cn ; 2 uses
  %wide.vec51 = load <16 x i8>, ptr %i.co, align 1, !tbaa !57
  %interleaved.vec56 = shufflevector <16 x i8> %wide.vec51, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %interleaved.vec56, ptr %i.co, align 1, !tbaa !57
  %index.next57 = add nuw i64 %index50, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next57, %n.vec49
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !140

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.cg, %n.vec49
  br i1 %cmp.n58, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i3.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.0.i3.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %.0.i3.i.i.i ; 2 uses
  %i.cr = load <4 x i8>, ptr %i.cq, align 1, !tbaa !57
  %i.cs = shufflevector <4 x i8> %i.cr, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cs, ptr %i.cq, align 1, !tbaa !57
  %i.ct = add nuw nsw i64 %.0.i3.i.i.i, 4         ; 2 uses
  %i.cu = icmp samesign ult i64 %i.ct, %.pre-phi
  br i1 %i.cu, label %.lr.ph.i.i.i, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, !llvm.loop !141

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN3ozz9animation8internal5TrackINS_4math6Float4EE8AllocateEmm.exit
  %.sroa.01.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !107
  %.sroa.22.0.copyload = load i64, ptr %i.bp, align 8, !tbaa !34
  call void @_ZN3ozz2io6ExternINS_4math6Float4EE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload, i32 noundef 0)
  %.sroa.0.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !36
  %.sroa.2.0.copyload = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.cv = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !15 ; 0 uses
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !114 ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit
  %i.db = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %i.da, i64 noundef %i.ay), !inline_history !16 ; 0 uses
  %i.dg = load ptr, ptr %i.bw, align 8, !tbaa !114
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.ay
  store i8 0, ptr %i.dh, align 1, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, %bb.h, %_ZNSolsEPFRSoS_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math6Float4EE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = mul i64 %1, 20
  %i.b = add i64 %1, 7
  %i.c = lshr i64 %i.b, 3                         ; 4 uses
  %i.d = add i64 %i.c, %i.a
  %.not = icmp eq i64 %2, 0
  %i.e = add i64 %2, 1                            ; 2 uses
  %i.f = select i1 %.not, i64 0, i64 %i.e
  %i.g = add i64 %i.d, %i.f
  %i.h = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.g, i64 noundef 4) ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !112
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 2 uses
  %.idx.i14 = shl nuw nsw i64 %1, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i14 ; 2 uses
  %.not.i19 = icmp eq i64 %i.c, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c
  %spec.select53 = select i1 %.not.i19, ptr null, ptr %i.n
  br label %_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit
  %.sink55 = phi ptr [ %i.l, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %.sink = phi ptr [ %i.m, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %.sroa.035.2 = phi ptr [ %i.o, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.l, %bb.a ]
  %.sroa.04.0.i21 = phi ptr [ %spec.select53, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink55, ptr %i.p, align 8, !tbaa !109
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.q, align 8, !tbaa !110
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.04.0.i21, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.c, ptr %i.u, align 8, !tbaa !39
  %i.v = icmp ult i64 %i.e, 2
  %i.w = select i1 %i.v, ptr null, ptr %.sroa.035.2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.x, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat($_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEEC5Ev) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat($_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEEC5EOS5_) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.e, ptr %0, align 8, !tbaa !27
  store ptr null, ptr %1, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  store ptr %i.g, ptr %i.a, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !33
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !32
  store i64 0, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i6.i = load ptr, ptr %i.b, align 8, !tbaa !116
  %.sroa.4.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.4.0.copyload.i8.i = load i64, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !tbaa !34
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !118
  store ptr %i.k, ptr %i.b, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !119
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !tbaa !119
  store ptr %.sroa.0.0.copyload.i6.i, ptr %i.j, align 8, !tbaa !118
  store i64 %.sroa.4.0.copyload.i8.i, ptr %i.l, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %i.c, align 8, !tbaa !36
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.4.0.copyload.i11.i = load i64, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !34
end_hunk_3
begin_hunk_4_@_ZNK3ozz9animation8internal5TrackINS_4math10QuaternionEE4SaveERNS_2io8OArchiveE:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !2 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ar = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %.sroa.24.0.copyload
  br i1 %exitcond.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

bb.d:                                             ; preds = %bb.c
  %i.as = shl i64 %.sroa.24.0.copyload, 2
  %i.at = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %.sroa.03.0.copyload, i64 noundef %i.as), !inline_history !4 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload = load ptr, ptr %i.ay, align 8, !tbaa !116
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !34
  call void @_ZN3ozz2io6ExternINS_4math10QuaternionEE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !34 ; 3 uses
  %i.ba = load i8, ptr %i.j, align 8, !tbaa !49, !range !50, !noundef !51
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.preheader.i.i.i21, label %bb.e

.preheader.i.i.i21:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %.not.i.i.i22 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i22, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %.preheader.i.i.i21, %.lr.ph.i.i.i23
  %.06.i.i.i24 = phi i64 [ %i.bj, %.lr.ph.i.i.i23 ], [ 0, %.preheader.i.i.i21 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.06.i.i.i24
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !57
  %i.be = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.bj = add nuw i64 %.06.i.i.i24, 1             ; 2 uses
  %exitcond49.not = icmp eq i64 %i.bj, %.sroa.2.0.copyload
  br i1 %exitcond49.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit, label %.lr.ph.i.i.i23, !llvm.loop !6

bb.e:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !7 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i23, %.preheader.i.i.i21, %bb.e
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !123 ; 2 uses
  %i.bq = load i8, ptr %i.j, align 8, !tbaa !49, !range !50, !noundef !51
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.preheader.i.i.i25, label %bb.f

.preheader.i.i.i25:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %.not.i.i.i26 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i26, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.preheader.i.i.i25, %.lr.ph.i.i.i27
  %.06.i.i.i28 = phi i64 [ %i.bz, %.lr.ph.i.i.i27 ], [ 0, %.preheader.i.i.i25 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.06.i.i.i28
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 %i.bt, ptr %i.a, align 1, !tbaa !57
  %i.bu = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bz = add nuw i64 %.06.i.i.i28, 1             ; 2 uses
  %exitcond50.not = icmp eq i64 %i.bz, %i.u
  br i1 %exitcond50.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i27, !llvm.loop !9

bb.f:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIhEEEEvRKT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.bp, i64 noundef %i.u), !inline_history !10 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i27, %.preheader.i.i.i25, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE4LoadERNS_2io8IArchiveEj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.ozz::log::Err", align 8     ; 7 uses
  %i.c = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !121
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d), !inline_history !122
  store ptr null, ptr %0, align 8, !tbaa !121
  %i.h = icmp ugt i32 %2, 1
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %3)
  %i.i = load ptr, ptr %3, align 8, !tbaa !60, !nonnull !51, !align !61 ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 26)
          to label %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit unwind label %bb.f ; 0 uses

_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit:         ; preds = %bb.b
  %i.k = zext i32 %2 to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 6 uses
  %.not.i.i.i21 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i21, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !81
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
          to label %.noexc22 unwind label %bb.f

.noexc22:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.f, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc22, %bb.d
  %.0.i.i.i = phi i8 [ %i.w, %bb.d ], [ %i.aa, %.noexc22 ]
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i)
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc24
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

bb.f:                                             ; preds = %.noexc24, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc22, %bb.e, %bb.c, %_ZNSolsEj.exit, %_ZN3ozz3log6LoggerlsIA27_cEERSoRKT_.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ae = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !12 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i32, ptr %i.b, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.an = select i1 %i.al, i32 %.sroa.0.0.insert.insert.i, i32 %i.am ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ao = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !13 ; 0 uses
  %i.at = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i32, ptr %i.a, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i20 = call i32 @llvm.bswap.i32(i32 %i.av)
  %i.aw = select i1 %i.au, i32 %.sroa.0.0.insert.insert.i20, i32 %i.av ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ax = zext i32 %i.an to i64                   ; 6 uses
  %i.ay = sext i32 %i.aw to i64                   ; 3 uses
  %i.az = mul nuw nsw i64 %i.ax, 20
  %i.ba = add nuw nsw i64 %i.ax, 7
  %i.bb = lshr i64 %i.ba, 3                       ; 4 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.az
  %.not.i = icmp eq i32 %i.aw, 0
  %i.bd = add nsw i64 %i.ay, 1                    ; 2 uses
  %i.be = select i1 %.not.i, i64 0, i64 %i.bd
  %i.bf = add nsw i64 %i.bc, %i.be
  %i.bg = call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bf, i64 noundef 4), !inline_history !146 ; 4 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !121
  %.not.i.i = icmp ne i32 %i.an, 0                ; 2 uses
  br i1 %.not.i.i, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i, label %_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE8AllocateEmm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i: ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i ; 2 uses
  %.idx.i14.i = shl nuw nsw i64 %i.ax, 2          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i14.i ; 2 uses
  %.not.i19.i = icmp eq i64 %i.bb, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bb
  %spec.select53.i = select i1 %.not.i19.i, ptr null, ptr %i.bm
  br label %_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE8AllocateEmm.exit

_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE8AllocateEmm.exit: ; preds = %bb.g, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i
  %.pre-phi = phi i64 [ %.idx.i14.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ 0, %bb.g ] ; 3 uses
  %.sink55.i = phi ptr [ %i.bk, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ]
  %.sink.i = phi ptr [ %i.bl, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ] ; 5 uses
  %.sroa.035.2.i = phi ptr [ %i.bn, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ %i.bk, %bb.g ]
  %.sroa.04.0.i21.i = phi ptr [ %spec.select53.i, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit.i ], [ null, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.sink55.i, ptr %i.bo, align 8, !tbaa !118
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.ax, ptr %i.bp, align 8, !tbaa !119
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.bq, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %.sroa.04.0.i21.i, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.bb, ptr %i.bt, align 8, !tbaa !39
  %i.bu = icmp ult i64 %i.bd, 2
  %i.bv = select i1 %i.bu, ptr null, ptr %.sroa.035.2.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !123
  %i.bx = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %.sink.i, i64 noundef %.pre-phi), !inline_history !14 ; 0 uses
  %i.cc = load i8, ptr %i.aj, align 8, !tbaa !84, !range !50, !noundef !51
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond.not = and i1 %.not.i.i, %i.cd
  br i1 %or.cond.not, label %iter.check, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit

iter.check:                                       ; preds = %_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE8AllocateEmm.exit
  %i.ce = call i64 @llvm.usub.sat.i64(i64 %.pre-phi, i64 4) ; 3 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ce, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i64 %i.ce, 60
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ch = and i64 %i.cg, 12
  %n.vec = and i64 %i.cg, 4611686018427387888     ; 4 uses
  %i.ci = shl nuw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl nuw i64 %index, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cj ; 2 uses
  %wide.vec = load <64 x i8>, ptr %i.ck, align 1, !tbaa !57
  %interleaved.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <64 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12, i32 19, i32 18, i32 17, i32 16, i32 23, i32 22, i32 21, i32 20, i32 27, i32 26, i32 25, i32 24, i32 31, i32 30, i32 29, i32 28, i32 35, i32 34, i32 33, i32 32, i32 39, i32 38, i32 37, i32 36, i32 43, i32 42, i32 41, i32 40, i32 47, i32 46, i32 45, i32 44, i32 51, i32 50, i32 49, i32 48, i32 55, i32 54, i32 53, i32 52, i32 59, i32 58, i32 57, i32 56, i32 63, i32 62, i32 61, i32 60>
  store <64 x i8> %interleaved.vec, ptr %i.ck, align 1, !tbaa !57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.cm = shl nuw i64 %n.vec49, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = shl nuw i64 %index50, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cn ; 2 uses
  %wide.vec51 = load <16 x i8>, ptr %i.co, align 1, !tbaa !57
  %interleaved.vec56 = shufflevector <16 x i8> %wide.vec51, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %interleaved.vec56, ptr %i.co, align 1, !tbaa !57
  %index.next57 = add nuw i64 %index50, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next57, %n.vec49
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !144

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.cg, %n.vec49
  br i1 %cmp.n58, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i3.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.0.i3.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %.0.i3.i.i.i ; 2 uses
  %i.cr = load <4 x i8>, ptr %i.cq, align 1, !tbaa !57
  %i.cs = shufflevector <4 x i8> %i.cr, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cs, ptr %i.cq, align 1, !tbaa !57
  %i.ct = add nuw nsw i64 %.0.i3.i.i.i, 4         ; 2 uses
  %i.cu = icmp samesign ult i64 %i.ct, %.pre-phi
  br i1 %i.cu, label %.lr.ph.i.i.i, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, !llvm.loop !145

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE8AllocateEmm.exit
  %.sroa.01.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !116
  %.sroa.22.0.copyload = load i64, ptr %i.bp, align 8, !tbaa !34
  call void @_ZN3ozz2io6ExternINS_4math10QuaternionEE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload, i32 noundef 0)
  %.sroa.0.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !36
  %.sroa.2.0.copyload = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.cv = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload), !inline_history !15 ; 0 uses
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !123 ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit
  %i.db = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %i.da, i64 noundef %i.ay), !inline_history !16 ; 0 uses
  %i.dg = load ptr, ptr %i.bw, align 8, !tbaa !123
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.ay
  store i8 0, ptr %i.dh, align 1, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIfEEEEvRT_.exit, %bb.h, %_ZNSolsEPFRSoS_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = mul i64 %1, 20
  %i.b = add i64 %1, 7
  %i.c = lshr i64 %i.b, 3                         ; 4 uses
  %i.d = add i64 %i.c, %i.a
  %.not = icmp eq i64 %2, 0
  %i.e = add i64 %2, 1                            ; 2 uses
  %i.f = select i1 %.not, i64 0, i64 %i.e
  %i.g = add i64 %i.d, %i.f
  %i.h = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.g, i64 noundef 4) ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !121
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit, label %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 2 uses
  %.idx.i14 = shl nuw nsw i64 %1, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i14 ; 2 uses
  %.not.i19 = icmp eq i64 %i.c, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c
  %spec.select53 = select i1 %.not.i19, ptr null, ptr %i.n
  br label %_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIhEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit
  %.sink55 = phi ptr [ %i.l, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %.sink = phi ptr [ %i.m, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %.sroa.035.2 = phi ptr [ %i.o, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.l, %bb.a ]
  %.sroa.04.0.i21 = phi ptr [ %spec.select53, %_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink55, ptr %i.p, align 8, !tbaa !118
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.q, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.04.0.i21, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.c, ptr %i.u, align 8, !tbaa !39
  %i.v = icmp ult i64 %i.e, 2
  %i.w = select i1 %i.v, ptr null, ptr %.sroa.035.2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.x, align 8, !tbaa !123
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

declare void @_ZN3ozz2io6ExternINS_4math6Float2EE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN3ozz2io6ExternINS_4math6Float2EE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN3ozz2io6ExternINS_4math6Float3EE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN3ozz2io6ExternINS_4math6Float3EE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN3ozz2io6ExternINS_4math6Float4EE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN3ozz2io6ExternINS_4math6Float4EE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN3ozz2io6ExternINS_4math10QuaternionEE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN3ozz2io6ExternINS_4math10QuaternionEE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
