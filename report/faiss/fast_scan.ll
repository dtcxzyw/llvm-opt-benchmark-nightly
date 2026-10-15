Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/fast_scan?download=true
inline.NumInlined: 24799
inline.NumDeleted: 4569
loop-unroll.NumCompletelyUnrolled: 733
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 1469
begin_hunk_0_@_ZN5faiss14pq4_pack_codesEPKhmmmmmPhm:bb.a
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #24 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.at)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.au = load ptr, ptr %10, align 8, !tbaa !72
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !71
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #24 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.as)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v, %bb.u
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.ay = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss14pq4_pack_codesEPKhmmmmmPhm, ptr noundef nonnull @.str.2, i32 noundef 69)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.au unwind label %bb.w

bb.z:                                             ; preds = %bb.x
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ay) #24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn86 = phi { ptr, i32 } [ %i.ax, %bb.w ], [ %i.az, %bb.z ]
  %i.ba = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ao
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.aa
  %i.bc = load i64, ptr %i.ao, align 8, !tbaa !60
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.at

bb.ab:                                            ; preds = %bb.s
  %i.be = and i64 %5, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bg, ptr %11, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !71
  store i8 0, ptr %i.bg, align 8, !tbaa !60
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #24 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bk = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.bl)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bm = load ptr, ptr %11, align 8, !tbaa !72
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !71
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #24 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.bk)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %bb.ad
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %i.bq = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss14pq4_pack_codesEPKhmmmmmPhm, ptr noundef nonnull @.str.2, i32 noundef 70)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.au unwind label %bb.af

bb.ai:                                            ; preds = %bb.ag
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bq) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn88 = phi { ptr, i32 } [ %i.bp, %bb.af ], [ %i.br, %bb.ai ]
  %i.bs = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bg
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.aj
  %i.bu = load i64, ptr %i.bg, align 8, !tbaa !60
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.at

bb.ak:                                            ; preds = %bb.ab
  %i.bw = icmp eq i64 %3, 0
  br i1 %i.bw, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = mul i64 %5, %3
  %i.by = lshr exact i64 %i.bx, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.by, i1 false)
  %.not110 = icmp eq i64 %5, 0
  br i1 %.not110, label %.loopexit, label %.preheader101.us.preheader

.preheader101.us.preheader:                       ; preds = %bb.al
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %.preheader101.us

.preheader101.us:                                 ; preds = %.preheader101.us.preheader, %._crit_edge.us
  %.066109.us = phi i64 [ %i.df, %._crit_edge.us ], [ 0, %.preheader101.us.preheader ] ; 2 uses
  %.067108.us = phi ptr [ %i.da, %._crit_edge.us ], [ %6, %.preheader101.us.preheader ]
  br label %.preheader100.us

bb.am:                                            ; preds = %.preheader100.us, %_ZN5faiss12_GLOBAL__N_117get_matrix_columnIKhSt5arrayIhLm32EEEEvPT_mmllRT0_.exit.us.preheader
  %.064105.us = phi i64 [ 0, %.preheader100.us ], [ %i.db, %_ZN5faiss12_GLOBAL__N_117get_matrix_columnIKhSt5arrayIhLm32EEEEvPT_mmllRT0_.exit.us.preheader ] ; 2 uses
  %.2104.us = phi ptr [ %.1106.us, %.preheader100.us ], [ %i.da, %_ZN5faiss12_GLOBAL__N_117get_matrix_columnIKhSt5arrayIhLm32EEEEvPT_mmllRT0_.exit.us.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ca = add i64 %.064105.us, %.066109.us        ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ar, %bb.am
  %.017.i.us = phi i64 [ 0, %bb.am ], [ %i.co, %bb.ar ] ; 4 uses
  %i.cb = add nsw i64 %i.ca, %.017.i.us           ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  %i.cd = icmp ult i64 %i.cb, %1
  %or.cond.i.us = and i1 %i.cc, %i.cd
  br i1 %or.cond.i.us, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ce = mul i64 %i.cb, %i.d
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 %i.ce
  %i.cf = load i8, ptr %gep.i.us, align 1, !tbaa !60
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink.i.us = phi i8 [ %i.cf, %bb.ao ], [ 0, %bb.an ]
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 %.017.i.us
  store i8 %.sink.i.us, ptr %i.cg, align 2, !tbaa !60
  %i.ch = or disjoint i64 %.017.i.us, 1           ; 2 uses
  %i.ci = add nsw i64 %i.ca, %i.ch                ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  %i.ck = icmp ult i64 %i.ci, %1
  %or.cond.i.us.1 = and i1 %i.cj, %i.ck
  br i1 %or.cond.i.us.1, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cl = mul i64 %i.ci, %i.d
  %gep.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us, i64 %i.cl
  %i.cm = load i8, ptr %gep.i.us.1, align 1, !tbaa !60
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink.i.us.1 = phi i8 [ %i.cm, %bb.aq ], [ 0, %bb.ap ]
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 %i.ch
  store i8 %.sink.i.us.1, ptr %i.cn, align 1, !tbaa !60
  %i.co = add nuw nsw i64 %.017.i.us, 2           ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.co, 32
  br i1 %exitcond.not.i.us.1, label %_ZN5faiss12_GLOBAL__N_117get_matrix_columnIKhSt5arrayIhLm32EEEEvPT_mmllRT0_.exit.us.preheader, label %bb.an, !llvm.loop !0

_ZN5faiss12_GLOBAL__N_117get_matrix_columnIKhSt5arrayIhLm32EEEEvPT_mmllRT0_.exit.us.preheader: ; preds = %bb.ar
  %i.cp = getelementptr inbounds nuw i8, ptr %.2104.us, i64 16
  %i.cq = load <16 x i8>, ptr %12, align 16, !tbaa !60 ; 2 uses
  %i.cr = and <16 x i8> %i.cq, splat (i8 15)
  %i.cs = load <16 x i8>, ptr %i.bz, align 16, !tbaa !60 ; 2 uses
  %i.ct = shl <16 x i8> %i.cs, splat (i8 4)
  %i.cu = or disjoint <16 x i8> %i.ct, %i.cr
  %i.cv = shufflevector <16 x i8> %i.cu, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.cv, ptr %.2104.us, align 1, !tbaa !60
  %i.cw = lshr <16 x i8> %i.cq, splat (i8 4)
  %i.cx = and <16 x i8> %i.cs, splat (i8 -16)
  %i.cy = or disjoint <16 x i8> %i.cx, %i.cw
  %i.cz = shufflevector <16 x i8> %i.cy, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.cz, ptr %i.cp, align 1, !tbaa !60
  %i.da = getelementptr inbounds nuw i8, ptr %.2104.us, i64 32 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.db = add i64 %.064105.us, 32                 ; 2 uses
  %i.dc = icmp ult i64 %i.db, %4
  br i1 %i.dc, label %bb.am, label %bb.as, !llvm.loop !571

bb.as:                                            ; preds = %_ZN5faiss12_GLOBAL__N_117get_matrix_columnIKhSt5arrayIhLm32EEEEvPT_mmllRT0_.exit.us.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dd = icmp ugt i64 %5, %indvars.iv.next
  br i1 %i.dd, label %.preheader100.us, label %._crit_edge.us, !llvm.loop !572

.preheader100.us:                                 ; preds = %.preheader101.us, %bb.as
  %indvars.iv = phi i64 [ 0, %.preheader101.us ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %.1106.us = phi ptr [ %.067108.us, %.preheader101.us ], [ %i.da, %bb.as ]
  %i.de = lshr exact i64 %indvars.iv, 1
  %invariant.gep.i.us = getelementptr i8, ptr %0, i64 %i.de ; 2 uses
  br label %bb.am

._crit_edge.us:                                   ; preds = %bb.as
  %i.df = add i64 %.066109.us, %4                 ; 2 uses
  %i.dg = icmp ult i64 %i.df, %3
  br i1 %i.dg, label %.preheader101.us, label %.loopexit, !llvm.loop !573

.loopexit:                                        ; preds = %._crit_edge.us, %bb.al, %bb.ak
  ret void

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn88.pn

bb.au:                                            ; preds = %bb.ah, %bb.y, %bb.p, %bb.g
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !60
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !60
  br label %.sink.split.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !71
  %i.p = load ptr, ptr %0, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.g, %.sink.split.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !60
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !60
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !73
end_hunk_0
