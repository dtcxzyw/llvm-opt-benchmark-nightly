Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/log_reader?download=true
inline.NumInlined: 1097
inline.NumDeleted: 449
begin_hunk_0_@_ZN7rocksdb3log6Reader17UnmarkEOFInternalEv:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %i.ao, align 1, !tbaa !73
  br label %bb.l

bb.g:                                             ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  %i.ap = load ptr, ptr %1, align 8, !tbaa !70    ; 2 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !69  ; 2 uses
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 2 uses
  %.not17 = icmp eq ptr %i.ap, %i.as
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.ap, i64 %i.ac, i1 false)
  %.pre25 = load ptr, ptr %i.i, align 8, !tbaa !69
  %.pre26 = load i64, ptr %i.a, align 8, !tbaa !127
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi i64 [ %.pre26, %bb.h ], [ %i.ar, %bb.g ]
  %i.au = phi ptr [ %.pre25, %bb.h ], [ %i.aq, %bb.g ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.f
  %i.aw = add i64 %i.at, %i.ac                    ; 2 uses
  %i.ax = sub i64 %i.aw, %i.f
  store ptr %i.av, ptr %i.c, align 8, !tbaa !93
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !77
  %i.ay = icmp ult i64 %i.ac, %i.g
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.az, align 8, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %storemerge = phi i64 [ %i.aw, %bb.j ], [ 0, %bb.i ]
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !127
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit
  %i.ba = phi ptr [ %i.ab, %bb.k ], [ %.pre27, %_ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit ] ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i21, label %_ZN7rocksdb6StatusD2Ev.exit23, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i22

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i22: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit23

_ZN7rocksdb6StatusD2Ev.exit23:                    ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @_ZN7rocksdb20SequentialFileReader4ReadEmPNS_5SliceEPcNS_3Env10IOPriorityE(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef nonnull align 8 dereferenceable(169), i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb3log6Reader8ReadMoreEPmPh(ptr noundef nonnull align 8 dereferenceable(288) initializes((56, 64)) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %4 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !72, !range !101, !noundef !102
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !73, !range !101, !noundef !102
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.i, label %_ZN7rocksdb6StatusC2EOS0_.exit

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr @.str.30, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  call void @_ZN7rocksdb20SequentialFileReader4ReadEmPNS_5SliceEPcNS_3Env10IOPriorityE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %4, ptr noundef nonnull align 8 dereferenceable(169) %i.j, i64 noundef 32768, ptr noundef nonnull %i.g, ptr noundef %i.l, i32 noundef 4)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = load <4 x i8>, ptr %4, align 8, !tbaa !22
  %i.o = load i8, ptr %4, align 8, !tbaa !128
  store <4 x i8> %i.n, ptr %3, align 8, !tbaa !22
  store <4 x i8> zeroinitializer, ptr %4, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !78, !range !101, !noundef !102
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.q, ptr %i.r, align 4, !tbaa !117
  store i8 0, ptr %i.p, align 4, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.t, ptr %i.u, align 1, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 4 uses
  store ptr %i.w, ptr %i.m, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.x = load i64, ptr %i.h, align 8, !tbaa !71   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !95
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !95
  %i.ab = icmp eq i8 %i.o, 0                      ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  store ptr @.str.30, ptr %i.g, align 8, !tbaa !70
  store i64 0, ptr %i.h, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 32768, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 72057594037927935)
          to label %._ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit_crit_edge unwind label %bb.e, !inline_history !96

._ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit_crit_edge: ; preds = %bb.d
  %.pre.pre = load ptr, ptr %i.m, align 8, !tbaa !93
  br label %_ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit

_ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit: ; preds = %._ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit_crit_edge, %bb.c
  %.pre = phi ptr [ %.pre.pre, %._ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit_crit_edge ], [ %i.w, %bb.c ]
  store i8 1, ptr %i.d, align 1, !tbaa !73
  store i8 -124, ptr %2, align 1, !tbaa !22
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !93  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i7, label %_ZN7rocksdb6StatusD2Ev.exit9, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit9

_ZN7rocksdb6StatusD2Ev.exit9:                     ; preds = %bb.e, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.ah

bb.f:                                             ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  %i.aj = icmp ult i64 %i.x, 32768
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.a, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.x, ptr %i.ak, align 8, !tbaa !127
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit
  %i.al = phi ptr [ %i.w, %bb.g ], [ %i.w, %bb.f ], [ %.pre, %_ZN7rocksdb3log6Reader10ReportDropEmRKNS_6StatusEm.exit ] ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.al, null
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusD2Ev.exit12, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.al) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit12

_ZN7rocksdb6StatusD2Ev.exit12:                    ; preds = %bb.h, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.l

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !71 ; 2 uses
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.ao, ptr %1, align 8, !tbaa !77
  store ptr @.str.30, ptr %i.am, align 8, !tbaa !70
  store i64 0, ptr %i.an, align 8, !tbaa !71
  store i8 -122, ptr %2, align 1, !tbaa !22
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr @.str.30, ptr %i.am, align 8, !tbaa !70
  store i8 -124, ptr %2, align 1, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZN7rocksdb6StatusD2Ev.exit12
  %.1 = phi i1 [ false, %bb.j ], [ false, %bb.k ], [ %i.ab, %_ZN7rocksdb6StatusD2Ev.exit12 ]
  ret i1 %.1
}

declare void @_ZN7rocksdb19StreamingUncompress6CreateENS_15CompressionTypeEjm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8, i8 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb3log22FragmentBufferedReader10ReadRecordEPNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15WALRecoveryModeEPm(ptr noundef nonnull align 8 dereferenceable(321) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr noundef initializes((8, 16)) %2, i8 noundef signext %3, ptr nofree readnone captures(none) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %20 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %25 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %26 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %27 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %28 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %29 = alloca %"class.std::unique_ptr.2", align 8 ; 6 uses
  %30 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %31 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %32 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.a = alloca [22 x i8], align 16               ; 8 uses
  %33 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %34 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %35 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %36 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %37 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %38 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %39 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %40 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %41 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %42 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %43 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %44 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %45 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %46 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %47 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %48 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %49 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %50 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %51 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %52 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %53 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %54 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %55 = alloca %"class.rocksdb::Slice", align 8   ; 18 uses
  %56 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %57 = alloca %"class.rocksdb::PredecessorWALInfo", align 8 ; 9 uses
  %58 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %59 = alloca %"class.rocksdb::UserDefinedTimestampSizeRecord", align 8 ; 9 uses
  %60 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %61 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr @.str.30, ptr %1, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !80
  %i.f = load ptr, ptr %2, align 8, !tbaa !92
  store i8 0, ptr %i.f, align 1, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i64, ptr %i.l, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !71
  %i.p = sub i64 %i.m, %i.o                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 0, ptr %i.c, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  store ptr @.str.30, ptr %55, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 19 uses
  store i64 0, ptr %i.q, align 8, !tbaa !71
  %i.r = call noundef zeroext i1 @_ZN7rocksdb3log22FragmentBufferedReader15TryReadFragmentEPNS_5SliceEPmPh(ptr noundef nonnull align 8 dereferenceable(321) %0, ptr noundef nonnull %55, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 17 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 20 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %61, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %60, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %61, i64 5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %60, i64 5
  %i.ar = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 163 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %63, i64 17
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.db
  %.022220 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.db ] ; 9 uses
  %i.co = load i8, ptr %i.c, align 1, !tbaa !22   ; 7 uses
  switch i8 %i.co, label %bb.cq [
    i8 1, label %bb.e
    i8 5, label %bb.e
    i8 2, label %bb.k
    i8 6, label %bb.k
    i8 3, label %bb.p
    i8 7, label %bb.p
    i8 4, label %bb.aa
    i8 8, label %bb.aa
    i8 9, label %bb.al
    i8 -126, label %bb.bc
    i8 -125, label %bb.bc
    i8 10, label %bb.bl
    i8 11, label %bb.bl
end_hunk_0
