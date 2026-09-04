Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/wide_column_serialization?download=true
inline.NumInlined: 1372
inline.NumDeleted: 433
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7rocksdb23WideColumnSerialization17DeserializeV2ImplERNS_5SliceEjRSt6vectorINS_10WideColumnESaIS4_EERS3_INS_9ValueTypeESaIS8_EE:bb.a
_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i123: ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %.pre202) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit124

_ZN7rocksdb6StatusD2Ev.exit124:                   ; preds = %.thread229, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i123, %bb.ac, %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.075182 ; 3 uses
  %i.es = load i32, ptr %i.e, align 4, !tbaa !78
  %i.et = zext i32 %i.es to i64                   ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.et
  %i.ev = icmp ugt ptr %i.eu, %i.cb
  br i1 %i.ev, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  store ptr @.str.6, ptr %25, align 8, !tbaa !22
  %i.ew = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 40, ptr %i.ew, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  store ptr @.str.32, ptr %26, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.ex, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %26, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %.thread143

bb.ae:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit124
  %i.ey = load ptr, ptr %i.da, align 8, !tbaa !54 ; 9 uses
  %i.ez = load ptr, ptr %i.cc, align 8, !tbaa !91
  %.not.i125 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i125, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.ee, ptr %i.ey, align 8, !tbaa !35
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.dx, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !90
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr %i.er, ptr %i.fa, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %i.et, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !90
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr %i.fb, ptr %i.da, align 8, !tbaa !54
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.fc = load ptr, ptr %3, align 8, !tbaa !55    ; 5 uses
  %i.fd = ptrtoint ptr %i.ey to i64
  %i.fe = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 3 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775776
  br i1 %i.fg, label %bb.ah, label %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #23
  unreachable

_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.fh = ashr exact i64 %i.ff, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 288230376151711743)
  %i.fl = select i1 %i.fj, i64 288230376151711743, i64 %i.fk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fm = shl nuw nsw i64 %i.fl, 5
  %i.fn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #25 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff ; 4 uses
  store ptr %i.ee, ptr %i.fo, align 8, !tbaa !35
  %.sroa.7.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %i.dx, ptr %.sroa.7.0..sroa_idx131, align 8, !tbaa !90
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.er, ptr %i.fp, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store i64 %i.et, ptr %.sroa.5.0..sroa_idx127, align 8, !tbaa !90
  %.not10.i.i.i.i.i = icmp eq ptr %i.fc, %i.ey
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %i.fc, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !92, !alias.scope !260
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, %i.ey
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fn, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fr, %.lr.ph.i.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i34.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRNS0_5SliceES5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.ft = load ptr, ptr %i.cc, align 8, !tbaa !91
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRNS0_5SliceES5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRNS0_5SliceES5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.fn, ptr %3, align 8, !tbaa !55
  store ptr %i.fs, ptr %i.da, align 8, !tbaa !54
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.fw, ptr %i.cc, align 8, !tbaa !91
  %.pre203 = load i32, ptr %i.e, align 4, !tbaa !78
  %.pre205 = zext i32 %.pre203 to i64
  br label %bb.aj

.thread143:                                       ; preds = %bb.ab, %bb.w, %bb.y, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.thread149

bb.aj:                                            ; preds = %bb.af, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRNS0_5SliceES5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.et, %bb.af ], [ %.pre205, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRNS0_5SliceES5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.fx = load i32, ptr %i.d, align 4, !tbaa !78
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add i64 %.080181, %i.fy                 ; 2 uses
  %i.ga = add i64 %.075182, %.pre-phi             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.gb = add nuw i32 %.074183, 1                 ; 2 uses
  %exitcond200.not = icmp eq i32 %i.gb, %2
  br i1 %exitcond200.not, label %._crit_edge, label %bb.s, !llvm.loop !254

._crit_edge:                                      ; preds = %bb.aj, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit
  %.089.lcssa = phi ptr [ %i.bj, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit ], [ %.1.i134, %bb.aj ]
  %.085.lcssa = phi ptr [ %i.bw, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit ], [ %.1.i118136, %bb.aj ]
  %.080.lcssa = phi i64 [ 0, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit ], [ %i.fz, %bb.aj ]
  %.075.lcssa = phi i64 [ 0, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit ], [ %i.ga, %bb.aj ]
  %i.gc = ptrtoint ptr %i.cb to i64
  %i.gd = ptrtoint ptr %i.ca to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %.not96 = icmp eq ptr %.089.lcssa, %i.bw
  %.not97 = icmp eq ptr %.085.lcssa, %i.by
  %or.cond = select i1 %.not96, i1 %.not97, i1 false
  %i.gf = load i32, ptr %i.c, align 4
  %i.gg = zext i32 %i.gf to i64
  %.not98 = icmp eq i64 %.080.lcssa, %i.gg
  %or.cond103 = select i1 %or.cond, i1 %.not98, i1 false
  %.not99 = icmp eq i64 %.075.lcssa, %i.ge
  %or.cond104 = select i1 %or.cond103, i1 %.not99, i1 false
  br i1 %or.cond104, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  store ptr @.str.15, ptr %27, align 8, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 33, ptr %i.gh, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store ptr @.str.32, ptr %28, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 0, ptr %i.gi, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %.thread149

bb.al:                                            ; preds = %._crit_edge
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.gj, align 8, !tbaa !19, !alias.scope !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !261
  br label %.thread149

.thread149:                                       ; preds = %.thread137, %.thread143, %bb.o, %bb.p, %bb.ak, %bb.al, %bb.h, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit116, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit110, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23WideColumnSerialization11DeserializeERKNS_5SliceERSt6vectorINS_10WideColumnESaIS5_EEPS4_ISt4pairImNS_9BlobIndexEESaISB_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 9 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.std::vector.29", align 8   ; 11 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %14 = alloca %"class.rocksdb::BlobIndex", align 8 ; 11 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !78
  %i.c = load ptr, ptr %4, align 8, !tbaa !22     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1, !tbaa !50    ; 2 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.b
  %i.i = zext nneg i8 %i.g to i32                 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !78
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.c

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.b, %bb.a
  %i.k = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.c, ptr noundef %i.f, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i = icmp eq ptr %i.k, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %thread-pre-split

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.16, ptr %5, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 34, ptr %i.l, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr @.str.32, ptr %6, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ai

thread-pre-split:                                 ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.n = phi i32 [ %.pr, %thread-pre-split ], [ %i.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 2 uses
  %i.o = phi ptr [ %i.k, %thread-pre-split ], [ %i.j, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 6 uses
  %i.p = icmp ugt i32 %i.n, 2
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr @.str.17, ptr %7, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 42, ptr %i.q, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr @.str.32, ptr %8, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %20 = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %20, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %.not.i44 = icmp eq ptr %i.f, %i.o
  br i1 %.not.i44, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.o, align 1, !tbaa !50    ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i48, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i48: ; preds = %bb.f
  %i.x = zext nneg i8 %i.v to i32
  store i32 %i.x, ptr %i.b, align 4, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  br label %bb.g

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45:    ; preds = %bb.f, %bb.e
  %i.z = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.o, ptr noundef nonnull %i.u, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i46 = icmp eq ptr %i.z, null
  br i1 %.not15.i46, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit49, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45._crit_edge

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45._crit_edge: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45
  %.pre = load i32, ptr %i.a, align 4, !tbaa !78
  br label %bb.g

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit49:    ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr @.str.18, ptr %9, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 37, ptr %i.aa, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr @.str.32, ptr %10, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ah

bb.g:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45._crit_edge, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i48
  %i.ac = phi i32 [ %i.n, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i48 ], [ %.pre, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45._crit_edge ]
  %.1.i14.i47 = phi ptr [ %i.y, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i48 ], [ %i.z, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i45._crit_edge ] ; 2 uses
  %21 = ptrtoint ptr %i.f to i64
  %i.ad = ptrtoint ptr %.1.i14.i47 to i64
  %i.ae = sub i64 %21, %i.ad
  store ptr %.1.i14.i47, ptr %4, align 8, !tbaa !35
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !90
  %i.af = icmp ult i32 %i.ac, 2
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !78
  call void @_ZN7rocksdb23WideColumnSerialization13DeserializeV1ERNS_5SliceEjRSt6vectorINS_10WideColumnESaIS4_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !78
  invoke void @_ZN7rocksdb23WideColumnSerialization17DeserializeV2ImplERNS_5SliceEjRSt6vectorINS_10WideColumnESaIS4_EERS3_INS_9ValueTypeESaIS8_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %0, align 8, !tbaa !34
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.am, null
  br i1 %.not.i.i50, label %_ZN7rocksdb6StatusD2Ev.exit52, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i51

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i51: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.am) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit52

_ZN7rocksdb6StatusD2Ev.exit52:                    ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i51
  %i.an = load i32, ptr %i.b, align 4, !tbaa !78  ; 3 uses
  %.not3574.not = icmp eq i32 %i.an, 0
  br i1 %.not3574.not, label %.critedge43, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7rocksdb6StatusD2Ev.exit52
  %.not28 = icmp eq ptr %3, null
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br i1 %.not28, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.au = load ptr, ptr %11, align 8, !tbaa !96
  %wide.trip.count = zext i32 %i.an to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.split.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.n ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv78
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !98
  %.not.us = icmp eq i8 %i.aw, 17
  br i1 %.not.us, label %.split.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %.critedge43, label %bb.m, !llvm.loop !262

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ac
  %i.ax = phi i32 [ %i.cu, %bb.ac ], [ %i.an, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ 0, %.lr.ph ] ; 5 uses
  %i.ay = load ptr, ptr %11, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !98
  %.not = icmp eq i8 %i.ba, 17
  br i1 %.not, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store i8 3, ptr %14, align 8, !tbaa !82
  store i64 0, ptr %i.ao, align 8, !tbaa !83
  store ptr @.str.32, ptr %i.ap, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aq, i8 0, i64 33, i1 false)
  %i.bb = load ptr, ptr %2, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !90 ; 2 uses
  %i.bd = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.bd, label %bb.q, label %bb.s

.split.us:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr @.str.19, ptr %12, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 65, ptr %i.be, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr @.str.32, ptr %13, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !23
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit unwind label %bb.p

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.critedge

bb.p:                                             ; preds = %.split.us
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.af

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr @.str.20, ptr %15, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 31, ptr %i.bh, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store ptr @.str.32, ptr %16, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !23
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit53 unwind label %bb.r

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit53: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.critedge41

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.ad

bb.s:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.0.0.copyload69 = load ptr, ptr %i.bk, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZN7rocksdb9BlobIndex10DecodeFromENS_5SliceE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %17, ptr noundef nonnull align 8 dereferenceable(57) %14, ptr %.sroa.0.0.copyload69, i64 %.sroa.6.0.copyload)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bl = load i8, ptr %17, align 8, !tbaa !34
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %.critedge39, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr @.str.21, ptr %18, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 40, ptr %i.bn, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr @.str.32, ptr %19, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !23
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit54 unwind label %bb.w

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit54: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i55, label %_ZN7rocksdb6StatusD2Ev.exit57, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i56

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i56: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit54
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit57

_ZN7rocksdb6StatusD2Ev.exit57:                    ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit54, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %.critedge41

bb.v:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit65

bb.w:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.bs = load ptr, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.bs, null
end_hunk_0
begin_hunk_1_@_ZN7rocksdb9BlobIndex10DecodeFromENS_5SliceE:bb.a
_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %bb.i
  %i.bc = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !50
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bg = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.j
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !50
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.t

bb.j:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.k:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ao
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.k
  %i.bo = load i64, ptr %i.ao, align 8, !tbaa !50
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.j ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.bl, %bb.k ]
  %i.bq = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.j
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !50
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.bv = add i64 %3, -1
  %i.bw = and i8 %i.a, 1
  %spec.select.i = icmp eq i8 %i.bw, 0
  br i1 %spec.select.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = getelementptr i8, ptr %2, i64 %3        ; 2 uses
  %i.bz = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bx) ; 4 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %bb.n

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit:      ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr @.str.39, ptr %8, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 31, ptr %i.ca, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr @.str.41, ptr %9, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 20, ptr %i.cb, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %.pre = load i8, ptr %1, align 8, !tbaa !82
  %i.cf = icmp eq i8 %.pre, 0
  br i1 %i.cf, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bz, ptr %i.cg, align 8, !tbaa !35
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ce, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !90
  br label %bb.s

.thread:                                          ; preds = %bb.l, %bb.n
  %.sroa.14.083 = phi i64 [ %i.ce, %bb.n ], [ %i.bv, %bb.l ]
  %.sroa.021.082 = phi ptr [ %i.bz, %bb.n ], [ %i.bu, %bb.l ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.021.082, i64 %.sroa.14.083 ; 2 uses
  %i.cj = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %.sroa.021.082, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.ch) ; 4 uses
  %.not50 = icmp eq ptr %i.cj, null
  br i1 %.not50, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.ck = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cm
  %i.cp = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cn) ; 4 uses
  %.not51 = icmp eq ptr %i.cp, null
  br i1 %.not51, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.ck, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  %i.cu = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cs) ; 3 uses
  %i.cv = icmp ne ptr %i.cu, null
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.ck, %i.cw
  %i.cy = icmp eq i64 %i.cx, 1
  %or.cond = and i1 %i.cv, %i.cy
  br i1 %or.cond, label %bb.r, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18

bb.r:                                             ; preds = %bb.q
  %i.cz = load i8, ptr %i.cu, align 1, !tbaa !50
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.cz, ptr %i.da, align 8, !tbaa !87
  br label %bb.s

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18:    ; preds = %bb.q, %bb.p, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr @.str.39, ptr %10, align 8, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 31, ptr %i.db, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr @.str.42, ptr %11, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 21, ptr %i.dc, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.dd, align 8, !tbaa !19, !alias.scope !282
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !282
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23WideColumnSerialization14HasBlobColumnsERKNS_5SliceERb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  store i8 0, ptr %2, align 1, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !78
  %i.f = load ptr, ptr %3, align 8, !tbaa !22     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 6 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.f, align 1, !tbaa !50    ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.b
  %i.l = zext nneg i8 %i.j to i32                 ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.c

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.b, %bb.a
  %i.n = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.f, ptr noundef %i.i, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i = icmp eq ptr %i.n, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %thread-pre-split

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @.str.16, ptr %4, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 34, ptr %i.o, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.32, ptr %5, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.v

thread-pre-split:                                 ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.q = phi i32 [ %.pr, %thread-pre-split ], [ %i.l, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 2 uses
  %i.r = phi ptr [ %i.n, %thread-pre-split ], [ %i.m, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 6 uses
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i32 %i.q, 2
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !19, !alias.scope !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !290
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.q, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr @.str.17, ptr %6, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 42, ptr %i.x, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr @.str.32, ptr %7, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %.not.i10 = icmp eq ptr %i.i, %i.r
  br i1 %.not.i10, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i11, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !50   ; 2 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i14, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i11

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i14: ; preds = %bb.h
  %i.ac = zext nneg i8 %i.aa to i32               ; 2 uses
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  br label %bb.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i11:    ; preds = %bb.h, %bb.g
  %i.ae = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.r, ptr noundef nonnull %i.z, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i12 = icmp eq ptr %i.ae, null
  br i1 %.not15.i12, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit15, label %thread-pre-split23

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit15:    ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr @.str.18, ptr %8, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 37, ptr %i.af, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr @.str.32, ptr %9, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.u

thread-pre-split23:                               ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i11
  %.pr24 = load i32, ptr %i.b, align 4, !tbaa !78
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split23, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i14
  %i.ah = phi i32 [ %.pr24, %thread-pre-split23 ], [ %i.ac, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i14 ]
  %i.ai = phi ptr [ %i.ae, %thread-pre-split23 ], [ %i.ad, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i14 ] ; 7 uses
  %16 = ptrtoint ptr %i.i to i64
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %16, %i.aj                      ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !35
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !90
  %.not8 = icmp eq i32 %i.ah, 0
  br i1 %.not8, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !19, !alias.scope !291
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !291
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 0, ptr %i.e, align 4, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %.not.i16 = icmp eq ptr %i.i, %i.ai
  br i1 %.not.i16, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !50  ; 2 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i20, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i17

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i20: ; preds = %bb.l
  %i.ap = zext nneg i8 %i.an to i32
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  br label %bb.m

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i17:    ; preds = %bb.l, %bb.k
  %i.ar = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.am, ptr noundef nonnull %i.c) ; 2 uses
  %.not15.i18 = icmp eq ptr %i.ar, null
  br i1 %.not15.i18, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit21, label %bb.m

bb.m:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i20, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i17
  %.1.i14.i19 = phi ptr [ %i.aq, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i20 ], [ %i.ar, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i17 ] ; 2 uses
  %17 = ptrtoint ptr %i.i to i64
  %i.as = ptrtoint ptr %.1.i14.i19 to i64
  %i.at = sub i64 %17, %i.as
  store ptr %.1.i14.i19, ptr %3, align 8, !tbaa !35
  store i64 %i.at, ptr %i.g, align 8, !tbaa !90
  %i.au = call noundef zeroext i1 @_ZN7rocksdb11GetVarint32EPNS_5SliceEPj(ptr noundef nonnull %3, ptr noundef nonnull %i.d)
  br i1 %i.au, label %bb.n, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit21

bb.n:                                             ; preds = %bb.m
  %i.av = call noundef zeroext i1 @_ZN7rocksdb11GetVarint32EPNS_5SliceEPj(ptr noundef nonnull %3, ptr noundef nonnull %i.e)
  br i1 %i.av, label %bb.o, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit21

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit21:    ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i17, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr @.str.22, ptr %10, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 36, ptr %i.aw, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr @.str.32, ptr %11, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !23
  %i.az = load i32, ptr %i.b, align 4, !tbaa !78  ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %.not925.not = icmp eq i32 %i.az, 0
  %.pre = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  br i1 %.not925.not, label %_ZN7rocksdb23WideColumnSerialization16ContainsBlobTypeEPKcj.exit, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr @.str.11, ptr %12, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 32, ptr %i.bc, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr @.str.32, ptr %13, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ba
  br i1 %exitcond.not, label %.lr.ph.i, label %.lr.ph, !llvm.loop !287

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !50
  %i.bg = and i8 %i.bf, -17
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %bb.q, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store ptr @.str.12, ptr %14, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 33, ptr %i.bi, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr @.str.32, ptr %15, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.bj, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ba
  br i1 %exitcond.not.i, label %_ZN7rocksdb23WideColumnSerialization16ContainsBlobTypeEPKcj.exit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.q, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !50
  %i.bm = icmp eq i8 %i.bl, 17
  br i1 %i.bm, label %_ZN7rocksdb23WideColumnSerialization16ContainsBlobTypeEPKcj.exit, label %bb.s

_ZN7rocksdb23WideColumnSerialization16ContainsBlobTypeEPKcj.exit: ; preds = %bb.s, %.lr.ph.i, %.preheader
  %.lcssa.i = phi i8 [ 0, %.preheader ], [ 0, %bb.s ], [ 1, %.lr.ph.i ]
  store i8 %.lcssa.i, ptr %2, align 1, !tbaa !102
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !19, !alias.scope !292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !292
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZN7rocksdb23WideColumnSerialization16ContainsBlobTypeEPKcj.exit, %bb.p, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.j, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.f, %bb.d, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23WideColumnSerialization21ForEachBlobFileNumberERKNS_5SliceERKSt8functionIFNS_6StatusERKNS_9BlobIndexEEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 17 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %25 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %26 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %27 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %28 = alloca %"class.rocksdb::BlobIndex", align 8 ; 9 uses
  %29 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %30 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %31 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !78
  %i.g = load ptr, ptr %3, align 8, !tbaa !22     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 6 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1, !tbaa !50    ; 2 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.b
  %i.m = zext nneg i8 %i.k to i32                 ; 2 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %bb.c

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.b, %bb.a
  %i.o = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.g, ptr noundef %i.j, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i = icmp eq ptr %i.o, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %thread-pre-split

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @.str.16, ptr %4, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 34, ptr %i.p, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.32, ptr %5, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ar

thread-pre-split:                                 ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.r = phi i32 [ %.pr, %thread-pre-split ], [ %i.m, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 2 uses
  %i.s = phi ptr [ %i.o, %thread-pre-split ], [ %i.n, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 7 uses
  %i.t = ptrtoint ptr %i.j to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !35
  store i64 %i.v, ptr %i.h, align 8, !tbaa !90
  %i.w = icmp ult i32 %i.r, 2
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !19, !alias.scope !306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !306
  br label %bb.ar

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.r, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr @.str.17, ptr %6, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 42, ptr %i.y, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr @.str.32, ptr %7, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ar

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %.not.i56 = icmp eq ptr %i.j, %i.s
  br i1 %.not.i56, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i57, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.s, align 1, !tbaa !50   ; 2 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i60, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i57

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i60: ; preds = %bb.h
  %i.ad = zext nneg i8 %i.ab to i32               ; 2 uses
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  br label %bb.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i57:    ; preds = %bb.h, %bb.g
  %i.af = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.s, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i58 = icmp eq ptr %i.af, null
  br i1 %.not15.i58, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit61, label %thread-pre-split80

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit61:    ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr @.str.18, ptr %8, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 37, ptr %i.ag, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr @.str.32, ptr %9, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.aq

thread-pre-split80:                               ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i57
  %.pr81 = load i32, ptr %i.b, align 4, !tbaa !78
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split80, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i60
  %i.ai = phi i32 [ %.pr81, %thread-pre-split80 ], [ %i.ad, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i60 ]
  %i.aj = phi ptr [ %i.af, %thread-pre-split80 ], [ %i.ae, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i60 ] ; 7 uses
  %32 = ptrtoint ptr %i.j to i64
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %32, %i.ak                      ; 2 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !35
  store i64 %i.al, ptr %i.h, align 8, !tbaa !90
  %.not48 = icmp eq i32 %i.ai, 0
  br i1 %.not48, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !19, !alias.scope !307
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !307
  br label %bb.aq

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 0, ptr %i.e, align 4, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %.not.i62 = icmp eq ptr %i.j, %i.aj
  br i1 %.not.i62, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i63, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !50  ; 2 uses
  %i.ap = icmp sgt i8 %i.ao, -1
  br i1 %i.ap, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i66, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i63

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i66: ; preds = %bb.l
  %i.aq = zext nneg i8 %i.ao to i32
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  br label %bb.m

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i63:    ; preds = %bb.l, %bb.k
  %i.as = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.an, ptr noundef nonnull %i.c) ; 2 uses
  %.not15.i64 = icmp eq ptr %i.as, null
  br i1 %.not15.i64, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit67, label %bb.m

bb.m:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i66, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i63
  %.1.i14.i65 = phi ptr [ %i.ar, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i66 ], [ %i.as, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i63 ] ; 2 uses
  %33 = ptrtoint ptr %i.j to i64
  %i.at = ptrtoint ptr %.1.i14.i65 to i64
  %i.au = sub i64 %33, %i.at
  store ptr %.1.i14.i65, ptr %3, align 8, !tbaa !35
  store i64 %i.au, ptr %i.h, align 8, !tbaa !90
  %i.av = call noundef zeroext i1 @_ZN7rocksdb11GetVarint32EPNS_5SliceEPj(ptr noundef nonnull %3, ptr noundef nonnull %i.d)
  br i1 %i.av, label %bb.n, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit67

bb.n:                                             ; preds = %bb.m
  %i.aw = call noundef zeroext i1 @_ZN7rocksdb11GetVarint32EPNS_5SliceEPj(ptr noundef nonnull %3, ptr noundef nonnull %i.e)
  br i1 %i.aw, label %bb.o, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit67

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit67:    ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i63, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr @.str.22, ptr %10, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 36, ptr %i.ax, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr @.str.32, ptr %11, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ap

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !78  ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 4 uses
  %i.bc = icmp ult i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %.not4989.not = icmp eq i32 %i.ba, 0
  br i1 %.not4989.not, label %.critedge98, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bd = load ptr, ptr %3, align 8, !tbaa !22    ; 3 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr @.str.11, ptr %12, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 32, ptr %i.be, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr @.str.32, ptr %13, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.ap

bb.q:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.03491 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.r ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !50  ; 2 uses
  %i.bi = and i8 %i.bh, -17
  %i.bj = icmp eq i8 %i.bi, 1
  br i1 %i.bj, label %bb.r, label %.thread84

.thread84:                                        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store ptr @.str.12, ptr %14, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 33, ptr %i.bk, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr @.str.32, ptr %15, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.ap

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp eq i8 %i.bh, 17
  %spec.select = select i1 %i.bm, i1 true, i1 %.03491 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bb
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !297

._crit_edge:                                      ; preds = %bb.r
  br i1 %spec.select, label %bb.s, label %.critedge98

.critedge98:                                      ; preds = %.preheader, %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !19, !alias.scope !308
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !308
  br label %bb.ap

bb.s:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.bo, ptr %3, align 8, !tbaa !22
  %i.bp = sub i64 %i.az, %i.bb                    ; 3 uses
  store i64 %i.bp, ptr %i.h, align 8, !tbaa !23
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !78
  %i.br = zext i32 %i.bq to i64                   ; 3 uses
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store ptr @.str.23, ptr %16, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 37, ptr %i.bt, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr @.str.32, ptr %17, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.ap

bb.u:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.br ; 3 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !22
  %i.bw = sub nuw i64 %i.bp, %i.br                ; 3 uses
  store i64 %i.bw, ptr %i.h, align 8, !tbaa !23
  %i.bx = load i32, ptr %i.d, align 4, !tbaa !78
  %i.by = zext i32 %i.bx to i64                   ; 3 uses
  %i.bz = icmp ult i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr @.str.24, ptr %18, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 38, ptr %i.ca, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr @.str.32, ptr %19, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ap

bb.w:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by ; 4 uses
  store ptr %i.cc, ptr %3, align 8, !tbaa !22
  %i.cd = sub nuw i64 %i.bw, %i.by                ; 3 uses
  store i64 %i.cd, ptr %i.h, align 8, !tbaa !23
  %i.ce = load i32, ptr %i.e, align 4, !tbaa !78
  %i.cf = zext i32 %i.ce to i64                   ; 3 uses
  %i.cg = icmp ult i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.x, label %.lr.ph97

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr @.str.25, ptr %20, align 8, !tbaa !22
  %i.ch = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 32, ptr %i.ch, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store ptr @.str.32, ptr %21, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.ap

.lr.ph97:                                         ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  store ptr %i.cj, ptr %3, align 8, !tbaa !22
  %i.ck = sub nuw i64 %i.cd, %i.cf
  store i64 %i.ck, ptr %i.h, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph97, %bb.ao
  %indvars.iv99 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next100, %bb.ao ] ; 2 uses
  %.03994 = phi i64 [ 0, %.lr.ph97 ], [ %i.ee, %bb.ao ] ; 3 uses
  %.04193 = phi ptr [ %i.bv, %.lr.ph97 ], [ %.1.i87, %bb.ao ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 0, ptr %i.f, align 4, !tbaa !78
  %i.cu = icmp ult ptr %.04193, %i.cc
  br i1 %i.cu, label %bb.z, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit

bb.z:                                             ; preds = %bb.y
  %i.cv = load i8, ptr %.04193, align 1, !tbaa !50 ; 2 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread: ; preds = %bb.z
  %i.cx = zext nneg i8 %i.cv to i32               ; 2 uses
  store i32 %i.cx, ptr %i.f, align 4, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %.04193, i64 1
  br label %bb.ab

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit:        ; preds = %bb.y, %bb.z
end_hunk_1
begin_hunk_2_@_ZN7rocksdb23WideColumnSerialization21ForEachBlobFileNumberERKNS_5SliceERKSt8functionIFNS_6StatusERKNS_9BlobIndexEEE:bb.a

bb.ak:                                            ; preds = %bb.ai
  %i.dv = load ptr, ptr %i.cr, align 8, !tbaa !313, !noalias !311
  invoke void %i.dv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(57) %28)
          to label %bb.al unwind label %.loopexit, !inline_history !302

bb.al:                                            ; preds = %bb.ak
  %i.dw = load i8, ptr %0, align 8, !tbaa !34
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.am, label %_ZN7rocksdb6StatusD2Ev.exit72

bb.am:                                            ; preds = %bb.al
  %i.dy = load ptr, ptr %i.cs, align 8, !tbaa !35 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i70, label %_ZN7rocksdb6StatusD2Ev.exit72, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i71

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i71: ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.dy) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit72

_ZN7rocksdb6StatusD2Ev.exit72:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i71, %bb.am, %bb.al, %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit
  %i.dz = phi i1 [ false, %bb.al ], [ false, %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit ], [ true, %bb.am ], [ true, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i71 ]
  %i.ea = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i73, label %_ZN7rocksdb6StatusD2Ev.exit75, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74: ; preds = %_ZN7rocksdb6StatusD2Ev.exit72
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit75

_ZN7rocksdb6StatusD2Ev.exit75:                    ; preds = %_ZN7rocksdb6StatusD2Ev.exit72, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br i1 %i.dz, label %_ZN7rocksdb6StatusD2Ev.exit75._crit_edge, label %.critedge53

_ZN7rocksdb6StatusD2Ev.exit75._crit_edge:         ; preds = %_ZN7rocksdb6StatusD2Ev.exit75
  %.pre = load i32, ptr %i.f, align 4, !tbaa !78
  br label %bb.ao

bb.an:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i76, label %_ZN7rocksdb6StatusD2Ev.exit78, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit78

_ZN7rocksdb6StatusD2Ev.exit78:                    ; preds = %bb.an, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.ao:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit75._crit_edge, %bb.ab
  %i.ec = phi i32 [ %.pre, %_ZN7rocksdb6StatusD2Ev.exit75._crit_edge ], [ %.pre102, %bb.ab ]
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add i64 %.03994, %i.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !78
  %i.eg = zext i32 %i.ef to i64
  %.not51 = icmp samesign ult i64 %indvars.iv.next100, %i.eg
  br i1 %.not51, label %bb.y, label %.critedge55, !llvm.loop !303

.critedge53:                                      ; preds = %_ZN7rocksdb6StatusD2Ev.exit75, %.critedge, %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.ap

.critedge55:                                      ; preds = %bb.ao
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.eh, align 8, !tbaa !19, !alias.scope !314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !314
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge53, %.thread84, %.critedge98, %bb.x, %.critedge55, %bb.v, %bb.t, %bb.p, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.j, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.f, %bb.d, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23WideColumnSerialization10GetVersionERKNS_5SliceERj(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) initializes((0, 4)) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !35 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !90 ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.5.0.copyload
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !50 ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.b
  %i.d = zext nneg i8 %i.b to i32
  store i32 %i.d, ptr %2, align 4, !tbaa !78
  br label %bb.c

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.b, %bb.a
  %i.e = tail call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %.sroa.0.0.copyload, ptr noundef %i.a, ptr noundef nonnull %2)
  %.not15.i = icmp eq ptr %i.e, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %bb.c

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @.str.16, ptr %3, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 34, ptr %i.f, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @.str.32, ptr %4, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.d

bb.c:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !19, !alias.scope !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !317
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23WideColumnSerialization23GetValueOfDefaultColumnERKNS_5SliceERS1_Rb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 17 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %25 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %26 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %27 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %28 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %30 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %31 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %32 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %33 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %34 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %35 = alloca %"class.std::vector.7", align 8    ; 11 uses
  store i8 0, ptr %3, align 1, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !78
  %i.h = load ptr, ptr %4, align 8, !tbaa !22     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 6 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.h, align 1, !tbaa !50    ; 2 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.b
  %i.n = zext nneg i8 %i.l to i32                 ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  br label %bb.c

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.b, %bb.a
  %i.p = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.h, ptr noundef %i.k, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i = icmp eq ptr %i.p, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %thread-pre-split

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.16, ptr %5, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 34, ptr %i.q, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr @.str.32, ptr %6, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.au

thread-pre-split:                                 ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.s = phi i32 [ %.pr, %thread-pre-split ], [ %i.n, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ]
  %i.t = phi ptr [ %i.p, %thread-pre-split ], [ %i.o, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 7 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !35
  %i.u = icmp ugt i32 %i.s, 2
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr @.str.17, ptr %7, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 42, ptr %i.v, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr @.str.32, ptr %8, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.au

bb.e:                                             ; preds = %bb.c
  %36 = ptrtoint ptr %i.k to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %36, %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  %.not.i21 = icmp eq ptr %i.k, %i.t
  br i1 %.not.i21, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i22, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !50   ; 2 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i25, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i22

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i25: ; preds = %bb.f
  %i.ac = zext nneg i8 %i.aa to i32               ; 2 uses
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  br label %bb.g

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i22:    ; preds = %bb.f, %bb.e
  %i.ae = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.t, ptr noundef nonnull %i.z, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i23 = icmp eq ptr %i.ae, null
  br i1 %.not15.i23, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit26, label %thread-pre-split38

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit26:    ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr @.str.18, ptr %9, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 37, ptr %i.af, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr @.str.32, ptr %10, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.at

thread-pre-split38:                               ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i22
  %.pr39 = load i32, ptr %i.b, align 4, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split38, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i25
  %i.ah = phi i32 [ %.pr39, %thread-pre-split38 ], [ %i.ac, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i25 ]
  %i.ai = phi ptr [ %i.ae, %thread-pre-split38 ], [ %i.ad, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i25 ] ; 6 uses
  %37 = ptrtoint ptr %i.k to i64
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %37, %i.aj
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @.str.32, ptr %2, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !19, !alias.scope !328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !328
  br label %bb.at

bb.i:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.a, align 4, !tbaa !78
  %i.ao = icmp ugt i32 %i.an, 1
  br i1 %i.ao, label %bb.j, label %bb.al

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 0, ptr %i.e, align 4, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %.not.i27 = icmp eq ptr %i.k, %i.ai
  br i1 %.not.i27, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i28, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !50  ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i31, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i28

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i31: ; preds = %bb.k
  %i.as = zext nneg i8 %i.aq to i32
  store i32 %i.as, ptr %i.c, align 4, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  br label %bb.l

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i28:    ; preds = %bb.k, %bb.j
  %i.au = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.c) ; 2 uses
  %.not15.i29 = icmp eq ptr %i.au, null
  br i1 %.not15.i29, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit32, label %bb.l

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit32:    ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr @.str.8, ptr %11, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 43, ptr %i.av, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr @.str.32, ptr %12, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ak

bb.l:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i31, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i28
  %.1.i14.i30 = phi ptr [ %i.at, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i31 ], [ %i.au, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i28 ] ; 2 uses
  %38 = ptrtoint ptr %i.k to i64
  %i.ax = ptrtoint ptr %.1.i14.i30 to i64
  %i.ay = sub i64 %38, %i.ax
  store ptr %.1.i14.i30, ptr %4, align 8, !tbaa !35
  store i64 %i.ay, ptr %i.i, align 8, !tbaa !90
  %i.az = call noundef zeroext i1 @_ZN7rocksdb11GetVarint32EPNS_5SliceEPj(ptr noundef nonnull %4, ptr noundef nonnull %i.d)
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr @.str.9, ptr %13, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 44, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store ptr @.str.32, ptr %14, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ak

bb.n:                                             ; preds = %bb.l
  %i.bc = call noundef zeroext i1 @_ZN7rocksdb11GetVarint32EPNS_5SliceEPj(ptr noundef nonnull %4, ptr noundef nonnull %i.e)
  br i1 %i.bc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr @.str.10, ptr %15, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 38, ptr %i.bd, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store ptr @.str.32, ptr %16, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.ak

bb.p:                                             ; preds = %bb.n
  %i.bf = load i64, ptr %i.i, align 8, !tbaa !23  ; 2 uses
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !78
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = icmp ult i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr @.str.11, ptr %17, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 32, ptr %i.bj, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr @.str.32, ptr %18, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.ak

bb.r:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !50  ; 2 uses
  %i.bn = and i8 %i.bm, -17
  %i.bo = icmp eq i8 %i.bn, 1
  br i1 %i.bo, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr @.str.12, ptr %19, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 33, ptr %i.bp, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr @.str.32, ptr %20, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ak

bb.t:                                             ; preds = %bb.r
  %i.br = icmp eq i8 %i.bm, 17
  %i.bs = zext i1 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh ; 2 uses
  store ptr %i.bt, ptr %4, align 8, !tbaa !22
  %i.bu = sub nuw i64 %i.bf, %i.bh                ; 2 uses
  store i64 %i.bu, ptr %i.i, align 8, !tbaa !23
  %i.bv = load i32, ptr %i.c, align 4, !tbaa !78
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = icmp ult i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store ptr @.str.23, ptr %21, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 37, ptr %i.by, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store ptr @.str.32, ptr %22, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.ak

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  store ptr %i.bt, ptr %23, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.bw, ptr %i.ca, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 0, ptr %i.f, align 4, !tbaa !78
  %i.cb = call noundef zeroext i1 @_ZN7rocksdb11GetVarint32EPNS_5SliceEPj(ptr noundef nonnull %23, ptr noundef nonnull %i.f)
  br i1 %i.cb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  store ptr @.str.14, ptr %24, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 36, ptr %i.cc, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  store ptr @.str.32, ptr %25, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.cd, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.aj

bb.x:                                             ; preds = %bb.v
  %i.ce = load i32, ptr %i.c, align 4, !tbaa !78
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = load ptr, ptr %4, align 8, !tbaa !22
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf ; 2 uses
  store ptr %i.ch, ptr %4, align 8, !tbaa !22
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !23
  %i.cj = sub i64 %i.ci, %i.cf                    ; 2 uses
  store i64 %i.cj, ptr %i.i, align 8, !tbaa !23
  %i.ck = load i32, ptr %i.d, align 4, !tbaa !78
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  store ptr @.str.24, ptr %26, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 38, ptr %i.cn, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  store ptr @.str.32, ptr %27, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store ptr %i.ch, ptr %28, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.cl, ptr %i.cp, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.cq = call noundef zeroext i1 @_ZN7rocksdb11GetVarint32EPNS_5SliceEPj(ptr noundef nonnull %28, ptr noundef nonnull %i.g)
  br i1 %i.cq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store ptr @.str.5, ptr %29, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 37, ptr %i.cr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  store ptr @.str.32, ptr %30, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.ct = load i32, ptr %i.d, align 4, !tbaa !78
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = load ptr, ptr %4, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu ; 2 uses
  store ptr %i.cw, ptr %4, align 8, !tbaa !22
  %i.cx = load i64, ptr %i.i, align 8, !tbaa !23
  %i.cy = sub i64 %i.cx, %i.cu                    ; 3 uses
  store i64 %i.cy, ptr %i.i, align 8, !tbaa !23
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !78
  %.not20 = icmp eq i32 %i.cz, 0
  br i1 %.not20, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr @.str.32, ptr %2, align 8, !tbaa !22
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.da, align 8, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.db, align 8, !tbaa !19, !alias.scope !329
end_hunk_2
