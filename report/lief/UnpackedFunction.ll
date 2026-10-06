Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/UnpackedFunction?download=true
inline.NumInlined: 3627
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjj:bb.a
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29: ; preds = %bb.e, %bb.f
  %i.aq = phi i64 [ %i.af, %bb.e ], [ %.pre.i27, %bb.f ]
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.as = add i64 %i.aq, 4
  store i64 %i.as, ptr %i.r, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %.sroa.25.1 = phi i32 [ %i.ar, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29 ], [ 0, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 2 uses
  %i.at = shl i32 %i.ae, 2
  %i.au = and i32 %i.at, 1048572                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.av = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #26, !noalias !283 ; 17 uses
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !44, !noalias !283
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 1, ptr %i.ax, align 8, !tbaa !284, !noalias !283
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !58, !noalias !283
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !285, !noalias !283
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 %i.au, ptr %i.ba, align 4, !tbaa !61, !noalias !283
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !286, !noalias !283
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE14unwind_aarch6416UnpackedFunctionE, i64 16), ptr %i.av, align 8, !tbaa !52, !noalias !283
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 44
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i32 0, ptr %i.bf, align 8, !tbaa !73, !noalias !283
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.bg, i8 0, i64 48, i1 false), !noalias !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false), !noalias !283
  store ptr %i.av, ptr %0, align 8, !tbaa !287, !alias.scope !283
  store i32 %3, ptr %i.bc, align 4, !tbaa !74
  %i.bi = lshr i32 %i.ae, 18                      ; 2 uses
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = and i8 %i.bj, 3
  %i.bl = and i32 %i.bi, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !75
  %i.bn = and i32 %i.ae, 1048576                  ; 2 uses
  %.not94 = icmp eq i32 %i.bn, 0
  %.lobit = lshr exact i32 %i.bn, 20
  %i.bo = trunc nuw nsw i32 %.lobit to i8         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !76
  %i.bq = lshr i32 %i.ae, 21
  %i.br = trunc i32 %i.bq to i8
  %i.bs = and i8 %i.br, 1                         ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 37
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !77
  %i.bu = lshr i32 %i.ae, 22
  %i.bv = and i32 %i.bu, 31
  %i.bw = select i1 %i.ag, i32 %.sroa.25.1, i32 %i.bv ; 2 uses
  %i.bx = trunc i32 %i.bw to i16                  ; 2 uses
  %i.by = and i32 %i.bw, 65535                    ; 3 uses
  store i32 %i.by, ptr %i.bd, align 8, !tbaa !78
  %i.bz = lshr i32 %.sroa.25.1, 16
  %i.ca = lshr i32 %i.ae, 27
  %i.cb = select i1 %i.ag, i32 %i.bz, i32 %i.ca   ; 3 uses
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = and i32 %i.cb, 255                      ; 2 uses
  store i32 %i.cd, ptr %i.be, align 4, !tbaa !79
  %i.ce = zext i1 %i.ag to i8                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  store i8 %i.ce, ptr %i.cf, align 8, !tbaa !288
  %i.cg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i8 %i.ce, ptr %i.g, align 1, !tbaa !80
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA9_KcRKiRKbEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ch, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 1, ptr nonnull @.str.3, i64 11, ptr noundef nonnull align 1 dereferenceable(9) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %i.ci = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA13_KcRKiRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %17, i32 noundef 1, ptr nonnull @.str.5, i64 16, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store i32 %i.au, ptr %i.h, align 4, !tbaa !44
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA16_KcRKiRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 1, ptr nonnull @.str.5, i64 16, ptr noundef nonnull align 1 dereferenceable(16) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %i.cm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store i8 %i.bk, ptr %i.i, align 1, !tbaa !78
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA8_KcRKiRKhEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 1, ptr nonnull @.str.5, i64 16, ptr noundef nonnull align 1 dereferenceable(8) @.str.8, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  %i.co = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store i8 %i.bo, ptr %i.j, align 1, !tbaa !80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA15_KcRKiRKbEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 1, ptr nonnull @.str.3, i64 11, ptr noundef nonnull align 1 dereferenceable(15) @.str.9, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 1 dereferenceable(1) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  %i.cq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  store i8 %i.bs, ptr %i.k, align 1, !tbaa !78
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA14_KcRKiRKhEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cr, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 1, ptr nonnull @.str.3, i64 11, ptr noundef nonnull align 1 dereferenceable(14) @.str.10, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 1 dereferenceable(1) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  %i.cs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  store i8 %i.cc, ptr %i.l, align 1, !tbaa !78
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKiRKhEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ct, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 1, ptr nonnull @.str.3, i64 11, ptr noundef nonnull align 1 dereferenceable(11) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  %i.cu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  %.not = icmp eq i8 %i.bs, 0                     ; 2 uses
  %.str.12..str.13 = select i1 %.not, ptr @.str.13, ptr @.str.12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  store i16 %i.bx, ptr %i.m, align 2, !tbaa !82
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA14_KcRKiRKtEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cv, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 1, ptr nonnull @.str.3, i64 11, ptr noundef nonnull align 1 dereferenceable(14) %.str.12..str.13, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 2 dereferenceable(2) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  %i.cw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.cx = shl nuw nsw i32 %i.cd, 2
  store i32 %i.cx, ptr %i.n, align 4, !tbaa !44
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA16_KcRKiS6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cy, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str.3, i64 11, ptr noundef nonnull align 1 dereferenceable(16) @.str.14, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  store i16 %i.bx, ptr %i.o, align 2, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.h, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_IN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaISC_EEEZNSB_5parseERNS9_6ParserERNS8_12BinaryStreamEjjE3$_0ET0_T_SM_SL_T1_.exit"

bb.h:                                             ; preds = %bb.g
  %i.cz = load i64, ptr %i.r, align 8, !tbaa !50  ; 2 uses
  %i.da = sub i64 %i.cz, %i.s
  store i64 %i.da, ptr %i.bh, align 8, !tbaa !289
  %i.db = zext nneg i32 %i.by to i64              ; 2 uses
  %i.dc = icmp eq i32 %i.by, 0
  br i1 %i.dc, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dd = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %i.db)
  %i.de = and i64 %i.dd, 4294967296
  %.not.i = icmp eq i64 %i.de, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = shl nuw nsw i64 %i.db, 2
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !50
  %i.dh = add i64 %i.dg, %i.df
  store i64 %i.dh, ptr %i.r, align 8, !tbaa !50
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.di = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKtEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.15, i64 32, ptr noundef nonnull align 2 dereferenceable(2) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.critedge

bb.l:                                             ; preds = %bb.h, %bb.j
  %i.dk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA26_KcRKiRKtEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 1, ptr nonnull @.str.3, i64 11, ptr noundef nonnull align 1 dereferenceable(26) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 2 dereferenceable(2) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.dm = load ptr, ptr %0, align 8, !tbaa !287   ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56 ; 5 uses
  %i.do = load i16, ptr %i.o, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i64                   ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 72 ; 6 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !83
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !84
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 3
  %i.dx = icmp ult i64 %i.dw, %i.dp
  br i1 %i.dx, label %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 64 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !85
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.du
  %i.ec = shl nuw nsw i64 %i.dp, 3
  %i.ed = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #26 ; 4 uses
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !84 ; 5 uses
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !85 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i ], [ %i.ed, %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i ], [ %i.ee, %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.eg = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !291, !noalias !290
  store i64 %i.eg, ptr %.012.i.i.i.i, align 4, !alias.scope !290, !noalias !291
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.eh, %i.ef
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !270

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ee, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.ej = load ptr, ptr %i.dq, align 8, !tbaa !83
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ee to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.em) #27
  br label %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !84
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eb
  store ptr %i.en, ptr %i.dy, align 8, !tbaa !85
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dp
  store ptr %i.eo, ptr %i.dq, align 8, !tbaa !83
  br label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit: ; preds = %bb.l, %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.ep = load ptr, ptr %22, align 8, !tbaa !88   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !88 ; 2 uses
  %.not15.i = icmp eq ptr %i.ep, %i.er
  br i1 %.not15.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_IN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaISC_EEEZNSB_5parseERNS9_6ParserERNS8_12BinaryStreamEjjE3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.dm, i64 64 ; 4 uses
  %.pre.i30 = load ptr, ptr %i.es, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i, %.lr.ph.i
  %i.et = phi ptr [ %.pre.i30, %.lr.ph.i ], [ %i.fw, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i ] ; 5 uses
  %.sroa.012.016.i = phi ptr [ %i.ep, %.lr.ph.i ], [ %i.fx, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i ] ; 2 uses
  %i.eu = load i32, ptr %.sroa.012.016.i, align 4, !tbaa !44 ; 3 uses
  %i.ev = and i32 %i.eu, 262143
  %i.ew = lshr i32 %i.eu, 22
  %.sroa.2.0.insert.ext.i.i.i = zext nneg i32 %i.ew to i64
  %i.ex = lshr i32 %i.eu, 18
  %i.ey = and i32 %i.ex, 3
  %.sroa.3.0.insert.ext.i.i.i = zext nneg i32 %i.ey to i64
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i, 48
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext nneg i32 %i.ev to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i ; 2 uses
  %25 = load ptr, ptr %i.dq, align 8, !tbaa !83
  %.not.i.i.i.i31 = icmp eq ptr %i.et, %25
  br i1 %.not.i.i.i.i31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.et, align 4
  %i.ez = load ptr, ptr %i.es, align 8, !tbaa !85
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  store ptr %i.fa, ptr %i.es, align 8, !tbaa !85
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.fb = load ptr, ptr %i.dn, align 8, !tbaa !84 ; 5 uses
  %i.fc = ptrtoint ptr %i.et to i64
  %i.fd = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %bb.q, label %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #28
  unreachable

_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.p
  %i.fg = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 1152921504606846975)
  %i.fk = select i1 %i.fi, i64 1152921504606846975, i64 %i.fj ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #26 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.fn, align 4
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.et
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fm, %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fb, %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.fo = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 4, !alias.scope !293, !noalias !292
  store i64 %i.fo, ptr %.012.i.i.i.i.i.i.i.i, align 4, !alias.scope !292, !noalias !293
  %i.fp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fp, %i.et
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !270

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fm, %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i
  %i.fs = load ptr, ptr %i.dq, align 8, !tbaa !83
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = sub i64 %i.ft, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fu) #27
  br label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i
  store ptr %i.fm, ptr %i.dn, align 8, !tbaa !84
  store ptr %i.fr, ptr %i.es, align 8, !tbaa !85
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.fv, ptr %i.dq, align 8, !tbaa !83
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i: ; preds = %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, %bb.o
  %i.fw = phi ptr [ %i.fa, %bb.o ], [ %i.fr, %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 4 ; 2 uses
  %.not.i32 = icmp eq ptr %i.fx, %i.er
  br i1 %.not.i32, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_IN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaISC_EEEZNSB_5parseERNS9_6ParserERNS8_12BinaryStreamEjjE3$_0ET0_T_SM_SL_T1_.exit", label %bb.n, !llvm.loop !274

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_IN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaISC_EEEZNSB_5parseERNS9_6ParserERNS8_12BinaryStreamEjjE3$_0ET0_T_SM_SL_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i, %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit, %bb.g
  %i.fy = load i64, ptr %i.r, align 8, !tbaa !50
  %i.fz = sub i64 %i.fy, %i.s
  %i.ga = load ptr, ptr %0, align 8, !tbaa !287   ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 120
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %.mask95 = shl nuw nsw i32 %i.cb, 2
  %i.gc = and i32 %.mask95, 1020
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = load ptr, ptr %2, align 8, !tbaa !52
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call i64 %i.gg(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %i.gd) #25
  %i.gi = and i64 %i.gh, 4294967296
  %.not97 = icmp eq i64 %i.gi, 0                  ; 2 uses
  br i1 %.not97, label %bb.s, label %bb.t

bb.s:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_IN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaISC_EEEZNSB_5parseERNS9_6ParserERNS8_12BinaryStreamEjjE3$_0ET0_T_SM_SL_T1_.exit"
  %i.gj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.gk, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 1, ptr nonnull @.str.17, i64 30)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.t:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_IN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaISC_EEEZNSB_5parseERNS9_6ParserERNS8_12BinaryStreamEjjE3$_0ET0_T_SM_SL_T1_.exit"
  %i.gl = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.gm = load ptr, ptr %i.gl, align 16, !tbaa !89
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ga, i64 80 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ga, i64 96 ; 2 uses
  %i.gp = load <2 x ptr>, ptr %23, align 16, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.gq = load ptr, ptr %i.gn, align 8, !tbaa !91 ; 3 uses
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !89
  store <2 x ptr> %i.gp, ptr %i.gn, align 8, !tbaa !90
  store ptr %i.gm, ptr %i.go, align 8, !tbaa !89
  %.not.i.i.i.i.i.i33 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i.i33, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gu) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.t, %bb.u, %bb.s
  %i.gv = load ptr, ptr %23, align 16, !tbaa !91  ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIhSaIhEED2Ev.exit35, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.gx = load ptr, ptr %i.gw, align 16, !tbaa !89
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit35

_ZNSt6vectorIhSaIhEED2Ev.exit35:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br i1 %.not97, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit35
  br i1 %.not94, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hb = load i64, ptr %i.r, align 8, !tbaa !50  ; 4 uses
  %i.hc = sub i64 %i.hb, %i.s
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 128
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !44
  %i.he = load ptr, ptr %2, align 8, !tbaa !52
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = call i64 %i.hg(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.a, i64 noundef %i.hb, i64 noundef 4, i64 noundef 0) #25, !inline_history !264
  %i.hi = and i64 %i.hh, 4294967296
  %.not.i.i36 = icmp eq i64 %i.hi, 0
  store i64 %i.hb, ptr %i.r, align 8, !tbaa !50
  br i1 %.not.i.i36, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit41.thread, label %bb.y

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit41.thread: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.hj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hk, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 1, ptr nonnull @.str.18, i64 36)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hl = load i8, ptr %i.aa, align 8, !tbaa !53, !range !54, !noundef !55
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.z, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit41

bb.z:                                             ; preds = %bb.y
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #25
  %.pre.i39 = load i64, ptr %i.r, align 8, !tbaa !50
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit41

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit41: ; preds = %bb.y, %bb.z
  %i.hn = phi i64 [ %i.hb, %bb.y ], [ %.pre.i39, %bb.z ]
  %i.ho = load i32, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.hp = add i64 %i.hn, 4
  store i64 %i.hp, ptr %i.r, align 8, !tbaa !50
  %i.hq = zext i32 %i.ho to i64
  %i.hr = or disjoint i64 %i.hq, 4294967296
  %i.hs = trunc nuw nsw i64 %i.hr to i40
  store i40 %i.hs, ptr %24, align 8
  %i.ht = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.135) #25
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA18_KcRKiRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hu, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 1, ptr nonnull @.str.19, i64 17, ptr noundef nonnull align 1 dereferenceable(18) @.str.20, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjjE5WIDTH, ptr noundef nonnull align 4 dereferenceable(4) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.hv = load i32, ptr %24, align 8, !tbaa !44
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store i32 %i.hv, ptr %i.hw, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.critedge

bb.aa:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit41.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit35
  %i.hx = load ptr, ptr %22, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !94
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ic) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  br label %bb.ad

.critedge:                                        ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit41, %bb.w, %bb.k
  %i.id = load ptr, ptr %22, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIjSaIjEED2Ev.exit45, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  %i.ie = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !94
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.id to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ii) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit45

_ZNSt6vectorIjSaIjEED2Ev.exit45:                  ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29.thread, %_ZNSt6vectorIjSaIjEED2Ev.exit45, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 0, 848818681937920) i64 @_ZN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_t8from_rawEj(i32 noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = and i32 %0, 262143
  %i.b = lshr i32 %0, 22
  %.sroa.2.0.insert.ext = zext nneg i32 %i.b to i64
  %i.c = lshr i32 %0, 18
  %i.d = and i32 %i.c, 3
  %.sroa.3.0.insert.ext = zext nneg i32 %i.d to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 48
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i32 %i.a to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF2PE14unwind_aarch6416UnpackedFunction9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #2 align 2 {
_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
end_hunk_0
