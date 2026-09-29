Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO64EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE:bb.a
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.h, i64 noundef %i.q) #26
  br label %.critedge46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.s = load i64, ptr %i.i, align 8, !tbaa !253
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.critedge46

.critedge46:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = phi ptr [ %i.r, %bb.b ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge46
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !856
  store i32 %i.y, ptr %i.a, align 4, !tbaa !119
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.z, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str.420, i64 82, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.t

bb.d:                                             ; preds = %.critedge46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !329 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !333
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !856
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !416
  %i.am = sub i64 %i.aj, %i.al                    ; 3 uses
  %i.an = icmp ugt i64 %i.am, %i.ag
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !857
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = add i64 %i.am, %i.aq
  %i.as = icmp ugt i64 %i.ar, %i.ag
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.av, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.421, i64 64, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.am
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !260
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store i64 %i.aq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !343
  %i.ba = icmp eq i64 %i.az, 10
  br i1 %i.ba, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit: ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !252 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 1
  %i.be = xor i64 %i.bd, 4919420967581409119
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = zext i16 %i.bg to i64
  %i.bi = xor i64 %i.bh, 21577
  %i.bj = or i64 %i.be, %i.bi
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

bb.h:                                             ; preds = %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 328 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !712 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 344 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !713
  %.not.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.bp, align 8, !tbaa !376
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !712
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !714 ; 4 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.k, label %_ZNKSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #27 ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store ptr %1, ptr %i.cf, align 8, !tbaa !376
  %i.cg = icmp sgt i64 %i.bw, 0
  br i1 %i.cg, label %bb.l, label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ci = load ptr, ptr %i.bq, align 8, !tbaa !713
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.ck) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !714
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !712
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cl, ptr %i.bq, align 8, !tbaa !713
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread: ; preds = %bb.g, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.cm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.co, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 3, ptr nonnull @.str.422, i64 68, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.i, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.sroa.07.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !260
  %.sroa.2.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !331
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 3, ptr %i.cr, align 4, !tbaa !335
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %7, align 8, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.sroa.07.0.copyload, ptr %i.cs, align 8, !tbaa !372
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.2.0.copyload, ptr %i.ct, align 8, !tbaa !373
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !332, !range !256, !noundef !257
  store i8 %i.cx, ptr %i.cq, align 8, !tbaa !332
  %i.cy = call i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo13parse_payloadERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(24) %7) #26 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !858
  %switch.tableidx = add i16 %i.da, -1            ; 2 uses
  %i.db = icmp ult i16 %switch.tableidx, 14
  br i1 %i.db, label %switch.lookup, label %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit

switch.lookup:                                    ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit
  %i.dc = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE, i64 %i.dc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ]
  %i.dd = load i8, ptr %i.d, align 2, !tbaa !685, !range !256, !noundef !257
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !859
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i64 %.0.i, label %bb.s [
    i64 8, label %bb.p
    i64 4, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !115 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !117
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(552) %i.di) #26
  %i.dn = load i32, ptr %i.df, align 8, !tbaa !859
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dm, %i.do                    ; 2 uses
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !115
  %i.dr = call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.dq, i64 noundef %i.dp) #26 ; 2 uses
  %.not44 = icmp eq ptr %i.dr, null
  br i1 %.not44, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = call i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo11walk_fixupsEmRNS0_14SegmentCommandE(ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(216) %i.dr) #26
  %i.dt = and i64 %i.ds, 4294967296
  %.not60 = icmp eq i64 %i.dt, 0
  br i1 %.not60, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.du = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4LIEF7logging6Logger4warnIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(32) %i.dv)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p, %bb.o, %bb.n, %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.s, %bb.c
  %.sroa.3.1 = phi i64 [ 2, %bb.c ], [ 4294967303, %bb.s ], [ 7, %bb.f ]
  ret i64 %.sroa.3.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser23infer_indirect_bindingsINS0_7details7MachO64EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = tail call noundef ptr @_ZN4LIEF5MachO6Binary22dynamic_symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.b) #26 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !752, !noalias !2001 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !752, !noalias !2002 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not115126 = icmp eq ptr %i.i, %i.g
  br i1 %.not115126, label %.critedge, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph130, %._crit_edge
  %.sroa.483.0128 = phi ptr [ %i.g, %.lr.ph130 ], [ %i.dz, %._crit_edge ] ; 2 uses
  %.sroa.884.0127 = phi i64 [ 0, %.lr.ph130 ], [ %i.ea, %._crit_edge ]
  %i.r = load ptr, ptr %.sroa.483.0128, align 8, !tbaa !593 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !860, !noalias !2003 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !860, !noalias !2004 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not116122 = icmp eq ptr %i.v, %i.t
  br i1 %.not116122, label %._crit_edge, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %bb.c
  %i.aa = insertelement <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO19IndirectBindingInfoE, i64 16), ptr poison>, ptr %i.r, i64 1
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.loopexit
  %.sroa.474.0124 = phi ptr [ %i.dx, %.loopexit ], [ %i.t, %.lr.ph125.preheader ] ; 2 uses
  %.sroa.8.0123 = phi i64 [ %i.dy, %.loopexit ], [ 0, %.lr.ph125.preheader ]
  %i.ab = load ptr, ptr %.sroa.474.0124, align 8, !tbaa !338 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !606
  %trunc = trunc i32 %i.ad to i8
  switch i8 %trunc, label %.loopexit [
    i8 8, label %bb.d
    i8 6, label %.thread
    i8 7, label %.thread
    i8 16, label %.thread
    i8 20, label %.thread
  ]

bb.d:                                             ; preds = %.lr.ph125
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !861 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %.thread

.thread:                                          ; preds = %.lr.ph125, %.lr.ph125, %.lr.ph125, %.lr.ph125, %bb.d
  %i.ah = phi i32 [ %i.af, %bb.d ], [ 8, %.lr.ph125 ], [ 8, %.lr.ph125 ], [ 8, %.lr.ph125 ], [ 8, %.lr.ph125 ]
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.am = zext i32 %i.ah to i64                   ; 2 uses
  %i.an = udiv i64 %i.al, %i.am
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  %.not60119.not = icmp eq i64 %i.ao, 0
  br i1 %.not60119.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !862
  %i.ar = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.0121 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.l ] ; 3 uses
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.aw = mul nuw i64 %.0121, %i.am
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = add nuw nsw i64 %.0121, %i.ar           ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !425 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %.not = icmp ult i64 %i.ay, %i.be
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.critedge

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !385 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !398
  %i.bj = lshr i16 %i.bi, 8                       ; 2 uses
  %i.bk = zext nneg i16 %i.bj to i32              ; 2 uses
  %trunc117 = trunc nuw i16 %i.bj to i8
  %trunc117.off = add i8 %trunc117, -1
  %switch = icmp ult i8 %trunc117.off, -3
  br i1 %switch, label %bb.f, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bl = add nsw i32 %i.bk, -1
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !401
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !245 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ugt i64 %i.bs, %i.bm
  br i1 %i.bt, label %bb.g, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !402
  br label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %bb.f, %bb.g
  %.093 = phi ptr [ %i.bv, %bb.g ], [ null, %bb.f ], [ null, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bw = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !2005 ; 10 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bw) #26, !noalias !2005
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i64 0, ptr %i.bx, align 8, !tbaa !863, !noalias !2005
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i8 0, ptr %i.by, align 8, !tbaa !864, !noalias !2005
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store <2 x ptr> %i.aa, ptr %i.bw, align 8, !noalias !2005
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bg, ptr %i.ca, align 8, !tbaa !207, !noalias !2005
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 %i.bk, ptr %i.cb, align 8, !tbaa !865, !noalias !2005
  store ptr %.093, ptr %i.bz, align 8, !tbaa !199, !noalias !2005
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store i64 %i.ax, ptr %i.cc, align 8, !tbaa !201, !noalias !2005
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 448 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 456 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !866 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 464 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !867
  %.not.i.i = icmp eq ptr %i.cg, %i.ci
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.cj = ptrtoint ptr %i.bw to i64
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE:bb.a
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.h, i64 noundef %i.q) #26
  br label %.critedge46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.s = load i64, ptr %i.i, align 8, !tbaa !253
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.critedge46

.critedge46:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = phi ptr [ %i.r, %bb.b ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge46
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !856
  store i32 %i.y, ptr %i.a, align 4, !tbaa !119
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.z, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str.420, i64 82, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.t

bb.d:                                             ; preds = %.critedge46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !329 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !333
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !856
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !416
  %i.am = sub i64 %i.aj, %i.al                    ; 3 uses
  %i.an = icmp ugt i64 %i.am, %i.ag
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !857
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = add i64 %i.am, %i.aq
  %i.as = icmp ugt i64 %i.ar, %i.ag
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.av, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.421, i64 64, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.am
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !260
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store i64 %i.aq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !343
  %i.ba = icmp eq i64 %i.az, 10
  br i1 %i.ba, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit: ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !252 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 1
  %i.be = xor i64 %i.bd, 4919420967581409119
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = zext i16 %i.bg to i64
  %i.bi = xor i64 %i.bh, 21577
  %i.bj = or i64 %i.be, %i.bi
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

bb.h:                                             ; preds = %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 328 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !712 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 344 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !713
  %.not.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.bp, align 8, !tbaa !376
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !712
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !714 ; 4 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.k, label %_ZNKSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #27 ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store ptr %1, ptr %i.cf, align 8, !tbaa !376
  %i.cg = icmp sgt i64 %i.bw, 0
  br i1 %i.cg, label %bb.l, label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ci = load ptr, ptr %i.bq, align 8, !tbaa !713
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.ck) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !714
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !712
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cl, ptr %i.bq, align 8, !tbaa !713
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread: ; preds = %bb.g, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.cm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.co, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 3, ptr nonnull @.str.422, i64 68, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.i, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.sroa.07.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !260
  %.sroa.2.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !331
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 3, ptr %i.cr, align 4, !tbaa !335
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %7, align 8, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.sroa.07.0.copyload, ptr %i.cs, align 8, !tbaa !372
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.2.0.copyload, ptr %i.ct, align 8, !tbaa !373
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !332, !range !256, !noundef !257
  store i8 %i.cx, ptr %i.cq, align 8, !tbaa !332
  %i.cy = call i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo13parse_payloadERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(24) %7) #26 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !858
  %switch.tableidx = add i16 %i.da, -1            ; 2 uses
  %i.db = icmp ult i16 %switch.tableidx, 14
  br i1 %i.db, label %switch.lookup, label %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit

switch.lookup:                                    ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit
  %i.dc = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE, i64 %i.dc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ]
  %i.dd = load i8, ptr %i.d, align 2, !tbaa !685, !range !256, !noundef !257
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !859
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i64 %.0.i, label %bb.s [
    i64 8, label %bb.p
    i64 4, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !115 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !117
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(552) %i.di) #26
  %i.dn = load i32, ptr %i.df, align 8, !tbaa !859
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dm, %i.do                    ; 2 uses
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !115
  %i.dr = call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.dq, i64 noundef %i.dp) #26 ; 2 uses
  %.not44 = icmp eq ptr %i.dr, null
  br i1 %.not44, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = call i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo11walk_fixupsEmRNS0_14SegmentCommandE(ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(216) %i.dr) #26
  %i.dt = and i64 %i.ds, 4294967296
  %.not60 = icmp eq i64 %i.dt, 0
  br i1 %.not60, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.du = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4LIEF7logging6Logger4warnIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(32) %i.dv)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p, %bb.o, %bb.n, %_ZN4LIEF5MachO22ChainedPointerAnalysis8ptr_sizeENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.s, %bb.c
  %.sroa.3.1 = phi i64 [ 2, %bb.c ], [ 4294967303, %bb.s ], [ 7, %bb.f ]
  ret i64 %.sroa.3.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser23infer_indirect_bindingsINS0_7details7MachO32EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = tail call noundef ptr @_ZN4LIEF5MachO6Binary22dynamic_symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.b) #26 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !752, !noalias !2735 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !752, !noalias !2736 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not115126 = icmp eq ptr %i.i, %i.g
  br i1 %.not115126, label %.critedge, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph130, %._crit_edge
  %.sroa.483.0128 = phi ptr [ %i.g, %.lr.ph130 ], [ %i.dz, %._crit_edge ] ; 2 uses
  %.sroa.884.0127 = phi i64 [ 0, %.lr.ph130 ], [ %i.ea, %._crit_edge ]
  %i.r = load ptr, ptr %.sroa.483.0128, align 8, !tbaa !593 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !860, !noalias !2737 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !860, !noalias !2738 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not116122 = icmp eq ptr %i.v, %i.t
  br i1 %.not116122, label %._crit_edge, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %bb.c
  %i.aa = insertelement <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO19IndirectBindingInfoE, i64 16), ptr poison>, ptr %i.r, i64 1
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.loopexit
  %.sroa.474.0124 = phi ptr [ %i.dx, %.loopexit ], [ %i.t, %.lr.ph125.preheader ] ; 2 uses
  %.sroa.8.0123 = phi i64 [ %i.dy, %.loopexit ], [ 0, %.lr.ph125.preheader ]
  %i.ab = load ptr, ptr %.sroa.474.0124, align 8, !tbaa !338 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !606
  %trunc = trunc i32 %i.ad to i8
  switch i8 %trunc, label %.loopexit [
    i8 8, label %bb.d
    i8 6, label %.thread
    i8 7, label %.thread
    i8 16, label %.thread
    i8 20, label %.thread
  ]

bb.d:                                             ; preds = %.lr.ph125
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !861 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %.thread

.thread:                                          ; preds = %.lr.ph125, %.lr.ph125, %.lr.ph125, %.lr.ph125, %bb.d
  %i.ah = phi i32 [ %i.af, %bb.d ], [ 4, %.lr.ph125 ], [ 4, %.lr.ph125 ], [ 4, %.lr.ph125 ], [ 4, %.lr.ph125 ]
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.am = zext i32 %i.ah to i64                   ; 2 uses
  %i.an = udiv i64 %i.al, %i.am
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  %.not60119.not = icmp eq i64 %i.ao, 0
  br i1 %.not60119.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !862
  %i.ar = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.0121 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.l ] ; 3 uses
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.aw = mul nuw i64 %.0121, %i.am
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = add nuw nsw i64 %.0121, %i.ar           ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !425 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %.not = icmp ult i64 %i.ay, %i.be
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.critedge

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !385 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !398
  %i.bj = lshr i16 %i.bi, 8                       ; 2 uses
  %i.bk = zext nneg i16 %i.bj to i32              ; 2 uses
  %trunc117 = trunc nuw i16 %i.bj to i8
  %trunc117.off = add i8 %trunc117, -1
  %switch = icmp ult i8 %trunc117.off, -3
  br i1 %switch, label %bb.f, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bl = add nsw i32 %i.bk, -1
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !401
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !245 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ugt i64 %i.bs, %i.bm
  br i1 %i.bt, label %bb.g, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !402
  br label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %bb.f, %bb.g
  %.093 = phi ptr [ %i.bv, %bb.g ], [ null, %bb.f ], [ null, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bw = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !2739 ; 10 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bw) #26, !noalias !2739
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i64 0, ptr %i.bx, align 8, !tbaa !863, !noalias !2739
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i8 0, ptr %i.by, align 8, !tbaa !864, !noalias !2739
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store <2 x ptr> %i.aa, ptr %i.bw, align 8, !noalias !2739
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bg, ptr %i.ca, align 8, !tbaa !207, !noalias !2739
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 %i.bk, ptr %i.cb, align 8, !tbaa !865, !noalias !2739
  store ptr %.093, ptr %i.bz, align 8, !tbaa !199, !noalias !2739
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store i64 %i.ax, ptr %i.cc, align 8, !tbaa !201, !noalias !2739
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 448 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 456 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !866 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 464 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !867
  %.not.i.i = icmp eq ptr %i.cg, %i.ci
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.cj = ptrtoint ptr %i.bw to i64
end_hunk_1
