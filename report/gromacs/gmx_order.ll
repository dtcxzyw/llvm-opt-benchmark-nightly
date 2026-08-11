inline.NumInlined: 430
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathD2Ev:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z8read_topRKNSt10filesystem7__cxx114pathEP7PbcType(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.c, ptr %i.a, align 8, !tbaa !153
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !30
  %i.g = load i64, ptr %i.a, align 8, !tbaa !153
  store i64 %i.g, ptr %i.d, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !33
  store i8 %i.i, ptr %i.h, align 1, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !55
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !33
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_Z10init_indexPKc(ptr dead_on_unwind writable sret(%"class.std::vector.6") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL11print_typesN3gmx8ArrayRefIK10IndexGroupEEPK10t_topology(ptr nofree readonly captures(address) %0, ptr nofree readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.98, i64 25, i64 1, ptr %i.a) #19 ; 0 uses
  %.not11 = icmp eq ptr %0, %1
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2360
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc = tail call i32 @fputc(i32 10, ptr %i.d) ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.012 = phi ptr [ %0, %.lr.ph ], [ %i.q, %bb.b ] ; 3 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.f = load ptr, ptr %.sroa.0.012, align 8, !tbaa !30
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9    ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = add nsw i32 %i.j, 1
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.99, ptr noundef %i.f, ptr noundef %i.n, i32 noundef %i.o) #21 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI10IndexGroupSaIS0_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -56 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !119
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN10IndexGroupD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !33
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZN10IndexGroupD2Ev.exit

_ZN10IndexGroupD2Ev.exit:                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14write_bfactorsP8t_filenmiN3gmx8ArrayRefIK10IndexGroupEEiPPfPK10t_topologyS7_P16gmx_output_env_t(ptr noundef nonnull %0, i32 noundef %1, ptr %2, ptr %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %struct.t_trxframe, align 8         ; 6 uses
  %10 = alloca %struct.t_trxframe, align 8        ; 10 uses
  %11 = alloca %struct.t_atoms, align 8           ; 13 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, -2                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.j = tail call noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef %1, ptr noundef nonnull %0)
  store ptr %i.j, ptr %i.b, align 8, !tbaa !23
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  %i.k = invoke noundef zeroext i1 @_Z16read_first_framePK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEP10t_trxframei(ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull %9, i32 noundef 2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.l = mul i32 %i.i, %4                         ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.n) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.o = load ptr, ptr %12, align 8, !tbaa !30    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !33
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !106
  call void @_Z9close_trxP11t_trxstatus(ptr noundef %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %10, ptr noundef nonnull align 8 dereferenceable(176) %9, i64 176, i1 false), !tbaa.struct !156
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.l, ptr %i.u, align 8, !tbaa !159
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i8 0, ptr %i.v, align 8, !tbaa !161
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i8 0, ptr %i.w, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.y = sext i32 %i.l to i64
  %i.z = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.55, i32 noundef 899, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i64 noundef 12) ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !58
  call void @_Z12init_t_atomsP7t_atomsib(ptr noundef nonnull %11, i32 noundef %i.l, i1 noundef zeroext true)
  store i32 %i.l, ptr %11, align 8, !tbaa !163
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.lr.ph, label %.preheader61

.lr.ph:                                           ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.ad = icmp ult i32 %i.l, 8
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.e

.preheader61.loopexit.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader61, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader61.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %.preheader61.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv.epil ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !165
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.af, i8 0, i64 9, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader61, label %bb.d, !llvm.loop !168

.preheader61:                                     ; preds = %.preheader61.loopexit.unr-lcssa, %bb.d, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.ag = icmp sgt i32 %4, 0
  br i1 %i.ag, label %.preheader.lr.ph, label %._crit_edge68.split

.preheader.lr.ph:                                 ; preds = %.preheader61
  %i.ah = icmp sgt i32 %i.i, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 56
  %.not = icmp eq ptr %7, null
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 2360
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 2352
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 2392
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 48
  br i1 %i.ah, label %.preheader.preheader, label %._crit_edge68.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count82 = zext nneg i32 %4 to i64
  %wide.trip.count77 = zext nneg i32 %i.i to i64
  br label %.preheader

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.ar = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.ar, align 4, !tbaa !165
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.as, i8 0, i64 9, i1 false)
  %i.at = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 52
  store i32 0, ptr %i.au, align 4, !tbaa !165
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.av, i8 0, i64 9, i1 false)
  %i.aw = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store i32 0, ptr %i.ax, align 4, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ay, i8 0, i64 9, i1 false)
  %i.az = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 156
  store i32 0, ptr %i.ba, align 4, !tbaa !165
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bb, i8 0, i64 9, i1 false)
  %i.bc = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 208
  store i32 0, ptr %i.bd, align 4, !tbaa !165
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.be, i8 0, i64 9, i1 false)
  %i.bf = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 260
  store i32 0, ptr %i.bg, align 4, !tbaa !165
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bh, i8 0, i64 9, i1 false)
  %i.bi = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 312
  store i32 0, ptr %i.bj, align 4, !tbaa !165
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bk, i8 0, i64 9, i1 false)
  %i.bl = getelementptr inbounds nuw [52 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 364
  store i32 0, ptr %i.bm, align 4, !tbaa !165
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 380
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bn, i8 0, i64 9, i1 false)
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader61.loopexit.unr-lcssa, label %bb.e, !llvm.loop !169

bb.f:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.m

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv79 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next80, %._crit_edge ] ; 4 uses
  %.05166 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next73.a, %._crit_edge ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv79
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv79
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.i
  %indvars.iv72.a = phi i64 [ %.05166, %.preheader ], [ %indvars.iv.next73.a, %bb.i ] ; 6 uses
  %indvars.iv70 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next71, %bb.i ]
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !58
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next71
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !60
  %i.bu = load ptr, ptr %i.ai, align 8, !tbaa !164
  %i.bv = getelementptr inbounds [52 x i8], ptr %i.bu, i64 %indvars.iv72.a ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store float %i.bt, ptr %i.bw, align 4, !tbaa !170
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next71
  %i.bz = load float, ptr %i.by, align 4, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store float %i.bz, ptr %i.ca, align 4, !tbaa !171
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cb = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %indvars.iv.next71
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !118
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv79
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !172
  %i.ch = sext i32 %i.cf to i64                   ; 3 uses
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds [12 x i8], ptr %i.z, i64 %indvars.iv72.a ; 3 uses
  %i.ck = load float, ptr %i.ci, align 4, !tbaa !60
  store float %i.ck, ptr %i.cj, align 4, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store float %i.cp, ptr %i.cq, align 4, !tbaa !60
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !154
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ch
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !155
  %i.cu = load ptr, ptr %i.al, align 8, !tbaa !173
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %indvars.iv72.a
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !155
  %i.cw = load ptr, ptr %i.am, align 8, !tbaa !174
  %i.cx = getelementptr inbounds [36 x i8], ptr %i.cw, i64 %i.ch
  %i.cy = load ptr, ptr %i.an, align 8, !tbaa !175
  %i.cz = getelementptr inbounds [36 x i8], ptr %i.cy, i64 %indvars.iv72.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.cz, ptr noundef nonnull align 4 dereferenceable(36) %i.cx, i64 36, i1 false), !tbaa.struct !176
  %i.da = load ptr, ptr %i.an, align 8, !tbaa !175
  %i.db = getelementptr inbounds [36 x i8], ptr %i.da, i64 %indvars.iv72.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !181 ; 2 uses
  %i.de = add nsw i32 %i.dd, 1
  %i.df = load i32, ptr %i.ao, align 8, !tbaa !9
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.df, i32 %i.de)
  store i32 %.sroa.speculated, ptr %i.ao, align 8, !tbaa !183
  %i.dg = load ptr, ptr %i.ap, align 8, !tbaa !184
  %i.dh = sext i32 %i.dd to i64                   ; 2 uses
  %i.di = getelementptr inbounds [32 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load ptr, ptr %i.aq, align 8, !tbaa !185
  %i.dk = getelementptr inbounds [32 x i8], ptr %i.dj, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false), !tbaa.struct !186
  %indvars.iv.next73.a = add nsw i64 %indvars.iv72.a, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge, label %bb.g, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge68.split, label %.preheader, !llvm.loop !188

._crit_edge68.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader61
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.dl = call noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.44, i32 noundef %1, ptr noundef nonnull %0)
  store ptr %i.dl, ptr %i.c, align 8, !tbaa !23
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 156
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !189
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 116
  invoke void @_Z14write_sto_confRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull @.str.141, ptr noundef nonnull %11, ptr noundef %i.z, ptr noundef null, i32 noundef %i.dn, ptr noundef nonnull %i.do)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %._crit_edge68.split
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !28 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i55, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i56, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull %i.dq) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i56

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i56: ; preds = %bb.k, %bb.j
  %i.dr = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i56
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !33
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit59

_ZNSt10filesystem7__cxx114pathD2Ev.exit59:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.dw = load ptr, ptr %i.x, align 8, !tbaa !172
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.55, i32 noundef 936, ptr noundef %i.dw)
  call void @_Z9done_atomP7t_atoms(ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.l:                                             ; preds = %._crit_edge68.split
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.l ], [ %i.bo, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i:            ; preds = %bb.b, %.lr.ph.i.i
  %i.k = load ptr, ptr %.05.i.i, align 8, !tbaa !30 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !33
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i

_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !146

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !113
  br label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !147
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20
  br label %_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !33
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !151

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !149
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !152
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

end_hunk_0
