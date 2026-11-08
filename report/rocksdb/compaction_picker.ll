Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_picker?download=true
inline.NumInlined: 1888
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7rocksdb20CompactionInputFilesC2ERKS0_:bb.a
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i5, label %.noexc7, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %.noexc.i.i6, label %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i, !prof !383

.noexc.i.i6:                                      ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i6
  unreachable

_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !380
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !403
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !381
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !396 ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !396 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc7, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.noexc7 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %.noexc7 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !404
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.an
  br i1 %i.ar, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc7
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %.noexc7 ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !403
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i6
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #29
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb16CompactionPicker40SanitizeCompactionInputFilesForAllLevelsEPSt13unordered_setImSt4hashImESt8equal_toImESaImEERKNS_20ColumnFamilyMetaDataEi(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %3, i32 noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %25 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %28 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %29 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %30 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %31 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %32 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %33 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %34 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %35 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %36 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %37 = alloca %"struct.rocksdb::SstFileMetaData", align 8 ; 45 uses
  %38 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %41 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !368  ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  %i.f = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 11 uses
  store ptr %i.f, ptr %19, align 8, !tbaa !370
  %i.g = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  store i64 0, ptr %i.g, align 8, !tbaa !363
  store i8 0, ptr %i.f, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  store ptr %i.h, ptr %20, align 8, !tbaa !370
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !363
  store i8 0, ptr %i.h, align 8, !tbaa !25
  %.not425 = icmp slt i32 %4, 0
  br i1 %.not425, label %.critedge127, label %.lr.ph429

.lr.ph429:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.not430 = icmp eq i32 %4, 0
  %i.q = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %37, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %37, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %37, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %37, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %37, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %37, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %37, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %37, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %37, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %37, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %37, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %37, i64 160
  %i.ao = getelementptr inbounds nuw i8, ptr %37, i64 176 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %37, i64 192 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %37, i64 184 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %37, i64 208 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %37, i64 224 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %37, i64 216 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %37, i64 240
  %i.av = getelementptr inbounds nuw i8, ptr %37, i64 248
  %i.aw = getelementptr inbounds nuw i8, ptr %37, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %37, i64 304
  %i.ay = getelementptr inbounds nuw i8, ptr %37, i64 320 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %37, i64 312
  %i.ba = getelementptr inbounds nuw i8, ptr %37, i64 336
  %i.bb = getelementptr inbounds nuw i8, ptr %37, i64 352 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %37, i64 344
  %i.bd = getelementptr inbounds nuw i8, ptr %37, i64 368
  %i.be = getelementptr inbounds nuw i8, ptr %37, i64 384 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %37, i64 376
  %i.bg = getelementptr inbounds nuw i8, ptr %37, i64 400
  %i.bh = getelementptr inbounds nuw i8, ptr %37, i64 416 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %37, i64 408
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bv = zext nneg i32 %4 to i64
  %i.bw = add nuw i32 %4, 1
  %wide.trip.count = zext i32 %i.bw to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph429, %.thread328
  %indvars.iv495.a = phi i64 [ 0, %.lr.ph429 ], [ %indvars.iv.next496, %.thread328 ] ; 5 uses
  %.082427 = phi i8 [ 0, %.lr.ph429 ], [ %.1.lcssa574, %.thread328 ] ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv495.a, i64 1)
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !407
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %indvars.iv495.a ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 19 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !410 ; 2 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !411 ; 3 uses
  %.not431 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not431, label %.thread328, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 432
  %i.ch = trunc i64 %i.cg to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129
  %i.ci = icmp eq i32 %.1315, -1
  br i1 %i.ci, label %.thread328, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129
  %i.cj = phi ptr [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ %i.cc, %.lr.ph.preheader ]
  %.1405 = phi i8 [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ %.082427, %.lr.ph.preheader ] ; 6 uses
  %.099404 = phi i64 [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.0311403 = phi i32 [ %.1312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ %i.ch, %.lr.ph.preheader ] ; 5 uses
  %.0314402 = phi i32 [ %.1315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ -1, %.lr.ph.preheader ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [432 x i8], ptr %i.cj, i64 %.099404
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 368
  %i.cm = invoke noundef i64 @_ZN7rocksdb21TableFileNameToNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %bb.c unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.c:                                             ; preds = %.lr.ph
  %i.cn = load i64, ptr %i.j, align 8, !tbaa !386
  %.not.not.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.not.i.i, label %.preheader437, label %bb.e

.preheader437:                                    ; preds = %bb.c, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !200 ; 3 uses
  %i.co = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129, label %bb.d

bb.d:                                             ; preds = %.preheader437
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !374
  %i.cr = icmp eq i64 %i.cm, %i.cq
  br i1 %i.cr, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.preheader437, !llvm.loop !4

bb.e:                                             ; preds = %bb.c
  %i.cs = load i64, ptr %i.k, align 8, !tbaa !391 ; 2 uses
  %i.ct = urem i64 %i.cm, %i.cs                   ; 2 uses
  %i.cu = load ptr, ptr %2, align 8, !tbaa !392
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !393 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !200 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !374
  %i.da = icmp eq i64 %i.cm, %i.cz
  br i1 %i.da, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.db = icmp eq i64 %i.cm, %i.de
  br i1 %i.db, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.dc, %bb.g ], [ %i.cx, %bb.f ]
  %i.dc = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !200 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not18.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !374 ; 2 uses
  %i.df = urem i64 %i.de, %i.cs
  %.not19.i.i.i.i = icmp eq i64 %i.df, %i.ct
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129, !llvm.loop !5

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit: ; preds = %bb.g, %bb.d, %bb.f
  %i.dg = trunc i64 %.099404 to i32               ; 2 uses
  %.sroa.speculated276 = call i32 @llvm.smin.i32(i32 %.0311403, i32 %i.dg) ; 4 uses
  %.sroa.speculated272 = call i32 @llvm.smax.i32(i32 %.0314402, i32 %i.dg) ; 4 uses
  %i.dh = icmp eq i8 %.1405, 0
  br i1 %i.dh, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129

bb.i:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  %i.di = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.dj = getelementptr inbounds nuw [432 x i8], ptr %i.di, i64 %.099404 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 176 ; 2 uses
  %.not.i = icmp eq ptr %19, %i.dk
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 184
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !363 ; 9 uses
  %i.dn = load ptr, ptr %19, align 8, !tbaa !24   ; 3 uses
  %i.do = icmp eq ptr %i.dn, %i.f
  %i.dp = load i64, ptr %i.f, align 8
  %i.dq = select i1 %i.do, i64 15, i64 %i.dp      ; 2 uses
  %i.dr = icmp ugt i64 %i.dm, %i.dq
  br i1 %i.dr, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ds = icmp slt i64 %i.dm, 0
  br i1 %i.ds, label %.invoke, label %bb.k

.invoke:                                          ; preds = %bb.o, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #30
          to label %.cont unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.dt = shl nuw i64 %i.dq, 1                    ; 2 uses
  %i.du = icmp ult i64 %i.dm, %i.dt
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.dt, i64 9223372036854775807)
  %.0.i215 = select i1 %i.du, i64 %spec.store.select.i.i, i64 %i.dm ; 2 uses
  %i.dv = add nuw i64 %.0.i215, 1                 ; 2 uses
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %.invoke610, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !383

.invoke610:                                       ; preds = %bb.p, %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.cont611 unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont611:                                         ; preds = %.invoke610
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.k
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #31
          to label %.noexc219 unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc219:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.dy = load ptr, ptr %19, align 8, !tbaa !24   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.f
  br i1 %i.dz, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i: ; preds = %.noexc219
  %i.ea = load i64, ptr %i.f, align 8, !tbaa !25
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #29
  br label %.thread.i

.thread.i:                                        ; preds = %.noexc219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i
  store ptr %i.dx, ptr %19, align 8, !tbaa !24
  store i64 %.0.i215, ptr %i.f, align 8, !tbaa !25
  br label %.split12.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %.not16.i = icmp eq i64 %i.dm, 0
  br i1 %.not16.i, label %.split.i, label %.split12.i

.split.i:                                         ; preds = %bb.l
  store i64 0, ptr %i.g, align 8, !tbaa !363
  store i8 0, ptr %i.dn, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

.split12.i:                                       ; preds = %bb.l, %.thread.i
  %i.ec = phi ptr [ %i.dx, %.thread.i ], [ %i.dn, %bb.l ] ; 2 uses
  %i.ed = load ptr, ptr %i.dk, align 8, !tbaa !24 ; 2 uses
  %cond.i = icmp eq i64 %i.dm, 1
  br i1 %cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.split12.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !25
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %.split12.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.ed, i64 %i.dm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m
  store i64 %i.dm, ptr %i.g, align 8, !tbaa !363
  %i.ef = load ptr, ptr %19, align 8, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dm
  store i8 0, ptr %i.eg, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.i, %.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.eh = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.ei = getelementptr inbounds nuw [432 x i8], ptr %i.eh, i64 %.099404 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 208 ; 2 uses
  %.not.i220 = icmp eq ptr %20, %i.ej
  br i1 %.not.i220, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 216
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !363 ; 9 uses
  %i.em = load ptr, ptr %20, align 8, !tbaa !24   ; 3 uses
  %i.en = icmp eq ptr %i.em, %i.h
  %i.eo = load i64, ptr %i.h, align 8
end_hunk_0
begin_hunk_1_@_ZNK7rocksdb16CompactionPicker40SanitizeCompactionInputFilesForAllLevelsEPSt13unordered_setImSt4hashImESt8equal_toImESaImEERKNS_20ColumnFamilyMetaDataEi:bb.a

bb.as:                                            ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit145
  %i.lo = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.lp = getelementptr inbounds nuw [432 x i8], ptr %i.lo, i64 %indvars.iv490
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 176
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.lq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit147 unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %.lr.ph416
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  br label %.body

.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i230, %bb.au, %bb.as, %bb.al, %.critedge.i, %bb.az, %bb.ax, %.invoke610, %.invoke
  %lpad.loopexit.split-lp672 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit147: ; preds = %bb.as, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  %i.ls = load ptr, ptr %20, align 8, !tbaa !24
  store ptr %i.ls, ptr %31, align 8, !tbaa !387
  %i.lt = load i64, ptr %i.i, align 8, !tbaa !363
  store i64 %i.lt, ptr %i.w, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  %i.lu = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.lv = getelementptr inbounds nuw [432 x i8], ptr %i.lu, i64 %indvars.iv490 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 208
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !24
  store ptr %i.lx, ptr %32, align 8, !tbaa !387
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 216
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !363
  store i64 %i.lz, ptr %i.x, align 8, !tbaa !388
  %i.ma = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 232
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = invoke noundef i32 %i.mc(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %31, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %32, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit149 unwind label %bb.av, !inline_history !2

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit147
  %i.me = icmp slt i32 %i.md, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br i1 %i.me, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit151

bb.au:                                            ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit149
  %i.mf = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.mg = getelementptr inbounds nuw [432 x i8], ptr %i.mf, i64 %indvars.iv490
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 208
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.mh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit151 unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit147
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit151: ; preds = %bb.au, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit149
  %indvars.iv.next491 = add nsw i64 %indvars.iv490, 1 ; 2 uses
  %lftr.wideiv493 = trunc i64 %indvars.iv.next491 to i32
  %exitcond494.not = icmp eq i32 %i.la, %lftr.wideiv493
  br i1 %exitcond494.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit159, label %.lr.ph416, !llvm.loop !518

bb.aw:                                            ; preds = %._crit_edge413.thread, %._crit_edge413
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #33
  %i.mj = load ptr, ptr %19, align 8, !tbaa !24
  store ptr %i.mj, ptr %33, align 8, !tbaa !387
  %i.mk = load i64, ptr %i.g, align 8, !tbaa !363
  store i64 %i.mk, ptr %i.q, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #33
  %i.ml = sext i32 %.3313 to i64                  ; 2 uses
  %i.mm = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.mn = getelementptr inbounds nuw [432 x i8], ptr %i.mm, i64 %i.ml ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 176
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !24
  store ptr %i.mp, ptr %34, align 8, !tbaa !387
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 184
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !363
  store i64 %i.mr, ptr %i.r, align 8, !tbaa !388
  %i.ms = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 232
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = invoke noundef i32 %i.mu(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %33, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %34, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit153 unwind label %bb.ay, !inline_history !2

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit153: ; preds = %bb.aw
  %i.mw = icmp sgt i32 %i.mv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  br i1 %i.mw, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit155

bb.ax:                                            ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit153
  %i.mx = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.my = getelementptr inbounds nuw [432 x i8], ptr %i.mx, i64 %i.ml
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 176
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.mz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit155 unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.aw
  %i.na = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit155: ; preds = %bb.ax, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit153
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #33
  %i.nb = load ptr, ptr %20, align 8, !tbaa !24
  store ptr %i.nb, ptr %35, align 8, !tbaa !387
  %i.nc = load i64, ptr %i.i, align 8, !tbaa !363
  store i64 %i.nc, ptr %i.s, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #33
  %i.nd = sext i32 %.3317 to i64                  ; 2 uses
  %i.ne = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.nf = getelementptr inbounds nuw [432 x i8], ptr %i.ne, i64 %i.nd ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 208
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !24
  store ptr %i.nh, ptr %36, align 8, !tbaa !387
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 216
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !363
  store i64 %i.nj, ptr %i.t, align 8, !tbaa !388
  %i.nk = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 232
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = invoke noundef i32 %i.nm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %35, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %36, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit157 unwind label %bb.ba, !inline_history !2

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit155
  %i.no = icmp slt i32 %i.nn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br i1 %i.no, label %bb.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit159

bb.az:                                            ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit157
  %i.np = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.nq = getelementptr inbounds nuw [432 x i8], ptr %i.np, i64 %i.nd
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 208
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.nr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit159 unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit155
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit151, %._crit_edge413.thread, %bb.az, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #33
  store ptr %i.y, ptr %37, align 8, !tbaa !370
  store i64 0, ptr %i.z, align 8, !tbaa !363
  store i8 0, ptr %i.y, align 8, !tbaa !25
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !370
  store i64 0, ptr %i.ac, align 8, !tbaa !363
  store i8 0, ptr %i.ab, align 8, !tbaa !25
  store i64 0, ptr %i.ad, align 8, !tbaa !530
  store i64 0, ptr %i.af, align 8, !tbaa !531
  store i8 0, ptr %i.ag, align 8, !tbaa !532
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !370
  store i64 0, ptr %i.aj, align 8, !tbaa !363
  store i8 0, ptr %i.ai, align 8, !tbaa !25
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !370
  store i64 0, ptr %i.am, align 8, !tbaa !363
  store i8 0, ptr %i.al, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !370
  store i64 0, ptr %i.aq, align 8, !tbaa !363
  store i8 0, ptr %i.ap, align 8, !tbaa !25
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !370
  store i64 0, ptr %i.at, align 8, !tbaa !363
  store i8 0, ptr %i.as, align 8, !tbaa !25
  store i64 0, ptr %i.au, align 8, !tbaa !533
  store i8 0, ptr %i.av, align 8, !tbaa !415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i8 0, i64 48, i1 false)
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !370
  store i64 0, ptr %i.az, align 8, !tbaa !363
  store i8 0, ptr %i.ay, align 8, !tbaa !25
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !370
  store i64 0, ptr %i.bc, align 8, !tbaa !363
  store i8 0, ptr %i.bb, align 8, !tbaa !25
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !370
  store i64 0, ptr %i.bf, align 8, !tbaa !363
  store i8 0, ptr %i.be, align 8, !tbaa !25
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !370
  store i64 0, ptr %i.bi, align 8, !tbaa !363
  store i8 0, ptr %i.bh, align 8, !tbaa !25
  store i32 2, ptr %i.ae, align 8, !tbaa !534
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit161 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit159
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit161
  %i.nt = trunc nuw nsw i64 %indvars.iv495.a to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.nt, i32 1)
  %.not114421 = icmp sgt i32 %.sroa.speculated, %4
  br i1 %.not114421, label %._crit_edge424, label %.lr.ph423

.lr.ph423:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit163, %._crit_edge420
  %indvars.iv497 = phi i64 [ %indvars.iv.next498.a, %._crit_edge420 ], [ %umax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit163 ] ; 3 uses
  %i.nu = load ptr, ptr %i.a, align 8, !tbaa !407
  %i.nv = getelementptr inbounds nuw [40 x i8], ptr %i.nu, i64 %indvars.iv497 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !416 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !416 ; 2 uses
  %i.oa = icmp eq ptr %i.nx, %i.nz
  br i1 %i.oa, label %._crit_edge420, label %.lr.ph419

.lr.ph419:                                        ; preds = %.lr.ph423, %_ZN7rocksdb12_GLOBAL__N_124HaveOverlappingKeyRangesEPKNS_10ComparatorERKNS_15SstFileMetaDataES6_.exit
  %.sroa.0263.0417 = phi ptr [ %i.tl, %_ZN7rocksdb12_GLOBAL__N_124HaveOverlappingKeyRangesEPKNS_10ComparatorERKNS_15SstFileMetaDataES6_.exit ], [ %i.nx, %.lr.ph423 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.ob = load ptr, ptr %i.ao, align 8, !tbaa !24
  store ptr %i.ob, ptr %6, align 8, !tbaa !387
  %i.oc = load i64, ptr %i.aq, align 8, !tbaa !363
  store i64 %i.oc, ptr %i.bj, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 176 ; 3 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !24
  store ptr %i.oe, ptr %7, align 8, !tbaa !387
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 184 ; 3 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !363
  store i64 %i.og, ptr %i.bk, align 8, !tbaa !388
  %i.oh = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 232
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = invoke noundef i32 %i.oj(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true)
          to label %.noexc165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !519

.noexc165:                                        ; preds = %.lr.ph419
  %i.ol = icmp sgt i32 %i.ok, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %i.ol, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc165
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.om = load ptr, ptr %i.ao, align 8, !tbaa !24
  store ptr %i.om, ptr %8, align 8, !tbaa !387
  %i.on = load i64, ptr %i.aq, align 8, !tbaa !363
  store i64 %i.on, ptr %i.bn, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 208
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !24
  store ptr %i.op, ptr %9, align 8, !tbaa !387
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 216
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !363
  store i64 %i.or, ptr %i.bo, align 8, !tbaa !388
  %i.os = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 232
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = invoke noundef i32 %i.ou(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true)
          to label %.noexc166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !519

.noexc166:                                        ; preds = %bb.bb
  %i.ow = icmp slt i32 %i.ov, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %i.ow, label %bb.bg, label %bb.bd

bb.bc:                                            ; preds = %.noexc165
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.ox = load ptr, ptr %i.ar, align 8, !tbaa !24
  store ptr %i.ox, ptr %10, align 8, !tbaa !387
  %i.oy = load i64, ptr %i.at, align 8, !tbaa !363
  store i64 %i.oy, ptr %i.bl, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.oz = load ptr, ptr %i.od, align 8, !tbaa !24
  store ptr %i.oz, ptr %11, align 8, !tbaa !387
  %i.pa = load i64, ptr %i.of, align 8, !tbaa !363
  store i64 %i.pa, ptr %i.bm, align 8, !tbaa !388
  %i.pb = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 232
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = invoke noundef i32 %i.pd(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext true)
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !519

.noexc167:                                        ; preds = %bb.bc
  %i.pf = icmp sgt i32 %i.pe, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br i1 %i.pf, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %.noexc167, %.noexc166
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.pg = load ptr, ptr %i.ar, align 8, !tbaa !24
  store ptr %i.pg, ptr %12, align 8, !tbaa !387
  %i.ph = load i64, ptr %i.at, align 8, !tbaa !363
  store i64 %i.ph, ptr %i.bp, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 208 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !24
  store ptr %i.pj, ptr %13, align 8, !tbaa !387
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 216 ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !363
  store i64 %i.pl, ptr %i.bq, align 8, !tbaa !388
  %i.pm = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 232
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = invoke noundef i32 %i.po(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %12, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %13, i1 noundef zeroext true)
          to label %.noexc168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !519

.noexc168:                                        ; preds = %bb.bd
  %i.pq = icmp slt i32 %i.pp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %i.pq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc168
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.pr = load ptr, ptr %i.ar, align 8, !tbaa !24
  store ptr %i.pr, ptr %14, align 8, !tbaa !387
  %i.ps = load i64, ptr %i.at, align 8, !tbaa !363
  store i64 %i.ps, ptr %i.bt, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.pt = load ptr, ptr %i.od, align 8, !tbaa !24
  store ptr %i.pt, ptr %15, align 8, !tbaa !387
  %i.pu = load i64, ptr %i.of, align 8, !tbaa !363
  store i64 %i.pu, ptr %i.bu, align 8, !tbaa !388
  %i.pv = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 232
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = invoke noundef i32 %i.px(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %14, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %15, i1 noundef zeroext true)
          to label %.noexc169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !519

.noexc169:                                        ; preds = %bb.be
  %i.pz = icmp sgt i32 %i.py, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br i1 %i.pz, label %bb.bg, label %_ZN7rocksdb12_GLOBAL__N_124HaveOverlappingKeyRangesEPKNS_10ComparatorERKNS_15SstFileMetaDataES6_.exit

bb.bf:                                            ; preds = %.noexc168
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  %i.qa = load ptr, ptr %i.ao, align 8, !tbaa !24
  store ptr %i.qa, ptr %16, align 8, !tbaa !387
  %i.qb = load i64, ptr %i.aq, align 8, !tbaa !363
  store i64 %i.qb, ptr %i.br, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.qc = load ptr, ptr %i.pi, align 8, !tbaa !24
  store ptr %i.qc, ptr %17, align 8, !tbaa !387
  %i.qd = load i64, ptr %i.pk, align 8, !tbaa !363
  store i64 %i.qd, ptr %i.bs, align 8, !tbaa !388
  %i.qe = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 232
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = invoke noundef i32 %i.qg(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %16, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %17, i1 noundef zeroext true)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !519

.noexc170:                                        ; preds = %bb.bf
  %i.qi = icmp slt i32 %i.qh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br i1 %i.qi, label %bb.bg, label %_ZN7rocksdb12_GLOBAL__N_124HaveOverlappingKeyRangesEPKNS_10ComparatorERKNS_15SstFileMetaDataES6_.exit

bb.bg:                                            ; preds = %.noexc166, %.noexc167, %.noexc169, %.noexc170
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 248
  %i.qk = load i8, ptr %i.qj, align 8, !tbaa !415, !range !48, !noundef !49
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %bb.bh, label %bb.br

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #33
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 368
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !24, !noalias !535
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0263.0417, i64 376
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !363, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !535
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull @.str.46, i64 noundef 5, ptr noundef %i.qn, i64 noundef %i.qp, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !535
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.qq = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 5 uses
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !363, !noalias !536 ; 5 uses
  %i.qs = icmp sgt i64 %i.qr, 9223372036854775707
  br i1 %i.qs, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i173

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc183 unwind label %bb.bp

.noexc183:                                        ; preds = %bb.bj
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i173: ; preds = %bb.bi
  %i.qt = add nsw i64 %i.qr, 100                  ; 3 uses
  %i.qu = load ptr, ptr %40, align 8, !tbaa !24, !noalias !536 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 9 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i182: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i173
  %i.qx = icmp ult i64 %i.qr, 16
  call void @llvm.assume(i1 %i.qx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i174: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i173
end_hunk_1
