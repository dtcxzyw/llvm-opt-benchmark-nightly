Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/filetype.cc.X86_64?download=true
inline.NumInlined: 299
inline.NumDeleted: 145
begin_hunk_0_@_ZN4mold16get_machine_typeINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE:bb.a
  %.sroa.047.2.ph = phi i64 [ %.sroa.047.1, %bb.e ], [ %i.p, %bb.d ], [ %i.p, %bb.d ]
  %.pre82 = load ptr, ptr %3, align 8, !tbaa !39
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit, %bb.c
  %i.t = phi ptr [ %i.g, %bb.c ], [ %.pre82, %._crit_edge70.loopexit ] ; 3 uses
  %.lcssa = phi i1 [ true, %bb.c ], [ %.lcssa.ph, %._crit_edge70.loopexit ] ; 2 uses
  %.sroa.8.2 = phi ptr [ undef, %bb.c ], [ %.sroa.8.2.ph, %._crit_edge70.loopexit ]
  %.sroa.047.2 = phi i64 [ undef, %bb.c ], [ %.sroa.047.2.ph, %._crit_edge70.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge70
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #13
  br label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit: ; preds = %._crit_edge70, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %spec.select = select i1 %.lcssa, ptr @.str.6, ptr %.sroa.8.2
  %spec.select48 = select i1 %.lcssa, i64 0, i64 %.sroa.047.2
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN4mold25read_thin_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.252") align 8 %4, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2) #12
  %i.z = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.i
  %.sroa.040.054 = phi ptr [ %i.ak, %bb.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.047.353 = phi i64 [ %.sroa.047.4, %bb.i ], [ undef, %bb.g ]
  %.sroa.8.352 = phi ptr [ %.sroa.8.4, %bb.i ], [ undef, %bb.g ]
  %i.ad = load ptr, ptr %.sroa.040.054, align 8, !tbaa !37 ; 2 uses
  %i.ae = call noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %i.ad) ; 2 uses
  switch i32 %i.ae, label %bb.i [
    i32 7, label %bb.h
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph, %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.ah = call fastcc { i64, ptr } @_ZN4moldL12get_elf_typeEPh(ptr noundef %i.ag) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  switch i32 %i.ae, label %bb.i [
    i32 7, label %._crit_edge.loopexit
    i32 2, label %._crit_edge.loopexit
  ]

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.8.4 = phi ptr [ %.sroa.8.352, %.lr.ph ], [ %i.aj, %bb.h ] ; 2 uses
  %.sroa.047.4 = phi i64 [ %.sroa.047.353, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.040.054, i64 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.h, %bb.h, %bb.i
  %.lcssa51.ph = phi i1 [ true, %bb.i ], [ false, %bb.h ], [ false, %bb.h ]
  %.sroa.8.5.ph = phi ptr [ %.sroa.8.4, %bb.i ], [ %i.aj, %bb.h ], [ %i.aj, %bb.h ]
  %.sroa.047.5.ph = phi i64 [ %.sroa.047.4, %bb.i ], [ %i.ai, %bb.h ], [ %i.ai, %bb.h ]
  %.pre = load ptr, ptr %4, align 8, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.am = phi ptr [ %i.z, %bb.g ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa51 = phi i1 [ true, %bb.g ], [ %.lcssa51.ph, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.8.5 = phi ptr [ undef, %bb.g ], [ %.sroa.8.5.ph, %._crit_edge.loopexit ]
  %.sroa.047.5 = phi i64 [ undef, %bb.g ], [ %.sroa.047.5.ph, %._crit_edge.loopexit ]
  %.not.i.i.i38 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #13
  br label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39

_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %spec.select49 = select i1 %.lcssa51, ptr @.str.6, ptr %.sroa.8.5
  %spec.select50 = select i1 %.lcssa51, i64 0, i64 %.sroa.047.5
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %0, ptr %5, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.as, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.at, align 8, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.au, align 8, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = call { i64, ptr } @_ZN4mold6ScriptINS_6X86_64EE22get_script_output_typeEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #12 ; 2 uses
  %i.ax = extractvalue { i64, ptr } %i.aw, 0
  %i.ay = extractvalue { i64, ptr } %i.aw, 1
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !54 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #13
  br label %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit

_ZN4mold6ScriptINS_6X86_64EED2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit, %bb.a, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit, %bb.b
  %.sroa.8.6 = phi ptr [ %spec.select49, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39 ], [ %i.f, %bb.b ], [ %i.ay, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit ], [ @.str.6, %bb.a ], [ %spec.select, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit ]
  %.sroa.047.6 = phi i64 [ %spec.select50, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39 ], [ %i.e, %bb.b ], [ %i.ax, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit ], [ 0, %bb.a ], [ %spec.select48, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.047.6, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.8.6, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc { i64, ptr } @_ZN4moldL12get_elf_typeEPh(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !18
  %i.c = icmp eq i8 %i.b, 1                       ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18
  %i.f = icmp eq i8 %i.e, 2                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.0.copyload.i = load i16, ptr %i.g, align 1    ; 2 uses
  %i.h = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i)
  %.in = select i1 %i.c, i16 %.0.copyload.i, i16 %i.h
  switch i16 %.in, label %bb.p [
    i16 3, label %bb.q
    i16 62, label %bb.b
    i16 40, label %bb.c
    i16 183, label %bb.d
    i16 243, label %bb.e
    i16 20, label %bb.h
    i16 21, label %bb.i
    i16 22, label %bb.k
    i16 43, label %bb.l
    i16 4, label %bb.m
    i16 42, label %bb.n
    i16 258, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload35 = select i1 %i.c, i64 5, i64 7
  %.sroa.17.0.copyload48 = select i1 %i.c, ptr @.str.11, ptr @.str.12
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload36 = select i1 %i.c, i64 5, i64 7
  %.sroa.17.0.copyload49 = select i1 %i.c, ptr @.str.13, ptr @.str.14
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.17.0.copyload50 = select i1 %i.f, ptr @.str.15, ptr @.str.16
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %.sroa.17.0.copyload51 = select i1 %i.f, ptr @.str.17, ptr @.str.18
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i33 = load i32, ptr %i.i, align 1  ; 2 uses
  br i1 %i.c, label %.critedge28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = and i32 %.0.copyload.i33, 33554432
  %or.cond.not.not.not = icmp eq i32 %i.j, 0
  br i1 %or.cond.not.not.not, label %bb.q, label %bb.p

.critedge28:                                      ; preds = %bb.i
  %1 = trunc i32 %.0.copyload.i33 to i1
  br i1 %1, label %bb.p, label %bb.q

bb.k:                                             ; preds = %bb.a
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %.sroa.0.0.copyload45 = select i1 %i.c, i64 3, i64 5
  %.sroa.17.0.copyload58 = select i1 %i.c, ptr @.str.25, ptr @.str.26
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %.sroa.17.0.copyload59 = select i1 %i.f, ptr @.str.27, ptr @.str.28
  br label %bb.q

bb.p:                                             ; preds = %.critedge28, %bb.j, %bb.a
  br label %bb.q

bb.q:                                             ; preds = %.critedge28, %bb.j, %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.17.0 = phi ptr [ @.str.6, %bb.p ], [ %.sroa.17.0.copyload59, %bb.o ], [ @.str.10, %bb.b ], [ %.sroa.17.0.copyload48, %bb.c ], [ %.sroa.17.0.copyload49, %bb.d ], [ %.sroa.17.0.copyload50, %bb.f ], [ %.sroa.17.0.copyload51, %bb.g ], [ @.str.19, %bb.h ], [ @.str.21, %.critedge28 ], [ @.str.20, %bb.j ], [ @.str.9, %bb.a ], [ @.str.22, %bb.k ], [ @.str.23, %bb.l ], [ @.str.24, %bb.m ], [ %.sroa.17.0.copyload58, %bb.n ]
  %.sroa.0.0 = phi i64 [ 0, %bb.p ], [ 11, %bb.o ], [ 6, %bb.b ], [ %.sroa.0.0.copyload35, %bb.c ], [ %.sroa.0.0.copyload36, %bb.d ], [ 7, %bb.f ], [ 9, %bb.g ], [ 5, %bb.h ], [ 7, %.critedge28 ], [ 7, %bb.j ], [ 4, %bb.a ], [ 5, %bb.k ], [ 7, %bb.l ], [ 4, %bb.m ], [ %.sroa.0.0.copyload45, %bb.n ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.17.0, 1
  ret { i64, ptr } %.fca.1.insert
}

declare void @_ZN4mold24read_fat_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind writable sret(%"class.std::vector.252") align 8, ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #5

declare void @_ZN4mold25read_thin_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind writable sret(%"class.std::vector.252") align 8, ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #5

declare { i64, ptr } @_ZN4mold6ScriptINS_6X86_64EE22get_script_output_typeEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !4, i64 16}
!14 = !{!"bool", !4, i64 0}
!15 = !{!"p1 _ZTSN4mold10MappedFileE", !8, i64 0}
!16 = !{!"_ZTSN4mold10MappedFileE", !13, i64 0, !10, i64 32, !12, i64 40, !14, i64 48, !15, i64 56, !15, i64 64, !14, i64 72, !5, i64 76}
!17 = !{!16, !10, i64 32}
!18 = !{!4, !4, i64 0}
!19 = !{!"p2 _ZTSN4mold7CounterE", !9, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 16}
!23 = distinct !{!23, !31}
!24 = distinct !{!24, !31}
!25 = distinct !{!25, !31}
!26 = distinct !{!26, !31}
!27 = distinct !{!27, !31}
!28 = !{!16, !12, i64 40}
!29 = !{!13, !12, i64 8}
!30 = !{!13, !10, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !12, i64 0, !10, i64 8}
!33 = !{!32, !12, i64 0}
!34 = !{!32, !10, i64 8}
!35 = !{!"p2 _ZTSN4mold10MappedFileE", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!15, !15, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIPN4mold10MappedFileESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!39 = !{!38, !35, i64 0}
!40 = !{!38, !35, i64 16}
!41 = !{!"p1 _ZTSN4mold7ContextINS_6X86_64EEE", !8, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSN4mold13ReaderContextE", !8, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTSSt9once_flag", !5, i64 0}
!46 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !8, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !49, i64 0}
!51 = !{!"_ZTSN4mold6ScriptINS_6X86_64EEE", !41, i64 0, !43, i64 8, !15, i64 16, !45, i64 24, !50, i64 32}
!52 = !{!51, !15, i64 16}
!53 = !{!45, !5, i64 0}
!54 = !{!47, !46, i64 0}
!55 = !{!47, !46, i64 16}
end_hunk_0
