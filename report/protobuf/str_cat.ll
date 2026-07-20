inline.NumInlined: 116
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_:bb.a
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.a, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.v) #5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.j

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit34: ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %.idx = shl i64 %2, 4                           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not42 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %.idx, -16                       ; 2 uses
  %i.e = lshr exact i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %xtraiter = and i64 %i.f, 7                     ; 3 uses
  %i.g = icmp ult i64 %i.d, 112
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, 2305843009213693944
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.044 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %.02443 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %.sroa.035.0.copyload = load i64, ptr %.02443, align 8, !tbaa !18
  %i.h = add i64 %.sroa.035.0.copyload, %.044
  %i.i = getelementptr inbounds nuw i8, ptr %.02443, i64 16
  %.sroa.035.0.copyload.1 = load i64, ptr %i.i, align 8, !tbaa !18
  %i.j = add i64 %.sroa.035.0.copyload.1, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %.02443, i64 32
  %.sroa.035.0.copyload.2 = load i64, ptr %i.k, align 8, !tbaa !18
  %i.l = add i64 %.sroa.035.0.copyload.2, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %.02443, i64 48
  %.sroa.035.0.copyload.3 = load i64, ptr %i.m, align 8, !tbaa !18
  %i.n = add i64 %.sroa.035.0.copyload.3, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %.02443, i64 64
  %.sroa.035.0.copyload.4 = load i64, ptr %i.o, align 8, !tbaa !18
  %i.p = add i64 %.sroa.035.0.copyload.4, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %.02443, i64 80
  %.sroa.035.0.copyload.5 = load i64, ptr %i.q, align 8, !tbaa !18
  %i.r = add i64 %.sroa.035.0.copyload.5, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %.02443, i64 96
  %.sroa.035.0.copyload.6 = load i64, ptr %i.s, align 8, !tbaa !18
  %i.t = add i64 %.sroa.035.0.copyload.6, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %.02443, i64 112
  %.sroa.035.0.copyload.7 = load i64, ptr %i.u, align 8, !tbaa !18
  %i.v = add i64 %.sroa.035.0.copyload.7, %i.t    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02443, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.044.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.02443.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.044.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.044.epil.init, %.lr.ph.epil.preheader ]
  %.02443.epil = phi ptr [ %i.y, %.lr.ph.epil ], [ %.02443.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.sroa.035.0.copyload.epil = load i64, ptr %.02443.epil, align 8, !tbaa !18
  %i.x = add i64 %.sroa.035.0.copyload.epil, %.044.epil ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02443.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !19

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.x, %.lr.ph.epil ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.lcssa, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit unwind label %bb.c

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %._crit_edge
  br i1 %.not42, label %._crit_edge49, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.aa = add i64 %.idx, -16                      ; 2 uses
  %i.ab = and i64 %i.aa, 16
  %lcmp.mod55.not.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod55.not.not, label %.lr.ph48.prol, label %.lr.ph48.prol.loopexit

.lr.ph48.prol:                                    ; preds = %.lr.ph48.preheader
  %.sroa.0.0.copyload.prol = load i64, ptr %1, align 8, !tbaa !18 ; 3 uses
  %.not34.prol = icmp eq i64 %.sroa.0.0.copyload.prol, 0
  br i1 %.not34.prol, label %.lr.ph48.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %.lr.ph48.prol
  %.sroa.4.0..023.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.prol = load ptr, ptr %.sroa.4.0..023.sroa_idx.prol, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %.sroa.4.0.copyload.prol, i64 %.sroa.0.0.copyload.prol, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.0.0.copyload.prol
  br label %.lr.ph48.prol.loopexit.unr-lcssa

.lr.ph48.prol.loopexit.unr-lcssa:                 ; preds = %bb.b, %.lr.ph48.prol
  %.1.prol = phi ptr [ %i.ac, %bb.b ], [ %i.z, %.lr.ph48.prol ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph48.prol.loopexit

.lr.ph48.prol.loopexit:                           ; preds = %.lr.ph48.prol.loopexit.unr-lcssa, %.lr.ph48.preheader
  %.02347.unr = phi ptr [ %1, %.lr.ph48.preheader ], [ %i.ad, %.lr.ph48.prol.loopexit.unr-lcssa ]
  %.02546.unr = phi ptr [ %i.z, %.lr.ph48.preheader ], [ %.1.prol, %.lr.ph48.prol.loopexit.unr-lcssa ]
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %._crit_edge49, label %.lr.ph48

bb.c:                                             ; preds = %._crit_edge
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.af

.lr.ph48:                                         ; preds = %.lr.ph48.prol.loopexit, %bb.f
  %.02347 = phi ptr [ %i.an, %bb.f ], [ %.02347.unr, %.lr.ph48.prol.loopexit ] ; 5 uses
  %.02546 = phi ptr [ %.1.1, %bb.f ], [ %.02546.unr, %.lr.ph48.prol.loopexit ] ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %.02347, align 8, !tbaa !18 ; 3 uses
  %.not34 = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not34, label %.lr.ph48.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph48
  %.sroa.4.0..023.sroa_idx = getelementptr inbounds nuw i8, ptr %.02347, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..023.sroa_idx, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02546, ptr align 1 %.sroa.4.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.02546, i64 %.sroa.0.0.copyload
  br label %.lr.ph48.1

.lr.ph48.1:                                       ; preds = %bb.d, %.lr.ph48
  %.1 = phi ptr [ %i.ak, %bb.d ], [ %.02546, %.lr.ph48 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02347, i64 16
  %.sroa.0.0.copyload.1 = load i64, ptr %i.al, align 8, !tbaa !18 ; 3 uses
  %.not34.1 = icmp eq i64 %.sroa.0.0.copyload.1, 0
  br i1 %.not34.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph48.1
  %.sroa.4.0..023.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.02347, i64 24
  %.sroa.4.0.copyload.1 = load ptr, ptr %.sroa.4.0..023.sroa_idx.1, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.sroa.4.0.copyload.1, i64 %.sroa.0.0.copyload.1, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 %.sroa.0.0.copyload.1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph48.1
  %.1.1 = phi ptr [ %i.am, %bb.e ], [ %.1, %.lr.ph48.1 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.02347, i64 32 ; 2 uses
  %.not33.1 = icmp eq ptr %i.an, %i.c
  br i1 %.not33.1, label %._crit_edge49, label %.lr.ph48

._crit_edge49:                                    ; preds = %.lr.ph48.prol.loopexit, %bb.f, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051216strings_internal12AppendPiecesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listISt17basic_string_viewIcS5_EE(ptr noundef %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %.idx = shl i64 %2, 4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not36 = icmp eq i64 %2, 0
  br i1 %.not36, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %.idx, -16                       ; 4 uses
  %i.e = lshr exact i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %xtraiter = and i64 %i.f, 7                     ; 3 uses
  %i.g = icmp ult i64 %i.d, 112
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, 2305843009213693944
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef 0, i8 noundef signext 0) ; 0 uses
  br label %._crit_edge44

.lr.ph43.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph43.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph43.preheader.unr-lcssa, %.lr.ph.preheader
  %.038.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %.lr.ph43.preheader.unr-lcssa ]
  %.02337.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ae, %.lr.ph43.preheader.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.038.epil = phi i64 [ %i.i, %.lr.ph.epil ], [ %.038.epil.init, %.lr.ph.epil.preheader ]
  %.02337.epil = phi ptr [ %i.j, %.lr.ph.epil ], [ %.02337.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.sroa.029.0.copyload.epil = load i64, ptr %.02337.epil, align 8, !tbaa !18
  %i.i = add i64 %.sroa.029.0.copyload.epil, %.038.epil ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02337.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph43.preheader, label %.lr.ph.epil, !llvm.loop !22

.lr.ph43.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph43.preheader.unr-lcssa
  %.lcssa = phi i64 [ %i.ad, %.lr.ph43.preheader.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %.lcssa, i8 noundef signext 0) ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.b ; 4 uses
  %3 = and i64 %i.d, 16
  %lcmp.mod49.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod49.not.not, label %.lr.ph43.prol, label %.lr.ph43.prol.loopexit

.lr.ph43.prol:                                    ; preds = %.lr.ph43.preheader
  %.sroa.0.0.copyload.prol = load i64, ptr %1, align 8, !tbaa !18 ; 3 uses
  %.not28.prol = icmp eq i64 %.sroa.0.0.copyload.prol, 0
  br i1 %.not28.prol, label %.lr.ph43.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %.lr.ph43.prol
  %.sroa.4.0..024.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.prol = load ptr, ptr %.sroa.4.0..024.sroa_idx.prol, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.sroa.4.0.copyload.prol, i64 %.sroa.0.0.copyload.prol, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.copyload.prol
  br label %.lr.ph43.prol.loopexit.unr-lcssa

.lr.ph43.prol.loopexit.unr-lcssa:                 ; preds = %bb.b, %.lr.ph43.prol
  %.1.prol = phi ptr [ %i.n, %bb.b ], [ %i.m, %.lr.ph43.prol ]
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph43.prol.loopexit

.lr.ph43.prol.loopexit:                           ; preds = %.lr.ph43.prol.loopexit.unr-lcssa, %.lr.ph43.preheader
  %.02441.unr = phi ptr [ %1, %.lr.ph43.preheader ], [ %4, %.lr.ph43.prol.loopexit.unr-lcssa ]
  %.02540.unr = phi ptr [ %i.m, %.lr.ph43.preheader ], [ %.1.prol, %.lr.ph43.prol.loopexit.unr-lcssa ]
  %i.o = icmp eq i64 %i.d, 0
  br i1 %i.o, label %._crit_edge44, label %.lr.ph43

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.038 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %.02337 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %.sroa.029.0.copyload = load i64, ptr %.02337, align 8, !tbaa !18
  %i.p = add i64 %.sroa.029.0.copyload, %.038
  %i.q = getelementptr inbounds nuw i8, ptr %.02337, i64 16
  %.sroa.029.0.copyload.1 = load i64, ptr %i.q, align 8, !tbaa !18
  %i.r = add i64 %.sroa.029.0.copyload.1, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %.02337, i64 32
  %.sroa.029.0.copyload.2 = load i64, ptr %i.s, align 8, !tbaa !18
  %i.t = add i64 %.sroa.029.0.copyload.2, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %.02337, i64 48
  %.sroa.029.0.copyload.3 = load i64, ptr %i.u, align 8, !tbaa !18
  %i.v = add i64 %.sroa.029.0.copyload.3, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %.02337, i64 64
  %.sroa.029.0.copyload.4 = load i64, ptr %i.w, align 8, !tbaa !18
  %i.x = add i64 %.sroa.029.0.copyload.4, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %.02337, i64 80
  %.sroa.029.0.copyload.5 = load i64, ptr %i.y, align 8, !tbaa !18
  %i.z = add i64 %.sroa.029.0.copyload.5, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.02337, i64 96
  %.sroa.029.0.copyload.6 = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ab = add i64 %.sroa.029.0.copyload.6, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.02337, i64 112
  %.sroa.029.0.copyload.7 = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.ad = add i64 %.sroa.029.0.copyload.7, %i.ab  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02337, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph43.preheader.unr-lcssa, label %.lr.ph

._crit_edge44:                                    ; preds = %.lr.ph43.prol.loopexit, %bb.e, %._crit_edge.thread
  ret void

.lr.ph43:                                         ; preds = %.lr.ph43.prol.loopexit, %bb.e
  %.02441 = phi ptr [ %i.ai, %bb.e ], [ %.02441.unr, %.lr.ph43.prol.loopexit ] ; 5 uses
  %.02540 = phi ptr [ %.1.1, %bb.e ], [ %.02540.unr, %.lr.ph43.prol.loopexit ] ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %.02441, align 8, !tbaa !18 ; 3 uses
  %.not28 = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not28, label %.lr.ph43.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph43
  %.sroa.4.0..024.sroa_idx = getelementptr inbounds nuw i8, ptr %.02441, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..024.sroa_idx, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02540, ptr align 1 %.sroa.4.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.02540, i64 %.sroa.0.0.copyload
  br label %.lr.ph43.1

.lr.ph43.1:                                       ; preds = %bb.c, %.lr.ph43
  %.1 = phi ptr [ %i.af, %bb.c ], [ %.02540, %.lr.ph43 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02441, i64 16
  %.sroa.0.0.copyload.1 = load i64, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %.not28.1 = icmp eq i64 %.sroa.0.0.copyload.1, 0
  br i1 %.not28.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph43.1
  %.sroa.4.0..024.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.02441, i64 24
  %.sroa.4.0.copyload.1 = load ptr, ptr %.sroa.4.0..024.sroa_idx.1, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.sroa.4.0.copyload.1, i64 %.sroa.0.0.copyload.1, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.1, i64 %.sroa.0.0.copyload.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph43.1
  %.1.1 = phi ptr [ %i.ah, %bb.d ], [ %.1, %.lr.ph43.1 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.02441, i64 32 ; 2 uses
  %.not27.1 = icmp eq ptr %i.ai, %i.c
  br i1 %.not27.1, label %._crit_edge44, label %.lr.ph43
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %i.c, i8 noundef signext 0) ; 0 uses
  %.val = load i64, ptr %1, align 8, !tbaa !15    ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr readonly align 1 %.val7, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = load i64, ptr %2, align 8, !tbaa !15
  %i.e = add i64 %i.d, %i.c
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %i.e, i8 noundef signext 0) ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b ; 2 uses
  %.val11 = load i64, ptr %1, align 8, !tbaa !15  ; 3 uses
  %.not.i = icmp eq i64 %.val11, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %.val12, i64 %.val11, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit: ; preds = %bb.a, %bb.b
  %.val = load i64, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not.i13 = icmp eq i64 %.val, 0
  br i1 %.not.i13, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit14, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val10 = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.val11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr readonly align 1 %.val10, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit14

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit14: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = load i64, ptr %2, align 8, !tbaa !15
  %i.e = add i64 %i.d, %i.c
  %i.f = load i64, ptr %3, align 8, !tbaa !15
  %i.g = add i64 %i.e, %i.f
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %i.g, i8 noundef signext 0) ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b ; 2 uses
  %.val16 = load i64, ptr %1, align 8, !tbaa !15  ; 3 uses
  %.not.i = icmp eq i64 %.val16, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17 = load ptr, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr readonly align 1 %.val17, i64 %.val16, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.val16 ; 2 uses
  %.val14 = load i64, ptr %2, align 8, !tbaa !15  ; 3 uses
  %.not.i18 = icmp eq i64 %.val14, 0
  br i1 %.not.i18, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val15 = load ptr, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %.val15, i64 %.val14, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, %bb.c
  %.val = load i64, ptr %3, align 8, !tbaa !15    ; 2 uses
  %.not.i20 = icmp eq i64 %.val, 0
  br i1 %.not.i20, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit21, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val13 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.val14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %.val13, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit21

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit21: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = load i64, ptr %2, align 8, !tbaa !15
  %i.e = add i64 %i.d, %i.c
  %i.f = load i64, ptr %3, align 8, !tbaa !15
  %i.g = add i64 %i.e, %i.f
  %i.h = load i64, ptr %4, align 8, !tbaa !15
  %i.i = add i64 %i.g, %i.h
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %i.i, i8 noundef signext 0) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 2 uses
  %.val21 = load i64, ptr %1, align 8, !tbaa !15  ; 3 uses
  %.not.i = icmp eq i64 %.val21, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %.val22, i64 %.val21, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.val21 ; 2 uses
  %.val19 = load i64, ptr %2, align 8, !tbaa !15  ; 3 uses
  %.not.i23 = icmp eq i64 %.val19, 0
  br i1 %.not.i23, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val20 = load ptr, ptr %i.o, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr readonly align 1 %.val20, i64 %.val19, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.val19 ; 2 uses
  %.val17 = load i64, ptr %3, align 8, !tbaa !15  ; 3 uses
  %.not.i25 = icmp eq i64 %.val17, 0
  br i1 %.not.i25, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val18 = load ptr, ptr %i.q, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %.val18, i64 %.val17, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24, %bb.d
  %.val = load i64, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not.i27 = icmp eq i64 %.val, 0
  br i1 %.not.i27, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit28, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val16 = load ptr, ptr %i.r, align 8
end_hunk_0
