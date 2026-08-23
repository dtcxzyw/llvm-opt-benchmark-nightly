Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/colorprint?download=true
inline.NumInlined: 91
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9benchmark11ColorPrintfERSoNS_8LogColorEPKcz:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @_ZN9benchmark11ColorPrintfERSoNS_8LogColorEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark11ColorPrintfERSoNS_8LogColorEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %switch.tableidx = add i32 %1, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 7
  br i1 %i.a, label %switch.lookup, label %_ZN9benchmark12_GLOBAL__N_120GetPlatformColorCodeENS_8LogColorE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN9benchmark11ColorPrintfERSoNS_8LogColorEPKcP13__va_list_tag, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void (ptr, ptr, ...) @_ZN9benchmark12FormatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str, ptr noundef nonnull %switch.load)
  %i.c = load ptr, ptr %4, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %switch.lookup
  %i.g = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN9benchmark12_GLOBAL__N_120GetPlatformColorCodeENS_8LogColorE.exit

bb.b:                                             ; preds = %switch.lookup
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !19
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.d

_ZN9benchmark12_GLOBAL__N_120GetPlatformColorCodeENS_8LogColorE.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN9benchmark12FormatStringB5cxx11EPKcP13__va_list_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %2, ptr noundef %3)
  %i.r = load ptr, ptr %5, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit14 unwind label %bb.c

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit14: ; preds = %_ZN9benchmark12_GLOBAL__N_120GetPlatformColorCodeENS_8LogColorE.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit14
  %i.w = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !19
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit14, %_ZN9benchmark12_GLOBAL__N_120GetPlatformColorCodeENS_8LogColorE.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.c
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.pn = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN9benchmark15IsColorTerminalEv() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.18) #12 ; 17 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %.split21.us, label %.split

.split:                                           ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.2) #15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.split21.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(12) @.str.3) #15
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split21.us, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(15) @.str.4) #15
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.split21.us, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(7) @.str.5) #15
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.split21.us, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(16) @.str.6) #15
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.split21.us, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.7) #15
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.split21.us, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(14) @.str.8) #15
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.split21.us, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(13) @.str.9) #15
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.split21.us, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(22) @.str.10) #15
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.split21.us, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %.lr.ph.7
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.11) #15
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.split21.us, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %.lr.ph.8
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(7) @.str.12) #15
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.split21.us, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %.lr.ph.9
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(12) @.str.13) #15
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.split21.us, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %.lr.ph.10
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(10) @.str.14) #15
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.split21.us, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %.lr.ph.11
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.15) #15
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.split21.us, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %.lr.ph.12
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.16) #15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.split21.us, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %.lr.ph.13
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.17) #15
  %i.ag = icmp eq i32 %i.af, 0
  br label %.split21.us

.split21.us:                                      ; preds = %.lr.ph.14, %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %.lr.ph.10, %.lr.ph.11, %.lr.ph.12, %.lr.ph.13, %bb.a, %.split
  %.us-phi = phi i1 [ false, %bb.a ], [ true, %.split ], [ true, %.lr.ph.preheader ], [ true, %.lr.ph.11 ], [ true, %.lr.ph.7 ], [ true, %.lr.ph.1 ], [ %i.ag, %.lr.ph.14 ], [ true, %.lr.ph.2 ], [ true, %.lr.ph.8 ], [ true, %.lr.ph.3 ], [ true, %.lr.ph.13 ], [ true, %.lr.ph.4 ], [ true, %.lr.ph.10 ], [ true, %.lr.ph.5 ], [ true, %.lr.ph.12 ], [ true, %.lr.ph.6 ], [ true, %.lr.ph.9 ]
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ai = tail call i32 @fileno(ptr noundef %i.ah) #12
  %i.aj = tail call i32 @isatty(i32 noundef %i.ai) #12
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = and i1 %.us-phi, %i.ak
  ret i1 %i.al
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN9benchmark8internal7LogTypeE", !11, i64 0}
!11 = !{!"p1 _ZTSSo", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !18, i64 8, !6, i64 16}
!18 = !{!"long", !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!18, !18, i64 0}
!21 = !{!17, !15, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
end_hunk_0
