Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_picker?download=true
inline.NumInlined: 1888
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7rocksdb20CompactionInputFilesC2ERKS0_:bb.a
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
  %.not413 = icmp slt i32 %4, 0
  br i1 %.not413, label %.critedge127, label %.lr.ph417

.lr.ph417:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.not418 = icmp eq i32 %4, 0
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

bb.b:                                             ; preds = %.lr.ph417, %.thread328
  %indvars.iv474 = phi i64 [ 0, %.lr.ph417 ], [ %indvars.iv.next475, %.thread328 ] ; 5 uses
  %.082415 = phi i8 [ 0, %.lr.ph417 ], [ %.1.lcssa553, %.thread328 ] ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv474, i64 1)
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !407
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %indvars.iv474 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 19 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !410 ; 2 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !411 ; 3 uses
  %.not419 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not419, label %.thread328, label %.lr.ph.preheader

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
  %.1393 = phi i8 [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ %.082415, %.lr.ph.preheader ] ; 6 uses
  %.099392 = phi i64 [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.0311391 = phi i32 [ %.1312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ %i.ch, %.lr.ph.preheader ] ; 5 uses
  %.0314390 = phi i32 [ %.1315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 ], [ -1, %.lr.ph.preheader ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [432 x i8], ptr %i.cj, i64 %.099392
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 368
  %i.cm = invoke noundef i64 @_ZN7rocksdb21TableFileNameToNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %bb.c unwind label %.loopexit337 ; 4 uses

bb.c:                                             ; preds = %.lr.ph
  %i.cn = load i64, ptr %i.j, align 8, !tbaa !386
  %.not.not.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.not.i.i, label %.preheader424, label %bb.e

.preheader424:                                    ; preds = %bb.c, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !200 ; 3 uses
  %i.co = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129, label %bb.d

bb.d:                                             ; preds = %.preheader424
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !374
  %i.cr = icmp eq i64 %i.cm, %i.cq
  br i1 %i.cr, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.preheader424, !llvm.loop !4

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

.loopexit337:                                     ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i230
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke591, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit: ; preds = %bb.g, %bb.d, %bb.f
  %i.dg = trunc i64 %.099392 to i32               ; 2 uses
  %.sroa.speculated276 = call i32 @llvm.smin.i32(i32 %.0311391, i32 %i.dg) ; 4 uses
  %.sroa.speculated272 = call i32 @llvm.smax.i32(i32 %.0314390, i32 %i.dg) ; 4 uses
  %i.dh = icmp eq i8 %.1393, 0
  br i1 %i.dh, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129

bb.i:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  %i.di = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.dj = getelementptr inbounds nuw [432 x i8], ptr %i.di, i64 %.099392 ; 2 uses
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
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.dt = shl nuw i64 %i.dq, 1                    ; 2 uses
  %i.du = icmp ult i64 %i.dm, %i.dt
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.dt, i64 9223372036854775807)
  %.0.i215 = select i1 %i.du, i64 %spec.store.select.i.i, i64 %i.dm ; 2 uses
  %i.dv = add nuw i64 %.0.i215, 1                 ; 2 uses
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %.invoke591, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !383

.invoke591:                                       ; preds = %bb.p, %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.cont592 unwind label %.loopexit.split-lp

.cont592:                                         ; preds = %.invoke591
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.k
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #31
          to label %.noexc219 unwind label %.loopexit337 ; 2 uses

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
  %i.ei = getelementptr inbounds nuw [432 x i8], ptr %i.eh, i64 %.099392 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 208 ; 2 uses
  %.not.i220 = icmp eq ptr %20, %i.ej
  br i1 %.not.i220, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 216
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !363 ; 9 uses
  %i.em = load ptr, ptr %20, align 8, !tbaa !24   ; 3 uses
  %i.en = icmp eq ptr %i.em, %i.h
  %i.eo = load i64, ptr %i.h, align 8
  %i.ep = select i1 %i.en, i64 15, i64 %i.eo      ; 2 uses
  %i.eq = icmp ugt i64 %i.el, %i.ep
  br i1 %i.eq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i222
  %i.er = icmp slt i64 %i.el, 0
  br i1 %i.er, label %.invoke, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = shl nuw i64 %i.ep, 1                    ; 2 uses
  %i.et = icmp ult i64 %i.el, %i.es
  %spec.store.select.i.i228 = call i64 @llvm.umin.i64(i64 %i.es, i64 9223372036854775807)
  %.0.i229 = select i1 %i.et, i64 %spec.store.select.i.i228, i64 %i.el ; 2 uses
  %i.eu = add nuw i64 %.0.i229, 1                 ; 2 uses
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %.invoke591, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i230, !prof !383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i230: ; preds = %bb.p
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #31
          to label %.noexc237 unwind label %.loopexit337 ; 2 uses

.noexc237:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i230
  %i.ex = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.h
  br i1 %i.ey, label %.thread.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i231: ; preds = %.noexc237
  %i.ez = load i64, ptr %i.h, align 8, !tbaa !25
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #29
  br label %.thread.i232

.thread.i232:                                     ; preds = %.noexc237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i231
  store ptr %i.ew, ptr %20, align 8, !tbaa !24
  store i64 %.0.i229, ptr %i.h, align 8, !tbaa !25
  br label %.split12.i224

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i222
  %.not16.i223 = icmp eq i64 %i.el, 0
  br i1 %.not16.i223, label %.split.i227, label %.split12.i224

.split.i227:                                      ; preds = %bb.q
  store i64 0, ptr %i.i, align 8, !tbaa !363
  store i8 0, ptr %i.em, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129

.split12.i224:                                    ; preds = %bb.q, %.thread.i232
  %i.fb = phi ptr [ %i.ew, %.thread.i232 ], [ %i.em, %bb.q ] ; 2 uses
  %i.fc = load ptr, ptr %i.ej, align 8, !tbaa !24 ; 2 uses
  %cond.i225 = icmp eq i64 %i.el, 1
  br i1 %cond.i225, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.split12.i224
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !25
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i226

bb.s:                                             ; preds = %.split12.i224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.fc, i64 %i.el, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i226: ; preds = %bb.s, %bb.r
  store i64 %i.el, ptr %i.i, align 8, !tbaa !363
  %i.fe = load ptr, ptr %20, align 8, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.el
  store i8 0, ptr %i.ff, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129: ; preds = %.lr.ph.i.i.i.i, %.preheader424, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %.split.i227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i226, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  %.1315 = phi i32 [ %.sroa.speculated272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.sroa.speculated272, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit ], [ %.sroa.speculated272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i226 ], [ %.sroa.speculated272, %.split.i227 ], [ %.0314390, %..loopexit_crit_edge21.i.i.i.i ], [ %.0314390, %.preheader424 ], [ %.0314390, %bb.e ], [ %.0314390, %.lr.ph.i.i.i.i ] ; 4 uses
  %.1312 = phi i32 [ %.sroa.speculated276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.sroa.speculated276, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit ], [ %.sroa.speculated276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i226 ], [ %.sroa.speculated276, %.split.i227 ], [ %.0311391, %..loopexit_crit_edge21.i.i.i.i ], [ %.0311391, %.preheader424 ], [ %.0311391, %bb.e ], [ %.0311391, %.lr.ph.i.i.i.i ] ; 7 uses
  %.3 = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.1393, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i226 ], [ 1, %.split.i227 ], [ %.1393, %..loopexit_crit_edge21.i.i.i.i ], [ %.1393, %.preheader424 ], [ %.1393, %bb.e ], [ %.1393, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.fg = add nuw i64 %.099392, 1                 ; 2 uses
  %i.fh = load ptr, ptr %i.ca, align 8, !tbaa !410
  %i.fi = load ptr, ptr %i.bz, align 8, !tbaa !411 ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 432               ; 2 uses
  %i.fn = icmp ult i64 %i.fg, %i.fm
  br i1 %i.fn, label %.lr.ph, label %._crit_edge, !llvm.loop !508

bb.t:                                             ; preds = %._crit_edge
  %.not108 = icmp eq i64 %indvars.iv474, 0        ; 3 uses
  br i1 %.not108, label %bb.z, label %.preheader336.preheader

.preheader336.preheader:                          ; preds = %bb.t
  %smin = call i32 @llvm.smin.i32(i32 %.1312, i32 0) ; 2 uses
  %i.fo = icmp sgt i32 %.1312, 0
  br i1 %i.fo, label %.lr.ph628, label %.preheader336._crit_edge

.lr.ph628:                                        ; preds = %.preheader336.preheader
  %i.fp = zext nneg i32 %.1312 to i64
  br label %bb.u

.preheader336:                                    ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit
  %i.fq = trunc nuw i64 %i.ft to i32              ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.u, label %.preheader336._crit_edge, !llvm.loop !509

bb.u:                                             ; preds = %.lr.ph628, %.preheader336
  %i.fs = phi i32 [ %.1312, %.lr.ph628 ], [ %i.fq, %.preheader336 ]
  %indvars.iv627 = phi i64 [ %i.fp, %.lr.ph628 ], [ %i.ft, %.preheader336 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  %i.ft = add nsw i64 %indvars.iv627, -1          ; 3 uses
  %i.fu = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.fv = getelementptr inbounds nuw [432 x i8], ptr %i.fu, i64 %i.ft ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 208
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !24
  store ptr %i.fx, ptr %21, align 8, !tbaa !387
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 216
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !363
  store i64 %i.fz, ptr %i.m, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  %i.ga = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.gb = getelementptr inbounds nuw [432 x i8], ptr %i.ga, i64 %indvars.iv627 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 176
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !24
  store ptr %i.gd, ptr %22, align 8, !tbaa !387
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 184
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !363
  store i64 %i.gf, ptr %i.n, align 8, !tbaa !388
  %i.gg = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 232
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = invoke noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %21, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %22, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit unwind label %bb.v, !inline_history !2

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit: ; preds = %bb.u
  %i.gk = icmp slt i32 %i.gj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  br i1 %i.gk, label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit._crit_edge, label %.preheader336, !llvm.loop !509

bb.v:                                             ; preds = %bb.u
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  br label %.body

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit._crit_edge: ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit
  br label %.preheader336._crit_edge, !llvm.loop !509

.preheader336._crit_edge:                         ; preds = %.preheader336, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit._crit_edge, %.preheader336.preheader
  %.2.lcssa = phi i32 [ %i.fs, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit._crit_edge ], [ %smin, %.preheader336.preheader ], [ %smin, %.preheader336 ]
  %i.gm = zext nneg i32 %.1315 to i64
  br label %bb.w

bb.w:                                             ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit130, %.preheader336._crit_edge
  %indvars.iv463 = phi i64 [ %indvars.iv.next464, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit130 ], [ %i.gm, %.preheader336._crit_edge ] ; 4 uses
  %i.gn = load ptr, ptr %i.ca, align 8, !tbaa !410
  %i.go = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 432
  %i.gt = shl i64 %i.gs, 32
  %sext = add i64 %i.gt, -4294967296
  %i.gu = ashr exact i64 %sext, 32
  %i.gv = icmp slt i64 %indvars.iv463, %i.gu
  br i1 %i.gv, label %bb.x, label %.loopexit335.loopexit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %i.gw = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.gx = getelementptr inbounds nuw [432 x i8], ptr %i.gw, i64 %indvars.iv.next464 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 176
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !24
  store ptr %i.gz, ptr %23, align 8, !tbaa !387
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 184
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !363
  store i64 %i.hb, ptr %i.o, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  %i.hc = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.hd = getelementptr inbounds nuw [432 x i8], ptr %i.hc, i64 %indvars.iv463 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 208
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !24
  store ptr %i.hf, ptr %24, align 8, !tbaa !387
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 216
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !363
  store i64 %i.hh, ptr %i.p, align 8, !tbaa !388
  %i.hi = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 232
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = invoke noundef i32 %i.hk(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %23, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %24, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit130 unwind label %bb.y, !inline_history !2

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit130: ; preds = %bb.x
  %i.hm = icmp sgt i32 %i.hl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br i1 %i.hm, label %.loopexit335.loopexit, label %bb.w, !llvm.loop !510

bb.y:                                             ; preds = %bb.x
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %.body

bb.z:                                             ; preds = %bb.t
  br i1 %.not418, label %.loopexit335, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ho = trunc i64 %i.fm to i32
  %i.hp = add i32 %i.ho, -1
  br label %.loopexit335

.loopexit335.loopexit:                            ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit130, %bb.w
  %i.hq = trunc nuw nsw i64 %indvars.iv463 to i32
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit, %bb.z, %bb.aa
  %.3317 = phi i32 [ %i.hp, %bb.aa ], [ %.1315, %bb.z ], [ %i.hq, %.loopexit335.loopexit ] ; 4 uses
  %.3313 = phi i32 [ %.1312, %bb.aa ], [ %.1312, %bb.z ], [ %.2.lcssa, %.loopexit335.loopexit ] ; 4 uses
  %.not109397 = icmp sgt i32 %.3313, %.3317
  br i1 %.not109397, label %._crit_edge401.thread, label %.lr.ph400.preheader

.lr.ph400.preheader:                              ; preds = %.loopexit335
  %i.hr = sext i32 %.3313 to i64
  %i.hs = add i32 %.3317, 1
  br label %.lr.ph400

.lr.ph400:                                        ; preds = %.lr.ph400.preheader, %.loopexit
  %indvars.iv466 = phi i64 [ %i.hr, %.lr.ph400.preheader ], [ %indvars.iv.next467, %.loopexit ] ; 3 uses
  %i.ht = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.hu = getelementptr inbounds nuw [432 x i8], ptr %i.ht, i64 %indvars.iv466 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 248
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !415, !range !48, !noundef !49
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %.lr.ph400
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  %i.hy = load ptr, ptr %i.bz, align 8, !tbaa !411
  %i.hz = getelementptr inbounds nuw [432 x i8], ptr %i.hy, i64 %indvars.iv466 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 368
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !24, !noalias !528
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 376
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !363, !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33, !noalias !528
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull @.str.44, i64 noundef 32, ptr noundef %i.ib, i64 noundef %i.id, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33, !noalias !528
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.ie = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 5 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !363, !noalias !529 ; 5 uses
  %i.ig = icmp sgt i64 %i.if, 9223372036854775777
  br i1 %i.ig, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %bb.ad
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.ac
  %i.ih = add nsw i64 %i.if, 30                   ; 3 uses
  %i.ii = load ptr, ptr %27, align 8, !tbaa !24, !noalias !529 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 9 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.il = icmp ult i64 %i.if, 16
end_hunk_0
