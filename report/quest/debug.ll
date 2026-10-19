Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/debug?download=true
inline.NumInlined: 138
inline.NumDeleted: 88
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@setMaxNumReportedSigFigs:bb.a
  tail call void @_Z30printer_setMaxNumPrintedSigFigi(i32 noundef %0)
  ret void
}

declare void @_Z33validate_newMaxNumReportedSigFigsiPKc(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z30printer_setMaxNumPrintedSigFigi(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @setNumReportedNewlines(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.setNumReportedNewlines)
  tail call void @_Z31validate_newNumReportedNewlinesiPKc(i32 noundef %0, ptr noundef nonnull @__func__.setNumReportedNewlines)
  tail call void @_Z30printer_setNumTrailingNewlinesi(i32 noundef %0)
  ret void
}

declare void @_Z31validate_newNumReportedNewlinesiPKc(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z30printer_setNumTrailingNewlinesi(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @setReportedPauliChars(ptr noundef %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.setReportedPauliChars)
  tail call void @_Z22validate_numPauliCharsPKcS0_(ptr noundef %0, ptr noundef nonnull @__func__.setReportedPauliChars)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !22
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.d, ptr %i.a, align 8, !tbaa !34
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !35
  %i.g = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %0, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %0, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %1, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  invoke void @_Z21printer_setPauliCharsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.b, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.u = load i64, ptr %i.b, align 8, !tbaa !25
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %i.r
}

declare void @_Z22validate_numPauliCharsPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z21printer_setPauliCharsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @setReportedPauliStrStyle(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.setReportedPauliStrStyle)
  tail call void @_Z34validate_reportedPauliStrStyleFlagiPKc(i32 noundef %0, ptr noundef nonnull @__func__.setReportedPauliStrStyle)
  tail call void @_Z25printer_setPauliStrFormati(i32 noundef %0)
  ret void
}

declare void @_Z34validate_reportedPauliStrStyleFlagiPKc(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z25printer_setPauliStrFormati(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i64 @getGpuCacheSize() local_unnamed_addr #9 {
bb.a:
  %0 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.getGpuCacheSize)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %.not = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i64 @_Z25gpu_getCacheMemoryInBytesv()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare void @getQuESTEnv(ptr dead_on_unwind writable sret(%struct.QuESTEnv) align 4) local_unnamed_addr #5

declare noundef i64 @_Z25gpu_getCacheMemoryInBytesv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @clearGpuCache() local_unnamed_addr #9 {
bb.a:
  %0 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.clearGpuCache)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %.not = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z14gpu_clearCachev()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_Z14gpu_clearCachev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z8setSeedsSt6vectorIjSaIjEE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  tail call void @setSeeds(ptr noundef %i.a, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z8getSeedsv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.getSeeds)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  invoke void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.getNumSeeds)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.a
  %i.b = invoke noundef i32 @_Z16rand_getNumSeedsv()
          to label %getNumSeeds.exit unwind label %bb.k ; 2 uses

getNumSeeds.exit:                                 ; preds = %.noexc
  store i32 %i.b, ptr %i.a, align 4, !tbaa !14
  %i.c = sext i32 %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  store i64 %i.d, ptr %2, align 8, !tbaa !29
  store ptr @"_ZNSt17_Function_handlerIFvvEZ8getSeedsvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.f, align 8, !tbaa !41
  store ptr @"_ZNSt17_Function_handlerIFvvEZ8getSeedsvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.e, align 8, !tbaa !42
  invoke void @_Z19util_tryAllocVectorRSt6vectorIjSaIjEExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %getNumSeeds.exit
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #15
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !13     ; 7 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  invoke void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.getSeeds)
          to label %.noexc7 unwind label %bb.k

.noexc7:                                          ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  invoke void @_Z13rand_getSeedsv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1)
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %.noexc7
  %i.n = invoke noundef i32 @_Z16rand_getNumSeedsv()
          to label %.preheader.i unwind label %bb.e ; 3 uses

.preheader.i:                                     ; preds = %.noexc8
  %i.o = icmp sgt i32 %i.n, 0
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !13  ; 10 uses
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre.i16 = ptrtoaddr ptr %.pre.i to i64
  %wide.trip.count.i = zext nneg i32 %i.n to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.p = sub i64 %.pre.i16, %i.m
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !14
  %wide.load17 = load <4 x i32>, ptr %i.r, align 4, !tbaa !14
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %wide.load, ptr %i.s, align 4, !tbaa !14
  store <4 x i32> %wide.load17, ptr %i.t, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i.prol
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.prol
  store i32 %i.w, ptr %i.x, align 4, !tbaa !14
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !37

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge.thread.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %.preheader.i
  %.not.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i, label %bb.g, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %.pre.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i, i64 noundef %i.ae) #18
  br label %bb.g

bb.e:                                             ; preds = %.noexc8
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %1, align 8, !tbaa !13    ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit8.i

_ZNSt6vectorIjSaIjEED2Ev.exit8.i:                 ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_ZNSt14_Function_baseD2Ev.exit10

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !14
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !14
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !14
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.1
  store i32 %i.at, ptr %i.au, align 4, !tbaa !14
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.2
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.2
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !14
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.thread.i, label %scalar.ph, !llvm.loop !38

bb.g:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.h:                                             ; preds = %getNumSeeds.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %.not.i9 = icmp eq ptr %i.az, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #15
  unreachable

bb.k:                                             ; preds = %bb.a, %.noexc, %.noexc7, %_ZNSt14_Function_baseD2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.h, %bb.i, %_ZNSt6vectorIjSaIjEED2Ev.exit8.i, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.af, %_ZNSt6vectorIjSaIjEED2Ev.exit8.i ], [ %i.ay, %bb.i ], [ %i.ay, %bb.h ], [ %i.bd, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.be = load ptr, ptr %0, align 8, !tbaa !13    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !12
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.l
  resume { ptr, i32 } %.pn.pn
}

declare void @_Z19util_tryAllocVectorRSt6vectorIjSaIjEExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZ8getSeedsvE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #9 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !44
  %.val.val = load i32, ptr %.val, align 4, !tbaa !14
  %i.a = sext i32 %.val.val to i64
  tail call void @_Z27validate_tempAllocSucceededbxxPKc(i1 noundef zeroext false, i64 noundef %i.a, i64 noundef 4, ptr noundef nonnull @"__func__._ZZ8getSeedsvENK3$_0clEv")
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZ8getSeedsvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ8getSeedsvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ8getSeedsvE3$_0", ptr %0, align 8, !tbaa !46
  br label %"_ZNSt14_Function_base13_Base_managerIZ8getSeedsvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !47
  br label %"_ZNSt14_Function_base13_Base_managerIZ8getSeedsvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !29
  store i64 %.val.i, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZ8getSeedsvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ8getSeedsvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_Z27validate_tempAllocSucceededbxxPKc(i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_debug.cpp() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 16), ptr @_ZL17defaultMatrIndentB5cxx11, align 8, !tbaa !22
  store i32 538976288, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 8), align 8, !tbaa !26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 20), align 4, !tbaa !25
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL17defaultMatrIndentB5cxx11, ptr nonnull @__dso_handle) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultQuregIndentB5cxx11, i64 16), ptr @_ZL18defaultQuregIndentB5cxx11, align 8, !tbaa !22
  store i32 538976288, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultQuregIndentB5cxx11, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultQuregIndentB5cxx11, i64 8), align 8, !tbaa !26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultQuregIndentB5cxx11, i64 20), align 4, !tbaa !25
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL18defaultQuregIndentB5cxx11, ptr nonnull @__dso_handle) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultKrausIndentB5cxx11, i64 16), ptr @_ZL18defaultKrausIndentB5cxx11, align 8, !tbaa !22
  store i16 8224, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultKrausIndentB5cxx11, i64 16), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultKrausIndentB5cxx11, i64 8), align 8, !tbaa !26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultKrausIndentB5cxx11, i64 18), align 2, !tbaa !25
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL18defaultKrausIndentB5cxx11, ptr nonnull @__dso_handle) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 16), ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !22
  store i16 8224, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 16), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 18), align 2, !tbaa !25
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL18defaultTableIndentB5cxx11, ptr nonnull @__dso_handle) #14 ; 0 uses
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 16}
!13 = !{!11, !10, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!11, !10, i64 8}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !23, i64 8, !5, i64 16}
!25 = !{!5, !5, i64 0}
!26 = !{!24, !23, i64 8}
!27 = !{!"_ZTS8QuESTEnv", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!28 = !{!27, !6, i64 4}
!29 = !{!10, !10, i64 0}
!30 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!31 = distinct !{!31, !16, !17, !18}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !16, !17}
!34 = !{!23, !23, i64 0}
!35 = !{!24, !20, i64 0}
!36 = distinct !{!36, !16, !17, !18}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !16, !17}
!39 = !{!"_ZTSSt14_Function_base", !5, i64 0, !9, i64 16}
!40 = !{!"_ZTSSt8functionIFvvEE", !39, i64 0, !9, i64 24}
!41 = !{!40, !9, i64 24}
!42 = !{!39, !9, i64 16}
!43 = !{!"_ZTSZ8getSeedsvE3$_0", !10, i64 0}
!44 = !{!43, !10, i64 0}
!45 = !{!"p1 _ZTSSt9type_info", !9, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!9, !9, i64 0}
end_hunk_0
