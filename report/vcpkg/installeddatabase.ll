Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/installeddatabase?download=true
inline.NumInlined: 1530
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5vcpkg25InstalledDatabaseLockImplC2ERKNS_10FilesystemERKNS_14InstalledPathsERKSt6vectorINS_4PathESaIS8_EERKNS_8OptionalIbEESG_:bb.a
bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.az = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ah
  br i1 %i.ba, label %_ZN5vcpkg4PathD2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %bb.m
  %i.bb = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #21
  br label %_ZN5vcpkg4PathD2Ev.exit43

_ZN5vcpkg4PathD2Ev.exit43:                        ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.q

bb.n:                                             ; preds = %bb.q, %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit46

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.bg = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ah
  br i1 %i.bh, label %_ZN5vcpkg4PathD2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.p
  %i.bi = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #21
  br label %_ZN5vcpkg4PathD2Ev.exit46

_ZN5vcpkg4PathD2Ev.exit46:                        ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44, %bb.o
  %.pn29 = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44 ], [ %i.bf, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.s

bb.q:                                             ; preds = %_ZN5vcpkg4PathD2Ev.exit43, %bb.i
  invoke fastcc void @_ZN5vcpkgL9take_lockERNS_17DiagnosticContextERSt6vectorISt10unique_ptrINS_18IExclusiveFileLockESt14default_deleteIS4_EESaIS7_EERKNS_10FilesystemERKNS_4PathEbb(ptr noundef nonnull align 8 dereferenceable(8) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.049.054, i1 noundef zeroext %i.e, i1 noundef zeroext %i.j)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.049.054, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.af
  br i1 %.not, label %._crit_edge, label %bb.h

bb.s:                                             ; preds = %bb.n, %_ZN5vcpkg4PathD2Ev.exit46, %.body
  %.pn31.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bd, %bb.n ], [ %.pn29, %_ZN5vcpkg4PathD2Ev.exit46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.d
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.s ], [ %i.x, %bb.d ]
  call void @_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %.pn31.pn.pn
}

declare void @_ZNK5vcpkg14InstalledPaths18create_directoriesERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5vcpkgL9take_lockERNS_17DiagnosticContextERSt6vectorISt10unique_ptrINS_18IExclusiveFileLockESt14default_deleteIS4_EESaIS7_EERKNS_10FilesystemERKNS_4PathEbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.45", align 8 ; 9 uses
  %7 = alloca %"struct.vcpkg::DiagnosticLine", align 8 ; 7 uses
  %8 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %9 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = load ptr, ptr %2, align 8, !tbaa !20
  %. = select i1 %4, i64 352, i64 360
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %.
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.45") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.d = load ptr, ptr %6, align 8                ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %or.cond = or i1 %5, %i.e
  %i.f = ptrtoint ptr %i.d to i64
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.g = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg19msgFailedToTakeLockE, align 8, !tbaa !32
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %8, i64 %.sroa.0.0.copyload)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  %i.i = extractvalue { ptr, i64 } %i.g, 0
  invoke void @_ZN5vcpkg14DiagnosticLineC2INS_15LocalizedStringETnNSt9enable_ifIXsr3stdE16is_convertible_vIT_S2_EEiE4typeELi0EEENS_8DiagKindENS_10StringViewEOS4_(ptr noundef nonnull align 8 dereferenceable(88) %7, i32 noundef 2, ptr %i.i, i64 %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN5vcpkg14DiagnosticLineD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %7) #20
  %i.m = load ptr, ptr %8, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.n, align 8, !tbaa !26
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store i32 80, ptr %9, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.1, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @__func__._ZN5vcpkgL9take_lockERNS_17DiagnosticContextERSt6vectorISt10unique_ptrINS_18IExclusiveFileLockESt14default_deleteIS4_EESaIS7_EERKNS_10FilesystemERKNS_4PathEbb, ptr %i.s, align 8, !tbaa !36
  invoke void @_ZN5vcpkg6Checks9exit_failERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %9) #23
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit23

bb.h:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg14DiagnosticLineD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %7) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !25     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN5vcpkg15LocalizedStringD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.j
  %i.z = load i64, ptr %i.x, align 8, !tbaa !26
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit23

_ZN5vcpkg15LocalizedStringD2Ev.exit23:            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21 ], [ %.pn, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.q

bb.k:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i, label %bb.m, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.l
  store i64 %i.f, ptr %i.ad, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %1, align 8, !tbaa !43    ; 10 uses
  %i.ai = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 4 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc28 unwind label %bb.p

.noexc28:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i27 = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i27)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #24
          to label %.noexc29 unwind label %bb.p   ; 10 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %i.au = load i64, ptr %6, align 8, !tbaa !42
  store i64 %i.au, ptr %i.at, align 8, !tbaa !42
  store ptr null, ptr %6, align 8, !tbaa !42
  %.not10.i.i.i.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc29
  %i.av = add i64 %i.ai, -8
  %i.aw = sub i64 %i.av, %i.aj                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %10 = add i64 %i.ai, -8
  %11 = sub i64 %10, %i.aj
  %i.az = and i64 %11, -8
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.ba
  %scevgep39 = getelementptr i8, ptr %i.ah, i64 %i.ba
  %bound0 = icmp ult ptr %i.as, %scevgep39
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ah, i64 %i.be ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.bf = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !42, !alias.scope !142, !noalias !140
  %wide.load41 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !42, !alias.scope !142, !noalias !140
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !42, !alias.scope !143, !noalias !142
  store <2 x i64> %wide.load41, ptr %i.bg, align 8, !tbaa !42, !alias.scope !143, !noalias !142
  %i.bh = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !42, !alias.scope !142, !noalias !140
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !42, !alias.scope !142, !noalias !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader43

.lr.ph.i.i.i.i.preheader43:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader43, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.bj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !141, !noalias !140
  store i64 %i.bj, ptr %.012.i.i.i.i, align 8, !tbaa !42, !alias.scope !140, !noalias !141
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !141, !noalias !140
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, %i.ad
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !138

_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i = phi ptr [ %i.as, %.noexc29 ], [ %i.bc, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.bp) #21
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.o
  store ptr %i.as, ptr %1, align 8, !tbaa !43
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !39
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bq, ptr %i.ae, align 8, !tbaa !40
  %.pr = load ptr, ptr %6, align 8, !tbaa !42     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.br = load ptr, ptr %.pr, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #20, !inline_history !139
  br label %_ZNSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.p:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %_ZN5vcpkg15LocalizedStringD2Ev.exit23
  %.pn19 = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %i.ab, %bb.k ], [ %.pn.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit23 ]
  %i.bv = load ptr, ptr %6, align 8, !tbaa !42    ; 3 uses
  %.not.i24 = icmp eq ptr %i.bv, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i25: ; preds = %bb.q
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) #20, !inline_history !139
  br label %_ZNSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS1_EED2Ev.exit26: ; preds = %bb.q, %_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn19
}

declare { ptr, i64 } @_ZNK5vcpkg4Path11parent_pathEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN5vcpkg4PathC1ENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5vcpkg12IgnoreErrorscvRSt10error_codeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20, !inline_history !144
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5vcpkg25InstalledDatabaseLockImplD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20, !inline_history !145
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg18IExclusiveFileLockEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg18IExclusiveFileLockESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0
end_hunk_0
begin_hunk_1_@_ZN5vcpkgL22apply_database_updatesERKNS_18ReadOnlyFilesystemERNS_16StatusParagraphsERKNS_4PathE:bb.a
  %i.au = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #24
          to label %.noexc30 unwind label %bb.s   ; 3 uses

.noexc30:                                         ; preds = %.lr.ph
  %i.av = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.044) #20, !noalias !158 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  invoke void @_ZN5vcpkg15StatusParagraphC1ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE(ptr noundef nonnull align 8 dereferenceable(248) %i.au, ptr %i.aw, i64 %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.031.043)
          to label %bb.q unwind label %bb.p, !noalias !158

bb.p:                                             ; preds = %.noexc30
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 248) #21, !noalias !158
  br label %.body

bb.q:                                             ; preds = %.noexc30
  store ptr %i.au, ptr %8, align 8, !tbaa !65, !alias.scope !158
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN5vcpkg16StatusParagraphs6insertESt10unique_ptrINS_15StatusParagraphESt14default_deleteIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.72") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 %8)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.az = load ptr, ptr %8, align 8, !tbaa !65    ; 3 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i: ; preds = %bb.r
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %i.az) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 248) #21
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.r, %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.031.043, i64 48 ; 2 uses
  %.not39 = icmp eq ptr %i.ba, %i.aj
  br i1 %.not39, label %.lr.ph.i.i.i, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %.body

.body:                                            ; preds = %bb.s, %bb.p, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.t ], [ %i.bb, %bb.s ], [ %i.ay, %bb.p ]
  call void @_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  br label %bb.v

bb.u:                                             ; preds = %bb.f, %_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.035.044, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.q
  br i1 %.not, label %.loopexit, label %bb.e

bb.v:                                             ; preds = %.body, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.w

.loopexit:                                        ; preds = %bb.u, %_ZN5vcpkg4Util4sortISt6vectorINS_4PathESaIS3_EESt4lessIvEEEvRT_T0_.exit
  ret void

bb.w:                                             ; preds = %.loopexit40, %.loopexit.split-lp, %bb.g, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %.pn.pn, %bb.v ], [ %lpad.loopexit, %.loopexit40 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg16StatusParagraphsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %i.d) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 248) #21
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #21
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5vcpkgL21load_current_databaseERKNS_18ReadOnlyFilesystemERKNS_4PathE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.59", align 8    ; 7 uses
  %4 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 8 uses
  %5 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %6 = alloca %"class.std::vector.9", align 8     ; 16 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN5vcpkg10Paragraphs14get_paragraphsB5cxx11ERKNS_18ReadOnlyFilesystemERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 15, ptr %5, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.1, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @__func__._ZN5vcpkgL21load_current_databaseERKNS_18ReadOnlyFilesystemERKNS_4PathE, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !53, !range !16, !noundef !17
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %4) #20
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #25
  unreachable

_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !56     ; 8 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 6 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 48                  ; 3 uses
  %i.t = icmp ugt i64 %i.s, 1152921504606846975
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not64 = icmp eq ptr %i.l, %i.i
  br i1 %.not64, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = shl nuw nsw i64 %i.s, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24
          to label %.noexc11 unwind label %bb.h   ; 9 uses

.noexc11:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.y = load ptr, ptr %6, align 8, !tbaa !68     ; 11 uses
  %8 = ptrtoaddr ptr %i.y to i64                  ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !69   ; 3 uses
  %9 = ptrtoaddr ptr %i.z to i64                  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc11
  %i.aa = add i64 %9, -8
  %i.ab = sub i64 %i.aa, %8                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader105, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %10 = add i64 %9, -8
  %11 = sub i64 %10, %8
  %i.ae = and i64 %11, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep73 = getelementptr i8, ptr %i.y, i64 %i.af
  %bound0 = icmp ult ptr %i.x, %scevgep73
  %bound1 = icmp ult ptr %i.y, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.y, i64 %i.aj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ak = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !65, !alias.scope !179, !noalias !177
  %wide.load75 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !65, !alias.scope !179, !noalias !177
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !180, !noalias !179
  store <2 x i64> %wide.load75, ptr %i.al, align 8, !tbaa !65, !alias.scope !180, !noalias !179
  %i.am = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !65, !alias.scope !179, !noalias !177
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !65, !alias.scope !179, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader105

.lr.ph.i.i.i.i.preheader105:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader105, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader105 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader105 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !178, !noalias !177
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !65, !alias.scope !177, !noalias !178
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !178, !noalias !177
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !166

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc11
  %.not.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.y to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.au) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.x, ptr %6, align 8, !tbaa !68
  store ptr %i.x, ptr %i.v, align 8, !tbaa !69
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.s
  store ptr %i.av, ptr %i.u, align 8, !tbaa !70
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.f
  %.not39 = icmp eq ptr %i.i, %i.l                ; 2 uses
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  invoke void @_ZN5vcpkg16StatusParagraphsC1EOSt6vectorISt10unique_ptrINS_15StatusParagraphESt14default_deleteIS3_EESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.q unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, %bb.e, %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.i:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit
  %.sroa.031.040 = phi ptr [ %i.i, %.lr.ph ], [ %i.cr, %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ay = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #24
          to label %.noexc12 unwind label %bb.o   ; 4 uses

.noexc12:                                         ; preds = %bb.i
  %i.az = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20, !noalias !181 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  invoke void @_ZN5vcpkg15StatusParagraphC1ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE(ptr noundef nonnull align 8 dereferenceable(248) %i.ay, ptr %i.ba, i64 %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.031.040)
          to label %bb.k unwind label %bb.j, !noalias !181

bb.j:                                             ; preds = %.noexc12
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 248) #21, !noalias !181
  br label %.body

bb.k:                                             ; preds = %.noexc12
  store ptr %i.ay, ptr %7, align 8, !tbaa !65, !alias.scope !181
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !69 ; 6 uses
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !70
  %.not.i.i = icmp eq ptr %i.bd, %i.be
  %i.bf = ptrtoint ptr %i.ay to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %6, align 8, !tbaa !68    ; 10 uses
  %i.bi = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 4 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i21 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i21)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #24
          to label %.noexc30 unwind label %.loopexit ; 10 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store i64 %i.bf, ptr %i.bt, align 8, !tbaa !65
  %.not10.i.i.i.i22 = icmp eq ptr %i.bh, %i.bd
  br i1 %.not10.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i23.preheader

.lr.ph.i.i.i.i23.preheader:                       ; preds = %.noexc30
  %i.bu = add i64 %i.bi, -8
  %i.bv = sub i64 %i.bu, %i.bj                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check86 = icmp ult i64 %i.bv, 56
  br i1 %min.iters.check86, label %.lr.ph.i.i.i.i23.preheader100, label %vector.memcheck77

vector.memcheck77:                                ; preds = %.lr.ph.i.i.i.i23.preheader
  %scevgep78.a = getelementptr i8, ptr %i.bs, i64 8
  %i.by = add i64 %i.bi, -8
  %i.bz = sub i64 %i.by, %i.bj
  %i.ca = and i64 %i.bz, -8                       ; 2 uses
  %scevgep79.a = getelementptr i8, ptr %scevgep78.a, i64 %i.ca
  %scevgep80.a = getelementptr i8, ptr %i.bh, i64 8
  %scevgep81 = getelementptr i8, ptr %scevgep80.a, i64 %i.ca
  %bound082 = icmp ult ptr %i.bs, %scevgep81
  %bound183 = icmp ult ptr %i.bh, %scevgep79.a
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %.lr.ph.i.i.i.i23.preheader100, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck77
  %n.vec88 = and i64 %i.bx, 4611686018427387900   ; 3 uses
  %i.cb = shl i64 %n.vec88, 3                     ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bs, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bh, i64 %i.cb
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.ce = shl i64 %index90, 3                     ; 2 uses
  %next.gep91.a = getelementptr i8, ptr %i.bs, i64 %i.ce ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.bh, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.cf = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load93.a = load <2 x i64>, ptr %next.gep92, align 8, !tbaa !65, !alias.scope !184, !noalias !182
  %wide.load94 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !65, !alias.scope !184, !noalias !182
  %i.cg = getelementptr i8, ptr %next.gep91.a, i64 16
end_hunk_1
