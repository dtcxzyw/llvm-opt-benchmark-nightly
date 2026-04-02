begin_hunk_0
%"struct.llvh::AlignedCharArrayUnion.7" = type { %"struct.llvh::AlignedCharArray.1" }
%"struct.llvh::AlignedCharArray.1" = type { [16 x i8] }

@.str.1 = private unnamed_addr constant [24 x i8] c"Error: Unable to find `\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"' in PATH: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8    ; 5 uses
  %.not.i28 = icmp eq ptr %i.d, null
  br i1 %.not.i28, label %.thread.thread126, label %_ZN4llvh9StringRefC2EPKc.exit29

.thread.thread126:                                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br label %_ZN4llvh9StringRefC2EPKc.exit27

_ZN4llvh9StringRefC2EPKc.exit29:                  ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #12
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %.thread.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZN4llvh9StringRefC2EPKc.exit29
  %6 = load i32, ptr %i.d, align 1
  %7 = xor i32 %6, 1919102253
  %8 = getelementptr i8, ptr %i.d, i64 3
  %9 = load i32, ptr %8, align 1
  %10 = xor i32 %9, 1752392050
  %11 = or i32 %7, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %i.g = icmp eq i32 %13, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread82, label %.thread.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread82:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
end_hunk_1
begin_hunk_2
  br i1 %i.j, label %bb.ae, label %.thread

.thread.thread:                                   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZN4llvh9StringRefC2EPKc.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br label %bb.d

.thread:                                          ; preds = %bb.c
  %.pre = load ptr, ptr %.021, align 8, !tbaa !8  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %.not.i26 = icmp eq ptr %.pre, null
  br i1 %.not.i26, label %_ZN4llvh9StringRefC2EPKc.exit27, label %bb.d

end_hunk_2
begin_hunk_3
  %.02188122 = phi ptr [ %i.a, %.thread.thread ], [ %.021, %.thread ]
  %.02089120 = phi i1 [ false, %.thread.thread ], [ %i.c, %.thread ]
  %i.k = phi ptr [ %i.d, %.thread.thread ], [ %.pre, %.thread ] ; 2 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #12
  br label %_ZN4llvh9StringRefC2EPKc.exit27

_ZN4llvh9StringRefC2EPKc.exit27:                  ; preds = %.thread.thread126, %.thread, %bb.d
end_hunk_3
begin_hunk_4
  %.02089121 = phi i1 [ %.02089120, %bb.d ], [ %i.c, %.thread ], [ false, %.thread.thread126 ] ; 2 uses
  %i.m = phi ptr [ %i.k, %bb.d ], [ null, %.thread ], [ null, %.thread.thread126 ]
  %i.n = phi i64 [ %i.l, %bb.d ], [ 0, %.thread ], [ 0, %.thread.thread126 ]
  call void @_ZN4llvh3sys17findProgramByNameB5cxx11ENS_9StringRefENS_8ArrayRefIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %2, ptr %i.m, i64 %i.n, ptr null, i64 0) #11
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.q

bb.e:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit27
  %i.r = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #11 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
end_hunk_4
begin_hunk_5
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull @.str.1, i64 noundef 23) #11
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
end_hunk_5
begin_hunk_6
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit32, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #12 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 3 uses
end_hunk_6
begin_hunk_7
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.an = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull %i.ad, i64 noundef %i.ae) #11
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit32

bb.i:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
end_hunk_7
begin_hunk_8
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit32
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i31, ptr noundef nonnull @.str.2, i64 noundef 11) #11
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit32
end_hunk_8
begin_hunk_9

_ZN4llvh11raw_ostreamlsEPKc.exit36:               ; preds = %bb.k, %bb.l
  %.0.i.i35 = phi ptr [ %i.ay, %bb.k ], [ %.0.i.i31, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bb = load i8, ptr %i.o, align 8
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.m, label %bb.n
end_hunk_9
begin_hunk_10
  br label %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit36
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #13
  br label %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit

_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit: ; preds = %bb.m, %bb.n
end_hunk_10
begin_hunk_11
  %i.be = load ptr, ptr %.sroa.31.0.i, align 8, !tbaa !17, !noalias !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !19
  call void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.31.0.i, i32 noundef %.sroa.0.0.i) #11
  %i.bh = load ptr, ptr %3, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !26
  %i.bk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i35, ptr noundef %i.bh, i64 noundef %i.bj) #11 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 3 uses
end_hunk_11
begin_hunk_12
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit
  %i.bq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bk, ptr noundef nonnull @.str.3, i64 noundef 1) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

bb.p:                                             ; preds = %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit
end_hunk_12
begin_hunk_13
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !27
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit

bb.q:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit27
end_hunk_13
begin_hunk_14
  br i1 %i.by, label %bb.r, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
  unreachable

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit: ; preds = %bb.q
  %i.bz = zext nneg i32 %.02287125 to i64         ; 3 uses
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #16 ; 5 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bz ; 2 uses
  %.not = icmp eq i32 %.02287125, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_14
begin_hunk_15
  %.sroa.16.0.lcssa = phi ptr [ %i.cc, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.16.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.9.0.lcssa = phi ptr [ %i.cb, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.9.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.061.0.lcssa = phi ptr [ %i.cb, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.061.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cd, ptr %4, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
end_hunk_15
begin_hunk_16
  %i.cl = ashr exact i64 %i.ck, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.cm, align 8, !tbaa !29
  %i.cn = call noundef i32 @_ZN4llvh3sys14ExecuteAndWaitENS_9StringRefENS_8ArrayRefIS1_EENS_8OptionalIS3_EENS2_INS4_IS1_EEEEjjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr %i.cf, i64 %i.ch, ptr %.sroa.061.0.lcssa, i64 %i.cl, ptr noundef nonnull byval(%"class.llvh::Optional") align 8 %5, ptr null, i64 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #11 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.w, label %bb.ab

end_hunk_16
begin_hunk_17
  br i1 %.not.i, label %_ZN4llvh9StringRefC2EPKc.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.cr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cq) #12
  br label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %.lr.ph, %bb.s
end_hunk_17
begin_hunk_18
  br i1 %i.cw, label %bb.v, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #15
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
end_hunk_18
begin_hunk_19
  %.not.i.i.i.i42 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42)
  %i.dc = shl nuw nsw i64 %i.db, 4
  %i.dd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #16 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store ptr %i.cq, ptr %i.de, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
end_hunk_19
begin_hunk_20

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dd, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.061.095, i64 noundef %i.cv) #14
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.db
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit

end_hunk_20
begin_hunk_21
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

bb.w:                                             ; preds = %._crit_edge
  %i.di = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #11 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 3 uses
end_hunk_21
begin_hunk_22
  br i1 %i.dq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.di, ptr noundef nonnull @.str.4, i64 noundef 7) #11
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.y:                                             ; preds = %bb.w
end_hunk_22
begin_hunk_23
  %.0.i.i45 = phi ptr [ %i.dr, %bb.x ], [ %i.di, %bb.y ]
  %i.du = load ptr, ptr %4, align 8, !tbaa !22
  %i.dv = load i64, ptr %i.ce, align 8, !tbaa !26
  %i.dw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i45, ptr noundef %i.du, i64 noundef %i.dv) #11 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 3 uses
end_hunk_23
begin_hunk_24
  br i1 %i.eb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.ec = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dw, ptr noundef nonnull @.str.3, i64 noundef 1) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit50

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
end_hunk_24
begin_hunk_25
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.ac
  %i.ei = load i64, ptr %i.cd, align 8, !tbaa !27
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ek = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.el = sub i64 %i.ek, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.061.0.lcssa, i64 noundef %i.el) #14
  %i.em = zext i1 %.0.shrunk to i32
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit

end_hunk_25
begin_hunk_26
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !27
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #14
  br label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ad, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.c, %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
end_hunk_26
begin_hunk_27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_27
begin_hunk_28
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_28
