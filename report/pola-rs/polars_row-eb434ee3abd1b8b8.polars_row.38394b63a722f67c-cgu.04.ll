Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.04?download=true
inline.NumInlined: 891
inline.NumDeleted: 233
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len:bb.a
  %.sroa.7.0112 = phi i64 [ %i.bz, %bb.an ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.084.0113, i64 72, !dbg !4748 ; 2 uses
  %i.bz = add nuw nsw i64 %.sroa.7.0112, 1, !dbg !4754
  %exitcond.not = icmp eq i64 %.sroa.7.0112, %i.bw, !dbg !4755
  br i1 %exitcond.not, label %bb.am, label %_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit, !dbg !4755

bb.al:                                            ; preds = %.lr.ph.split
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32, !dbg !4756
  unreachable, !dbg !4756

_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit: ; preds = %.lr.ph.split.split
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %.sroa.7.0112, !dbg !4757 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !4758, !range !4670, !noundef !902
  %.not2.i = icmp eq i64 %i.cb, -9223372036854775806, !dbg !4758
  %..i82 = select i1 %.not2.i, ptr null, ptr %i.ca, !dbg !4759
  %i.cc = tail call fastcc noundef i64 @_RNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.084.0113, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0114, i64 noundef %.sroa.557.0115, i8 noundef %.sroa.050.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i82) #34, !dbg !4746 ; 5 uses
  %i.cd = icmp ugt i64 %i.cc, %.sroa.557.0115, !dbg !4747
  br i1 %i.cd, label %.split.us, label %bb.an, !dbg !4747, !prof !976

bb.am:                                            ; preds = %.lr.ph.split.split
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #32, !dbg !4755
  unreachable, !dbg !4755

bb.an:                                            ; preds = %_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit
  %i.ce = sub nuw nsw i64 %.sroa.557.0115, %i.cc, !dbg !4749
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.054.0114, i64 %i.cc, !dbg !4750
  %i.cg = add i64 %i.cc, %.sroa.027.2116, !dbg !4751 ; 2 uses
  %i.ch = icmp eq ptr %i.by, %i.bg, !dbg !4744
  br i1 %i.ch, label %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary16encoded_item_len.exit, label %.lr.ph.split.split, !dbg !4745

.split.us:                                        ; preds = %_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit, %_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit.us
  %.us-phi = phi i64 [ %i.bl, %_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit.us ], [ %i.cc, %_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit ], !dbg !4760
  %.us-phi117 = phi i64 [ %.sroa.557.0115.us, %_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit.us ], [ %.sroa.557.0115, %_RNCNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len0B5_.exit ], !dbg !4760 ; 2 uses
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %.us-phi117, i64 noundef %.us-phi117, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #32, !dbg !4760
  unreachable, !dbg !4760
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtCs4PheDXcg4wa_10polars_row6decode6decode(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, i8 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4761 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 5 uses
  %i.n = alloca [88 x i8], align 8                ; 5 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [88 x i8], align 8                ; 5 uses
  %i.q = alloca [88 x i8], align 8                ; 5 uses
  %i.r = alloca [88 x i8], align 8                ; 5 uses
  %i.s = alloca [88 x i8], align 8                ; 5 uses
  %i.t = alloca [88 x i8], align 8                ; 5 uses
  %i.u = alloca [88 x i8], align 8                ; 5 uses
  %i.v = alloca [88 x i8], align 8                ; 5 uses
  %i.w = alloca [88 x i8], align 8                ; 5 uses
  %i.x = alloca [88 x i8], align 8                ; 5 uses
  %i.y = alloca [88 x i8], align 8                ; 5 uses
  %i.z = alloca [88 x i8], align 8                ; 11 uses
  %i.aa = alloca [104 x i8], align 8              ; 11 uses
  %i.ab = alloca [104 x i8], align 8              ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [96 x i8], align 8               ; 11 uses
  %i.ae = alloca [96 x i8], align 8               ; 10 uses
  %i.af = alloca [128 x i8], align 8              ; 5 uses
  %i.ag = alloca [128 x i8], align 8              ; 5 uses
  %i.ah = alloca [128 x i8], align 8              ; 5 uses
  %i.ai = alloca [96 x i8], align 8               ; 11 uses
  %i.aj = alloca [72 x i8], align 8               ; 9 uses
  %i.ak = alloca [88 x i8], align 8               ; 11 uses
  %i.al = alloca [88 x i8], align 8               ; 11 uses
  %i.am = alloca [88 x i8], align 8               ; 11 uses
  %i.an = alloca [88 x i8], align 8               ; 6 uses
  %i.ao = alloca [88 x i8], align 8               ; 6 uses
  %i.ap = alloca [88 x i8], align 8               ; 6 uses
  %i.aq = alloca [88 x i8], align 8               ; 6 uses
  %i.ar = alloca [88 x i8], align 8               ; 6 uses
  %i.as = alloca [88 x i8], align 8               ; 6 uses
  %i.at = alloca [88 x i8], align 8               ; 6 uses
  %i.au = alloca [88 x i8], align 8               ; 6 uses
  %i.av = alloca [88 x i8], align 8               ; 6 uses
  %i.aw = alloca [88 x i8], align 8               ; 6 uses
  %i.ax = alloca [88 x i8], align 8               ; 6 uses
  %i.ay = alloca [88 x i8], align 8               ; 6 uses
  %i.az = alloca [88 x i8], align 8               ; 6 uses
  %i.ba = alloca [88 x i8], align 8               ; 12 uses
  %i.bb = alloca [32 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [32 x i8], align 8               ; 5 uses
  %i.bg = alloca [104 x i8], align 8              ; 13 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 2 uses
  %i.bj = alloca [56 x i8], align 8               ; 4 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [1 x i8], align 1                ; 2 uses
  %i.bm = alloca [24 x i8], align 8               ; 11 uses
  %i.bn = alloca [24 x i8], align 8               ; 13 uses
  %i.bo = alloca [56 x i8], align 8               ; 20 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 4 uses
  %i.br = alloca [96 x i8], align 8               ; 11 uses
  %i.bs = alloca [24 x i8], align 8               ; 14 uses
  %i.bt = alloca [32 x i8], align 8               ; 6 uses
  %i.bu = alloca [32 x i8], align 8               ; 4 uses
  %i.bv = alloca [24 x i8], align 8               ; 4 uses
  %i.bw = alloca [32 x i8], align 8               ; 4 uses
  %i.bx = alloca [96 x i8], align 8               ; 11 uses
  %i.by = alloca [48 x i8], align 8               ; 4 uses
  %i.bz = alloca [72 x i8], align 8               ; 5 uses
  %i.ca = alloca [40 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 7 uses
  %i.cc = alloca [32 x i8], align 8               ; 8 uses
  %i.cd = alloca [128 x i8], align 8              ; 5 uses
  %i.ce = alloca [128 x i8], align 8              ; 6 uses
  %i.cf = alloca [128 x i8], align 8              ; 6 uses
  %i.cg = alloca [128 x i8], align 8              ; 9 uses
  %i.ch = alloca [96 x i8], align 8               ; 12 uses
  %i.ci = alloca [32 x i8], align 8               ; 4 uses
  %i.cj = alloca [72 x i8], align 8               ; 10 uses
  %i.ck = alloca [88 x i8], align 8               ; 13 uses
  %i.cl = alloca [88 x i8], align 8               ; 13 uses
  %i.cm = alloca [88 x i8], align 8               ; 13 uses
  %i.cn = alloca [1 x i8], align 1                ; 8 uses
  store i8 %2, ptr %i.cn, align 1
  %.not = icmp eq ptr %3, null, !dbg !5892
  br i1 %.not, label %bb.c, label %bb.b, !dbg !5893

bb.b:                                             ; preds = %bb.a
  %i.co = load i64, ptr %3, align 8, !dbg !5892, !range !905, !noundef !902 ; 3 uses
  %i.cp = icmp eq i64 %i.co, -9223372036854775808, !dbg !5893
  br i1 %i.cp, label %bb.d, label %thread-pre-split, !dbg !5893

bb.c:                                             ; preds = %bb.a
  %i.cq = load i8, ptr %4, align 8, !dbg !5894, !range !968, !noundef !902 ; 2 uses
  switch i8 %i.cq, label %bb.ck [
    i8 0, label %bb.bq
    i8 1, label %bb.bs
    i8 22, label %bb.by
    i8 24, label %bb.bz
    i8 25, label %bb.ca
    i8 26, label %bb.cb
    i8 27, label %bb.eh
    i8 28, label %bb.ei
    i8 29, label %bb.eh
    i8 30, label %bb.df
    i8 38, label %bb.cd
    i8 39, label %bb.ce
  ], !dbg !5895

bb.d:                                             ; preds = %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !5896 ; 3 uses
  %i.cs = load i8, ptr %4, align 8, !dbg !5897, !range !968, !noundef !902 ; 4 uses
  switch i8 %i.cs, label %bb.f [
    i8 7, label %bb.g
    i8 8, label %bb.o
    i8 9, label %bb.w
    i8 27, label %bb.e
    i8 28, label %bb.e
    i8 29, label %bb.e
  ], !dbg !5898, !prof !5642

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i8, ptr %4, align 8, !dbg !5894
  br label %bb.e, !dbg !5894

bb.e:                                             ; preds = %thread-pre-split, %bb.d, %bb.d, %bb.d
  %i.ct = phi i8 [ %.pr, %thread-pre-split ], [ %i.cs, %bb.d ], [ %i.cs, %bb.d ], [ %i.cs, %bb.d ], !dbg !5894 ; 2 uses
  switch i8 %i.ct, label %bb.ck [
    i8 0, label %bb.bq
    i8 1, label %bb.bs
    i8 22, label %bb.by
    i8 24, label %bb.bz
    i8 25, label %bb.ca
    i8 26, label %bb.cb
    i8 27, label %bb.eh
    i8 28, label %bb.ei
    i8 29, label %bb.eh
    i8 30, label %bb.cc
    i8 38, label %bb.cd
    i8 39, label %bb.ce
    i8 6, label %bb.cl
  ], !dbg !5895

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #32, !dbg !5899
  unreachable, !dbg !5899

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !5900
  %i.cu = getelementptr i8, ptr %3, i64 16, !dbg !5900
  %.val133 = load i8, ptr %i.cu, align 8, !dbg !5900, !range !1099, !noundef !902
  %5 = trunc nuw i8 %.val133 to i1, !dbg !5901
  %i.cv = and i8 %2, 4
  %.not.i = icmp ne i8 %i.cv, 0
  %or.cond.not.i = or i1 %.not.i, %5, !dbg !5901
  br i1 %or.cond.not.i, label %bb.h, label %bb.i, !dbg !5901

bb.h:                                             ; preds = %bb.g
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitivehEB6_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cm, ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, i8 noundef %2), !dbg !5902
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cathEB4_.exit, !dbg !5902

bb.i:                                             ; preds = %bb.g
  %.val = load ptr, ptr %i.cr, align 8, !dbg !5900, !nonnull !902, !noundef !902
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 128, !dbg !5903
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathEB6_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cm, ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, i8 noundef %2, ptr noundef nonnull align 128 %i.cw), !dbg !5904
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cathEB4_.exit, !dbg !5904

_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cathEB4_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !5905
  call void @llvm.experimental.noalias.scope.decl(metadata !5645), !dbg !5906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !5907, !noalias !5645
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm) #35
          to label %.noexc unwind label %bb.ae, !dbg !5907

.noexc:                                           ; preds = %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cathEB4_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32, !dbg !5908 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !dbg !5908, !noalias !5645, !nonnull !902, !noundef !902 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !5909, !range !1104, !noalias !5645, !noundef !902
  %i.da = icmp eq i64 %i.cz, 3, !dbg !5910
  br i1 %i.da, label %bb.j, label %bb.k, !dbg !5910

bb.j:                                             ; preds = %bb.k, %.noexc
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 40, !dbg !5911
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !5911, !noalias !5645, !noundef !902
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 48, !dbg !5912
  %i.de = load i64, ptr %i.dd, align 8, !dbg !5912, !noalias !5645, !noundef !902
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 56, !dbg !5913 ; 5 uses
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !5913, !noalias !5645, !noundef !902 ; 4 uses
  %.not.i150 = icmp eq ptr %i.dg, null, !dbg !5913
  br i1 %.not.i150, label %bb.af, label %bb.l, !dbg !5914

bb.k:                                             ; preds = %.noexc
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 24, !dbg !5915
  %i.di = atomicrmw add ptr %i.dh, i64 1 monotonic, align 8, !dbg !5916, !noalias !5645 ; 0 uses
  br label %bb.j, !dbg !5917

bb.l:                                             ; preds = %bb.j
  %i.dj = load i64, ptr %i.dg, align 8, !dbg !5918, !range !1104, !noalias !5646, !noundef !902
  %i.dk = icmp eq i64 %i.dj, 3, !dbg !5919
  br i1 %i.dk, label %bb.n, label %bb.m, !dbg !5919

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 24, !dbg !5920
  %i.dm = atomicrmw add ptr %i.dl, i64 1 monotonic, align 8, !dbg !5921, !noalias !5646 ; 0 uses
  br label %bb.n, !dbg !5922

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64, !dbg !5923
  %i.do = load <2 x i64>, ptr %i.dn, align 8, !dbg !5923, !noalias !5646
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 80, !dbg !5924
  %i.dq = load atomic i64, ptr %i.dp monotonic, align 8, !dbg !5925, !noalias !5646
  br label %bb.af, !dbg !5926

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !5927
  %i.dr = getelementptr i8, ptr %3, i64 16, !dbg !5927
  %.val135 = load i8, ptr %i.dr, align 8, !dbg !5927, !range !1099, !noundef !902
  %6 = trunc nuw i8 %.val135 to i1, !dbg !5928
  %i.ds = and i8 %2, 4
  %.not.i151 = icmp ne i8 %i.ds, 0
  %or.cond.not.i152 = or i1 %.not.i151, %6, !dbg !5928
  br i1 %or.cond.not.i152, label %bb.p, label %bb.q, !dbg !5928

bb.p:                                             ; preds = %bb.o
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitivetEB6_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cl, ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, i8 noundef %2), !dbg !5929
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cattEB4_.exit, !dbg !5929

bb.q:                                             ; preds = %bb.o
  %.val134 = load ptr, ptr %i.cr, align 8, !dbg !5927, !nonnull !902, !noundef !902
  %i.dt = getelementptr inbounds nuw i8, ptr %.val134, i64 128, !dbg !5930
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cattEB6_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cl, ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, i8 noundef %2, ptr noundef nonnull align 128 %i.dt), !dbg !5931
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cattEB4_.exit, !dbg !5931

_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cattEB4_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !5932
  call void @llvm.experimental.noalias.scope.decl(metadata !5648), !dbg !5933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !5934, !noalias !5648
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cl) #35
          to label %.noexc162 unwind label %bb.as, !dbg !5934

.noexc162:                                        ; preds = %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cattEB4_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.cl, i64 32, !dbg !5935 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !5935, !noalias !5648, !nonnull !902, !noundef !902 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8, !dbg !5936, !range !1104, !noalias !5648, !noundef !902
  %i.dx = icmp eq i64 %i.dw, 3, !dbg !5937
  br i1 %i.dx, label %bb.r, label %bb.s, !dbg !5937

bb.r:                                             ; preds = %bb.s, %.noexc162
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cl, i64 40, !dbg !5938
  %i.dz = load ptr, ptr %i.dy, align 8, !dbg !5938, !noalias !5648, !noundef !902
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cl, i64 48, !dbg !5939
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !5939, !noalias !5648, !noundef !902
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cl, i64 56, !dbg !5940 ; 5 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !5940, !noalias !5648, !noundef !902 ; 4 uses
  %.not.i153 = icmp eq ptr %i.ed, null, !dbg !5940
  br i1 %.not.i153, label %bb.at, label %bb.t, !dbg !5941

bb.s:                                             ; preds = %.noexc162
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 24, !dbg !5942
  %i.ef = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !dbg !5943, !noalias !5648 ; 0 uses
  br label %bb.r, !dbg !5944

bb.t:                                             ; preds = %bb.r
  %i.eg = load i64, ptr %i.ed, align 8, !dbg !5945, !range !1104, !noalias !5649, !noundef !902
  %i.eh = icmp eq i64 %i.eg, 3, !dbg !5946
  br i1 %i.eh, label %bb.v, label %bb.u, !dbg !5946

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 24, !dbg !5947
  %i.ej = atomicrmw add ptr %i.ei, i64 1 monotonic, align 8, !dbg !5948, !noalias !5649 ; 0 uses
  br label %bb.v, !dbg !5949

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 64, !dbg !5950
  %i.el = load <2 x i64>, ptr %i.ek, align 8, !dbg !5950, !noalias !5649
  %i.em = getelementptr inbounds nuw i8, ptr %i.cl, i64 80, !dbg !5951
  %i.en = load atomic i64, ptr %i.em monotonic, align 8, !dbg !5952, !noalias !5649
  br label %bb.at, !dbg !5953

bb.w:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !5954
  %i.eo = getelementptr i8, ptr %3, i64 16, !dbg !5954
  %.val137 = load i8, ptr %i.eo, align 8, !dbg !5954, !range !1099, !noundef !902
  %7 = trunc nuw i8 %.val137 to i1, !dbg !5955
  %i.ep = and i8 %2, 4
  %.not.i163 = icmp ne i8 %i.ep, 0
  %or.cond.not.i164 = or i1 %.not.i163, %7, !dbg !5955
  br i1 %or.cond.not.i164, label %bb.x, label %bb.y, !dbg !5955

bb.x:                                             ; preds = %bb.w
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitivemEB6_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ck, ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, i8 noundef %2), !dbg !5956
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_catmEB4_.exit, !dbg !5956

bb.y:                                             ; preds = %bb.w
  %.val136 = load ptr, ptr %i.cr, align 8, !dbg !5954, !nonnull !902, !noundef !902
  %i.eq = getelementptr inbounds nuw i8, ptr %.val136, i64 128, !dbg !5957
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmEB6_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ck, ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, i8 noundef %2, ptr noundef nonnull align 128 %i.eq), !dbg !5958
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_catmEB4_.exit, !dbg !5958

_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_catmEB4_.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !5959
  call void @llvm.experimental.noalias.scope.decl(metadata !5651), !dbg !5960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5961, !noalias !5651
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ck) #35
          to label %.noexc174 unwind label %bb.be, !dbg !5961

.noexc174:                                        ; preds = %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_catmEB4_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.ck, i64 32, !dbg !5962 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !dbg !5962, !noalias !5651, !nonnull !902, !noundef !902 ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !dbg !5963, !range !1104, !noalias !5651, !noundef !902
  %i.eu = icmp eq i64 %i.et, 3, !dbg !5964
  br i1 %i.eu, label %bb.z, label %bb.aa, !dbg !5964

bb.z:                                             ; preds = %bb.aa, %.noexc174
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ck, i64 40, !dbg !5965
  %i.ew = load ptr, ptr %i.ev, align 8, !dbg !5965, !noalias !5651, !noundef !902
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ck, i64 48, !dbg !5966
  %i.ey = load i64, ptr %i.ex, align 8, !dbg !5966, !noalias !5651, !noundef !902
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ck, i64 56, !dbg !5967 ; 5 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !dbg !5967, !noalias !5651, !noundef !902 ; 4 uses
  %.not.i165 = icmp eq ptr %i.fa, null, !dbg !5967
  br i1 %.not.i165, label %bb.bf, label %bb.ab, !dbg !5968

bb.aa:                                            ; preds = %.noexc174
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 24, !dbg !5969
  %i.fc = atomicrmw add ptr %i.fb, i64 1 monotonic, align 8, !dbg !5970, !noalias !5651 ; 0 uses
  br label %bb.z, !dbg !5971

bb.ab:                                            ; preds = %bb.z
  %i.fd = load i64, ptr %i.fa, align 8, !dbg !5972, !range !1104, !noalias !5652, !noundef !902
  %i.fe = icmp eq i64 %i.fd, 3, !dbg !5973
  br i1 %i.fe, label %bb.ad, label %bb.ac, !dbg !5973

bb.ac:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 24, !dbg !5974
  %i.fg = atomicrmw add ptr %i.ff, i64 1 monotonic, align 8, !dbg !5975, !noalias !5652 ; 0 uses
  br label %bb.ad, !dbg !5976

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ck, i64 64, !dbg !5977
  %i.fi = load <2 x i64>, ptr %i.fh, align 8, !dbg !5977, !noalias !5652
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ck, i64 80, !dbg !5978
  %i.fk = load atomic i64, ptr %i.fj monotonic, align 8, !dbg !5979, !noalias !5652
  br label %bb.bf, !dbg !5980

bb.ae:                                            ; preds = %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cathEB4_.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body97, !dbg !5981

.body97:                                          ; preds = %bb.ah, %bb.ae
  %eh.lpad-body98 = phi { ptr, i32 } [ %i.fl, %bb.ae ], [ %i.fr, %bb.ah ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cm) #31
          to label %common.resume unwind label %bb.ar, !dbg !5981

bb.af:                                            ; preds = %bb.n, %bb.j
  %.sroa.5.sroa.5.0.i = phi i64 [ undef, %bb.j ], [ %i.dq, %bb.n ], !dbg !5982
  %i.fm = phi <2 x i64> [ undef, %bb.j ], [ %i.do, %bb.n ], !dbg !5982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !dbg !5983
  %i.fn = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !5983
  store ptr %i.cy, ptr %i.fn, align 8, !dbg !5983, !alias.scope !5645
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40, !dbg !5983
  store ptr %i.dc, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5983, !alias.scope !5645
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48, !dbg !5983
  store i64 %i.de, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !5983, !alias.scope !5645
  %i.fo = getelementptr inbounds nuw i8, ptr %i.am, i64 56, !dbg !5983
  store ptr %i.dg, ptr %i.fo, align 8, !dbg !5983, !alias.scope !5645
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !5983
  store <2 x i64> %i.fm, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !5983, !alias.scope !5645
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !5983
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !5983, !alias.scope !5645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !5984, !noalias !5645
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !5985, !noalias !5653
  %i.fp = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 72, 129) 88, i64 noundef 8) #29, !dbg !5986, !noalias !5653 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null, !dbg !5987
  br i1 %i.fq, label %bb.ag, label %bb.aj, !dbg !5988, !prof !976

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #33
          to label %.noexc175 unwind label %bb.ah, !dbg !5989

.noexc175:                                        ; preds = %bb.ag
  unreachable, !dbg !5989

bb.ah:                                            ; preds = %bb.ag
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.am) #31
          to label %.body97 unwind label %bb.ai, !dbg !5990

bb.ai:                                            ; preds = %bb.ah
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !5991
  unreachable, !dbg !5991

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fp, ptr noundef nonnull align 8 dereferenceable(88) %i.am, i64 88, i1 false), !dbg !5992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !5993
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(88) %i.cm)
          to label %bb.al unwind label %bb.ak, !dbg !5994

bb.ak:                                            ; preds = %bb.aj
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.ap, !dbg !5995

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit2.i unwind label %bb.an, !dbg !5996

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.an, %bb.ak
  %.pn.i = phi { ptr, i32 } [ %i.fw, %bb.an ], [ %i.ft, %bb.ak ] ; 2 uses
  %i.fu = load ptr, ptr %i.df, align 8, !dbg !5997, !alias.scope !5654, !noundef !902
  %i.fv = icmp eq ptr %i.fu, null, !dbg !5997
  br i1 %i.fv, label %common.resume, label %bb.am, !dbg !5997

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %common.resume unwind label %bb.ap, !dbg !5998

bb.an:                                            ; preds = %bb.al
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit2.i: ; preds = %bb.al
  %i.fx = load ptr, ptr %i.df, align 8, !dbg !5999, !alias.scope !5655, !noundef !902
  %i.fy = icmp eq ptr %i.fx, null, !dbg !5999
  br i1 %i.fy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row.exit, label %bb.ao, !dbg !5999

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit2.i
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.df), !dbg !6000
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row.exit, !dbg !5999

bb.ap:                                            ; preds = %bb.am, %bb.ak
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !5994
  unreachable, !dbg !5994

common.resume:                                    ; preds = %bb.hn, %bb.ee, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs4PheDXcg4wa_10polars_row.exit.i217, %bb.dw, %bb.dm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffernEECs4PheDXcg4wa_10polars_row.exit.i, %bb.db, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECs4PheDXcg4wa_10polars_row.exit.i, %bb.bm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffertEECs4PheDXcg4wa_10polars_row.exit.i, %bb.ba, %.body97, %.body118, %.body104, %.body109, %.body127, %.body129, %bb.fm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRShEECs4PheDXcg4wa_10polars_row.exit254, %.body81, %.body79, %.body89, %.body114, %.body100, %.body121, %.body107, %.body95, %.body116, %.body102, %.body123, %.body112, %.body87, %.body93, %.body91, %bb.fk, %bb.fo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit.i, %.body131, %bb.jj, %bb.ji, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.lx, %bb.ee ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i ], [ %.pn.pn.ph, %bb.ji ], [ %.pn.i178, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffertEECs4PheDXcg4wa_10polars_row.exit.i ], [ %.pn.i182, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECs4PheDXcg4wa_10polars_row.exit.i ], [ %.pn.i211, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffernEECs4PheDXcg4wa_10polars_row.exit.i ], [ %i.le, %bb.dm ], [ %.pn.i218, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs4PheDXcg4wa_10polars_row.exit.i217 ], [ %.pn.i, %bb.am ], [ %eh.lpad-body98, %.body97 ], [ %eh.lpad-body119, %.body118 ], [ %eh.lpad-body105, %.body104 ], [ %eh.lpad-body110, %.body109 ], [ %eh.lpad-body90, %.body89 ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body101, %.body100 ], [ %eh.lpad-body122, %.body121 ], [ %eh.lpad-body108, %.body107 ], [ %eh.lpad-body96, %.body95 ], [ %eh.lpad-body117, %.body116 ], [ %eh.lpad-body103, %.body102 ], [ %eh.lpad-body124, %.body123 ], [ %eh.lpad-body113, %.body112 ], [ %eh.lpad-body88, %.body87 ], [ %eh.lpad-body94, %.body93 ], [ %eh.lpad-body92, %.body91 ], [ %eh.lpad-body128, %.body127 ], [ %eh.lpad-body130, %.body129 ], [ %.pn73, %.body79 ], [ %eh.lpad-body82, %.body81 ], [ %.pn.i211, %bb.db ], [ %.pn70.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRShEECs4PheDXcg4wa_10polars_row.exit254 ], [ %i.rd, %bb.fk ], [ %.pn54.pn, %bb.fm ], [ %eh.lpad-body132, %.body131 ], [ %i.uz, %bb.hn ], [ %.pn.i218, %bb.dw ], [ %.pn54.pn, %bb.fo ], [ %.pn70.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit.i ], [ %.pn.pn.ph, %bb.jj ], [ %.pn.i178, %bb.ba ], [ %.pn.i182, %bb.bm ]
  resume { ptr, i32 } %common.resume.op, !dbg !6001

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit2.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !5981
  br label %bb.aq, !dbg !6002

bb.aq:                                            ; preds = %bb.kx, %bb.lc, %bb.lh, %bb.lm, %bb.lr, %bb.lw, %bb.mb, %bb.mg, %bb.ml, %bb.mq, %bb.mv, %bb.na, %bb.nf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array4null9NullArrayECs4PheDXcg4wa_10polars_row.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECs4PheDXcg4wa_10polars_row.exit, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEE3newCs4PheDXcg4wa_10polars_row.exit86, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRShEECs4PheDXcg4wa_10polars_row.exit, %bb.hl, %bb.jg, %bb.jp, %bb.jw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECs4PheDXcg4wa_10polars_row.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs4PheDXcg4wa_10polars_row.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytEECs4PheDXcg4wa_10polars_row.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row.exit
  %.sroa.27.0 = phi ptr [ @47, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row.exit ], [ @48, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytEECs4PheDXcg4wa_10polars_row.exit ], [ @49, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs4PheDXcg4wa_10polars_row.exit ], [ @52, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECs4PheDXcg4wa_10polars_row.exit ], [ @69, %bb.kx ], [ @70, %bb.lc ], [ @71, %bb.lh ], [ @72, %bb.lm ], [ @52, %bb.lr ], [ @47, %bb.lw ], [ @48, %bb.mb ], [ @49, %bb.mg ], [ @73, %bb.ml ], [ @74, %bb.mq ], [ @75, %bb.mv ], [ @76, %bb.na ], [ @77, %bb.nf ], [ @54, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array4null9NullArrayECs4PheDXcg4wa_10polars_row.exit ], [ @55, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECs4PheDXcg4wa_10polars_row.exit ], [ %.sroa.27.1, %bb.jw ], [ @67, %bb.jp ], [ @68, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEE3newCs4PheDXcg4wa_10polars_row.exit86 ], [ @60, %bb.hl ], [ @57, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRShEECs4PheDXcg4wa_10polars_row.exit ], [ @66, %bb.jg ], !dbg !6001
  %.sroa.08.0 = phi ptr [ %i.fp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row.exit ], [ %i.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytEECs4PheDXcg4wa_10polars_row.exit ], [ %i.gw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs4PheDXcg4wa_10polars_row.exit ], [ %i.jz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECs4PheDXcg4wa_10polars_row.exit ], [ %i.zu, %bb.kx ], [ %i.zy, %bb.lc ], [ %i.aac, %bb.lh ], [ %i.aag, %bb.lm ], [ %i.aak, %bb.lr ], [ %i.aao, %bb.lw ], [ %i.aas, %bb.mb ], [ %i.aaw, %bb.mg ], [ %i.aba, %bb.ml ], [ %i.abe, %bb.mq ], [ %i.abi, %bb.mv ], [ %i.abm, %bb.na ], [ %i.abq, %bb.nf ], [ %i.la, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array4null9NullArrayECs4PheDXcg4wa_10polars_row.exit ], [ %i.lk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECs4PheDXcg4wa_10polars_row.exit ], [ %.sroa.08.1, %bb.jw ], [ %i.zf, %bb.jp ], [ %i.lv, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEE3newCs4PheDXcg4wa_10polars_row.exit86 ], [ %i.uq, %bb.hl ], [ %i.qz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRShEECs4PheDXcg4wa_10polars_row.exit ], [ %i.yy, %bb.jg ], !dbg !6001
  %i.ga = insertvalue { ptr, ptr } poison, ptr %.sroa.08.0, 0, !dbg !6003
  %i.gb = insertvalue { ptr, ptr } %i.ga, ptr %.sroa.27.0, 1, !dbg !6003
  ret { ptr, ptr } %i.gb, !dbg !6003

bb.ar:                                            ; preds = %bb.jj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit.i, %bb.ip, %bb.hr, %bb.fq, %bb.fo, %bb.fn, %.thread356, %.body91, %.body93, %.body87, %.body112, %.body123, %.body102, %.body116, %.body95, %.body107, %.body121, %.body100, %.body114, %.body89, %.body84, %.body79, %.body81, %bb.jh, %.body131, %bb.hp, %.body77, %.body125, %.thread322, %.body129, %.body127, %.body109, %.body104, %.body118, %.body97
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body252, !dbg !6004

.body252:                                         ; preds = %bb.is, %bb.io, %bb.fp, %bb.ar
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !6004
  unreachable, !dbg !6004

bb.as:                                            ; preds = %_RINvNtCs4PheDXcg4wa_10polars_row6decode10decode_cattEB4_.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body118, !dbg !6005

.body118:                                         ; preds = %bb.av, %bb.as
  %eh.lpad-body119 = phi { ptr, i32 } [ %i.gd, %bb.as ], [ %i.gj, %bb.av ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cl) #31
          to label %common.resume unwind label %bb.ar, !dbg !6005

bb.at:                                            ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i154 = phi i64 [ undef, %bb.r ], [ %i.en, %bb.v ], !dbg !6006
  %i.ge = phi <2 x i64> [ undef, %bb.r ], [ %i.el, %bb.v ], !dbg !6006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !6007
  %i.gf = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !6007
  store ptr %i.dv, ptr %i.gf, align 8, !dbg !6007, !alias.scope !5648
  %.sroa.4.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.al, i64 40, !dbg !6007
  store ptr %i.dz, ptr %.sroa.4.0..sroa_idx.i157, align 8, !dbg !6007, !alias.scope !5648
  %.sroa.5.0..sroa_idx5.i158 = getelementptr inbounds nuw i8, ptr %i.al, i64 48, !dbg !6007
  store i64 %i.eb, ptr %.sroa.5.0..sroa_idx5.i158, align 8, !dbg !6007, !alias.scope !5648
  %i.gg = getelementptr inbounds nuw i8, ptr %i.al, i64 56, !dbg !6007
  store ptr %i.ed, ptr %i.gg, align 8, !dbg !6007, !alias.scope !5648
end_hunk_0
