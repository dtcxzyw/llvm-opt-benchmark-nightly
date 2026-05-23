inline.NumInlined: 2820
inline.NumDeleted: 950
begin_hunk_0
@.str.57 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE18DynamicFixupARM64X5parseERNS0_6ParserERNS_10SpanStreamE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.38") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(215) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %3 = alloca %"struct.LIEF::PE::details::fixup_record", align 2 ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"class.LIEF::result.47", align 8   ; 20 uses
  %5 = alloca %"struct.LIEF::PE::DynamicFixupARM64X::reloc_entry_t", align 8 ; 11 uses
  %6 = alloca %"class.std::vector.94", align 16   ; 8 uses
  %7 = alloca %"struct.LIEF::PE::DynamicFixupARM64X::reloc_entry_t", align 8 ; 11 uses
  %8 = alloca %"struct.LIEF::PE::DynamicFixupARM64X::reloc_entry_t", align 8 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22, !noalias !4 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 2, ptr %i.e, align 8, !noalias !4
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE18DynamicFixupARM64XE, i64 16), ptr %i.d, align 8, !noalias !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !4
  store ptr %i.d, ptr %0, align 8, !alias.scope !4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load ptr, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %2) #23, !inline_history !7
  %i.m = icmp ult i64 %i.h, %i.l
  br i1 %i.m, label %.lr.ph101, label %.critedge

.lr.ph101:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 214 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101, %.backedge
  %i.ay = load i64, ptr %i.g, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4
  %i.az = load ptr, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.c, i64 noundef %i.ay, i64 noundef 4, i64 noundef 0) #23, !inline_history !8
  %i.bd = and i64 %i.bc, 4294967296
  %.not.i.i = icmp eq i64 %i.bd, 0
  store i64 %i.ay, ptr %i.g, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.c

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.be = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.11) #23 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.bf = load i8, ptr %i.n, align 8, !range !9, !noundef !10
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.d, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #23
  %.pre.i = load i64, ptr %i.g, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.c, %bb.d
  %i.bh = phi i64 [ %i.ay, %bb.c ], [ %.pre.i, %bb.d ]
  %i.bi = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.bj = add i64 %i.bh, 4                        ; 4 uses
  store i64 %i.bj, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4
  %i.bk = load ptr, ptr %2, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.b, i64 noundef %i.bj, i64 noundef 4, i64 noundef 0) #23, !inline_history !8
  %i.bo = and i64 %i.bn, 4294967296
  %.not.i.i33 = icmp eq i64 %i.bo, 0
  store i64 %i.bj, ptr %i.g, align 8
  br i1 %.not.i.i33, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit38.thread, label %bb.e

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit38.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.11) #23 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.bq = load i8, ptr %i.n, align 8, !range !9, !noundef !10
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.f, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit38

bb.f:                                             ; preds = %bb.e
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #23
  %.pre.i36 = load i64, ptr %i.g, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit38

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit38: ; preds = %bb.e, %bb.f
  %i.bs = phi i64 [ %i.bj, %bb.e ], [ %.pre.i36, %bb.f ]
  %i.bt = load i32, ptr %i.b, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bu = add i64 %i.bs, 4                        ; 4 uses
  store i64 %i.bu, ptr %i.g, align 8
  %i.bv = icmp eq i32 %i.bt, 0
  br i1 %i.bv, label %.backedge, label %bb.g, !llvm.loop !11

bb.g:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bw = add i32 %i.bt, -8
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.by = load i64, ptr %i.o, align 8, !noalias !13 ; 2 uses
  %i.bz = icmp ugt i64 %i.bu, %i.by
  %i.ca = add i64 %i.bu, %i.bx                    ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, %i.by
  %or.cond.i = or i1 %i.bz, %i.cb
  br i1 %or.cond.i, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = load ptr, ptr %i.p, align 8, !noalias !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  store i64 0, ptr %i.q, align 8, !alias.scope !13
  store i8 0, ptr %i.r, align 8, !alias.scope !13
  store i32 3, ptr %i.s, align 4, !alias.scope !13
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %4, align 8, !alias.scope !13
  store ptr %i.cd, ptr %i.t, align 8, !alias.scope !13
  store i64 %i.bx, ptr %i.u, align 8, !alias.scope !13
  store i8 1, ptr %i.v, align 8, !alias.scope !13
  store i64 %i.ca, ptr %i.g, align 8
  %i.ce = call noundef i64 @_ZNK4LIEF10SpanStream4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23, !inline_history !7
  %.not118 = icmp eq i64 %i.ce, 0
  br i1 %.not118, label %.thread126, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.x
  %i.cf = load i64, ptr %i.q, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i16 0, ptr %3, align 2
  %i.cg = load ptr, ptr %4, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %3, i64 noundef %i.cf, i64 noundef 2, i64 noundef 0) #23, !inline_history !16
  %i.ck = and i64 %i.cj, 4294967296
  %.not.i.i39 = icmp eq i64 %i.ck, 0
  %i.cl = load i16, ptr %3, align 2               ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.not.i.i39, label %.thread126, label %_ZNK4LIEF12BinaryStream4readINS_2PE7details12fixup_recordEEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readINS_2PE7details12fixup_recordEEENS_6resultIT_EEv.exit: ; preds = %.lr.ph
  %i.cm = add i64 %i.cf, 2                        ; 4 uses
  store i64 %i.cm, ptr %i.q, align 8
  %i.cn = and i16 %i.cl, 4095
  %i.co = zext nneg i16 %i.cn to i32
  %i.cp = add i32 %i.bi, %i.co                    ; 3 uses
  %9 = lshr i16 %i.cl, 12
  %10 = and i16 %9, 3
  switch i16 %10, label %default.unreachable117 [
    i16 0, label %bb.i
    i16 1, label %bb.k
    i16 2, label %bb.r
    i16 3, label %bb.w
  ]

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_2PE7details12fixup_recordEEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 %i.cp, ptr %5, align 8
  store i32 0, ptr %i.ak, align 4
  %i.cq = lshr i16 %i.cl, 14
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = shl nuw nsw i64 1, %i.cr
  store i64 %i.cs, ptr %i.al, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 32, i1 false)
  %i.ct = load ptr, ptr %i.aw, align 8            ; 7 uses
  %i.cu = load ptr, ptr %i.ax, align 8
  %.not.i.i40 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i40, label %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit, label %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 16, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load ptr, ptr %i.am, align 8
  store ptr %i.cw, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = load ptr, ptr %i.ao, align 8
  store ptr %i.cy, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.da = load ptr, ptr %i.ap, align 8
  store ptr %i.da, ptr %i.cz, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.dc = load i64, ptr %i.an, align 8
  store i64 %i.dc, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.aw, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  store ptr %i.de, ptr %i.aw, align 8
  br label %_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit

_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.i
  call void @_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %5)
  %.pre104 = load ptr, ptr %i.am, align 8         ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre104, null
  br i1 %.not.i.i.i.i, label %_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit
  %i.df = load ptr, ptr %i.ap, align 8
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %.pre104 to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %.pre104, i64 noundef %i.di) #24
  br label %_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit

_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit: ; preds = %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit.thread, %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.x

bb.k:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_2PE7details12fixup_recordEEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.dj = lshr i16 %i.cl, 14
  %i.dk = zext nneg i16 %i.dj to i32
  %i.dl = shl nuw nsw i32 1, %i.dk
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = load ptr, ptr %4, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.dm) #23
  %i.dr = and i64 %i.dq, 4294967296
  %.not98 = icmp eq i64 %i.dr, 0
  br i1 %.not98, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ds = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.11) #23 ; 0 uses
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 %i.cp, ptr %7, align 8
  store i32 1, ptr %i.ad, align 4
  store i64 %i.dm, ptr %i.ae, align 8
  %i.dt = load <2 x ptr>, ptr %6, align 16
  store <2 x ptr> %i.dt, ptr %i.af, align 8
  %i.du = load ptr, ptr %i.ai, align 16
  store ptr %i.du, ptr %i.ah, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i64 0, ptr %i.aj, align 8
  %i.dv = load ptr, ptr %i.at, align 8            ; 7 uses
  %i.dw = load ptr, ptr %i.au, align 8
  %.not.i.i41 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i.i41, label %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit42, label %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit42.thread

_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit42.thread: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 16, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dy = load ptr, ptr %i.af, align 8
  store ptr %i.dy, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ea = load ptr, ptr %i.ag, align 8
  store ptr %i.ea, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ec = load ptr, ptr %i.ah, align 8
  store ptr %i.ec, ptr %i.eb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.ee = load i64, ptr %i.aj, align 8
  store i64 %i.ee, ptr %i.ed, align 8
  %i.ef = load ptr, ptr %i.at, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  store ptr %i.eg, ptr %i.at, align 8
  br label %_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit44

_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit42: ; preds = %bb.m
  call void @_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr %i.dv, ptr noundef nonnull align 8 dereferenceable(48) %7)
  %.pre103 = load ptr, ptr %i.af, align 8         ; 3 uses
  %.not.i.i.i.i43 = icmp eq ptr %.pre103, null
  br i1 %.not.i.i.i.i43, label %_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit44, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit42
  %i.eh = load ptr, ptr %i.ah, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %.pre103 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.pre103, i64 noundef %i.ek) #24
  br label %_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit44

_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit44: ; preds = %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit42.thread, %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE9push_backEOS3_.exit42, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.el = load i8, ptr %i.ac, align 2, !range !9, !noundef !10
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit44
  %i.en = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -48
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 -32
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 -24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZN4LIEF2PE6Parser17record_relocationEjN3tcb4spanIKhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(215) %1, i32 noundef %i.ep, ptr %i.er, i64 %i.ew) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tD2Ev.exit44, %bb.o, %bb.l
  %i.ex = load ptr, ptr %6, align 16              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ey = load ptr, ptr %i.ai, align 16
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.x

bb.r:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_2PE7details12fixup_recordEEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 0, ptr %i.a, align 2
  %i.fc = load ptr, ptr %4, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call i64 %i.fe(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a, i64 noundef %i.cm, i64 noundef 2, i64 noundef 0) #23, !inline_history !17
  %i.fg = and i64 %i.ff, 4294967296
  %.not.i.i45 = icmp eq i64 %i.fg, 0
  store i64 %i.cm, ptr %i.q, align 8
  br i1 %.not.i.i45, label %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit.thread, label %bb.s

_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.fh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.11) #23 ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.fi = load i8, ptr %i.r, align 8, !range !9, !noundef !10
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.t, label %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZN4LIEF11swap_endianItEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre.i47 = load i64, ptr %i.q, align 8
  br label %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit: ; preds = %bb.s, %bb.t
  %i.fk = phi i64 [ %i.cm, %bb.s ], [ %.pre.i47, %bb.t ]
  %i.fl = load i16, ptr %i.a, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.fm = add i64 %i.fk, 2
  store i64 %i.fm, ptr %i.q, align 8
  %.not = icmp sgt i16 %i.cl, -1                  ; 2 uses
  %i.fn = zext i16 %i.fl to i64
  %i.fo = select i1 %.not, i64 4, i64 8           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_:bb.a

declare void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8
  store <2 x ptr> %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %i.u, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.x, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 16, i1 false), !alias.scope !373
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !371, !noalias !368
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !alias.scope !368, !noalias !371
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !371, !noalias !368
  store ptr %i.af, ptr %i.ad, align 8, !alias.scope !368, !noalias !371
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !371, !noalias !368
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !371, !noalias !368
  store i64 %i.ai, ptr %i.ag, align 8, !alias.scope !368, !noalias !371
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !374

_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ak, %.lr.ph.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.aw, %.lr.ph.i.i.i17 ], [ %i.al, %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.av, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i19, i64 16, i1 false), !alias.scope !380
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !378, !noalias !375
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !alias.scope !375, !noalias !378
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !378, !noalias !375
  store ptr %i.ar, ptr %i.ap, align 8, !alias.scope !375, !noalias !378
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !alias.scope !378, !noalias !375
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !378, !noalias !375
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !375, !noalias !378
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !374

_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.aw, %.lr.ph.i.i.i17 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #24
  br label %_ZNSt12_Vector_baseIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4LIEF2PE18DynamicFixupARM64X13reloc_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8
  ret void
}

declare void @_ZN4LIEF11swap_endianItEEvPT_(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZSt11make_uniqueIN4LIEF2PE18DynamicFixupARM64XEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6 = distinct !{!6, !"_ZSt11make_uniqueIN4LIEF2PE18DynamicFixupARM64XEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!7 = distinct !{null}
!8 = distinct !{null, null}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNK4LIEF10SpanStream5sliceEmm: argument 0"}
!15 = distinct !{!15, !"_ZNK4LIEF10SpanStream5sliceEmm"}
!16 = distinct !{null, null}
!17 = distinct !{null, null}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN3fmt3v116formatIJRKjRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!20 = distinct !{!20, !"_ZN3fmt3v116formatIJRKjRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!23 = distinct !{!23, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!26 = distinct !{!26, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!27 = !{!25, !22}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN3fmt3v116formatIJRKjmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!30 = distinct !{!30, !"_ZN3fmt3v116formatIJRKjmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!33 = distinct !{!33, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!36 = distinct !{!36, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!37 = !{!35, !32}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN3fmt3v116formatIJRKjRKmRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!40 = distinct !{!40, !"_ZN3fmt3v116formatIJRKjRKmRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!43 = distinct !{!43, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!46 = distinct !{!46, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!47 = !{!45, !42}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!50 = distinct !{!50, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!53 = distinct !{!53, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!54 = !{!52, !49}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN3fmt3v116formatIJRmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!57 = distinct !{!57, !"_ZN3fmt3v116formatIJRmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!60 = distinct !{!60, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!63 = distinct !{!63, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!64 = !{!62, !59}
!65 = distinct !{!65, !12}
!66 = distinct !{null}
!67 = distinct !{!67, !12}
!68 = !{ptr @_ZN4LIEF2PE18DynamicFixupARM64XD2Ev}
!69 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!70 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!71 = distinct !{!71, !12}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!74 = distinct !{!74, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!75 = distinct !{!75, !76, !"_ZNK3fmt3v117context3argEi: argument 0"}
!76 = distinct !{!76, !"_ZNK3fmt3v117context3argEi"}
!77 = distinct !{null, null, null, null}
!78 = distinct !{!78, !12}
!79 = distinct !{null, null, null, null}
!80 = distinct !{!80, !12}
!81 = distinct !{null, null, null, null}
!82 = distinct !{null, null, null, null, null}
!83 = distinct !{!83, !12}
!84 = distinct !{null, null}
!85 = !{!86, !88}
!86 = distinct !{!86, !87, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!87 = distinct !{!87, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!88 = distinct !{!88, !89, !"_ZNK3fmt3v117context3argEi: argument 0"}
!89 = distinct !{!89, !"_ZNK3fmt3v117context3argEi"}
!90 = distinct !{null, null}
!91 = distinct !{null, null, null}
!92 = distinct !{null, null, null}
!93 = distinct !{!93, !12, !94, !95}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = !{!"branch_weights", i32 4, i32 28}
!97 = distinct !{!97, !12, !94, !95}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12, !94}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
!104 = !{ptr @_ZN3fmt3v1112format_facetISt6localeED2Ev}
!105 = distinct !{!105, !12}
!106 = distinct !{null, null}
!107 = distinct !{null, null, null}
!108 = distinct !{!108, !12, !94, !95}
!109 = distinct !{!109, !12, !94, !95}
!110 = distinct !{!110, !99}
!111 = distinct !{!111, !12, !94}
!112 = distinct !{!112, !12}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!115 = distinct !{!115, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!116 = distinct !{null}
!117 = distinct !{null}
!118 = !{i64 4}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN3fmt3v116detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!121 = distinct !{!121, !"_ZN3fmt3v116detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN3fmt3v116detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!124 = distinct !{!124, !"_ZN3fmt3v116detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!125 = distinct !{!125, !12}
!126 = distinct !{!126, !12}
!127 = distinct !{!127, !12}
!128 = distinct !{null, null, null, null}
!129 = distinct !{!129, !12}
!130 = !{i64 8}
!131 = distinct !{null, null, null, null}
!132 = distinct !{null, null, null, null}
!133 = distinct !{!133, !12}
!134 = distinct !{!134, !12, !94, !95}
!135 = distinct !{!135, !12, !94, !95}
!136 = distinct !{!136, !99}
!137 = distinct !{!137, !12, !94}
!138 = distinct !{!138, !12}
!139 = distinct !{!139, !12}
!140 = distinct !{!140, !12}
!141 = distinct !{!141, !12}
!142 = distinct !{null, null}
!143 = distinct !{!143, !12, !94, !95}
!144 = distinct !{!144, !12, !94, !95}
!145 = distinct !{!145, !99}
!146 = distinct !{!146, !12, !94}
!147 = distinct !{!147, !12}
!148 = distinct !{!148, !12}
!149 = distinct !{!149, !12}
!150 = distinct !{!150, !12}
!151 = distinct !{!151, !12}
!152 = distinct !{null, null, null, null}
!153 = distinct !{!153, !12}
!154 = distinct !{null, null, null, null, null}
!155 = distinct !{!155, !12}
!156 = distinct !{null, null, null, null}
!157 = distinct !{!157, !12, !94, !95}
!158 = distinct !{!158, !12, !94, !95}
!159 = distinct !{!159, !99}
!160 = distinct !{!160, !12, !94}
!161 = distinct !{null, null, null, null}
!162 = distinct !{!162, !12}
!163 = distinct !{null, null, null, null}
!164 = distinct !{!164, !12, !94, !95}
!165 = distinct !{!165, !12, !94, !95}
end_hunk_1
