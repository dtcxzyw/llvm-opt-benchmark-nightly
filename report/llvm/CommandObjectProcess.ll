Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CommandObjectProcess?download=true
inline.NumInlined: 3121
inline.NumDeleted: 1770
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm18getAsSignedIntegerENS_9StringRefEjRx

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26CommandObjectProcessHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTV26CommandObjectProcessHandle, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN26CommandObjectProcessHandle14CommandOptionsE, i64 16), ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !39
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21, !inline_history !551
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !39
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21, !inline_history !551
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !232  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN26CommandObjectProcessHandle14CommandOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !39
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #21, !inline_history !551
  br label %_ZN26CommandObjectProcessHandle14CommandOptionsD2Ev.exit

_ZN26CommandObjectProcessHandle14CommandOptionsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZN12lldb_private7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(227) %i.a) #19, !inline_history !551
  tail call void @_ZN12lldb_private13CommandObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(329) dereferenceable(329) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26CommandObjectProcessHandleD0Ev(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTV26CommandObjectProcessHandle, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN26CommandObjectProcessHandle14CommandOptionsE, i64 16), ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !39
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21, !inline_history !1115
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !39
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21, !inline_history !1115
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !232  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN26CommandObjectProcessHandleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !39
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #21, !inline_history !1115
  br label %_ZN26CommandObjectProcessHandleD2Ev.exit

_ZN26CommandObjectProcessHandleD2Ev.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  tail call void @_ZN12lldb_private7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(227) %i.a) #19, !inline_history !1115
  tail call void @_ZN12lldb_private13CommandObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(329) dereferenceable(568) %0) #19, !inline_history !1116
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 568) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN26CommandObjectProcessHandle10GetOptionsEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26CommandObjectProcessHandle9DoExecuteERN12lldb_private4ArgsERNS0_19CommandReturnObjectE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(396) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.std::shared_ptr.644", align 8 ; 13 uses
  %i.e = tail call noundef ptr @_ZN12lldb_private13CommandObject9GetTargetEv(ptr noundef nonnull align 8 dereferenceable(329) %0) #19 ; 5 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK12lldb_private6Target12GetProcessSPEv(ptr noundef nonnull align 8 dereferenceable(2200) %i.e) #19 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !246  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.i, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !40
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !40
  br label %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.p = load i64, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !tbaa !197
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !232
  %i.t = call noundef zeroext i1 @_ZN12lldb_private15OptionArgParser9ToBooleanEN4llvm9StringRefEbPb(ptr %i.s, i64 %i.p, i1 noundef zeroext false, ptr noundef nonnull %i.b) #19
  %i.u = load i8, ptr %i.b, align 1, !tbaa !197, !range !229, !noundef !230
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %.sroa.0114.0.insert.ext = zext i1 %i.t to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN12lldb_private19CommandReturnObject11AppendErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(396) %2, ptr nonnull @.str.126, i64 67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bo

bb.g:                                             ; preds = %.thread, %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit
  %.sroa.0133.1 = phi i8 [ undef, %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit ], [ %.sroa.0114.0.insert.ext, %.thread ] ; 3 uses
  %.sroa.6135.1 = phi i8 [ 0, %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit ], [ 1, %.thread ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.x = load i64, ptr %i.w, align 8, !tbaa !115  ; 2 uses
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i8 0, ptr %i.c, align 1, !tbaa !197
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !232
  %i.ab = call noundef zeroext i1 @_ZN12lldb_private15OptionArgParser9ToBooleanEN4llvm9StringRefEbPb(ptr %i.aa, i64 %i.x, i1 noundef zeroext false, ptr noundef nonnull %i.c) #19
  %i.ac = load i8, ptr %i.c, align 1, !tbaa !197, !range !229, !noundef !230
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.thread145, label %bb.i

.thread145:                                       ; preds = %bb.h
  %.sroa.0107.0.insert.ext = zext i1 %i.ab to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN12lldb_private19CommandReturnObject11AppendErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(396) %2, ptr nonnull @.str.127, i64 67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.bo

bb.j:                                             ; preds = %.thread145, %bb.g
  %.sroa.0127.1 = phi i8 [ undef, %bb.g ], [ %.sroa.0107.0.insert.ext, %.thread145 ] ; 3 uses
  %.sroa.6129.1 = phi i8 [ 0, %bb.g ], [ 1, %.thread145 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !115 ; 2 uses
  %4 = icmp eq i64 %i.af, 0                       ; 2 uses
  br i1 %4, label %.thread151, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i8 0, ptr %i.d, align 1, !tbaa !197
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !232
  %i.ai = call noundef zeroext i1 @_ZN12lldb_private15OptionArgParser9ToBooleanEN4llvm9StringRefEbPb(ptr %i.ah, i64 %i.af, i1 noundef zeroext false, ptr noundef nonnull %i.d) #19
  %i.aj = load i8, ptr %i.d, align 1, !tbaa !197, !range !229, !noundef !230
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN12lldb_private19CommandReturnObject11AppendErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(396) %2, ptr nonnull @.str.128, i64 69) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.bo

bb.m:                                             ; preds = %bb.k
  %.sroa.0102.0.insert.ext = zext i1 %i.ai to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.thread151

.thread151:                                       ; preds = %bb.m, %bb.j
  %.sroa.6.1155 = phi i8 [ 0, %bb.j ], [ 1, %bb.m ] ; 3 uses
  %.sroa.0121.1154 = phi i8 [ undef, %bb.j ], [ %.sroa.0102.0.insert.ext, %bb.m ] ; 3 uses
  %i.al = trunc nuw i8 %.sroa.6135.1 to i1        ; 3 uses
  %i.am = or i8 %.sroa.6129.1, %.sroa.6135.1
  %5 = or i8 %i.am, %.sroa.6.1155                 ; 2 uses
  %.not75 = icmp ne i8 %5, 0                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !1120, !range !229, !noundef !230
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.not = and i1 %.not75, %i.ap
  br i1 %or.cond.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread151
  call void @_ZN12lldb_private19CommandReturnObject11AppendErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(396) %2, ptr nonnull @.str.129, i64 48) #19
  br label %bb.bo

bb.o:                                             ; preds = %.thread151
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !497 ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !498   ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = lshr exact i64 %i.av, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.not170 = icmp eq ptr %i.g, null               ; 2 uses
  br i1 %.not170, label %_ZNSt10shared_ptrIN12lldb_private11UnixSignalsEEaSERKS2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN12lldb_private7Process14GetUnixSignalsEv(ptr noundef nonnull align 8 dereferenceable(3224) %i.g) #19 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !550
  store ptr %i.ay, ptr %3, align 8, !tbaa !550
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i78, label %_ZNSt10shared_ptrIN12lldb_private11UnixSignalsEEaSERKS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i79 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i79, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.q
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !40
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !40
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.q
  %i.bg = atomicrmw volatile add ptr %i.bc, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !34 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bh, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !30
  %i.bm = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #19, !inline_history !1117
  %i.bp = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #19, !inline_history !1117
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i9.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i9.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.bk, %bb.u ], [ %i.bu, %bb.v ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.w, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !41

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !34
  br label %_ZNSt10shared_ptrIN12lldb_private11UnixSignalsEEaSERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private11UnixSignalsEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.p, %bb.o
  %i.bw = load i8, ptr %i.an, align 8, !tbaa !1120, !range !229, !noundef !230
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private11UnixSignalsEEaSERKS2_.exit
  %i.by = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private19CommandReturnObject15GetOutputStreamEv(ptr noundef nonnull align 8 dereferenceable(396) %2)
  call void @_ZN12lldb_private6Target17PrintDummySignalsERNS_6StreamERNS_4ArgsE(ptr noundef nonnull align 8 dereferenceable(2200) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.by, ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  call void @_ZN12lldb_private19CommandReturnObject9SetStatusEN4lldb12ReturnStatusE(ptr noundef nonnull align 8 dereferenceable(396) %2, i32 noundef 2) #19
  br label %bb.bh

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private11UnixSignalsEEaSERKS2_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !1121, !range !229, !noundef !230
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @_ZN12lldb_private6Target17ClearDummySignalsERNS_4ArgsE(ptr noundef nonnull align 8 dereferenceable(2200) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 562
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !1122, !range !229, !noundef !230
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = call noundef nonnull align 8 dereferenceable(2200) ptr @_ZN12lldb_private13CommandObject14GetDummyTargetEv(ptr noundef nonnull align 8 dereferenceable(329) %0) #19
  call void @_ZN12lldb_private6Target17ClearDummySignalsERNS_4ArgsE(ptr noundef nonnull align 8 dereferenceable(2200) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @_ZN12lldb_private19CommandReturnObject9SetStatusEN4lldb12ReturnStatusE(ptr noundef nonnull align 8 dereferenceable(396) %2, i32 noundef 1) #19
  br label %bb.bh

bb.ac:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.ar, %i.as
  br i1 %.not, label %bb.av, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr %1, align 8, !tbaa !1123  ; 2 uses
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !1123 ; 2 uses
  %.not171176 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not171176, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.ci = trunc nuw i8 %.sroa.0133.1 to i1
  %i.cj = trunc nuw i8 %.sroa.6129.1 to i1
  %i.ck = trunc nuw i8 %.sroa.0127.1 to i1
  %i.cl = xor i1 %i.ck, true
  %6 = trunc nuw i8 %.sroa.6.1155 to i1
  %i.cm = trunc nuw i8 %.sroa.0121.1154 to i1
  %i.cn = trunc i64 %i.aw to i32
  %i.co = zext i8 %.sroa.0127.1 to i32
  %.0.i = select i1 %i.y, i32 -1, i32 %i.co
  %i.cp = zext i8 %.sroa.0121.1154 to i32
  %.0.i83 = select i1 %4, i32 -1, i32 %i.cp
  %i.cq = zext i8 %.sroa.0133.1 to i32
  %.0.i85 = select i1 %i.q, i32 -1, i32 %i.cq
  %.pre = load ptr, ptr %3, align 8, !tbaa !550
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.au
  %i.cr = phi ptr [ %.pre, %.lr.ph ], [ %i.dm, %bb.au ] ; 4 uses
  %.066178 = phi i32 [ 0, %.lr.ph ], [ %.470.ph, %bb.au ] ; 2 uses
  %.sroa.097.0177 = phi ptr [ %i.cg, %.lr.ph ], [ %i.dn, %bb.au ] ; 4 uses
  %.not172 = icmp eq ptr %i.cr, null
  %i.cs = load ptr, ptr %.sroa.097.0177, align 8, !tbaa !250 ; 4 uses
  br i1 %.not172, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = call noundef i32 @_ZNK12lldb_private11UnixSignals23GetSignalNumberFromNameEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, ptr noundef %i.cs) #19 ; 4 uses
  %.not77.not = icmp eq i32 %i.ct, 2147483647
  br i1 %.not77.not, label %.thread156, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.al, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cu = load ptr, ptr %3, align 8, !tbaa !550   ; 2 uses
  %i.cv = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals13SetShouldStopEib(ptr noundef nonnull align 8 dereferenceable(64) %i.cu, i32 noundef %i.ct, i1 noundef zeroext %i.ci) #19 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cw = phi ptr [ %i.cu, %bb.ah ], [ %i.cr, %bb.ag ]
  br i1 %i.cj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load ptr, ptr %3, align 8, !tbaa !550   ; 2 uses
  %i.cy = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals17SetShouldSuppressEib(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, i32 noundef %i.ct, i1 noundef zeroext %i.cl) #19 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cz = phi ptr [ %i.cx, %bb.aj ], [ %i.cw, %bb.ai ]
  br i1 %6, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.da = load ptr, ptr %3, align 8, !tbaa !550   ; 2 uses
  %i.db = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals15SetShouldNotifyEib(ptr noundef nonnull align 8 dereferenceable(64) %i.da, i32 noundef %i.ct, i1 noundef zeroext %i.cm) #19 ; 0 uses
  br label %bb.am

.thread156:                                       ; preds = %bb.af
  %i.dc = load ptr, ptr %.sroa.097.0177, align 8, !tbaa !250
  call void (ptr, ptr, ...) @_ZN12lldb_private19CommandReturnObject21AppendErrorWithFormatEPKcz(ptr noundef nonnull align 8 dereferenceable(396) %2, ptr noundef nonnull @.str.130, ptr noundef %i.dc) #19
  br label %bb.au

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.dd = phi ptr [ %i.cz, %bb.ak ], [ %i.da, %bb.al ]
  %i.de = add nsw i32 %.066178, 1
  br label %bb.ar

bb.an:                                            ; preds = %bb.ae
  %.not.i = icmp eq ptr %i.cs, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.df = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cs) #19
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.an, %bb.ao
  %.sroa.0.0.i = phi i64 [ %i.df, %bb.ao ], [ 0, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.dg = call noundef zeroext i1 @_ZN4llvm18getAsSignedIntegerENS_9StringRefEjRx(ptr %i.cs, i64 %.sroa.0.0.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  br i1 %i.dg, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !523
  %i.di = add i64 %i.dh, 2147483648
  %.not.i.i = icmp ult i64 %i.di, 4294967296
  br i1 %.not.i.i, label %.thread165, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.am
  %i.dj = phi ptr [ %i.dd, %bb.am ], [ null, %bb.aq ] ; 2 uses
  %.369 = phi i32 [ %i.de, %bb.am ], [ %i.cn, %bb.aq ] ; 2 uses
  br i1 %.not75, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.dk = load ptr, ptr %.sroa.097.0177, align 8, !tbaa !250 ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i80, label %_ZNK12lldb_private4Args8ArgEntry3refEv.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #19
  br label %_ZNK12lldb_private4Args8ArgEntry3refEv.exit

_ZNK12lldb_private4Args8ArgEntry3refEv.exit:      ; preds = %bb.as, %bb.at
  %.sroa.0.0.i.i = phi i64 [ %i.dl, %bb.at ], [ 0, %bb.as ]
  call void @_ZN12lldb_private6Target14AddDummySignalEN4llvm9StringRefENS_8LazyBoolES3_S3_(ptr noundef nonnull align 8 dereferenceable(2200) %i.e, ptr %i.dk, i64 %.sroa.0.0.i.i, i32 noundef %.0.i, i32 noundef %.0.i83, i32 noundef %.0.i85) #19
  br label %bb.au

.thread165:                                       ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void (ptr, ptr, ...) @_ZN12lldb_private19CommandReturnObject21AppendErrorWithFormatEPKcz(ptr noundef nonnull align 8 dereferenceable(396) %2, ptr noundef nonnull @.str.131) #19
  br label %bb.bh

bb.au:                                            ; preds = %.thread156, %_ZNK12lldb_private4Args8ArgEntry3refEv.exit, %bb.ar
  %i.dm = phi ptr [ %i.dj, %bb.ar ], [ %i.dj, %_ZNK12lldb_private4Args8ArgEntry3refEv.exit ], [ %i.cr, %.thread156 ]
  %.470.ph = phi i32 [ %.369, %bb.ar ], [ %.369, %_ZNK12lldb_private4Args8ArgEntry3refEv.exit ], [ %.066178, %.thread156 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.097.0177, i64 16 ; 2 uses
  %.not171 = icmp eq ptr %i.dn, %i.ch
  br i1 %.not171, label %.loopexit, label %bb.ae

bb.av:                                            ; preds = %bb.ac
  %7 = trunc nuw i8 %.sroa.6.1155 to i1
  %or.cond167.not173 = icmp eq i8 %5, 0
  %brmerge169 = or i1 %.not170, %or.cond167.not173
  br i1 %brmerge169, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !251, !nonnull !230, !align !252
  %i.dq = call noundef zeroext i1 @_ZN12lldb_private18CommandInterpreter7ConfirmEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(840) %i.dp, ptr nonnull @.str.132, i64 45, i1 noundef zeroext false) #19
  br i1 %i.dq, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.dr = load ptr, ptr %3, align 8, !tbaa !550   ; 13 uses
  %i.ds = call noundef i32 @_ZNK12lldb_private11UnixSignals20GetFirstSignalNumberEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dr) #19 ; 6 uses
  %.not76179 = icmp eq i32 %i.ds, 2147483647
  br i1 %.not76179, label %.loopexit, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.ax
  %i.dt = trunc nuw i8 %.sroa.0121.1154 to i1
  %i.du = trunc nuw i8 %.sroa.0133.1 to i1        ; 3 uses
  %i.dv = trunc nuw i8 %.sroa.6129.1 to i1        ; 3 uses
  %i.dw = trunc nuw i8 %.sroa.0127.1 to i1
  %i.dx = xor i1 %i.dw, true                      ; 3 uses
  br i1 %7, label %.lr.ph181.split.us, label %.lr.ph181.split

.lr.ph181.split.us:                               ; preds = %.lr.ph181, %bb.bb
  %.0180.us = phi i32 [ %i.eb, %bb.bb ], [ %i.ds, %.lr.ph181 ] ; 4 uses
  %i.dy = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals15SetShouldNotifyEib(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us, i1 noundef zeroext %i.dt) #19 ; 0 uses
  br i1 %i.al, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph181.split.us
  %i.dz = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals13SetShouldStopEib(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us, i1 noundef zeroext %i.du) #19 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph181.split.us
  br i1 %i.dv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ea = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals17SetShouldSuppressEib(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us, i1 noundef zeroext %i.dx) #19 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.eb = call noundef i32 @_ZNK12lldb_private11UnixSignals19GetNextSignalNumberEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us) #19 ; 2 uses
  %.not76.us = icmp eq i32 %i.eb, 2147483647
  br i1 %.not76.us, label %.loopexit, label %.lr.ph181.split.us, !llvm.loop !1118

.lr.ph181.split:                                  ; preds = %.lr.ph181
  br i1 %i.al, label %.lr.ph181.split.split.us, label %.lr.ph181.split.split

.lr.ph181.split.split.us:                         ; preds = %.lr.ph181.split
  br i1 %i.dv, label %.lr.ph181.split.split.us.split.us, label %.lr.ph181.split.split.us.split

.lr.ph181.split.split.us.split.us:                ; preds = %.lr.ph181.split.split.us, %.lr.ph181.split.split.us.split.us
  %.0180.us182.us = phi i32 [ %i.ee, %.lr.ph181.split.split.us.split.us ], [ %i.ds, %.lr.ph181.split.split.us ] ; 3 uses
  %i.ec = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals13SetShouldStopEib(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us182.us, i1 noundef zeroext %i.du) #19 ; 0 uses
  %i.ed = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals17SetShouldSuppressEib(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us182.us, i1 noundef zeroext %i.dx) #19 ; 0 uses
  %i.ee = call noundef i32 @_ZNK12lldb_private11UnixSignals19GetNextSignalNumberEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us182.us) #19 ; 2 uses
  %.not76.us183.us = icmp eq i32 %i.ee, 2147483647
  br i1 %.not76.us183.us, label %.loopexit, label %.lr.ph181.split.split.us.split.us, !llvm.loop !1118

.lr.ph181.split.split.us.split:                   ; preds = %.lr.ph181.split.split.us, %.lr.ph181.split.split.us.split
  %.0180.us182 = phi i32 [ %i.eg, %.lr.ph181.split.split.us.split ], [ %i.ds, %.lr.ph181.split.split.us ] ; 2 uses
  %i.ef = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals13SetShouldStopEib(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us182, i1 noundef zeroext %i.du) #19 ; 0 uses
  %i.eg = call noundef i32 @_ZNK12lldb_private11UnixSignals19GetNextSignalNumberEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us182) #19 ; 2 uses
  %.not76.us183 = icmp eq i32 %i.eg, 2147483647
  br i1 %.not76.us183, label %.loopexit, label %.lr.ph181.split.split.us.split, !llvm.loop !1118

.lr.ph181.split.split:                            ; preds = %.lr.ph181.split
  br i1 %i.dv, label %.lr.ph181.split.split.split.us, label %.lr.ph181.split.split.split

.lr.ph181.split.split.split.us:                   ; preds = %.lr.ph181.split.split, %.lr.ph181.split.split.split.us
  %.0180.us184 = phi i32 [ %i.ei, %.lr.ph181.split.split.split.us ], [ %i.ds, %.lr.ph181.split.split ] ; 2 uses
  %i.eh = call noundef zeroext i1 @_ZN12lldb_private11UnixSignals17SetShouldSuppressEib(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us184, i1 noundef zeroext %i.dx) #19 ; 0 uses
  %i.ei = call noundef i32 @_ZNK12lldb_private11UnixSignals19GetNextSignalNumberEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180.us184) #19 ; 2 uses
  %.not76.us185 = icmp eq i32 %i.ei, 2147483647
  br i1 %.not76.us185, label %.loopexit, label %.lr.ph181.split.split.split.us, !llvm.loop !1118

.lr.ph181.split.split.split:                      ; preds = %.lr.ph181.split.split, %.lr.ph181.split.split.split
  %.0180 = phi i32 [ %i.ej, %.lr.ph181.split.split.split ], [ %i.ds, %.lr.ph181.split.split ]
  %i.ej = call noundef i32 @_ZNK12lldb_private11UnixSignals19GetNextSignalNumberEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %.0180) #19 ; 2 uses
  %.not76 = icmp eq i32 %i.ej, 2147483647
  br i1 %.not76, label %.loopexit, label %.lr.ph181.split.split.split, !llvm.loop !1118

.loopexit:                                        ; preds = %bb.au, %.lr.ph181.split.split.split, %.lr.ph181.split.split.split.us, %.lr.ph181.split.split.us.split, %.lr.ph181.split.split.us.split.us, %bb.bb, %bb.ad, %bb.ax, %bb.av, %bb.aw
  %.672 = phi i32 [ 0, %bb.ax ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %.lr.ph181.split.split.us.split ], [ 0, %bb.bb ], [ 0, %.lr.ph181.split.split.us.split.us ], [ 0, %.lr.ph181.split.split.split.us ], [ 0, %.lr.ph181.split.split.split ], [ 0, %bb.ad ], [ %.470.ph, %bb.au ] ; 2 uses
  %i.ek = load ptr, ptr %3, align 8, !tbaa !550
  %.not173 = icmp eq ptr %i.ek, null
  %i.el = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private19CommandReturnObject15GetOutputStreamEv(ptr noundef nonnull align 8 dereferenceable(396) %2) ; 2 uses
  br i1 %.not173, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  call void @_ZN26CommandObjectProcessHandle22PrintSignalInformationERN12lldb_private6StreamERNS0_4ArgsEiRKSt10shared_ptrINS0_11UnixSignalsEE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.el, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.672, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.be

bb.bd:                                            ; preds = %.loopexit
  call void @_ZN12lldb_private6Target17PrintDummySignalsERNS_6StreamERNS_4ArgsE(ptr noundef nonnull align 8 dereferenceable(2200) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.el, ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.em = icmp sgt i32 %.672, 0
  br i1 %i.em, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @_ZN12lldb_private19CommandReturnObject9SetStatusEN4lldb12ReturnStatusE(ptr noundef nonnull align 8 dereferenceable(396) %2, i32 noundef 2) #19
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  call void @_ZN12lldb_private19CommandReturnObject9SetStatusEN4lldb12ReturnStatusE(ptr noundef nonnull align 8 dereferenceable(396) %2, i32 noundef 6) #19
  br label %bb.bh

bb.bh:                                            ; preds = %.thread165, %bb.bf, %bb.bg, %bb.ab, %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !34 ; 8 uses
  %.not.i.i87 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i87, label %_ZNSt12__shared_ptrIN12lldb_private11UnixSignalsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 4294967297
  %i.es = trunc i64 %i.eq to i32                  ; 2 uses
  br i1 %i.er, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.ep, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 0, ptr %i.et, align 4, !tbaa !30
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #19, !inline_history !11
  %i.ex = load ptr, ptr %i.eo, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #19, !inline_history !11
  br label %_ZNSt12__shared_ptrIN12lldb_private11UnixSignalsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bk:                                            ; preds = %bb.bi
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i88 = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i88, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fb = add nsw i32 %i.es, -1
  store i32 %i.fb, ptr %i.ep, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.fc = atomicrmw volatile add ptr %i.ep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i = phi i32 [ %i.es, %bb.bl ], [ %i.fc, %bb.bm ]
  %i.fd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fd, label %bb.bn, label %_ZNSt12__shared_ptrIN12lldb_private11UnixSignalsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #19
  br label %_ZNSt12__shared_ptrIN12lldb_private11UnixSignalsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11UnixSignalsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bh, %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bo

bb.bo:                                            ; preds = %bb.l, %bb.i, %bb.f, %bb.n, %_ZNSt12__shared_ptrIN12lldb_private11UnixSignalsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.fe, align 8, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.fi, align 4, !tbaa !30
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #19, !inline_history !5
  %i.fm = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #19, !inline_history !5
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.br:                                            ; preds = %bb.bp
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i90 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i90, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fq = add nsw i32 %i.fh, -1
  store i32 %i.fq, ptr %i.fe, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91

bb.bt:                                            ; preds = %bb.br
  %i.fr = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i92 = phi i32 [ %i.fh, %bb.bs ], [ %i.fr, %bb.bt ]
  %i.fs = icmp eq i32 %.0.i.i.i.i92, 1
  br i1 %i.fs, label %bb.bu, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #19
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bo, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91, %bb.bu
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26CommandObjectProcessHandle14CommandOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(227) dereferenceable(227) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN26CommandObjectProcessHandle14CommandOptionsE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
