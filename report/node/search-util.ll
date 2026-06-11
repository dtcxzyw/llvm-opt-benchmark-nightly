inline.NumInlined: 534
inline.NumDeleted: 302
begin_hunk_0_@_ZN12v8_inspector23searchInTextByLinesImplEPNS_18V8InspectorSessionERKNS_8String16ES4_bb:bb.a

bb.bd:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i.i.i
  call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.jd) #10
  br label %_ZNSt10unique_ptrIN12v8_inspector7V8RegexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector7V8RegexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i.i.i, %bb.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 56) #13
  ret void

bb.be:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS3_EED2Ev.exit
  %i.jf = phi ptr [ %.promoted59, %.lr.ph ], [ %i.la, %_ZNSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS3_EED2Ev.exit ] ; 7 uses
  %.sroa.030.058 = phi ptr [ %.pre90, %.lr.ph ], [ %i.lb, %_ZNSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS3_EED2Ev.exit ] ; 4 uses
  %i.jg = phi ptr [ %.promoted, %.lr.ph ], [ %i.kz, %_ZNSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %i.jh = load i32, ptr %.sroa.030.058, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.030.058, i64 8
  %i.jj = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #12, !noalias !26 ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector8protocol8Debugger11SearchMatchE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector8protocol8Debugger11SearchMatchE, i64 56)>, ptr %i.jj, align 8, !noalias !26
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 40 ; 2 uses
  store ptr %i.jl, ptr %i.jk, align 8, !noalias !26
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  store i64 0, ptr %i.jm, align 8, !noalias !26
  store i16 0, ptr %i.jl, align 8, !noalias !26
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 56 ; 2 uses
  store i64 0, ptr %i.jn, align 8, !noalias !26
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jp = sitofp i32 %i.jh to double
  store double %i.jp, ptr %i.jo, align 8, !noalias !31
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.jk, ptr noundef nonnull align 8 dereferenceable(40) %i.ji), !noalias !31
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.030.058, i64 40
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !31
  store i64 %i.jr, ptr %i.jn, align 8, !noalias !31
  %i.js = ptrtoint ptr %i.jj to i64               ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.jf, %i.jg
  br i1 %.not.i.i18, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i64 %i.js, ptr %i.jf, align 8
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS3_EED2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.jt = load ptr, ptr %0, align 8               ; 10 uses
  %i.ju = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jv = ptrtoint ptr %i.jt to i64               ; 3 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 4 uses
  %i.jx = icmp eq i64 %i.jw, 9223372036854775800
  br i1 %i.jx, label %bb.bh, label %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.jf, ptr %i.ig, align 8
  store ptr %i.jg, ptr %i.ia, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #11
  unreachable

_ZNKSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bg
  %i.jy = ashr exact i64 %i.jw, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.jy, i64 1)
  %i.jz = add nsw i64 %.sroa.speculated.i.i, %i.jy ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jy
  %i.kb = call i64 @llvm.umin.i64(i64 %i.jz, i64 1152921504606846975)
  %i.kc = select i1 %i.ka, i64 1152921504606846975, i64 %i.kb ; 3 uses
  %.not.i.i20 = icmp ne i64 %i.kc, 0
  call void @llvm.assume(i1 %.not.i.i20)
  %i.kd = shl nuw nsw i64 %i.kc, 3
  %i.ke = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kd) #12 ; 10 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.jw
  store i64 %i.js, ptr %i.kf, align 8
  %.not10.i.i.i.i21 = icmp eq ptr %i.jt, %i.jf
  br i1 %.not10.i.i.i.i21, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i22.preheader

.lr.ph.i.i.i.i22.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.kg = add i64 %i.ju, -8
  %i.kh = sub i64 %i.kg, %i.jv                    ; 2 uses
  %i.ki = lshr i64 %i.kh, 3
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kh, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i22.preheader232, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i22.preheader
  %scevgep = getelementptr i8, ptr %i.ke, i64 8
  %i.kk = add i64 %i.ju, -8
  %i.kl = sub i64 %i.kk, %i.jv
  %i.km = and i64 %i.kl, -8                       ; 2 uses
  %scevgep226 = getelementptr i8, ptr %scevgep, i64 %i.km
  %scevgep227 = getelementptr i8, ptr %i.jt, i64 8
  %scevgep228 = getelementptr i8, ptr %scevgep227, i64 %i.km
  %bound0 = icmp ult ptr %i.ke, %scevgep228
  %bound1 = icmp ult ptr %i.jt, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i22.preheader232, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kj, 4611686018427387900     ; 3 uses
  %i.kn = shl i64 %n.vec, 3                       ; 2 uses
  %i.ko = getelementptr i8, ptr %i.ke, i64 %i.kn  ; 2 uses
  %i.kp = getelementptr i8, ptr %i.jt, i64 %i.kn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ke, i64 %i.kq ; 2 uses
  %next.gep229 = getelementptr i8, ptr %i.jt, i64 %i.kq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.kr = getelementptr i8, ptr %next.gep229, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep229, align 8, !alias.scope !37, !noalias !32
  %wide.load230 = load <2 x i64>, ptr %i.kr, align 8, !alias.scope !37, !noalias !32
  %i.ks = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !40, !noalias !37
  store <2 x i64> %wide.load230, ptr %i.ks, align 8, !alias.scope !40, !noalias !37
  %i.kt = getelementptr i8, ptr %next.gep229, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep229, align 8, !alias.scope !37, !noalias !32
  store <2 x ptr> splat (ptr null), ptr %i.kt, align 8, !alias.scope !37, !noalias !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i22.preheader232

.lr.ph.i.i.i.i22.preheader232:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i22.preheader, %middle.block
  %.012.i.i.i.i23.ph = phi ptr [ %i.ke, %vector.memcheck ], [ %i.ke, %.lr.ph.i.i.i.i22.preheader ], [ %i.ko, %middle.block ]
  %.0911.i.i.i.i24.ph = phi ptr [ %i.jt, %vector.memcheck ], [ %i.jt, %.lr.ph.i.i.i.i22.preheader ], [ %i.kp, %middle.block ]
  br label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %.lr.ph.i.i.i.i22.preheader232, %.lr.ph.i.i.i.i22
  %.012.i.i.i.i23 = phi ptr [ %i.kx, %.lr.ph.i.i.i.i22 ], [ %.012.i.i.i.i23.ph, %.lr.ph.i.i.i.i22.preheader232 ] ; 2 uses
  %.0911.i.i.i.i24 = phi ptr [ %i.kw, %.lr.ph.i.i.i.i22 ], [ %.0911.i.i.i.i24.ph, %.lr.ph.i.i.i.i22.preheader232 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.kv = load i64, ptr %.0911.i.i.i.i24, align 8, !alias.scope !35, !noalias !32
  store i64 %i.kv, ptr %.012.i.i.i.i23, align 8, !alias.scope !32, !noalias !35
  store ptr null, ptr %.0911.i.i.i.i24, align 8, !alias.scope !35, !noalias !32
  %i.kw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i24, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i23, i64 8 ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.kw, %i.jf
  br i1 %.not.i.i.i.i25, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i22, !llvm.loop !45

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i22, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ke, %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i ], [ %i.ko, %middle.block ], [ %i.kx, %.lr.ph.i.i.i.i22 ]
  %.not.i23.i = icmp eq ptr %i.jt, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jw) #13
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.bi
  store ptr %i.ke, ptr %0, align 8
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kc
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, %bb.bf
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ], [ %i.jf, %bb.bf ]
  %i.kz = phi ptr [ %i.ky, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ], [ %i.jg, %bb.bf ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 8 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.030.058, i64 48 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %.pre89
  br i1 %i.lc, label %bb.ba, label %bb.be
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector13findSourceURLERKNS_8String16Eb(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str) #10
  %.val = load ptr, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  call fastcc void @_ZN12v8_inspector12_GLOBAL__N_116findMagicCommentERKNS_8String16ES3_b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.val, i64 %.val1, i1 noundef zeroext %2)
  %i.b = load ptr, ptr %3, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12v8_inspector12_GLOBAL__N_116findMagicCommentERKNS_8String16ES3_b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %4 = alloca %"class.v8_inspector::String16", align 8 ; 24 uses
  %5 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %6 = alloca %"class.v8_inspector::String16", align 8 ; 15 uses
  %7 = alloca %"class.v8_inspector::String16", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %.not.i.i.i = icmp ugt i64 %.8.val, %i.b
  br i1 %.not.i.i.i, label %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = sub nuw i64 %i.b, %.8.val
  %i.d = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.8.val, 0
  %or.cond3.v = select i1 %2, i16 42, i16 47
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.014 = phi i64 [ %i.b, %.lr.ph ], [ %i.v, %.backedge.backedge ]
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.014, i64 %i.c) ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.backedge, %_ZNSt11char_traitsIDsE7compareEPKDsS2_m.exit.i.i.i
  %.0.i.i.i = phi i64 [ %i.k, %_ZNSt11char_traitsIDsE7compareEPKDsS2_m.exit.i.i.i ], [ %.sroa.speculated.i.i.i, %.backedge ] ; 4 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.0.i.i.i
  br label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = add nuw i64 %.01216.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.f, %.8.val
  br i1 %exitcond.not.i.i.i.i, label %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit, label %.lr.ph.i.i.i.i, !llvm.loop !22

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.preheader.i.i.i
  %.01216.i.i.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.01216.i.i.i.i
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.0.val, i64 %.01216.i.i.i.i
  %i.i = load i16, ptr %i.g, align 2
  %i.j = load i16, ptr %i.h, align 2
  %or.cond.not.i.i.i = icmp eq i16 %i.j, %i.i
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZNSt11char_traitsIDsE7compareEPKDsS2_m.exit.i.i.i

_ZNSt11char_traitsIDsE7compareEPKDsS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = add i64 %.0.i.i.i, -1
  %.not12.i.i.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit.thread, label %.lr.ph.i.preheader.i.i.i, !llvm.loop !46

_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit: ; preds = %bb.b, %.backedge
  %.1.i.i.i = phi i64 [ %.sroa.speculated.i.i.i, %.backedge ], [ %.0.i.i.i, %bb.b ] ; 5 uses
  %i.l = icmp eq i64 %.1.i.i.i, -1
  br i1 %i.l, label %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit.thread, label %bb.c

_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit.thread: ; preds = %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit, %_ZNSt11char_traitsIDsE7compareEPKDsS2_m.exit.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.p, align 8
  br label %bb.an

bb.c:                                             ; preds = %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit
  %i.q = icmp ult i64 %.1.i.i.i, 4
  br i1 %i.q, label %.split.us, label %bb.d

.split.us:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.u, align 8
  br label %bb.an

bb.d:                                             ; preds = %bb.c
  %i.v = add i64 %.1.i.i.i, -4                    ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %.not = icmp eq i16 %i.x, 47
  br i1 %.not, label %bb.e, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %bb.h, %bb.i, %bb.e, %bb.f, %bb.g
  br label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr [2 x i8], ptr %i.d, i64 %.1.i.i.i ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -6
  %i.aa = load i16, ptr %i.z, align 2
  %or.cond3 = icmp eq i16 %i.aa, %or.cond3.v
  br i1 %or.cond3, label %bb.f, label %.backedge.backedge

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.y, i64 -4
  %i.ac = load i16, ptr %i.ab, align 2
  switch i16 %i.ac, label %.backedge.backedge [
    i16 35, label %bb.g
    i16 64, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ad = getelementptr i8, ptr %i.y, i64 -2
  %i.ae = load i16, ptr %i.ad, align 2
  switch i16 %i.ae, label %.backedge.backedge [
    i16 32, label %bb.h
    i16 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.af = add i64 %.1.i.i.i, %.8.val              ; 5 uses
  %.not77 = icmp ult i64 %i.af, %i.b
  br i1 %.not77, label %bb.i, label %.backedge.backedge

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %.not78 = icmp eq i16 %i.ah, 61
  br i1 %.not78, label %.split16.us, label %.backedge.backedge

.split16.us:                                      ; preds = %bb.i
  br i1 %2, label %bb.j, label %.thread

.thread:                                          ; preds = %.split16.us
  %i.ai = add nuw i64 %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZNK12v8_inspector8String169substringEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.ai, i64 noundef 4294967295)
  br label %bb.s

bb.j:                                             ; preds = %.split16.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.11) #10
  %i.aj = add nuw i64 %i.af, 1                    ; 6 uses
  %i.ak = load ptr, ptr %3, align 8               ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8            ; 6 uses
  %i.an = load i64, ptr %i.a, align 8             ; 4 uses
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not35.i.i.i.not = icmp ult i64 %i.af, %i.an
  %i.ap = select i1 %.not35.i.i.i.not, i64 %i.aj, i64 -1
  br label %_ZNK12v8_inspector8String164findERKS0_m.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i.i85 = icmp ult i64 %i.aj, %i.an
  br i1 %.not.i.i.i85, label %bb.m, label %_ZNK12v8_inspector8String164findERKS0_m.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = load i16, ptr %i.ak, align 2
  %i.ar = load ptr, ptr %1, align 8               ; 3 uses
  %i.as = sub nuw i64 %i.an, %i.aj                ; 2 uses
  %.not3342.i.i.i = icmp ult i64 %i.as, %i.am
  br i1 %.not3342.i.i.i, label %_ZNK12v8_inspector8String164findERKS0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.an
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.aj
  %i.av = ptrtoint ptr %i.at to i64
  br label %.lr.ph.i.preheader.i.i.i87

.lr.ph.i.preheader.i.i.i87:                       ; preds = %bb.p, %.lr.ph.i.i.i
  %.044.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i ], [ %i.bo, %bb.p ]
  %.02843.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.bl, %bb.p ] ; 2 uses
  %i.aw = sub nuw i64 %.044.i.i.i, %i.am
  br label %.lr.ph.i.i.i.i88

.lr.ph.i.i.i.i88:                                 ; preds = %bb.n, %.lr.ph.i.preheader.i.i.i87
  %.0915.i.i.i.i = phi i64 [ %i.bb, %bb.n ], [ 0, %.lr.ph.i.preheader.i.i.i87 ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.02843.i.i.i, i64 %.0915.i.i.i.i
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = icmp eq i16 %i.ay, %i.aq
  br i1 %i.az, label %.lr.ph.i37.i.i.i.preheader, label %bb.n

.lr.ph.i37.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i.i88
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.02843.i.i.i, i64 %.0915.i.i.i.i ; 3 uses
  br label %.lr.ph.i37.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i88
  %i.bb = add nuw i64 %.0915.i.i.i.i, 1
  %exitcond.not.i.i.i.i89 = icmp eq i64 %.0915.i.i.i.i, %i.aw
  br i1 %exitcond.not.i.i.i.i89, label %_ZNK12v8_inspector8String164findERKS0_m.exit, label %.lr.ph.i.i.i.i88, !llvm.loop !21

bb.o:                                             ; preds = %.lr.ph.i37.i.i.i
  %i.bc = add nuw i64 %.01216.i.i.i.i90, 1        ; 2 uses
  %exitcond.not.i38.i.i.i = icmp eq i64 %i.bc, %i.am
  br i1 %exitcond.not.i38.i.i.i, label %_ZNSt11char_traitsIDsE7compareEPKDsS2_m.exit.i.i.i92, label %.lr.ph.i37.i.i.i, !llvm.loop !22

.lr.ph.i37.i.i.i:                                 ; preds = %.lr.ph.i37.i.i.i.preheader, %bb.o
  %.01216.i.i.i.i90 = phi i64 [ %i.bc, %bb.o ], [ 0, %.lr.ph.i37.i.i.i.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.01216.i.i.i.i90
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %.01216.i.i.i.i90
  %i.bf = load i16, ptr %i.bd, align 2
  %i.bg = load i16, ptr %i.be, align 2
  %or.cond.not.i.i.i91 = icmp eq i16 %i.bg, %i.bf
  br i1 %or.cond.not.i.i.i91, label %bb.o, label %bb.p

_ZNSt11char_traitsIDsE7compareEPKDsS2_m.exit.i.i.i92: ; preds = %bb.o
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = ptrtoint ptr %i.ar to i64
end_hunk_0
begin_hunk_1_@_ZN12v8_inspector12_GLOBAL__N_116findMagicCommentERKNS_8String16ES3_b:bb.a
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.dj) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit114

_ZN12v8_inspector8String16D2Ev.exit114:           ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i113, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.not79 = icmp eq i64 %.1.i.i.i94, -1
  br i1 %.not79, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @_ZNK12v8_inspector8String169substringEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef 0, i64 noundef %.1.i.i.i94)
  %i.dk = load ptr, ptr %4, align 8               ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  %i.dn = load ptr, ptr %6, align 8               ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.dp = icmp eq ptr %i.dn, %i.do                ; 2 uses
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  br i1 %i.dp, label %bb.z, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.y
  br i1 %i.dp, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 8
  call void @llvm.assume(i1 %i.ds)
  switch i64 %i.dr, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i16, ptr %i.dn, align 2
  store i16 %i.dt, ptr %i.dk, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.du = shl nuw nsw i64 %i.dr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dk, ptr align 2 %i.dn, i64 %i.du, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dv = load i64, ptr %i.dq, align 8            ; 2 uses
  store i64 %i.dv, ptr %i.ce, align 8
  %i.dw = load ptr, ptr %4, align 8
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dv
  store i16 0, ptr %i.dx, align 2
  %.pre.i.i = load ptr, ptr %6, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  store ptr %i.dn, ptr %4, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dz = load <2 x i64>, ptr %i.dy, align 8
  store <2 x i64> %i.dz, ptr %i.ce, align 8
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i
  %i.ea = load i64, ptr %i.dl, align 8
  store ptr %i.dn, ptr %4, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ec = load <2 x i64>, ptr %i.eb, align 8
  store <2 x i64> %i.ec, ptr %i.ce, align 8
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dk, ptr %6, align 8
  store i64 %i.ea, ptr %i.do, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.do, ptr %6, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

_ZN12v8_inspector8String16aSEOS0_.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i, %bb.ac, %bb.ad
  %i.ed = phi ptr [ %i.dk, %bb.ac ], [ %i.do, %bb.ad ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ee, align 8
  store i16 0, ptr %i.ed, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.eg, ptr %i.eh, align 8
  %i.ei = load ptr, ptr %6, align 8               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZN12v8_inspector8String16D2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i115

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i115: ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit
  %i.el = load i64, ptr %i.ej, align 8
  %i.em = shl i64 %i.el, 1
  %i.en = add i64 %i.em, 2
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.en) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit117

_ZN12v8_inspector8String16D2Ev.exit117:           ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit117, %_ZN12v8_inspector8String16D2Ev.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZNK12v8_inspector8String1615stripWhiteSpaceEv(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %4) #10
  %i.eo = load ptr, ptr %4, align 8               ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  %i.er = load ptr, ptr %7, align 8               ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.et = icmp eq ptr %i.er, %i.es                ; 2 uses
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i123, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i118

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i123: ; preds = %bb.ae
  br i1 %i.et, label %bb.af, label %.thread.i.i124

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i118: ; preds = %bb.ae
  br i1 %i.et, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i119

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i118, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i123
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8            ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 8
  call void @llvm.assume(i1 %i.ew)
  switch i64 %i.ev, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ex = load i16, ptr %i.er, align 2
  store i16 %i.ex, ptr %i.eo, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121

bb.ah:                                            ; preds = %bb.af
  %i.ey = shl nuw nsw i64 %i.ev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.eo, ptr align 2 %i.er, i64 %i.ey, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ez = load i64, ptr %i.eu, align 8            ; 2 uses
  store i64 %i.ez, ptr %i.ce, align 8
  %i.fa = load ptr, ptr %4, align 8
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ez
  store i16 0, ptr %i.fb, align 2
  %.pre.i.i122 = load ptr, ptr %7, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit125

.thread.i.i124:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i123
  store ptr %i.er, ptr %4, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fd = load <2 x i64>, ptr %i.fc, align 8
  store <2 x i64> %i.fd, ptr %i.ce, align 8
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i119: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i118
  %i.fe = load i64, ptr %i.ep, align 8
  store ptr %i.er, ptr %4, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fg = load <2 x i64>, ptr %i.ff, align 8
  store <2 x i64> %i.fg, ptr %i.ce, align 8
  %.not.i.i120 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i120, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i119
  store ptr %i.eo, ptr %7, align 8
  store i64 %i.fe, ptr %i.es, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit125

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i119, %.thread.i.i124
  store ptr %i.es, ptr %7, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit125

_ZN12v8_inspector8String16aSEOS0_.exit125:        ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121, %bb.ai, %bb.aj
  %i.fh = phi ptr [ %i.eo, %bb.ai ], [ %i.es, %bb.aj ], [ %.pre.i.i122, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.fi, align 8
  store i16 0, ptr %i.fh, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 %i.fk, ptr %i.fl, align 8
  %i.fm = load ptr, ptr %7, align 8               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN12v8_inspector8String16D2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i126

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i126: ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit125
  %i.fp = load i64, ptr %i.fn, align 8
  %i.fq = shl i64 %i.fp, 1
  %i.fr = add i64 %i.fq, 2
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fr) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit128

_ZN12v8_inspector8String16D2Ev.exit128:           ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit125, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.fs = load i64, ptr %i.ce, align 8            ; 2 uses
  %.not8417.not = icmp eq i64 %i.fs, 0
  br i1 %.not8417.not, label %.critedge, label %.lr.ph19

.lr.ph19:                                         ; preds = %_ZN12v8_inspector8String16D2Ev.exit128, %bb.al
  %i.ft = phi i64 [ %i.fw, %bb.al ], [ %i.fs, %_ZN12v8_inspector8String16D2Ev.exit128 ]
  %.06618 = phi i64 [ %i.fx, %bb.al ], [ 0, %_ZN12v8_inspector8String16D2Ev.exit128 ] ; 2 uses
  %8 = load ptr, ptr %4, align 8
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.06618
  %i.fv = load i16, ptr %i.fu, align 2            ; 2 uses
  switch i16 %i.fv, label %bb.al [
    i16 39, label %bb.ak
    i16 34, label %bb.ak
    i16 32, label %bb.ak
    i16 9, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph19, %.lr.ph19, %.lr.ph19, %.lr.ph19
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.12) #10
  switch i16 %i.fv, label %._crit_edge [
    i16 39, label %.loopexit
    i16 34, label %.loopexit
    i16 32, label %.loopexit
    i16 9, label %.loopexit
  ]

._crit_edge:                                      ; preds = %bb.ak
  %.pre.a = load i64, ptr %i.ce, align 8
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %.lr.ph19
  %i.fw = phi i64 [ %.pre.a, %._crit_edge ], [ %i.ft, %.lr.ph19 ] ; 3 uses
  %i.fx = add nuw i64 %.06618, 1                  ; 2 uses
  %.not84 = icmp ult i64 %i.fx, %i.fw
  br i1 %.not84, label %.lr.ph19, label %.critedge, !llvm.loop !47

.critedge:                                        ; preds = %bb.al, %_ZN12v8_inspector8String16D2Ev.exit128
  %i.fy = phi i64 [ 0, %_ZN12v8_inspector8String16D2Ev.exit128 ], [ %i.fw, %bb.al ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.fz, ptr %0, align 8
  %9 = load ptr, ptr %4, align 8                  ; 2 uses
  %i.ga = icmp eq ptr %9, %i.ep
  br i1 %i.ga, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i129

bb.am:                                            ; preds = %.critedge
  %i.gb = icmp ult i64 %i.fy, 8
  call void @llvm.assume(i1 %i.gb)
  %i.gc = shl nuw nsw i64 %i.fy, 1
  %i.gd = add nuw nsw i64 %i.gc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fz, ptr noundef nonnull align 8 dereferenceable(1) %i.ep, i64 %i.gd, i1 false)
  br label %.loopexit.thread

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i129: ; preds = %.critedge
  store ptr %9, ptr %0, align 8
  %i.ge = load i64, ptr %i.ep, align 8
  store i64 %i.ge, ptr %i.fz, align 8
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i129, %bb.am
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fy, ptr %i.gf, align 8
  store i64 0, ptr %i.ce, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gh = load i64, ptr %i.fl, align 8
  store i64 %i.gh, ptr %i.gg, align 8
  br label %_ZN12v8_inspector8String16D2Ev.exit132

.loopexit:                                        ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %.pre28 = load ptr, ptr %4, align 8             ; 2 uses
  %i.gi = icmp eq ptr %.pre28, %i.ep
  br i1 %i.gi, label %_ZN12v8_inspector8String16D2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130: ; preds = %.loopexit
  %i.gj = load i64, ptr %i.ep, align 8
  %i.gk = shl i64 %i.gj, 1
  %i.gl = add i64 %i.gk, 2
  call void @_ZdlPvm(ptr noundef %.pre28, i64 noundef %i.gl) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit132

_ZN12v8_inspector8String16D2Ev.exit132:           ; preds = %.loopexit, %.loopexit.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.an

bb.an:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit132, %bb.q, %.split.us, %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit.thread
  ret void
}

declare void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector16findSourceMapURLERKNS_8String16Eb(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.1) #10
  %.val = load ptr, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  call fastcc void @_ZN12v8_inspector12_GLOBAL__N_116findMagicCommentERKNS_8String16ES3_b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.val, i64 %.val1, i1 noundef zeroext %2)
  %i.b = load ptr, ptr %3, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector11findDebugIdERKNS_8String16Eb(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.2) #10
  %.val = load ptr, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  call fastcc void @_ZN12v8_inspector12_GLOBAL__N_116findMagicCommentERKNS_8String16ES3_b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.val, i64 %.val1, i1 noundef zeroext %2)
  %i.b = load ptr, ptr %3, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN12v8_inspector7V8RegexC1EPNS_15V8InspectorImplERKNS_8String16Ebb(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN12v8_inspector15String16BuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN12v8_inspector15String16Builder6appendEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef signext) local_unnamed_addr #2

declare void @_ZN12v8_inspector15String16Builder6appendEDs(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext) local_unnamed_addr #2

declare void @_ZN12v8_inspector15String16Builder8toStringEv(ptr dead_on_unwind writable sret(%"class.v8_inspector::String16") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK12v8_inspector8String169substringEmm(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noalias !48 ; 3 uses
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i64 noundef %2, i64 noundef %i.b) #11, !noalias !48
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !alias.scope !48
  %i.e = load ptr, ptr %1, align 8, !noalias !48
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub nuw i64 %i.b, %2
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %3, i64 %i.g) ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %spec.select.i.i.i, 1 ; 3 uses
  %i.h = icmp ugt i64 %spec.select.i.i.i, 7
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i
  %i.i = icmp ugt i64 %spec.select.i.i.i, 4611686018427387903
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %spec.select.i.i.i, 4611686018427387903
  br i1 %i.j, label %bb.f, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #11
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.k = add nuw nsw i64 %.idx.i.i, 2
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #12 ; 2 uses
  store ptr %i.l, ptr %4, align 8, !alias.scope !48
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !alias.scope !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i16, ptr %i.f, align 2
  store i16 %i.n, ptr %i.m, align 2
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.m, ptr align 2 %i.f, i64 %.idx.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %spec.select.i.i.i, ptr %i.o, align 8, !alias.scope !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i
  store i16 0, ptr %i.p, align 2
  call void @_ZN12v8_inspector8String16C1EONSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit
  %i.s = load i64, ptr %i.d, align 8
  %i.t = shl i64 %i.s, 1
  %i.u = add i64 %i.t, 2
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #13
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

declare noundef i32 @_ZNK12v8_inspector7V8Regex5matchERKNS_8String16EiPi(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN12v8_inspector8String16C1EONSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIiN12v8_inspector8String16EESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
end_hunk_1
