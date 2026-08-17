inline.NumInlined: 1705
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_RNvXs5_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide:bb.a
  %i.sc = invoke noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48)
          to label %bb.dr unwind label %.loopexit

bb.dr:                                            ; preds = %.lr.ph678
  br i1 %i.sc, label %.loopexit423, label %bb.dq

bb.ds:                                            ; preds = %.thread410
  br i1 %i.ry, label %.loopexit423, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.v, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs9_NtNtNtCshzWfHUSfYae_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.se = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.sf = load ptr, ptr %i.sd, align 8, !nonnull !19, !align !449, !noundef !19
  %i.sg = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.se, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sf, ptr noundef nonnull @152, ptr noundef nonnull %i.c)
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs9_NtNtNtCshzWfHUSfYae_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4103.0..sroa_idx, align 8
  %i.sh = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.si = load ptr, ptr %i.sd, align 8, !nonnull !19, !align !449, !noundef !19
  %i.sj = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.sh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.si, ptr noundef nonnull @153, ptr noundef nonnull %i.d)
          to label %bb.dx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit423

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit423

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAhj40_EECslLuZgPVt6hg_3ide.exit313: ; preds = %.loopexit423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit464

bb.dy:                                            ; preds = %bb.bo
  unreachable

bb.dz:                                            ; preds = %bb.e
  %i.sk = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 45)
  br i1 %i.sk, label %.loopexit464, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.e
  %i.sl = icmp eq i64 %.sroa.05.0, 0
  br i1 %i.sl, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.v, label %bb.ee, label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.sm = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48)
  br i1 %i.sm, label %.loopexit464, label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.sn = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 6)
  br i1 %i.sn, label %.loopexit464, label %bb.ef

bb.ee:                                            ; preds = %bb.eb
  %i.so = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 3)
  br i1 %i.so, label %.loopexit464, label %bb.eg

bb.ef:                                            ; preds = %bb.ec, %.loopexit463, %bb.ed
  br label %.loopexit464

bb.eg:                                            ; preds = %bb.ee
  %i.sp = load i32, ptr %i.n, align 8, !noundef !19
  %i.sq = and i32 %i.sp, 268435456
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.loopexit463, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.st = load i16, ptr %i.ss, align 2, !noundef !19 ; 2 uses
  %i.su = tail call i16 @llvm.umax.i16(i16 %i.st, i16 1)
  %umax = zext i16 %i.su to i64
  %exitcond.not643 = icmp ult i16 %i.st, 2
  br i1 %exitcond.not643, label %.loopexit463, label %.lr.ph646

.loopexit463:                                     ; preds = %bb.ei, %bb.eh, %bb.eg
  %i.sv = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 4)
  br i1 %i.sv, label %.loopexit464, label %bb.ef

bb.ei:                                            ; preds = %.lr.ph646
  %i.sw = add nuw nsw i64 %.sroa.0141.0644, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.sw, %umax
  br i1 %exitcond.not, label %.loopexit463, label %.lr.ph646

.lr.ph646:                                        ; preds = %bb.eh, %bb.ei
  %.sroa.0141.0644 = phi i64 [ %i.sw, %bb.ei ], [ 1, %bb.eh ]
  %i.sx = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48)
  br i1 %i.sx, label %.loopexit464, label %bb.ei
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %0) unnamed_addr #12 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @28, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [48 x i8], align 16               ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 6 uses
  %i.i = alloca [32 x i8], align 16               ; 4 uses
  %i.j = alloca [48 x i8], align 16               ; 10 uses
  %i.k = alloca [32 x i8], align 16               ; 8 uses
  %i.l = alloca [4 x i8], align 4                 ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [48 x i8], align 16               ; 10 uses
  %i.q = alloca [48 x i8], align 16               ; 12 uses
  %i.r = alloca [48 x i8], align 16               ; 12 uses
  %i.s = alloca [48 x i8], align 16               ; 12 uses
  %i.t = alloca [48 x i8], align 16               ; 15 uses
  %i.u = alloca [48 x i8], align 16               ; 25 uses
  %i.v = alloca [48 x i8], align 16               ; 12 uses
  %i.w = alloca [48 x i8], align 16               ; 9 uses
  %i.x = alloca [32 x i8], align 16               ; 5 uses
  %i.y = alloca [48 x i8], align 16               ; 14 uses
  %.sroa.9 = alloca [10 x i8], align 2            ; 6 uses
  %i.z = alloca [32 x i8], align 16               ; 6 uses
  %.sroa.9140 = alloca [10 x i8], align 2         ; 3 uses
  %i.aa = alloca [48 x i8], align 16              ; 17 uses
  %.sroa.14 = alloca [10 x i8], align 2           ; 3 uses
  %i.ab = icmp eq i64 %2, 0
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 1) ; 6 uses
  %.sroa.0130.0 = zext i1 %i.ac to i8             ; 2 uses
  %i.ad = sext i1 %i.ac to i64
  %.sroa.18.0 = add i64 %2, %i.ad                 ; 7 uses
  %.sroa.0.0.idx = zext i1 %i.ac to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 9 uses
  %i.ae = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.18.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 1) ; 2 uses
  %i.af = xor i1 %i.ae, true
  %i.ag = or i1 %i.ac, %i.af                      ; 4 uses
  %not. = xor i1 %i.ag, true                      ; 2 uses
  %i.ah = sext i1 %not. to i64
  %.sroa.18.1 = add i64 %.sroa.18.0, %i.ah        ; 23 uses
  %.sroa.0.1.idx = zext i1 %not. to i64
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.0.1.idx ; 24 uses
  switch i64 %.sroa.18.1, label %bb.i [
    i64 3, label %bb.d
    i64 8, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  store ptr @166, ptr %0, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 21, ptr %i.ai, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %4, align 1
  br label %bb.ha

bb.d:                                             ; preds = %bb.b
  %i.aj = load i16, ptr %.sroa.0.1, align 1
  %i.ak = xor i16 %i.aj, 28233
  %i.al = getelementptr i8, ptr %.sroa.0.1, i64 2
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i16
  %i.ao = xor i16 %i.an, 102
  %i.ap = or i16 %i.ak, %i.ao
  %i.aq = icmp ne i16 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond = or i1 %i.ac, %i.ae
  br i1 %or.cond, label %bb.p, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.at = load i16, ptr %.sroa.0.1, align 1
  %i.au = xor i16 %i.at, 28265
  %i.av = getelementptr i8, ptr %.sroa.0.1, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = xor i16 %i.ax, 102
  %i.az = or i16 %i.au, %i.ay
  %i.ba = icmp ne i16 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.o, label %.thread272

bb.h:                                             ; preds = %bb.b
  %i.bd = load i64, ptr %.sroa.0.1, align 1
  %i.be = icmp ne i64 %i.bd, 6436850368004902473
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.b, %bb.h
  br i1 %i.ag, label %bb.k, label %bb.aa

bb.j:                                             ; preds = %bb.h
  br i1 %i.ag, label %bb.o, label %.thread272

bb.k:                                             ; preds = %bb.i
  %i.bh = icmp samesign eq i64 %.sroa.18.0, 0
  br i1 %i.bh, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.k
  %i.bi = ptrtoint ptr %.sroa.0.0 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 2 uses
  %i.bk = load i8, ptr %.sroa.0.0, align 1, !alias.scope !2313, !noalias !2316, !noundef !19 ; 5 uses
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.l, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i: ; preds = %.thread
  %i.bm = and i8 %i.bk, 31
  %i.bn = zext nneg i8 %i.bm to i32               ; 3 uses
  %i.bo = icmp samesign ne i64 %.sroa.18.0, 1
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 2 uses
  %i.bq = load i8, ptr %i.bj, align 1, !alias.scope !2313, !noalias !2316, !noundef !19
  %i.br = shl nuw nsw i32 %i.bn, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32               ; 2 uses
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp samesign ugt i8 %i.bk, -33
  br i1 %i.bv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

bb.l:                                             ; preds = %.thread
  %i.bw = zext nneg i8 %i.bk to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i
  %i.bx = icmp samesign ne i64 %.sroa.18.0, 2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3 ; 2 uses
  %i.bz = load i8, ptr %i.bp, align 1, !alias.scope !2313, !noalias !2316, !noundef !19
  %i.ca = shl nuw nsw i32 %i.bt, 6
  %i.cb = and i8 %i.bz, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = shl nuw nsw i32 %i.bn, 12
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bk, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i
  %i.ch = icmp samesign ne i64 %.sroa.18.0, 3
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.cj = load i8, ptr %i.by, align 1, !alias.scope !2313, !noalias !2316, !noundef !19
  %i.ck = shl nuw nsw i32 %i.bn, 18
  %i.cl = and i32 %i.ck, 1835008
  %i.cm = shl nuw nsw i32 %i.cd, 6
  %i.cn = and i8 %i.cj, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = or disjoint i32 %i.cp, %i.cl
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i, %bb.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i
  %i.cr = phi ptr [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i ], [ %i.ci, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i ], [ %i.bp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i ], [ %i.bj, %bb.l ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.cf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i ], [ %i.cq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i ], [ %i.bu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i ], [ %i.bw, %bb.l ] ; 2 uses
  %i.cs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cs)
  switch i32 %.sroa.4.0.i.ph.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit [
    i32 115, label %bb.m
    i32 83, label %bb.m
  ]

bb.m:                                             ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.ct, %i.bi                    ; 2 uses
  %i.cv = sub nuw i64 %.sroa.18.0, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.cu
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit: ; preds = %bb.k, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i, %bb.m
  %.sroa.7210.0 = phi i64 [ %i.cv, %bb.m ], [ %.sroa.18.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.18.1, %bb.k ] ; 5 uses
  %.sroa.5209.0 = phi ptr [ %i.cw, %bb.m ], [ %.sroa.0.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.0.1, %bb.k ] ; 4 uses
  %.sroa.0208.0 = phi i1 [ true, %bb.m ], [ false, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ false, %bb.k ] ; 2 uses
  %i.cx = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5209.0, i64 noundef %.sroa.7210.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 3)
  %i.cy = add i64 %.sroa.7210.0, -3               ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.5209.0, i64 3 ; 3 uses
  br i1 %i.cx, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit
  %i.da = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5209.0, i64 noundef %.sroa.7210.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 3), !noalias !2324
  br i1 %i.da, label %select.unfold, label %bb.aa

bb.o:                                             ; preds = %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @78, i64 22), i64 10, i1 false)
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

bb.p:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @78, i64 22), i64 10, i1 false)
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

select.unfold:                                    ; preds = %bb.n, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %i.db = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 1), !noalias !2330
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %select.unfold
  %i.dc = add i64 %.sroa.7210.0, -4
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.5209.0, i64 4 ; 2 uses
  %i.de = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef range(i64 0, -1) %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 1), !noalias !2330
  %i.df = add i64 %.sroa.7210.0, -5               ; 2 uses
  %.not5.i.i.i = icmp ne i64 %i.df, 0
  %.not.i.i = and i1 %.not5.i.i.i, %i.de          ; 2 uses
  %spec.select.i = select i1 %.not.i.i, i64 %i.df, i64 %i.cy
  %spec.select55.i = select i1 %.not.i.i, ptr %i.dd, ptr %i.cz
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %select.unfold
  %.sroa.9.0.i = phi i64 [ %i.cy, %select.unfold ], [ %spec.select.i, %bb.q ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.cz, %select.unfold ], [ %spec.select55.i, %bb.q ] ; 7 uses
  %i.dg = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.9.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 1), !noalias !2330
  %i.di = add i64 %.sroa.9.0.i, -1                ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 4 uses
  %.not5.i.i = icmp ne i64 %i.di, 0
  %.not.i155 = and i1 %.not5.i.i, %i.dh
  br i1 %.not.i155, label %bb.u, label %bb.x

bb.t:                                             ; preds = %bb.r
  %spec.select3.i = select i1 %.sroa.0208.0, i128 256, i128 512
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2 ; 2 uses
  %i.dm = load i8, ptr %i.dj, align 1, !alias.scope !2332, !noalias !2335, !noundef !19 ; 5 uses
  %i.dn = icmp sgt i8 %i.dm, -1
  br i1 %i.dn, label %bb.v, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i: ; preds = %bb.u
  %i.do = and i8 %i.dm, 31
  %i.dp = zext nneg i8 %i.do to i32               ; 3 uses
  %i.dq = icmp samesign ne i64 %i.di, 1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3 ; 2 uses
  %i.ds = load i8, ptr %i.dl, align 1, !alias.scope !2332, !noalias !2335, !noundef !19
  %i.dt = shl nuw nsw i32 %i.dp, 6
  %i.du = and i8 %i.ds, 63
  %i.dv = zext nneg i8 %i.du to i32               ; 2 uses
  %i.dw = or disjoint i32 %i.dt, %i.dv
  %i.dx = icmp samesign ugt i8 %i.dm, -33
  br i1 %i.dx, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.dy = zext nneg i8 %i.dm to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i
  %i.dz = icmp samesign ne i64 %i.di, 2
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4 ; 2 uses
  %i.eb = load i8, ptr %i.dr, align 1, !alias.scope !2332, !noalias !2335, !noundef !19
  %i.ec = shl nuw nsw i32 %i.dv, 6
  %i.ed = and i8 %i.eb, 63
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.ec, %i.ee            ; 2 uses
  %i.eg = shl nuw nsw i32 %i.dp, 12
  %i.eh = or disjoint i32 %i.ef, %i.eg
  %i.ei = icmp samesign ugt i8 %i.dm, -17
  br i1 %i.ei, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i
  %i.ej = icmp samesign ne i64 %i.di, 3
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.el = load i8, ptr %i.ea, align 1, !alias.scope !2332, !noalias !2335, !noundef !19
  %i.em = shl nuw nsw i32 %i.dp, 18
  %i.en = and i32 %i.em, 1835008
  %i.eo = shl nuw nsw i32 %i.ef, 6
  %i.ep = and i8 %i.el, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.eo, %i.eq
  %i.es = or disjoint i32 %i.er, %i.en
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i, %bb.v, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i
  %i.et = phi ptr [ %i.ea, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i ], [ %i.ek, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i ], [ %i.dr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i ], [ %i.dl, %bb.v ]
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.eh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i ], [ %i.es, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i ], [ %i.dw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i ], [ %i.dy, %bb.v ] ; 2 uses
  %i.eu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.eu)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i [
    i32 120, label %bb.w
    i32 88, label %bb.w
  ]

bb.w:                                             ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.ev, %i.dk                    ; 2 uses
  %i.ex = sub nuw i64 %i.di, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ew
  br label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i

_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.w, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
  %.sroa.03.0.i57.i = phi ptr [ %i.ey, %bb.w ], [ null, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.ex, %bb.w ], [ undef, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i ]
  %.not54.i = icmp eq ptr %.sroa.03.0.i57.i, null ; 3 uses
  %.sroa.042.0.i = select i1 %.not54.i, i32 8, i32 16
  %.sroa.444.0.i = select i1 %.not54.i, ptr %i.dj, ptr %.sroa.03.0.i57.i
  %.sroa.7.0.i = select i1 %.not54.i, i64 %i.di, i64 %.sroa.3.0.i.i
  br label %bb.x

bb.x:                                             ; preds = %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i, %bb.s
  %.sroa.049.0.i = phi i32 [ %.sroa.042.0.i, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i ], [ 10, %bb.s ]
  %.sroa.9.1.i = phi i64 [ %.sroa.7.0.i, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.9.0.i, %bb.s ]
  %.sroa.0.1.i = phi ptr [ %.sroa.444.0.i, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.0.0.i, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2343
  call fastcc void @_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.9.1.i, i32 noundef %.sroa.049.0.i) #34, !noalias !2330
  %i.ez = load i8, ptr %i.z, align 16, !range !334, !noalias !2343, !noundef !19
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.fc = load i128, ptr %i.fb, align 16, !noalias !2343, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2343
  %i.fd = and i128 %i.fc, 511                     ; 3 uses
  br i1 %.sroa.0208.0, label %.split.i, label %bb.z

.split.i:                                         ; preds = %bb.y
  %i.fe = icmp eq i128 %i.fd, 0
  %storemerge.i.i = select i1 %i.fe, i128 256, i128 %i.fd
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ff = or disjoint i128 %i.fd, 512
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2343
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit, %bb.i
  %i.fg = icmp eq i64 %.sroa.18.1, 0
  br i1 %i.fg, label %bb.ab, label %.thread272

_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.t, %.split.i, %bb.z, %bb.o, %bb.p
  %.sroa.8.0 = phi i8 [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %bb.z ], [ 1, %.split.i ], [ 1, %bb.t ]
  %.sroa.0197.0 = phi i128 [ 0, %bb.o ], [ 0, %bb.p ], [ %i.ff, %bb.z ], [ %storemerge.i.i, %.split.i ], [ %spec.select3.i, %bb.t ]
  store i128 %.sroa.0197.0, ptr %0, align 16
  %.sroa.057.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 16, ptr %.sroa.057.sroa.4.0..sroa_idx, align 16
  %.sroa.057.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.8.0, ptr %.sroa.057.sroa.5.0..sroa_idx, align 4
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.0130.0, ptr %.sroa.458.0..sroa_idx, align 1
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.559.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, i64 10, i1 false)
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.660.0..sroa_idx, align 16
  br label %bb.ha

bb.ab:                                            ; preds = %bb.aa
  store ptr @164, ptr %0, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 20, ptr %i.fh, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %5, align 1
  br label %bb.ha

.thread272:                                       ; preds = %bb.j, %bb.g, %bb.aa
  %i.fi = shl nuw nsw i8 %3, 3
  %switch.shiftamt = zext nneg i8 %i.fi to i40
  %switch.downshift = lshr i40 17230266880, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  %.sroa.028.0 = select i1 %i.ac, i8 %switch.masked, i8 %3 ; 5 uses
  %i.fj = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef %.sroa.18.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 1)
  br i1 %i.fj, label %bb.ac, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread

bb.ac:                                            ; preds = %.thread272
  %i.fk = add i64 %.sroa.18.1, -1                 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = icmp samesign eq i64 %i.fk, 0
  br i1 %i.fn, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 2 uses
  %i.fp = load i8, ptr %i.fl, align 1, !alias.scope !2344, !noalias !2347, !noundef !19 ; 5 uses
  %i.fq = icmp sgt i8 %i.fp, -1
  br i1 %i.fq, label %bb.ae, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156: ; preds = %bb.ad
  %i.fr = and i8 %i.fp, 31
  %i.fs = zext nneg i8 %i.fr to i32               ; 3 uses
  %i.ft = icmp samesign ne i64 %i.fk, 1
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3 ; 2 uses
  %i.fv = load i8, ptr %i.fo, align 1, !alias.scope !2344, !noalias !2347, !noundef !19
  %i.fw = shl nuw nsw i32 %i.fs, 6
  %i.fx = and i8 %i.fv, 63
  %i.fy = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.fz = or disjoint i32 %i.fw, %i.fy
  %i.ga = icmp samesign ugt i8 %i.fp, -33
  br i1 %i.ga, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157

bb.ae:                                            ; preds = %bb.ad
  %i.gb = zext nneg i8 %i.fp to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156
  %i.gc = icmp samesign ne i64 %i.fk, 2
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4 ; 2 uses
  %i.ge = load i8, ptr %i.fu, align 1, !alias.scope !2344, !noalias !2347, !noundef !19
  %i.gf = shl nuw nsw i32 %i.fy, 6
  %i.gg = and i8 %i.ge, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh            ; 2 uses
  %i.gj = shl nuw nsw i32 %i.fs, 12
  %i.gk = or disjoint i32 %i.gi, %i.gj
  %i.gl = icmp samesign ugt i8 %i.fp, -17
  br i1 %i.gl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162
  %i.gm = icmp samesign ne i64 %i.fk, 3
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5
  %i.go = load i8, ptr %i.gd, align 1, !alias.scope !2344, !noalias !2347, !noundef !19
  %i.gp = shl nuw nsw i32 %i.fs, 18
  %i.gq = and i32 %i.gp, 1835008
  %i.gr = shl nuw nsw i32 %i.gi, 6
  %i.gs = and i8 %i.go, 63
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gq
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162, %bb.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156
  %i.gw = phi ptr [ %i.gd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162 ], [ %i.gn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163 ], [ %i.fu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156 ], [ %i.fo, %bb.ae ]
  %.sroa.4.0.i.ph.i.i.i158 = phi i32 [ %i.gk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162 ], [ %i.gv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163 ], [ %i.fz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156 ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i158, 1114112
  tail call void @llvm.assume(i1 %i.gx)
  switch i32 %.sroa.4.0.i.ph.i.i.i158, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread [
    i32 120, label %bb.fa
    i32 88, label %bb.fa
  ]

_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread: ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157, %bb.ac, %.thread272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.18.1 ; 13 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread
  %.sroa.0.0622.i = phi i8 [ %.sroa.0.1.i171, %bb.ai ], [ 0, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 2 uses
  %.sroa.05.0621.i = phi i64 [ %.sroa.05.1.i, %bb.ai ], [ 0, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 4 uses
  %.sroa.011.0620.i = phi i64 [ %.sroa.011.2.i, %bb.ai ], [ %.sroa.18.1, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 5 uses
  %.sroa.024.0619.i = phi i64 [ %.sroa.024.1.i, %bb.ai ], [ 0, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 5 uses
  %.sroa.4.0618.i = phi i64 [ %.sroa.4.1.i, %bb.ai ], [ undef, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 5 uses
  %.sroa.0.0473617.i = phi ptr [ %.sroa.0.1474.i, %bb.ai ], [ %.sroa.0.1, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 6 uses
  %.sroa.11.0616.i = phi i64 [ %i.il, %bb.ai ], [ 0, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 9 uses
  %i.gz = ptrtoint ptr %.sroa.0.0473617.i to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0473617.i, i64 1 ; 3 uses
  %i.hb = load i8, ptr %.sroa.0.0473617.i, align 1, !alias.scope !2355, !noalias !2358, !noundef !19 ; 5 uses
  %i.hc = icmp sgt i8 %i.hb, -1
  br i1 %i.hc, label %bb.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.hd = and i8 %i.hb, 31
  %i.he = zext nneg i8 %i.hd to i32               ; 3 uses
  %i.hf = icmp ne ptr %i.ha, %i.gy
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0473617.i, i64 2 ; 3 uses
  %i.hh = load i8, ptr %i.ha, align 1, !alias.scope !2355, !noalias !2358, !noundef !19
  %i.hi = shl nuw nsw i32 %i.he, 6
  %i.hj = and i8 %i.hh, 63
  %i.hk = zext nneg i8 %i.hj to i32               ; 2 uses
  %i.hl = or disjoint i32 %i.hi, %i.hk
  %i.hm = icmp samesign ugt i8 %i.hb, -33
  br i1 %i.hm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

bb.af:                                            ; preds = %.lr.ph.i
  %i.hn = zext nneg i8 %i.hb to i32
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i
  %i.ho = icmp ne ptr %i.hg, %i.gy
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0473617.i, i64 3 ; 3 uses
  %i.hq = load i8, ptr %i.hg, align 1, !alias.scope !2355, !noalias !2358, !noundef !19
  %i.hr = shl nuw nsw i32 %i.hk, 6
  %i.hs = and i8 %i.hq, 63
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = or disjoint i32 %i.hr, %i.ht            ; 2 uses
  %i.hv = shl nuw nsw i32 %i.he, 12
  %i.hw = or disjoint i32 %i.hu, %i.hv
  %i.hx = icmp samesign ugt i8 %i.hb, -17
  br i1 %i.hx, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i
  %i.hy = icmp ne ptr %i.hp, %i.gy
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0473617.i, i64 4
  %i.ia = load i8, ptr %i.hp, align 1, !alias.scope !2355, !noalias !2358, !noundef !19
  %i.ib = shl nuw nsw i32 %i.he, 18
  %i.ic = and i32 %i.ib, 1835008
  %i.id = shl nuw nsw i32 %i.hu, 6
  %i.ie = and i8 %i.ia, 63
  %i.if = zext nneg i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.id, %i.if
  %i.ih = or disjoint i32 %i.ig, %i.ic
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i, %bb.af, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i
  %.sroa.0.1474.i = phi ptr [ %i.ha, %bb.af ], [ %i.hz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i ], [ %i.hp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i ], [ %i.hg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.hn, %bb.af ], [ %i.ih, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i ], [ %i.hw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i ], [ %i.hl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i ] ; 4 uses
  %i.ii = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = ptrtoint ptr %.sroa.0.1474.i to i64
  %i.ik = sub i64 %.sroa.11.0616.i, %i.gz
  %i.il = add i64 %i.ik, %i.ij
  %cond.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, 46
  br i1 %cond.i, label %bb.ag, label %bb.ah

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %bb.ai
  %i.im = trunc nuw i8 %.sroa.0.1.i171 to i1
  br i1 %i.im, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.ag:                                            ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %.not208.i = icmp eq i64 %.sroa.011.0620.i, %.sroa.18.1
  br i1 %.not208.i, label %bb.ai, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.ah:                                            ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %i.in = add nsw i32 %.sroa.4.0.i.ph.i.i, -48    ; 2 uses
  %i.io = icmp ult i32 %i.in, 10
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %bb.al, %bb.aj, %bb.ag
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0618.i, %bb.ag ], [ %.sroa.4.0618.i, %bb.aj ], [ %spec.select.i170, %bb.al ] ; 2 uses
  %.sroa.024.1.i = phi i64 [ %.sroa.024.0619.i, %bb.ag ], [ %.sroa.024.0619.i, %bb.aj ], [ 1, %bb.al ] ; 2 uses
  %.sroa.011.2.i = phi i64 [ %.sroa.11.0616.i, %bb.ag ], [ %.sroa.011.0620.i, %bb.aj ], [ %.sroa.011.0620.i, %bb.al ] ; 2 uses
  %.sroa.05.1.i = phi i64 [ %.sroa.05.0621.i, %bb.ag ], [ %.sroa.05.0621.i, %bb.aj ], [ %.sroa.11.0616.i, %bb.al ] ; 2 uses
  %.sroa.0.1.i171 = phi i8 [ %.sroa.0.0622.i, %bb.ag ], [ 1, %bb.aj ], [ 1, %bb.al ] ; 2 uses
  %i.ip = icmp eq ptr %.sroa.0.1474.i, %i.gy
  br i1 %i.ip, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i, label %.lr.ph.i

bb.aj:                                            ; preds = %bb.ah
  %i.iq = icmp eq i32 %i.in, 0
  br i1 %i.iq, label %bb.ai, label %bb.al

bb.ak:                                            ; preds = %bb.ah
  switch i32 %.sroa.4.0.i.ph.i.i, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread [
    i32 101, label %bb.am
    i32 69, label %bb.am
  ]

bb.al:                                            ; preds = %bb.aj
  %.not207.i = icmp eq i64 %.sroa.024.0619.i, 1
  %spec.select.i170 = select i1 %.not207.i, i64 %.sroa.4.0618.i, i64 %.sroa.11.0616.i
  br label %bb.ai

bb.am:                                            ; preds = %bb.ak, %bb.ak
  %i.ir = trunc nuw i8 %.sroa.0.0622.i to i1
  br i1 %i.ir, label %bb.an, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.is = icmp eq i64 %.sroa.011.0620.i, %.sroa.18.1
  %spec.store.select.i = select i1 %i.is, i64 %.sroa.11.0616.i, i64 %.sroa.011.0620.i ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a
  %.sink11.i342.i = select i1 %i.aas, ptr %i.aat, ptr %i.r
  %.sink10.i343.i = select i1 %i.aas, i64 %i.aau, i64 %i.aar ; 2 uses
  %i.aav = add i64 %.sink10.i343.i, %.sink10.i340.i
  %i.aaw = shl i64 %i.aav, 7
  %i.aax = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3mul(ptr noalias nofree noundef nonnull align 16 %.sink10.i336.i, i64 noundef %i.aam, ptr noalias nofree noundef align 4 dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i339.i, i64 noundef %.sink10.i340.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i342.i, i64 noundef %.sink10.i343.i, i64 noundef %i.aaw)
          to label %bb.ej unwind label %bb.eb, !noalias !2367 ; 0 uses

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2381
  %i.aay = load i64, ptr %i.rp, align 16, !alias.scope !2534, !noalias !2537, !noundef !19 ; 3 uses
  %i.aaz = icmp ugt i64 %i.aay, 2                 ; 2 uses
  %i.aba = load i64, ptr %i.sc, align 8, !alias.scope !2534, !noalias !2537 ; 2 uses
  %.sink10.i352637.i = select i1 %i.aaz, i64 %i.aba, i64 %i.aay ; 2 uses
  %.not202638.i = icmp eq i64 %.sink10.i352637.i, 0
  br i1 %.not202638.i, label %.critedge218.i, label %.lr.ph641.i

.lr.ph641.i:                                      ; preds = %bb.ej
  %i.abb = load ptr, ptr %i.q, align 16, !alias.scope !2534, !noalias !2537, !nonnull !19
  br label %bb.ek

bb.ek:                                            ; preds = %bb.eo, %.lr.ph641.i
  %i.abc = phi i64 [ %i.aba, %.lr.ph641.i ], [ %i.abn, %bb.eo ]
  %i.abd = phi i64 [ %i.aay, %.lr.ph641.i ], [ %i.abo, %bb.eo ]
  %.sink10.i352639.i = phi i64 [ %.sink10.i352637.i, %.lr.ph641.i ], [ %.sink10.i352.i, %bb.eo ]
  %i.abe = phi i1 [ %i.aaz, %.lr.ph641.i ], [ %i.abp, %bb.eo ] ; 2 uses
  %.sink11.i351.i = select i1 %i.abe, ptr %i.abb, ptr %i.q
  %i.abf = getelementptr [16 x i8], ptr %.sink11.i351.i, i64 %.sink10.i352639.i
  %i.abg = getelementptr i8, ptr %i.abf, i64 -16
  %i.abh = load i128, ptr %i.abg, align 16, !noalias !2367, !noundef !19
  %i.abi = icmp eq i128 %i.abh, 0
  br i1 %i.abi, label %bb.em, label %.critedge218.i

.critedge218.i:                                   ; preds = %bb.eo, %bb.ek, %bb.ej
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslLuZgPVt6hg_3ide(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit354.i unwind label %bb.el, !noalias !2367

bb.el:                                            ; preds = %.critedge218.i
  %i.abj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #36, !noalias !2367
  unreachable

bb.em:                                            ; preds = %bb.ek
  %.sink9.i356.i = select i1 %i.abe, ptr %i.sc, ptr %i.rp ; 2 uses
  %i.abk = load i64, ptr %.sink9.i356.i, align 8, !noalias !2381, !noundef !19 ; 2 uses
  %i.abl = icmp eq i64 %i.abk, 0
  br i1 %i.abl, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.abm = add i64 %i.abk, -1
  store i64 %i.abm, ptr %.sink9.i356.i, align 8, !noalias !2381
  %.pre704.i = load i64, ptr %i.rp, align 16, !alias.scope !2534, !noalias !2537
  %.pre705.i = load i64, ptr %i.sc, align 8, !alias.scope !2534, !noalias !2537
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.abn = phi i64 [ %i.abc, %bb.em ], [ %.pre705.i, %bb.en ] ; 2 uses
  %i.abo = phi i64 [ %i.abd, %bb.em ], [ %.pre704.i, %bb.en ] ; 3 uses
  %i.abp = icmp ugt i64 %i.abo, 2                 ; 2 uses
  %.sink10.i352.i = select i1 %i.abp, i64 %i.abn, i64 %i.abo ; 2 uses
  %.not202.i = icmp eq i64 %.sink10.i352.i, 0
  br i1 %.not202.i, label %.critedge218.i, label %bb.ek

bb.ep:                                            ; preds = %bb.ef
  %.sink9.i328.i = select i1 %i.zt, ptr %i.rz, ptr %i.rk ; 2 uses
  %i.abq = load i64, ptr %.sink9.i328.i, align 8, !noalias !2381, !noundef !19 ; 2 uses
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.abs = add i64 %i.abq, -1
  store i64 %i.abs, ptr %.sink9.i328.i, align 8, !noalias !2381
  %.pre.i = load i64, ptr %i.rk, align 16, !alias.scope !2504, !noalias !2507
  %.pre703.i = load i64, ptr %i.rz, align 8, !alias.scope !2504, !noalias !2507
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.abt = phi i64 [ %i.zr, %bb.ep ], [ %.pre703.i, %bb.eq ] ; 2 uses
  %i.abu = phi i64 [ %i.zs, %bb.ep ], [ %.pre.i, %bb.eq ] ; 3 uses
  %i.abv = icmp ugt i64 %i.abu, 2                 ; 2 uses
  %.sink10.i324.i = select i1 %i.abv, i64 %i.abt, i64 %i.abu ; 2 uses
  %.not201.i = icmp eq i64 %.sink10.i324.i, 0
  br i1 %.not201.i, label %.critedge.i, label %bb.ef

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i: ; preds = %.body251.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.r)
          to label %.body.i unwind label %bb.ea, !noalias !2367

bb.es:                                            ; preds = %.thread514.i
  %i.abw = extractvalue { ptr, ptr } %i.ro, 0     ; 3 uses
  %i.abx = extractvalue { ptr, ptr } %i.ro, 1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abx) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abw) ]
  %i.aby = icmp eq ptr %i.abw, %i.abx
  br i1 %i.aby, label %._crit_edge.i, label %.lr.ph629.i

.lr.ph629.i:                                      ; preds = %bb.es, %bb.et
  %.sroa.049.2628.i = phi i128 [ %i.acg, %bb.et ], [ %.sroa.049.1520.i, %bb.es ]
  %.sroa.062.0627.i = phi ptr [ %i.aca, %bb.et ], [ %i.abw, %bb.es ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2381
  %i.abz = load i128, ptr %.sroa.062.0627.i, align 16, !noalias !2367, !noundef !19
  invoke fastcc void @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12widening_mul(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.x, i128 noundef %i.abz, i128 noundef %.sroa.053.1519.i)
          to label %bb.et unwind label %.loopexit543.i, !noalias !2367

._crit_edge.i:                                    ; preds = %bb.et, %bb.es
  %.sroa.049.2.lcssa.i = phi i128 [ %.sroa.049.1520.i, %bb.es ], [ %i.acg, %bb.et ] ; 2 uses
  %.not190.i = icmp eq i128 %.sroa.049.2.lcssa.i, 0
  br i1 %.not190.i, label %.outer.i.backedge, label %bb.eu

bb.et:                                            ; preds = %.lr.ph629.i
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.062.0627.i, i64 16 ; 2 uses
  %i.acb = load i128, ptr %i.x, align 16, !noalias !2381, !noundef !19 ; 2 uses
  %i.acc = load i128, ptr %i.pn, align 16, !noalias !2381, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2381
  %i.acd = add i128 %i.acb, %.sroa.049.2628.i     ; 2 uses
  %i.ace = icmp ult i128 %i.acd, %i.acb
  %i.acf = zext i1 %i.ace to i128
  %i.acg = add i128 %i.acc, %i.acf                ; 2 uses
  store i128 %i.acd, ptr %.sroa.062.0627.i, align 16, !noalias !2367
  %i.ach = icmp eq ptr %i.aca, %i.abx
  br i1 %i.ach, label %._crit_edge.i, label %.lr.ph629.i

bb.eu:                                            ; preds = %._crit_edge.i
  %i.aci = load i64, ptr %i.po, align 16, !alias.scope !2539, !noalias !2544, !noundef !19 ; 2 uses
  %i.acj = icmp ugt i64 %i.aci, 2                 ; 2 uses
  %i.ack = load ptr, ptr %i.y, align 16, !alias.scope !2539, !noalias !2544, !nonnull !19
  %.sink10.i.i.i = select i1 %i.acj, ptr %i.ack, ptr %i.y
  %.sink9.i.i.i = select i1 %i.acj, ptr %i.pp, ptr %i.po ; 2 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.aci, i64 2)
  %i.acl = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !2546, !noalias !2381, !noundef !19 ; 2 uses
  %i.acm = icmp eq i64 %i.acl, %.sink.i.i.i
  br i1 %i.acm, label %bb.ev, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i, !prof !167

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %.noexc.i unwind label %.loopexit.split-lp544.loopexit.i, !noalias !2367

.noexc.i:                                         ; preds = %bb.ev
  %i.acn = load ptr, ptr %i.y, align 16, !alias.scope !2546, !noalias !2381, !nonnull !19, !noundef !19
  %.pre.i.i = load i64, ptr %i.pp, align 8, !alias.scope !2546, !noalias !2381
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i: ; preds = %.noexc.i, %bb.eu
  %i.aco = phi i64 [ %.pre.i.i, %.noexc.i ], [ %i.acl, %bb.eu ]
  %.sroa.01.0.i.i = phi ptr [ %i.pp, %.noexc.i ], [ %.sink9.i.i.i, %bb.eu ] ; 2 uses
  %.sroa.0.0.i359.i = phi ptr [ %i.acn, %.noexc.i ], [ %.sink10.i.i.i, %bb.eu ]
  %i.acp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i359.i, i64 %i.aco
  store i128 %.sroa.049.2.lcssa.i, ptr %i.acp, align 16, !noalias !2367
  %i.acq = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !2546, !noalias !2381, !noundef !19
  %i.acr = add i64 %i.acq, 1
  store i64 %i.acr, ptr %.sroa.01.0.i.i, align 8, !alias.scope !2546, !noalias !2381
  br label %.outer.i.backedge

bb.ew:                                            ; preds = %.thread499.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @66, i64 22), i64 10, i1 false)
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.ex:                                            ; preds = %.thread499.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @77, i64 22), i64 10, i1 false)
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.ey:                                            ; preds = %bb.ay
  %i.acs = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ly, i32 10) ; 2 uses
  %i.act = extractvalue { i32, i1 } %i.acs, 0
  %i.acu = extractvalue { i32, i1 } %i.acs, 1
  br i1 %i.acu, label %bb.ez, label %.peel.next.i, !prof !167

bb.ez:                                            ; preds = %bb.ey
  %i.acv = icmp sgt i32 %i.ly, -1
  %.219.i = select i1 %i.acv, i32 2147483647, i32 -2147483648
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.ez, %bb.ey
  %.sroa.0127.0.i = phi i32 [ %i.act, %bb.ey ], [ %.219.i, %bb.ez ]
  %i.acw = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.0127.0.i, i32 %i.ni) ; 2 uses
  %i.acx = icmp eq ptr %.sroa.0370.2.ph.i, %i.gy
  br i1 %i.acx, label %.loopexit775.i, label %.lr.ph414, !llvm.loop !2547

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit307.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2381
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y), !noalias !2367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2381
  %i.acy = icmp eq i8 %.sroa.24.0.copyload, 2
  br i1 %i.acy, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.fa:                                            ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157
  %i.acz = ptrtoint ptr %i.gw to i64
  %i.ada = sub i64 %i.acz, %i.fm                  ; 2 uses
  %i.adb = sub nuw i64 %i.fk, %i.ada              ; 12 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ada ; 4 uses
  %i.add = icmp eq i64 %i.adb, 0
  br i1 %i.add, label %bb.gx, label %bb.fc

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.ag, %bb.ay, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i, %bb.ak, %bb.am, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit
  %.sroa.0214.sroa.14.0283 = phi i64 [ %.sroa.0214.0.copyload234, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 29, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i ], [ 25, %bb.am ], [ 25, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i ], [ 29, %bb.ay ], [ 32, %bb.ak ], [ 29, %bb.ag ]
  %.sroa.0214.sroa.0.0282 = phi i64 [ %.sroa.0214.0.copyload233, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ ptrtoint (ptr @79 to i64), %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i ], [ ptrtoint (ptr @64 to i64), %bb.am ], [ ptrtoint (ptr @64 to i64), %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i ], [ ptrtoint (ptr @79 to i64), %bb.ay ], [ ptrtoint (ptr @80 to i64), %bb.ak ], [ ptrtoint (ptr @63 to i64), %bb.ag ]
  %i.ade = inttoptr i64 %.sroa.0214.sroa.0.0282 to ptr
  store ptr %i.ade, ptr %0, align 16
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0214.sroa.14.0283, ptr %i.adf, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %6, align 1
  br label %bb.ha

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287: ; preds = %bb.ba, %.thread.i, %bb.ex, %bb.ew, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit
  %.sroa.0214.sroa.14.0299 = phi i64 [ %.sroa.0214.0.copyload234, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ew ], [ 0, %bb.ex ], [ 0, %.thread.i ], [ 0, %bb.ba ]
  %.sroa.0214.sroa.0.0298 = phi i64 [ %.sroa.0214.0.copyload233, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ew ], [ 1, %bb.ex ], [ %.sroa.0214.sroa.0.0.extract.trunc, %.thread.i ], [ 0, %bb.ba ]
  %.sroa.34.0297 = phi i8 [ %.sroa.34.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 24, %bb.ew ], [ 24, %bb.ex ], [ %.210.i, %.thread.i ], [ 0, %bb.ba ]
  %.sroa.24.0296 = phi i8 [ %.sroa.24.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ew ], [ 0, %bb.ex ], [ 0, %.thread.i ], [ 0, %bb.ba ]
  %.sroa.21.0295 = phi i32 [ %.sroa.21.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ -15, %bb.ew ], [ -14, %bb.ex ], [ %.211.i, %.thread.i ], [ -15, %bb.ba ]
  %.sroa.23.0294 = phi i8 [ %.sroa.23.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 3, %bb.ew ], [ 2, %bb.ex ], [ %.212.i, %.thread.i ], [ 3, %bb.ba ]
  %i.adg = inttoptr i64 %.sroa.0214.sroa.0.0298 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, i64 10, i1 false)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.gz, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287
  %.sroa.5138.sroa.0.0 = phi i32 [ %.sroa.21.0295, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.5119.sroa.0.0.copyload, %bb.gz ]
  %.sroa.5138.sroa.3.0 = phi i8 [ %.sroa.23.0294, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.5119.sroa.4.0.copyload, %bb.gz ]
  %.sroa.0136.0 = phi i8 [ %.sroa.34.0297, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.8.0.copyload, %bb.gz ]
  %.sroa.0137.0 = phi ptr [ %i.adg, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.0117.0.copyload, %bb.gz ]
  %.sroa.3.0 = phi i64 [ %.sroa.0214.sroa.14.0299, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.4118.0.copyload, %bb.gz ]
  %.sroa.7139.0 = phi i8 [ %.sroa.24.0296, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %i.apl, %bb.gz ]
  %spec.select.i172 = xor i8 %.sroa.7139.0, %.sroa.0130.0
  store ptr %.sroa.0137.0, ptr %0, align 16
  %.sroa.096.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.096.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.096.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5138.sroa.0.0, ptr %.sroa.096.sroa.0.sroa.5.0..sroa_idx, align 16
  %.sroa.096.sroa.0.sroa.5.sroa.4.0..sroa.096.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.5138.sroa.3.0, ptr %.sroa.096.sroa.0.sroa.5.sroa.4.0..sroa.096.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.096.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select.i172, ptr %.sroa.096.sroa.4.0..sroa_idx, align 1
  %.sroa.096.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.096.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, i64 10, i1 false)
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0136.0, ptr %.sroa.497.0..sroa_idx, align 16
  br label %bb.ha

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.adi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 2, ptr %i.adi, align 4, !noalias !2554
  %i.adj = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 0, ptr %i.adj, align 1, !noalias !2554
  %i.adk = getelementptr i8, ptr %.sroa.0.1, i64 %.sroa.18.1 ; 20 uses
  br label %.outer.i173

.outer.i173:                                      ; preds = %.outer.i173.backedge, %bb.fc
  %i.adl = phi i128 [ 0, %bb.fc ], [ %.be, %.outer.i173.backedge ] ; 9 uses
  %i.adm = phi i128 [ 0, %bb.fc ], [ %.be856, %.outer.i173.backedge ] ; 9 uses
  %.sroa.11.0.ph.i = phi i64 [ 0, %bb.fc ], [ %.sroa.11.0.ph.i.be, %.outer.i173.backedge ] ; 6 uses
  %.sroa.0.0.ph.i = phi ptr [ %i.adc, %bb.fc ], [ %.sroa.0.0.ph.i.be, %.outer.i173.backedge ] ; 12 uses
  %.sroa.025.0.ph.i = phi i8 [ -1, %bb.fc ], [ %.sroa.025.0.ph.i.be, %.outer.i173.backedge ] ; 9 uses
  %.sroa.4.0.ph.i = phi i64 [ undef, %bb.fc ], [ %.sroa.4.0.ph.i.be, %.outer.i173.backedge ] ; 5 uses
  %.sroa.021.0.ph.i = phi i64 [ 0, %bb.fc ], [ %.sroa.021.0.ph.i.be, %.outer.i173.backedge ] ; 2 uses
  %.sroa.010.0.ph.i = phi i64 [ %i.adb, %bb.fc ], [ %.sroa.010.0.ph.i.be, %.outer.i173.backedge ] ; 11 uses
  %.sroa.07.0.ph.i = phi i64 [ 128, %bb.fc ], [ %.sroa.07.0.ph.i.be, %.outer.i173.backedge ] ; 2 uses
  %.sroa.03.0.ph.i = phi i8 [ 0, %bb.fc ], [ %.sroa.03.0.ph.i.be, %.outer.i173.backedge ] ; 4 uses
  %.not89.i.not = icmp ne i64 %.sroa.021.0.ph.i, 0 ; 2 uses
  %i.adn = ptrtoint ptr %.sroa.0.0.ph.i to i64    ; 2 uses
  %i.ado = icmp eq ptr %.sroa.0.0.ph.i, %i.adk    ; 2 uses
  br i1 %.not89.i.not, label %.outer.split.us.i, label %.outer.split.preheader.i

.outer.split.preheader.i:                         ; preds = %.outer.i173
  br i1 %i.ado, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, label %bb.fd

bb.fd:                                            ; preds = %.outer.split.preheader.i
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1 ; 3 uses
  %i.adq = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !2552, !noalias !2555, !noundef !19 ; 5 uses
  %i.adr = icmp sgt i8 %i.adq, -1
  br i1 %i.adr, label %bb.fe, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i: ; preds = %bb.fd
  %i.ads = and i8 %i.adq, 31
  %i.adt = zext nneg i8 %i.ads to i32             ; 3 uses
  %i.adu = icmp ne ptr %i.adp, %i.adk
  tail call void @llvm.assume(i1 %i.adu)
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2 ; 3 uses
  %i.adw = load i8, ptr %i.adp, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.adx = shl nuw nsw i32 %i.adt, 6
  %i.ady = and i8 %i.adw, 63
  %i.adz = zext nneg i8 %i.ady to i32             ; 2 uses
  %i.aea = or disjoint i32 %i.adx, %i.adz
  %i.aeb = icmp samesign ugt i8 %i.adq, -33
  br i1 %i.aeb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i, label %bb.ff

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i
  %i.aec = icmp ne ptr %i.adv, %i.adk
  tail call void @llvm.assume(i1 %i.aec)
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3 ; 3 uses
  %i.aee = load i8, ptr %i.adv, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.aef = shl nuw nsw i32 %i.adz, 6
  %i.aeg = and i8 %i.aee, 63
  %i.aeh = zext nneg i8 %i.aeg to i32
  %i.aei = or disjoint i32 %i.aef, %i.aeh         ; 2 uses
  %i.aej = shl nuw nsw i32 %i.adt, 12
  %i.aek = or disjoint i32 %i.aei, %i.aej
  %i.ael = icmp samesign ugt i8 %i.adq, -17
  br i1 %i.ael, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i, label %bb.ff

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i
  %i.aem = icmp ne ptr %i.aed, %i.adk
  tail call void @llvm.assume(i1 %i.aem)
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 4
  %i.aeo = load i8, ptr %i.aed, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.aep = shl nuw nsw i32 %i.adt, 18
  %i.aeq = and i32 %i.aep, 1835008
  %i.aer = shl nuw nsw i32 %i.aei, 6
  %i.aes = and i8 %i.aeo, 63
  %i.aet = zext nneg i8 %i.aes to i32
  %i.aeu = or disjoint i32 %i.aer, %i.aet
  %i.aev = or disjoint i32 %i.aeu, %i.aeq
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aew = zext nneg i8 %i.adq to i32
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i
  %.sroa.0.1.peel.i = phi ptr [ %i.adp, %bb.fe ], [ %i.aen, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i ], [ %i.aed, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i ], [ %i.adv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.peel.i = phi i32 [ %i.aew, %bb.fe ], [ %i.aev, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i ], [ %i.aek, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i ], [ %i.aea, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i ] ; 6 uses
  %i.aex = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.aex)
  %i.aey = ptrtoint ptr %.sroa.0.1.peel.i to i64
  %i.aez = sub i64 %.sroa.11.0.ph.i, %i.adn
  %i.afa = add i64 %i.aez, %i.aey                 ; 3 uses
  %i.afb = icmp eq i32 %.sroa.4.0.i.ph.i.peel.i, 46
  br i1 %i.afb, label %.split.us.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.afc = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.peel.i, 57
  %i.afd = add nsw i32 %.sroa.4.0.i.ph.i.peel.i, -65
  %i.afe = and i32 %i.afd, -33
  %i.aff = add nuw nsw i32 %i.afe, 10
  %i.afg = add nsw i32 %.sroa.4.0.i.ph.i.peel.i, -48
  %.sroa.02.0.i.peel.i = select i1 %i.afc, i32 %i.aff, i32 %i.afg ; 3 uses
  %i.afh = icmp ult i32 %.sroa.02.0.i.peel.i, 16
  br i1 %i.afh, label %bb.fh, label %.split194.us.i.loopexit306

bb.fh:                                            ; preds = %bb.fg
  %i.afi = icmp eq i32 %.sroa.02.0.i.peel.i, 0
  br i1 %i.afi, label %.outer.split.i, label %.split203.us.i

.outer.split.us.i:                                ; preds = %.outer.i173
  br i1 %i.ado, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, label %bb.fi

bb.fi:                                            ; preds = %.outer.split.us.i
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1 ; 3 uses
  %i.afk = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !2552, !noalias !2555, !noundef !19 ; 5 uses
  %i.afl = icmp sgt i8 %i.afk, -1
  br i1 %i.afl, label %bb.fj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i: ; preds = %bb.fi
  %i.afm = and i8 %i.afk, 31
  %i.afn = zext nneg i8 %i.afm to i32             ; 3 uses
  %i.afo = icmp ne ptr %i.afj, %i.adk
  tail call void @llvm.assume(i1 %i.afo)
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2 ; 3 uses
  %i.afq = load i8, ptr %i.afj, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.afr = shl nuw nsw i32 %i.afn, 6
  %i.afs = and i8 %i.afq, 63
  %i.aft = zext nneg i8 %i.afs to i32             ; 2 uses
  %i.afu = or disjoint i32 %i.afr, %i.aft
  %i.afv = icmp samesign ugt i8 %i.afk, -33
  br i1 %i.afv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i, label %bb.fk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i
  %i.afw = icmp ne ptr %i.afp, %i.adk
  tail call void @llvm.assume(i1 %i.afw)
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3 ; 3 uses
  %i.afy = load i8, ptr %i.afp, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.afz = shl nuw nsw i32 %i.aft, 6
  %i.aga = and i8 %i.afy, 63
  %i.agb = zext nneg i8 %i.aga to i32
  %i.agc = or disjoint i32 %i.afz, %i.agb         ; 2 uses
  %i.agd = shl nuw nsw i32 %i.afn, 12
  %i.age = or disjoint i32 %i.agc, %i.agd
  %i.agf = icmp samesign ugt i8 %i.afk, -17
  br i1 %i.agf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i, label %bb.fk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i
  %i.agg = icmp ne ptr %i.afx, %i.adk
  tail call void @llvm.assume(i1 %i.agg)
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 4
  %i.agi = load i8, ptr %i.afx, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.agj = shl nuw nsw i32 %i.afn, 18
  %i.agk = and i32 %i.agj, 1835008
  %i.agl = shl nuw nsw i32 %i.agc, 6
  %i.agm = and i8 %i.agi, 63
  %i.agn = zext nneg i8 %i.agm to i32
  %i.ago = or disjoint i32 %i.agl, %i.agn
  %i.agp = or disjoint i32 %i.ago, %i.agk
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.agq = zext nneg i8 %i.afk to i32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i
  %.sroa.0.1.us.i = phi ptr [ %i.afj, %bb.fj ], [ %i.agh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i ], [ %i.afx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i ], [ %i.afp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.us.i = phi i32 [ %i.agq, %bb.fj ], [ %i.agp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i ], [ %i.age, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i ], [ %i.afu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i ] ; 6 uses
  %i.agr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i, 1114112
  tail call void @llvm.assume(i1 %i.agr)
  %i.ags = ptrtoint ptr %.sroa.0.1.us.i to i64
  %i.agt = sub i64 %.sroa.11.0.ph.i, %i.adn
  %i.agu = add i64 %i.agt, %i.ags                 ; 2 uses
  %i.agv = icmp eq i32 %.sroa.4.0.i.ph.i.us.i, 46
  br i1 %i.agv, label %.split.us.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.agw = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.us.i, 57
  %i.agx = add nsw i32 %.sroa.4.0.i.ph.i.us.i, -65
  %i.agy = and i32 %i.agx, -33
  %i.agz = add nuw nsw i32 %i.agy, 10
  %i.aha = add nsw i32 %.sroa.4.0.i.ph.i.us.i, -48
  %.sroa.02.0.i.us.i = select i1 %i.agw, i32 %i.agz, i32 %i.aha ; 2 uses
  %i.ahb = icmp ult i32 %.sroa.02.0.i.us.i, 16
  br i1 %i.ahb, label %.split203.us.i, label %.split194.us.i.loopexit306

.outer.split.i:                                   ; preds = %bb.fh, %bb.fq
  %.sroa.11.0.i = phi i64 [ %i.aip, %bb.fq ], [ %i.afa, %bb.fh ] ; 4 uses
  %.sroa.0.0.i188 = phi ptr [ %.sroa.0.1.i190, %bb.fq ], [ %.sroa.0.1.peel.i, %bb.fh ] ; 7 uses
  %i.ahc = ptrtoint ptr %.sroa.0.0.i188 to i64
  %i.ahd = icmp eq ptr %.sroa.0.0.i188, %i.adk
  br i1 %i.ahd, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194, label %bb.fm

bb.fm:                                            ; preds = %.outer.split.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 1 ; 3 uses
  %i.ahf = load i8, ptr %.sroa.0.0.i188, align 1, !alias.scope !2552, !noalias !2555, !noundef !19 ; 5 uses
  %i.ahg = icmp sgt i8 %i.ahf, -1
  br i1 %i.ahg, label %bb.fn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189

end_hunk_1
begin_hunk_2_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a

bb.gk:                                            ; preds = %bb.gj
  %i.amo = zext nneg i8 %i.ali to i32
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i
  %.sroa.0129.2.ph.peel.i = phi ptr [ %i.aln, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i ], [ %i.alv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i ], [ %i.amf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i ], [ %i.alh, %bb.gk ]
  %.sroa.4.0.i112.ph.peel.i = phi i32 [ %i.als, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i ], [ %i.amc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i ], [ %i.amn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i ], [ %i.amo, %bb.gk ] ; 2 uses
  %i.amp = icmp samesign ult i32 %.sroa.4.0.i112.ph.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.amp)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i: ; preds = %bb.gl, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178
  %.sroa.031.3300.i = phi i1 [ %.sroa.031.3299.i, %bb.gl ], [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ]
  %.sroa.0129.1.peel.i = phi ptr [ %.sroa.0129.2.ph.peel.i, %bb.gl ], [ %.sroa.0119.2.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ] ; 3 uses
  %.sroa.036.0.peel.i = phi i32 [ %.sroa.4.0.i112.ph.peel.i, %bb.gl ], [ %spec.select.i.i.i.i179, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ]
  %i.amq = add nsw i32 %.sroa.036.0.peel.i, -48   ; 3 uses
  %i.amr = icmp ult i32 %i.amq, 10
  br i1 %i.amr, label %.peel.next.i181.preheader, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

.peel.next.i181.preheader:                        ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0129.1.peel.i) ]
  %i.ams = icmp eq ptr %.sroa.0129.1.peel.i, %i.adk
  br i1 %i.ams, label %.thread.i182, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next.i181.preheader, %.peel.next.i181
  %.sroa.0129.0.i411 = phi ptr [ %.sroa.0129.2.ph.i, %.peel.next.i181 ], [ %.sroa.0129.1.peel.i, %.peel.next.i181.preheader ] ; 5 uses
  %i.amt = phi i32 [ %i.aoy, %.peel.next.i181 ], [ %i.amq, %.peel.next.i181.preheader ] ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 1 ; 3 uses
  %i.amv = load i8, ptr %.sroa.0129.0.i411, align 1, !alias.scope !2552, !noalias !2574, !noundef !19 ; 5 uses
  %i.amw = icmp sgt i8 %i.amv, -1
  br i1 %i.amw, label %bb.gm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i: ; preds = %.lr.ph
  %i.amx = and i8 %i.amv, 31
  %i.amy = zext nneg i8 %i.amx to i32             ; 3 uses
  %i.amz = icmp ne ptr %i.amu, %i.adk
  tail call void @llvm.assume(i1 %i.amz)
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 2 ; 3 uses
  %i.anb = load i8, ptr %i.amu, align 1, !alias.scope !2552, !noalias !2574, !noundef !19
  %i.anc = shl nuw nsw i32 %i.amy, 6
  %i.and = and i8 %i.anb, 63
  %i.ane = zext nneg i8 %i.and to i32             ; 2 uses
  %i.anf = or disjoint i32 %i.anc, %i.ane
  %i.ang = icmp samesign ugt i8 %i.amv, -33
  br i1 %i.ang, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i, label %bb.gn

bb.gm:                                            ; preds = %.lr.ph
  %i.anh = zext nneg i8 %i.amv to i32
  br label %bb.gn

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i
  %i.ani = icmp ne ptr %i.ana, %i.adk
  tail call void @llvm.assume(i1 %i.ani)
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 3 ; 3 uses
  %i.ank = load i8, ptr %i.ana, align 1, !alias.scope !2552, !noalias !2574, !noundef !19
  %i.anl = shl nuw nsw i32 %i.ane, 6
  %i.anm = and i8 %i.ank, 63
  %i.ann = zext nneg i8 %i.anm to i32
  %i.ano = or disjoint i32 %i.anl, %i.ann         ; 2 uses
  %i.anp = shl nuw nsw i32 %i.amy, 12
  %i.anq = or disjoint i32 %i.ano, %i.anp
  %i.anr = icmp samesign ugt i8 %i.amv, -17
  br i1 %i.anr, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i, label %bb.gn

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i
  %i.ans = icmp ne ptr %i.anj, %i.adk
  tail call void @llvm.assume(i1 %i.ans)
  %i.ant = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 4
  %i.anu = load i8, ptr %i.anj, align 1, !alias.scope !2552, !noalias !2574, !noundef !19
  %i.anv = shl nuw nsw i32 %i.amy, 18
  %i.anw = and i32 %i.anv, 1835008
  %i.anx = shl nuw nsw i32 %i.ano, 6
  %i.any = and i8 %i.anu, 63
  %i.anz = zext nneg i8 %i.any to i32
  %i.aoa = or disjoint i32 %i.anx, %i.anz
  %i.aob = or disjoint i32 %i.aoa, %i.anw
  br label %bb.gn

bb.gn:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i, %bb.gm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i
  %.sroa.0129.2.ph.i = phi ptr [ %i.ana, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i ], [ %i.anj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i ], [ %i.ant, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i ], [ %i.amu, %bb.gm ] ; 2 uses
  %.sroa.4.0.i112.ph.i = phi i32 [ %i.anf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i ], [ %i.anq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i ], [ %i.aob, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i ], [ %i.anh, %bb.gm ] ; 2 uses
  %i.aoc = icmp samesign ult i32 %.sroa.4.0.i112.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.aoc)
  %i.aod = add nsw i32 %.sroa.4.0.i112.ph.i, -48  ; 2 uses
  %i.aoe = icmp ult i32 %i.aod, 10
  br i1 %i.aoe, label %bb.gv, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194: ; preds = %.outer.split.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.go:                                            ; preds = %.thread.i182
  %i.aof = icmp ugt i64 %spec.store.select2.i, %.sroa.4.0.ph.i
  br i1 %i.aof, label %bb.gr, label %bb.gp

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595: ; preds = %.thread.i182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 16 dereferenceable(32) @66, i64 32, i1 false), !noalias !2552
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i8 0, ptr %.sroa.442.0..sroa_idx.i, align 16, !alias.scope !2549, !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.gz

bb.gp:                                            ; preds = %bb.go
  %i.aog = xor i64 %spec.store.select2.i, -1
  %i.aoh = add i64 %.sroa.4.0.ph.i, %i.aog        ; 2 uses
  %i.aoi = icmp ugt i64 %i.aoh, 2147483647
  %i.aoj = shl nuw nsw i64 %i.aoh, 32
  %.sroa.071.0.insert.insert.i = select i1 %i.aoi, i64 513, i64 %i.aoj ; 2 uses
  %i.aok = trunc i64 %.sroa.071.0.insert.insert.i to i1
  br i1 %i.aok, label %bb.gq, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i, !prof !167

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2577
  store i8 2, ptr %i.a, align 1, !noalias !2577
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #35, !noalias !2549
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i: ; preds = %bb.gp
  %.sroa.6.0.extract.shift.i93.i = lshr i64 %.sroa.071.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i94.i = trunc nuw i64 %.sroa.6.0.extract.shift.i93.i to i32
  %i.aol = sub nsw i32 0, %.sroa.6.0.extract.trunc.i94.i
  br label %bb.gt

bb.gr:                                            ; preds = %bb.go
  %i.aom = sub nuw i64 %spec.store.select2.i, %.sroa.4.0.ph.i ; 2 uses
  %i.aon = icmp ugt i64 %i.aom, 2147483647
  %i.aoo = shl nuw nsw i64 %i.aom, 32
  %.sroa.075.0.insert.insert.i = select i1 %i.aon, i64 513, i64 %i.aoo ; 2 uses
  %i.aop = trunc i64 %.sroa.075.0.insert.insert.i to i1
  br i1 %i.aop, label %bb.gs, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i, !prof !167

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2580
  store i8 2, ptr %i.b, align 1, !noalias !2580
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !noalias !2549
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.gr
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.075.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  br label %bb.gt

bb.gt:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i
  %.sroa.044.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i ], [ %i.aol, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i ] ; 3 uses
  %i.aoq = shl nsw i32 %.sroa.044.0.i, 2
  %i.aor = add i32 %.sroa.044.0.i, -536870912
  %i.aos = icmp ult i32 %i.aor, -1073741824
  br i1 %i.aos, label %bb.gu, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit, !prof !167

bb.gu:                                            ; preds = %bb.gt
  %i.aot = icmp sgt i32 %.sroa.044.0.i, -1
  %..i = select i1 %i.aot, i32 2147483647, i32 -2147483648
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit

bb.gv:                                            ; preds = %bb.gn
  %i.aou = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.amt, i32 10) ; 2 uses
  %i.aov = extractvalue { i32, i1 } %i.aou, 0
  %i.aow = extractvalue { i32, i1 } %i.aou, 1
  br i1 %i.aow, label %bb.gw, label %.peel.next.i181, !prof !167

bb.gw:                                            ; preds = %bb.gv
  %i.aox = icmp sgt i32 %i.amt, -1
  %.92.i = select i1 %i.aox, i32 2147483647, i32 -2147483648
  br label %.peel.next.i181

.peel.next.i181:                                  ; preds = %bb.gw, %bb.gv
  %.sroa.069.0.i = phi i32 [ %i.aov, %bb.gv ], [ %.92.i, %bb.gw ]
  %i.aoy = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.069.0.i, i32 %i.aod) ; 2 uses
  %i.aoz = icmp eq ptr %.sroa.0129.2.ph.i, %i.adk
  br i1 %i.aoz, label %.thread.i182, label %.lr.ph, !llvm.loop !2583

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread: ; preds = %.split.us.i, %bb.gn, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, %bb.gf, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i, %bb.gb, %.split194.us.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194
  %.sink699 = phi ptr [ @64, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195 ], [ @79, %bb.gn ], [ @80, %.split194.us.i ], [ @64, %bb.gb ], [ @85, %bb.gf ], [ @86, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194 ], [ @85, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i ], [ @79, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i ], [ @63, %.split.us.i ]
  %.sink = phi i64 [ 25, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195 ], [ 29, %bb.gn ], [ 32, %.split194.us.i ], [ 25, %bb.gb ], [ 22, %bb.gf ], [ 31, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194 ], [ 22, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i ], [ 29, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i ], [ 29, %.split.us.i ]
  store ptr %.sink699, ptr %i.aa, align 16, !alias.scope !2549, !noalias !2552
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sink, ptr %i.apa, align 8, !alias.scope !2549, !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.gy

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit: ; preds = %bb.gt, %bb.gu
  %.sroa.070.0.i = phi i32 [ %i.aoq, %bb.gt ], [ %..i, %bb.gu ]
  %i.apb = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.070.0.i, i32 -1)
  %i.apc = tail call i32 @llvm.sadd.sat.i32(i32 %i.apb, i32 11)
  %i.apd = tail call i32 @llvm.sadd.sat.i32(i32 %i.apc, i32 -128)
  %i.ape = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.040.0.i, i32 %i.apd)
  store i32 %i.ape, ptr %i.adh, align 16, !noalias !2554
  %.not.i183 = icmp eq i8 %.sroa.025.0.ph.i, -1
  %..sroa.025.0.i = select i1 %.not.i183, i8 0, i8 %.sroa.025.0.ph.i
  call fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE9normalizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.c, i8 noundef range(i8 0, 5) %.sroa.028.0, i8 noundef %..sroa.025.0.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 21
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !1722 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.apf = icmp eq i8 %.pre, 2
  br i1 %i.apf, label %bb.gy, label %bb.gz

bb.gx:                                            ; preds = %bb.fa
  store ptr @165, ptr %0, align 16
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.apg, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %7, align 1
  br label %bb.ha

bb.gy:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit
  %i.aph = load ptr, ptr %i.aa, align 16, !nonnull !19, !noundef !19
  %i.api = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.apj = load i64, ptr %i.api, align 8, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %i.aph, ptr %0, align 16
  %i.apk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.apj, ptr %i.apk, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %8, align 1
  br label %bb.ha

bb.gz:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit
  %i.apl = phi i8 [ 0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595 ], [ %.pre, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit ]
  %.sroa.0117.0.copyload = load ptr, ptr %i.aa, align 16
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4118.0.copyload = load i64, ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5119.sroa.0.0.copyload = load i32, ptr %.sroa.5119.0..sroa_idx, align 16
  %.sroa.5119.sroa.4.0..sroa.5119.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.5119.sroa.4.0.copyload = load i8, ptr %.sroa.5119.sroa.4.0..sroa.5119.0..sroa_idx.sroa_idx, align 4
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7121.0..sroa_idx, i64 10, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.fb

bb.ha:                                            ; preds = %bb.ab, %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread, %bb.gy, %bb.gx, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread, %bb.fb, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [48 x i8], align 16               ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 6 uses
  %i.i = alloca [32 x i8], align 16               ; 4 uses
  %i.j = alloca [48 x i8], align 16               ; 10 uses
  %i.k = alloca [32 x i8], align 16               ; 8 uses
  %i.l = alloca [4 x i8], align 4                 ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [48 x i8], align 16               ; 10 uses
  %i.q = alloca [48 x i8], align 16               ; 12 uses
  %i.r = alloca [48 x i8], align 16               ; 12 uses
  %i.s = alloca [48 x i8], align 16               ; 12 uses
  %i.t = alloca [48 x i8], align 16               ; 15 uses
  %i.u = alloca [48 x i8], align 16               ; 25 uses
  %i.v = alloca [48 x i8], align 16               ; 12 uses
  %i.w = alloca [48 x i8], align 16               ; 9 uses
  %i.x = alloca [32 x i8], align 16               ; 5 uses
  %i.y = alloca [48 x i8], align 16               ; 14 uses
  %.sroa.9 = alloca [10 x i8], align 2            ; 6 uses
  %i.z = alloca [32 x i8], align 16               ; 6 uses
  %.sroa.9140 = alloca [10 x i8], align 2         ; 3 uses
  %i.aa = alloca [48 x i8], align 16              ; 17 uses
  %.sroa.14 = alloca [10 x i8], align 2           ; 3 uses
  %i.ab = icmp eq i64 %2, 0
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 1) ; 6 uses
  %.sroa.0130.0 = zext i1 %i.ac to i8             ; 2 uses
  %i.ad = sext i1 %i.ac to i64
  %.sroa.18.0 = add i64 %2, %i.ad                 ; 7 uses
  %.sroa.0.0.idx = zext i1 %i.ac to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 9 uses
  %i.ae = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.18.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 1) ; 2 uses
  %i.af = xor i1 %i.ae, true
  %i.ag = or i1 %i.ac, %i.af                      ; 4 uses
  %not. = xor i1 %i.ag, true                      ; 2 uses
  %i.ah = sext i1 %not. to i64
  %.sroa.18.1 = add i64 %.sroa.18.0, %i.ah        ; 23 uses
  %.sroa.0.1.idx = zext i1 %not. to i64
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.0.1.idx ; 24 uses
  switch i64 %.sroa.18.1, label %bb.i [
    i64 3, label %bb.d
    i64 8, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  store ptr @166, ptr %0, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 21, ptr %i.ai, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %4, align 1
  br label %bb.ha

bb.d:                                             ; preds = %bb.b
  %i.aj = load i16, ptr %.sroa.0.1, align 1
  %i.ak = xor i16 %i.aj, 28233
  %i.al = getelementptr i8, ptr %.sroa.0.1, i64 2
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i16
  %i.ao = xor i16 %i.an, 102
  %i.ap = or i16 %i.ak, %i.ao
  %i.aq = icmp ne i16 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond = or i1 %i.ac, %i.ae
  br i1 %or.cond, label %bb.p, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.at = load i16, ptr %.sroa.0.1, align 1
  %i.au = xor i16 %i.at, 28265
  %i.av = getelementptr i8, ptr %.sroa.0.1, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = xor i16 %i.ax, 102
  %i.az = or i16 %i.au, %i.ay
  %i.ba = icmp ne i16 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.o, label %.thread272

bb.h:                                             ; preds = %bb.b
  %i.bd = load i64, ptr %.sroa.0.1, align 1
  %i.be = icmp ne i64 %i.bd, 6436850368004902473
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.b, %bb.h
  br i1 %i.ag, label %bb.k, label %bb.aa

bb.j:                                             ; preds = %bb.h
  br i1 %i.ag, label %bb.o, label %.thread272

bb.k:                                             ; preds = %bb.i
  %i.bh = icmp samesign eq i64 %.sroa.18.0, 0
  br i1 %i.bh, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.k
  %i.bi = ptrtoint ptr %.sroa.0.0 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 2 uses
  %i.bk = load i8, ptr %.sroa.0.0, align 1, !alias.scope !2584, !noalias !2587, !noundef !19 ; 5 uses
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.l, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i: ; preds = %.thread
  %i.bm = and i8 %i.bk, 31
  %i.bn = zext nneg i8 %i.bm to i32               ; 3 uses
  %i.bo = icmp samesign ne i64 %.sroa.18.0, 1
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 2 uses
  %i.bq = load i8, ptr %i.bj, align 1, !alias.scope !2584, !noalias !2587, !noundef !19
  %i.br = shl nuw nsw i32 %i.bn, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32               ; 2 uses
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp samesign ugt i8 %i.bk, -33
  br i1 %i.bv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

bb.l:                                             ; preds = %.thread
  %i.bw = zext nneg i8 %i.bk to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i
  %i.bx = icmp samesign ne i64 %.sroa.18.0, 2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3 ; 2 uses
  %i.bz = load i8, ptr %i.bp, align 1, !alias.scope !2584, !noalias !2587, !noundef !19
  %i.ca = shl nuw nsw i32 %i.bt, 6
  %i.cb = and i8 %i.bz, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = shl nuw nsw i32 %i.bn, 12
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bk, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i
  %i.ch = icmp samesign ne i64 %.sroa.18.0, 3
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.cj = load i8, ptr %i.by, align 1, !alias.scope !2584, !noalias !2587, !noundef !19
  %i.ck = shl nuw nsw i32 %i.bn, 18
  %i.cl = and i32 %i.ck, 1835008
  %i.cm = shl nuw nsw i32 %i.cd, 6
  %i.cn = and i8 %i.cj, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = or disjoint i32 %i.cp, %i.cl
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i, %bb.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i
  %i.cr = phi ptr [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i ], [ %i.ci, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i ], [ %i.bp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i ], [ %i.bj, %bb.l ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.cf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i ], [ %i.cq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i ], [ %i.bu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i ], [ %i.bw, %bb.l ] ; 2 uses
  %i.cs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cs)
  switch i32 %.sroa.4.0.i.ph.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit [
    i32 115, label %bb.m
    i32 83, label %bb.m
  ]

bb.m:                                             ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.ct, %i.bi                    ; 2 uses
  %i.cv = sub nuw i64 %.sroa.18.0, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.cu
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit: ; preds = %bb.k, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i, %bb.m
  %.sroa.7210.0 = phi i64 [ %i.cv, %bb.m ], [ %.sroa.18.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.18.1, %bb.k ] ; 5 uses
  %.sroa.5209.0 = phi ptr [ %i.cw, %bb.m ], [ %.sroa.0.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.0.1, %bb.k ] ; 4 uses
  %.sroa.0208.0 = phi i1 [ true, %bb.m ], [ false, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ false, %bb.k ] ; 2 uses
  %i.cx = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5209.0, i64 noundef %.sroa.7210.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 3)
  %i.cy = add i64 %.sroa.7210.0, -3               ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.5209.0, i64 3 ; 3 uses
  br i1 %i.cx, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit
  %i.da = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5209.0, i64 noundef %.sroa.7210.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 3), !noalias !2595
  br i1 %i.da, label %select.unfold, label %bb.aa

bb.o:                                             ; preds = %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @95, i64 22), i64 10, i1 false)
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

bb.p:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @95, i64 22), i64 10, i1 false)
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

select.unfold:                                    ; preds = %bb.n, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598)
  %i.db = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 1), !noalias !2601
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %select.unfold
  %i.dc = add i64 %.sroa.7210.0, -4
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.5209.0, i64 4 ; 2 uses
  %i.de = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef range(i64 0, -1) %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 1), !noalias !2601
  %i.df = add i64 %.sroa.7210.0, -5               ; 2 uses
  %.not5.i.i.i = icmp ne i64 %i.df, 0
  %.not.i.i = and i1 %.not5.i.i.i, %i.de          ; 2 uses
  %spec.select.i = select i1 %.not.i.i, i64 %i.df, i64 %i.cy
  %spec.select55.i = select i1 %.not.i.i, ptr %i.dd, ptr %i.cz
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %select.unfold
  %.sroa.9.0.i = phi i64 [ %i.cy, %select.unfold ], [ %spec.select.i, %bb.q ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.cz, %select.unfold ], [ %spec.select55.i, %bb.q ] ; 7 uses
  %i.dg = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.9.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 1), !noalias !2601
  %i.di = add i64 %.sroa.9.0.i, -1                ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 4 uses
  %.not5.i.i = icmp ne i64 %i.di, 0
  %.not.i155 = and i1 %.not5.i.i, %i.dh
  br i1 %.not.i155, label %bb.u, label %bb.x

bb.t:                                             ; preds = %bb.r
  %spec.select3.i = select i1 %.sroa.0208.0, i128 1298074214633706907132624082305024, i128 2596148429267413814265248164610048
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2 ; 2 uses
  %i.dm = load i8, ptr %i.dj, align 1, !alias.scope !2603, !noalias !2606, !noundef !19 ; 5 uses
  %i.dn = icmp sgt i8 %i.dm, -1
  br i1 %i.dn, label %bb.v, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i: ; preds = %bb.u
  %i.do = and i8 %i.dm, 31
  %i.dp = zext nneg i8 %i.do to i32               ; 3 uses
  %i.dq = icmp samesign ne i64 %i.di, 1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3 ; 2 uses
  %i.ds = load i8, ptr %i.dl, align 1, !alias.scope !2603, !noalias !2606, !noundef !19
  %i.dt = shl nuw nsw i32 %i.dp, 6
  %i.du = and i8 %i.ds, 63
  %i.dv = zext nneg i8 %i.du to i32               ; 2 uses
  %i.dw = or disjoint i32 %i.dt, %i.dv
  %i.dx = icmp samesign ugt i8 %i.dm, -33
  br i1 %i.dx, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.dy = zext nneg i8 %i.dm to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i
  %i.dz = icmp samesign ne i64 %i.di, 2
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4 ; 2 uses
  %i.eb = load i8, ptr %i.dr, align 1, !alias.scope !2603, !noalias !2606, !noundef !19
  %i.ec = shl nuw nsw i32 %i.dv, 6
  %i.ed = and i8 %i.eb, 63
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.ec, %i.ee            ; 2 uses
  %i.eg = shl nuw nsw i32 %i.dp, 12
  %i.eh = or disjoint i32 %i.ef, %i.eg
  %i.ei = icmp samesign ugt i8 %i.dm, -17
  br i1 %i.ei, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i
  %i.ej = icmp samesign ne i64 %i.di, 3
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.el = load i8, ptr %i.ea, align 1, !alias.scope !2603, !noalias !2606, !noundef !19
  %i.em = shl nuw nsw i32 %i.dp, 18
  %i.en = and i32 %i.em, 1835008
  %i.eo = shl nuw nsw i32 %i.ef, 6
  %i.ep = and i8 %i.el, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.eo, %i.eq
  %i.es = or disjoint i32 %i.er, %i.en
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i, %bb.v, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i
  %i.et = phi ptr [ %i.ea, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i ], [ %i.ek, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i ], [ %i.dr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i ], [ %i.dl, %bb.v ]
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.eh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i ], [ %i.es, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i ], [ %i.dw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i ], [ %i.dy, %bb.v ] ; 2 uses
  %i.eu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.eu)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i [
    i32 120, label %bb.w
    i32 88, label %bb.w
  ]

bb.w:                                             ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.ev, %i.dk                    ; 2 uses
  %i.ex = sub nuw i64 %i.di, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ew
  br label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i

_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.w, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
  %.sroa.03.0.i57.i = phi ptr [ %i.ey, %bb.w ], [ null, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.ex, %bb.w ], [ undef, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i ]
  %.not54.i = icmp eq ptr %.sroa.03.0.i57.i, null ; 3 uses
  %.sroa.042.0.i = select i1 %.not54.i, i32 8, i32 16
  %.sroa.444.0.i = select i1 %.not54.i, ptr %i.dj, ptr %.sroa.03.0.i57.i
  %.sroa.7.0.i = select i1 %.not54.i, i64 %i.di, i64 %.sroa.3.0.i.i
  br label %bb.x

bb.x:                                             ; preds = %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i, %bb.s
  %.sroa.049.0.i = phi i32 [ %.sroa.042.0.i, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i ], [ 10, %bb.s ]
  %.sroa.9.1.i = phi i64 [ %.sroa.7.0.i, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.9.0.i, %bb.s ]
  %.sroa.0.1.i = phi ptr [ %.sroa.444.0.i, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.0.0.i, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2614
  call fastcc void @_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.9.1.i, i32 noundef %.sroa.049.0.i) #34, !noalias !2601
  %i.ez = load i8, ptr %i.z, align 16, !range !334, !noalias !2614, !noundef !19
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.fc = load i128, ptr %i.fb, align 16, !noalias !2614, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2614
  %i.fd = and i128 %i.fc, 2596148429267413814265248164610047 ; 3 uses
  br i1 %.sroa.0208.0, label %.split.i, label %bb.z

.split.i:                                         ; preds = %bb.y
  %i.fe = icmp eq i128 %i.fd, 0
  %storemerge.i.i = select i1 %i.fe, i128 1298074214633706907132624082305024, i128 %i.fd
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ff = or disjoint i128 %i.fd, 2596148429267413814265248164610048
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2614
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit, %bb.i
  %i.fg = icmp eq i64 %.sroa.18.1, 0
  br i1 %i.fg, label %bb.ab, label %.thread272

_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.t, %.split.i, %bb.z, %bb.o, %bb.p
  %.sroa.8.0 = phi i8 [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %bb.z ], [ 1, %.split.i ], [ 1, %bb.t ]
  %.sroa.0197.0 = phi i128 [ 0, %bb.o ], [ 0, %bb.p ], [ %i.ff, %bb.z ], [ %storemerge.i.i, %.split.i ], [ %spec.select3.i, %bb.t ]
  store i128 %.sroa.0197.0, ptr %0, align 16
  %.sroa.057.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 16384, ptr %.sroa.057.sroa.4.0..sroa_idx, align 16
  %.sroa.057.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.8.0, ptr %.sroa.057.sroa.5.0..sroa_idx, align 4
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.0130.0, ptr %.sroa.458.0..sroa_idx, align 1
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.559.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, i64 10, i1 false)
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.660.0..sroa_idx, align 16
  br label %bb.ha

bb.ab:                                            ; preds = %bb.aa
  store ptr @164, ptr %0, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 20, ptr %i.fh, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %5, align 1
  br label %bb.ha

.thread272:                                       ; preds = %bb.j, %bb.g, %bb.aa
  %i.fi = shl nuw nsw i8 %3, 3
  %switch.shiftamt = zext nneg i8 %i.fi to i40
  %switch.downshift = lshr i40 17230266880, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  %.sroa.028.0 = select i1 %i.ac, i8 %switch.masked, i8 %3 ; 5 uses
  %i.fj = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef %.sroa.18.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 1)
  br i1 %i.fj, label %bb.ac, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread

bb.ac:                                            ; preds = %.thread272
  %i.fk = add i64 %.sroa.18.1, -1                 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = icmp samesign eq i64 %i.fk, 0
  br i1 %i.fn, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 2 uses
  %i.fp = load i8, ptr %i.fl, align 1, !alias.scope !2615, !noalias !2618, !noundef !19 ; 5 uses
  %i.fq = icmp sgt i8 %i.fp, -1
  br i1 %i.fq, label %bb.ae, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156: ; preds = %bb.ad
  %i.fr = and i8 %i.fp, 31
  %i.fs = zext nneg i8 %i.fr to i32               ; 3 uses
  %i.ft = icmp samesign ne i64 %i.fk, 1
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3 ; 2 uses
  %i.fv = load i8, ptr %i.fo, align 1, !alias.scope !2615, !noalias !2618, !noundef !19
  %i.fw = shl nuw nsw i32 %i.fs, 6
  %i.fx = and i8 %i.fv, 63
  %i.fy = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.fz = or disjoint i32 %i.fw, %i.fy
  %i.ga = icmp samesign ugt i8 %i.fp, -33
  br i1 %i.ga, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157

bb.ae:                                            ; preds = %bb.ad
  %i.gb = zext nneg i8 %i.fp to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156
  %i.gc = icmp samesign ne i64 %i.fk, 2
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4 ; 2 uses
  %i.ge = load i8, ptr %i.fu, align 1, !alias.scope !2615, !noalias !2618, !noundef !19
  %i.gf = shl nuw nsw i32 %i.fy, 6
  %i.gg = and i8 %i.ge, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh            ; 2 uses
  %i.gj = shl nuw nsw i32 %i.fs, 12
  %i.gk = or disjoint i32 %i.gi, %i.gj
  %i.gl = icmp samesign ugt i8 %i.fp, -17
  br i1 %i.gl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162
  %i.gm = icmp samesign ne i64 %i.fk, 3
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5
  %i.go = load i8, ptr %i.gd, align 1, !alias.scope !2615, !noalias !2618, !noundef !19
  %i.gp = shl nuw nsw i32 %i.fs, 18
  %i.gq = and i32 %i.gp, 1835008
  %i.gr = shl nuw nsw i32 %i.gi, 6
  %i.gs = and i8 %i.go, 63
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gq
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162, %bb.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156
  %i.gw = phi ptr [ %i.gd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162 ], [ %i.gn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163 ], [ %i.fu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156 ], [ %i.fo, %bb.ae ]
  %.sroa.4.0.i.ph.i.i.i158 = phi i32 [ %i.gk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i162 ], [ %i.gv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i163 ], [ %i.fz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i156 ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i158, 1114112
  tail call void @llvm.assume(i1 %i.gx)
  switch i32 %.sroa.4.0.i.ph.i.i.i158, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread [
    i32 120, label %bb.fa
    i32 88, label %bb.fa
  ]

_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread: ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157, %bb.ac, %.thread272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.18.1 ; 13 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread
  %.sroa.0.0622.i = phi i8 [ %.sroa.0.1.i171, %bb.ai ], [ 0, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 2 uses
  %.sroa.05.0621.i = phi i64 [ %.sroa.05.1.i, %bb.ai ], [ 0, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 4 uses
  %.sroa.011.0620.i = phi i64 [ %.sroa.011.2.i, %bb.ai ], [ %.sroa.18.1, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 5 uses
  %.sroa.024.0619.i = phi i64 [ %.sroa.024.1.i, %bb.ai ], [ 0, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 5 uses
  %.sroa.4.0618.i = phi i64 [ %.sroa.4.1.i, %bb.ai ], [ undef, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 5 uses
  %.sroa.0.0473617.i = phi ptr [ %.sroa.0.1474.i, %bb.ai ], [ %.sroa.0.1, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 6 uses
  %.sroa.11.0616.i = phi i64 [ %i.il, %bb.ai ], [ 0, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide.exit164.thread ] ; 9 uses
  %i.gz = ptrtoint ptr %.sroa.0.0473617.i to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0473617.i, i64 1 ; 3 uses
  %i.hb = load i8, ptr %.sroa.0.0473617.i, align 1, !alias.scope !2626, !noalias !2629, !noundef !19 ; 5 uses
  %i.hc = icmp sgt i8 %i.hb, -1
  br i1 %i.hc, label %bb.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.hd = and i8 %i.hb, 31
  %i.he = zext nneg i8 %i.hd to i32               ; 3 uses
  %i.hf = icmp ne ptr %i.ha, %i.gy
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0473617.i, i64 2 ; 3 uses
  %i.hh = load i8, ptr %i.ha, align 1, !alias.scope !2626, !noalias !2629, !noundef !19
  %i.hi = shl nuw nsw i32 %i.he, 6
  %i.hj = and i8 %i.hh, 63
  %i.hk = zext nneg i8 %i.hj to i32               ; 2 uses
  %i.hl = or disjoint i32 %i.hi, %i.hk
  %i.hm = icmp samesign ugt i8 %i.hb, -33
  br i1 %i.hm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

bb.af:                                            ; preds = %.lr.ph.i
  %i.hn = zext nneg i8 %i.hb to i32
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i
  %i.ho = icmp ne ptr %i.hg, %i.gy
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0473617.i, i64 3 ; 3 uses
  %i.hq = load i8, ptr %i.hg, align 1, !alias.scope !2626, !noalias !2629, !noundef !19
  %i.hr = shl nuw nsw i32 %i.hk, 6
  %i.hs = and i8 %i.hq, 63
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = or disjoint i32 %i.hr, %i.ht            ; 2 uses
  %i.hv = shl nuw nsw i32 %i.he, 12
  %i.hw = or disjoint i32 %i.hu, %i.hv
  %i.hx = icmp samesign ugt i8 %i.hb, -17
  br i1 %i.hx, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i
  %i.hy = icmp ne ptr %i.hp, %i.gy
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0473617.i, i64 4
  %i.ia = load i8, ptr %i.hp, align 1, !alias.scope !2626, !noalias !2629, !noundef !19
  %i.ib = shl nuw nsw i32 %i.he, 18
  %i.ic = and i32 %i.ib, 1835008
  %i.id = shl nuw nsw i32 %i.hu, 6
  %i.ie = and i8 %i.ia, 63
  %i.if = zext nneg i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.id, %i.if
  %i.ih = or disjoint i32 %i.ig, %i.ic
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i, %bb.af, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i
  %.sroa.0.1474.i = phi ptr [ %i.ha, %bb.af ], [ %i.hz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i ], [ %i.hp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i ], [ %i.hg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.hn, %bb.af ], [ %i.ih, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i ], [ %i.hw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i ], [ %i.hl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i ] ; 4 uses
  %i.ii = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = ptrtoint ptr %.sroa.0.1474.i to i64
  %i.ik = sub i64 %.sroa.11.0616.i, %i.gz
  %i.il = add i64 %i.ik, %i.ij
  %cond.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, 46
  br i1 %cond.i, label %bb.ag, label %bb.ah

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %bb.ai
  %i.im = trunc nuw i8 %.sroa.0.1.i171 to i1
  br i1 %i.im, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.ag:                                            ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %.not208.i = icmp eq i64 %.sroa.011.0620.i, %.sroa.18.1
  br i1 %.not208.i, label %bb.ai, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.ah:                                            ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %i.in = add nsw i32 %.sroa.4.0.i.ph.i.i, -48    ; 2 uses
  %i.io = icmp ult i32 %i.in, 10
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %bb.al, %bb.aj, %bb.ag
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0618.i, %bb.ag ], [ %.sroa.4.0618.i, %bb.aj ], [ %spec.select.i170, %bb.al ] ; 2 uses
  %.sroa.024.1.i = phi i64 [ %.sroa.024.0619.i, %bb.ag ], [ %.sroa.024.0619.i, %bb.aj ], [ 1, %bb.al ] ; 2 uses
  %.sroa.011.2.i = phi i64 [ %.sroa.11.0616.i, %bb.ag ], [ %.sroa.011.0620.i, %bb.aj ], [ %.sroa.011.0620.i, %bb.al ] ; 2 uses
  %.sroa.05.1.i = phi i64 [ %.sroa.05.0621.i, %bb.ag ], [ %.sroa.05.0621.i, %bb.aj ], [ %.sroa.11.0616.i, %bb.al ] ; 2 uses
  %.sroa.0.1.i171 = phi i8 [ %.sroa.0.0622.i, %bb.ag ], [ 1, %bb.aj ], [ 1, %bb.al ] ; 2 uses
  %i.ip = icmp eq ptr %.sroa.0.1474.i, %i.gy
  br i1 %i.ip, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i, label %.lr.ph.i

bb.aj:                                            ; preds = %bb.ah
  %i.iq = icmp eq i32 %i.in, 0
  br i1 %i.iq, label %bb.ai, label %bb.al

bb.ak:                                            ; preds = %bb.ah
  switch i32 %.sroa.4.0.i.ph.i.i, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread [
    i32 101, label %bb.am
    i32 69, label %bb.am
  ]

bb.al:                                            ; preds = %bb.aj
  %.not207.i = icmp eq i64 %.sroa.024.0619.i, 1
  %spec.select.i170 = select i1 %.not207.i, i64 %.sroa.4.0618.i, i64 %.sroa.11.0616.i
  br label %bb.ai

bb.am:                                            ; preds = %bb.ak, %bb.ak
  %i.ir = trunc nuw i8 %.sroa.0.0622.i to i1
  br i1 %i.ir, label %bb.an, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.is = icmp eq i64 %.sroa.011.0620.i, %.sroa.18.1
  %spec.store.select.i = select i1 %i.is, i64 %.sroa.11.0616.i, i64 %.sroa.011.0620.i ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a
  %.sink11.i342.i = select i1 %i.aas, ptr %i.aat, ptr %i.r
  %.sink10.i343.i = select i1 %i.aas, i64 %i.aau, i64 %i.aar ; 2 uses
  %i.aav = add i64 %.sink10.i343.i, %.sink10.i340.i
  %i.aaw = shl i64 %i.aav, 7
  %i.aax = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3mul(ptr noalias nofree noundef nonnull align 16 %.sink10.i336.i, i64 noundef %i.aam, ptr noalias nofree noundef align 4 dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i339.i, i64 noundef %.sink10.i340.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i342.i, i64 noundef %.sink10.i343.i, i64 noundef %i.aaw)
          to label %bb.ej unwind label %bb.eb, !noalias !2638 ; 0 uses

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2652
  %i.aay = load i64, ptr %i.rp, align 16, !alias.scope !2804, !noalias !2807, !noundef !19 ; 3 uses
  %i.aaz = icmp ugt i64 %i.aay, 2                 ; 2 uses
  %i.aba = load i64, ptr %i.sc, align 8, !alias.scope !2804, !noalias !2807 ; 2 uses
  %.sink10.i352637.i = select i1 %i.aaz, i64 %i.aba, i64 %i.aay ; 2 uses
  %.not202638.i = icmp eq i64 %.sink10.i352637.i, 0
  br i1 %.not202638.i, label %.critedge218.i, label %.lr.ph641.i

.lr.ph641.i:                                      ; preds = %bb.ej
  %i.abb = load ptr, ptr %i.q, align 16, !alias.scope !2804, !noalias !2807, !nonnull !19
  br label %bb.ek

bb.ek:                                            ; preds = %bb.eo, %.lr.ph641.i
  %i.abc = phi i64 [ %i.aba, %.lr.ph641.i ], [ %i.abn, %bb.eo ]
  %i.abd = phi i64 [ %i.aay, %.lr.ph641.i ], [ %i.abo, %bb.eo ]
  %.sink10.i352639.i = phi i64 [ %.sink10.i352637.i, %.lr.ph641.i ], [ %.sink10.i352.i, %bb.eo ]
  %i.abe = phi i1 [ %i.aaz, %.lr.ph641.i ], [ %i.abp, %bb.eo ] ; 2 uses
  %.sink11.i351.i = select i1 %i.abe, ptr %i.abb, ptr %i.q
  %i.abf = getelementptr [16 x i8], ptr %.sink11.i351.i, i64 %.sink10.i352639.i
  %i.abg = getelementptr i8, ptr %i.abf, i64 -16
  %i.abh = load i128, ptr %i.abg, align 16, !noalias !2638, !noundef !19
  %i.abi = icmp eq i128 %i.abh, 0
  br i1 %i.abi, label %bb.em, label %.critedge218.i

.critedge218.i:                                   ; preds = %bb.eo, %bb.ek, %bb.ej
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslLuZgPVt6hg_3ide(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit354.i unwind label %bb.el, !noalias !2638

bb.el:                                            ; preds = %.critedge218.i
  %i.abj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #36, !noalias !2638
  unreachable

bb.em:                                            ; preds = %bb.ek
  %.sink9.i356.i = select i1 %i.abe, ptr %i.sc, ptr %i.rp ; 2 uses
  %i.abk = load i64, ptr %.sink9.i356.i, align 8, !noalias !2652, !noundef !19 ; 2 uses
  %i.abl = icmp eq i64 %i.abk, 0
  br i1 %i.abl, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.abm = add i64 %i.abk, -1
  store i64 %i.abm, ptr %.sink9.i356.i, align 8, !noalias !2652
  %.pre704.i = load i64, ptr %i.rp, align 16, !alias.scope !2804, !noalias !2807
  %.pre705.i = load i64, ptr %i.sc, align 8, !alias.scope !2804, !noalias !2807
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.abn = phi i64 [ %i.abc, %bb.em ], [ %.pre705.i, %bb.en ] ; 2 uses
  %i.abo = phi i64 [ %i.abd, %bb.em ], [ %.pre704.i, %bb.en ] ; 3 uses
  %i.abp = icmp ugt i64 %i.abo, 2                 ; 2 uses
  %.sink10.i352.i = select i1 %i.abp, i64 %i.abn, i64 %i.abo ; 2 uses
  %.not202.i = icmp eq i64 %.sink10.i352.i, 0
  br i1 %.not202.i, label %.critedge218.i, label %bb.ek

bb.ep:                                            ; preds = %bb.ef
  %.sink9.i328.i = select i1 %i.zt, ptr %i.rz, ptr %i.rk ; 2 uses
  %i.abq = load i64, ptr %.sink9.i328.i, align 8, !noalias !2652, !noundef !19 ; 2 uses
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.abs = add i64 %i.abq, -1
  store i64 %i.abs, ptr %.sink9.i328.i, align 8, !noalias !2652
  %.pre.i = load i64, ptr %i.rk, align 16, !alias.scope !2774, !noalias !2777
  %.pre703.i = load i64, ptr %i.rz, align 8, !alias.scope !2774, !noalias !2777
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.abt = phi i64 [ %i.zr, %bb.ep ], [ %.pre703.i, %bb.eq ] ; 2 uses
  %i.abu = phi i64 [ %i.zs, %bb.ep ], [ %.pre.i, %bb.eq ] ; 3 uses
  %i.abv = icmp ugt i64 %i.abu, 2                 ; 2 uses
  %.sink10.i324.i = select i1 %i.abv, i64 %i.abt, i64 %i.abu ; 2 uses
  %.not201.i = icmp eq i64 %.sink10.i324.i, 0
  br i1 %.not201.i, label %.critedge.i, label %bb.ef

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i: ; preds = %.body251.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.r)
          to label %.body.i unwind label %bb.ea, !noalias !2638

bb.es:                                            ; preds = %.thread514.i
  %i.abw = extractvalue { ptr, ptr } %i.ro, 0     ; 3 uses
  %i.abx = extractvalue { ptr, ptr } %i.ro, 1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abx) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abw) ]
  %i.aby = icmp eq ptr %i.abw, %i.abx
  br i1 %i.aby, label %._crit_edge.i, label %.lr.ph629.i

.lr.ph629.i:                                      ; preds = %bb.es, %bb.et
  %.sroa.049.2628.i = phi i128 [ %i.acg, %bb.et ], [ %.sroa.049.1520.i, %bb.es ]
  %.sroa.062.0627.i = phi ptr [ %i.aca, %bb.et ], [ %i.abw, %bb.es ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2652
  %i.abz = load i128, ptr %.sroa.062.0627.i, align 16, !noalias !2638, !noundef !19
  invoke fastcc void @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12widening_mul(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.x, i128 noundef %i.abz, i128 noundef %.sroa.053.1519.i)
          to label %bb.et unwind label %.loopexit543.i, !noalias !2638

._crit_edge.i:                                    ; preds = %bb.et, %bb.es
  %.sroa.049.2.lcssa.i = phi i128 [ %.sroa.049.1520.i, %bb.es ], [ %i.acg, %bb.et ] ; 2 uses
  %.not190.i = icmp eq i128 %.sroa.049.2.lcssa.i, 0
  br i1 %.not190.i, label %.outer.i.backedge, label %bb.eu

bb.et:                                            ; preds = %.lr.ph629.i
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.062.0627.i, i64 16 ; 2 uses
  %i.acb = load i128, ptr %i.x, align 16, !noalias !2652, !noundef !19 ; 2 uses
  %i.acc = load i128, ptr %i.pn, align 16, !noalias !2652, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2652
  %i.acd = add i128 %i.acb, %.sroa.049.2628.i     ; 2 uses
  %i.ace = icmp ult i128 %i.acd, %i.acb
  %i.acf = zext i1 %i.ace to i128
  %i.acg = add i128 %i.acc, %i.acf                ; 2 uses
  store i128 %i.acd, ptr %.sroa.062.0627.i, align 16, !noalias !2638
  %i.ach = icmp eq ptr %i.aca, %i.abx
  br i1 %i.ach, label %._crit_edge.i, label %.lr.ph629.i

bb.eu:                                            ; preds = %._crit_edge.i
  %i.aci = load i64, ptr %i.po, align 16, !alias.scope !2809, !noalias !2814, !noundef !19 ; 2 uses
  %i.acj = icmp ugt i64 %i.aci, 2                 ; 2 uses
  %i.ack = load ptr, ptr %i.y, align 16, !alias.scope !2809, !noalias !2814, !nonnull !19
  %.sink10.i.i.i = select i1 %i.acj, ptr %i.ack, ptr %i.y
  %.sink9.i.i.i = select i1 %i.acj, ptr %i.pp, ptr %i.po ; 2 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.aci, i64 2)
  %i.acl = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !2816, !noalias !2652, !noundef !19 ; 2 uses
  %i.acm = icmp eq i64 %i.acl, %.sink.i.i.i
  br i1 %i.acm, label %bb.ev, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i, !prof !167

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %.noexc.i unwind label %.loopexit.split-lp544.loopexit.i, !noalias !2638

.noexc.i:                                         ; preds = %bb.ev
  %i.acn = load ptr, ptr %i.y, align 16, !alias.scope !2816, !noalias !2652, !nonnull !19, !noundef !19
  %.pre.i.i = load i64, ptr %i.pp, align 8, !alias.scope !2816, !noalias !2652
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i: ; preds = %.noexc.i, %bb.eu
  %i.aco = phi i64 [ %.pre.i.i, %.noexc.i ], [ %i.acl, %bb.eu ]
  %.sroa.01.0.i.i = phi ptr [ %i.pp, %.noexc.i ], [ %.sink9.i.i.i, %bb.eu ] ; 2 uses
  %.sroa.0.0.i359.i = phi ptr [ %i.acn, %.noexc.i ], [ %.sink10.i.i.i, %bb.eu ]
  %i.acp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i359.i, i64 %i.aco
  store i128 %.sroa.049.2.lcssa.i, ptr %i.acp, align 16, !noalias !2638
  %i.acq = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !2816, !noalias !2652, !noundef !19
  %i.acr = add i64 %i.acq, 1
  store i64 %i.acr, ptr %.sroa.01.0.i.i, align 8, !alias.scope !2816, !noalias !2652
  br label %.outer.i.backedge

bb.ew:                                            ; preds = %.thread499.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @93, i64 22), i64 10, i1 false)
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.ex:                                            ; preds = %.thread499.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @94, i64 22), i64 10, i1 false)
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.ey:                                            ; preds = %bb.ay
  %i.acs = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ly, i32 10) ; 2 uses
  %i.act = extractvalue { i32, i1 } %i.acs, 0
  %i.acu = extractvalue { i32, i1 } %i.acs, 1
  br i1 %i.acu, label %bb.ez, label %.peel.next.i, !prof !167

bb.ez:                                            ; preds = %bb.ey
  %i.acv = icmp sgt i32 %i.ly, -1
  %.219.i = select i1 %i.acv, i32 2147483647, i32 -2147483648
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.ez, %bb.ey
  %.sroa.0127.0.i = phi i32 [ %i.act, %bb.ey ], [ %.219.i, %bb.ez ]
  %i.acw = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.0127.0.i, i32 %i.ni) ; 2 uses
  %i.acx = icmp eq ptr %.sroa.0370.2.ph.i, %i.gy
  br i1 %i.acx, label %.loopexit775.i, label %.lr.ph414, !llvm.loop !2817

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit307.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2652
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y), !noalias !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2652
  %i.acy = icmp eq i8 %.sroa.24.0.copyload, 2
  br i1 %i.acy, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.fa:                                            ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157
  %i.acz = ptrtoint ptr %i.gw to i64
  %i.ada = sub i64 %i.acz, %i.fm                  ; 2 uses
  %i.adb = sub nuw i64 %i.fk, %i.ada              ; 12 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ada ; 4 uses
  %i.add = icmp eq i64 %i.adb, 0
  br i1 %i.add, label %bb.gx, label %bb.fc

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.ag, %bb.ay, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i, %bb.ak, %bb.am, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit
  %.sroa.0214.sroa.14.0283 = phi i64 [ %.sroa.0214.0.copyload234, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 29, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i ], [ 25, %bb.am ], [ 25, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i ], [ 29, %bb.ay ], [ 32, %bb.ak ], [ 29, %bb.ag ]
  %.sroa.0214.sroa.0.0282 = phi i64 [ %.sroa.0214.0.copyload233, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ ptrtoint (ptr @79 to i64), %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i ], [ ptrtoint (ptr @64 to i64), %bb.am ], [ ptrtoint (ptr @64 to i64), %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i ], [ ptrtoint (ptr @79 to i64), %bb.ay ], [ ptrtoint (ptr @80 to i64), %bb.ak ], [ ptrtoint (ptr @63 to i64), %bb.ag ]
  %i.ade = inttoptr i64 %.sroa.0214.sroa.0.0282 to ptr
  store ptr %i.ade, ptr %0, align 16
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0214.sroa.14.0283, ptr %i.adf, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %6, align 1
  br label %bb.ha

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287: ; preds = %bb.ba, %.thread.i, %bb.ex, %bb.ew, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit
  %.sroa.0214.sroa.14.0299 = phi i64 [ %.sroa.0214.0.copyload234, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ %.sroa.0214.sroa.14.0.extract.trunc, %.thread.i ], [ 0, %bb.ex ], [ 0, %bb.ew ]
  %.sroa.0214.sroa.0.0298 = phi i64 [ %.sroa.0214.0.copyload233, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ %.sroa.0214.sroa.0.0.extract.trunc, %.thread.i ], [ 1, %bb.ex ], [ 0, %bb.ew ]
  %.sroa.34.0297 = phi i8 [ %.sroa.34.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ %.210.i, %.thread.i ], [ 24, %bb.ex ], [ 24, %bb.ew ]
  %.sroa.24.0296 = phi i8 [ %.sroa.24.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ 0, %.thread.i ], [ 0, %bb.ex ], [ 0, %bb.ew ]
  %.sroa.21.0295 = phi i32 [ %.sroa.21.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ -16383, %bb.ba ], [ %.211.i, %.thread.i ], [ -16382, %bb.ex ], [ -16383, %bb.ew ]
  %.sroa.23.0294 = phi i8 [ %.sroa.23.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 3, %bb.ba ], [ %.212.i, %.thread.i ], [ 2, %bb.ex ], [ 3, %bb.ew ]
  %i.adg = inttoptr i64 %.sroa.0214.sroa.0.0298 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, i64 10, i1 false)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.gz, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287
  %.sroa.5138.sroa.0.0 = phi i32 [ %.sroa.21.0295, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.5119.sroa.0.0.copyload, %bb.gz ]
  %.sroa.5138.sroa.3.0 = phi i8 [ %.sroa.23.0294, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.5119.sroa.4.0.copyload, %bb.gz ]
  %.sroa.0136.0 = phi i8 [ %.sroa.34.0297, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.8.0.copyload, %bb.gz ]
  %.sroa.0137.0 = phi ptr [ %i.adg, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.0117.0.copyload, %bb.gz ]
  %.sroa.3.0 = phi i64 [ %.sroa.0214.sroa.14.0299, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.4118.0.copyload, %bb.gz ]
  %.sroa.7139.0 = phi i8 [ %.sroa.24.0296, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %i.apl, %bb.gz ]
  %spec.select.i172 = xor i8 %.sroa.7139.0, %.sroa.0130.0
  store ptr %.sroa.0137.0, ptr %0, align 16
  %.sroa.096.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.096.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.096.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5138.sroa.0.0, ptr %.sroa.096.sroa.0.sroa.5.0..sroa_idx, align 16
  %.sroa.096.sroa.0.sroa.5.sroa.4.0..sroa.096.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.5138.sroa.3.0, ptr %.sroa.096.sroa.0.sroa.5.sroa.4.0..sroa.096.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.096.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select.i172, ptr %.sroa.096.sroa.4.0..sroa_idx, align 1
  %.sroa.096.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.096.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, i64 10, i1 false)
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0136.0, ptr %.sroa.497.0..sroa_idx, align 16
  br label %bb.ha

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.adi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 2, ptr %i.adi, align 4, !noalias !2823
  %i.adj = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 0, ptr %i.adj, align 1, !noalias !2823
  %i.adk = getelementptr i8, ptr %.sroa.0.1, i64 %.sroa.18.1 ; 20 uses
  br label %.outer.i173

.outer.i173:                                      ; preds = %.outer.i173.backedge, %bb.fc
  %i.adl = phi i128 [ 0, %bb.fc ], [ %.be, %.outer.i173.backedge ] ; 9 uses
  %i.adm = phi i128 [ 0, %bb.fc ], [ %.be856, %.outer.i173.backedge ] ; 9 uses
  %.sroa.11.0.ph.i = phi i64 [ 0, %bb.fc ], [ %.sroa.11.0.ph.i.be, %.outer.i173.backedge ] ; 6 uses
  %.sroa.0.0.ph.i = phi ptr [ %i.adc, %bb.fc ], [ %.sroa.0.0.ph.i.be, %.outer.i173.backedge ] ; 12 uses
  %.sroa.025.0.ph.i = phi i8 [ -1, %bb.fc ], [ %.sroa.025.0.ph.i.be, %.outer.i173.backedge ] ; 9 uses
  %.sroa.4.0.ph.i = phi i64 [ undef, %bb.fc ], [ %.sroa.4.0.ph.i.be, %.outer.i173.backedge ] ; 5 uses
  %.sroa.021.0.ph.i = phi i64 [ 0, %bb.fc ], [ %.sroa.021.0.ph.i.be, %.outer.i173.backedge ] ; 2 uses
  %.sroa.010.0.ph.i = phi i64 [ %i.adb, %bb.fc ], [ %.sroa.010.0.ph.i.be, %.outer.i173.backedge ] ; 11 uses
  %.sroa.07.0.ph.i = phi i64 [ 128, %bb.fc ], [ %.sroa.07.0.ph.i.be, %.outer.i173.backedge ] ; 2 uses
  %.sroa.03.0.ph.i = phi i8 [ 0, %bb.fc ], [ %.sroa.03.0.ph.i.be, %.outer.i173.backedge ] ; 4 uses
  %.not89.i.not = icmp ne i64 %.sroa.021.0.ph.i, 0 ; 2 uses
  %i.adn = ptrtoint ptr %.sroa.0.0.ph.i to i64    ; 2 uses
  %i.ado = icmp eq ptr %.sroa.0.0.ph.i, %i.adk    ; 2 uses
  br i1 %.not89.i.not, label %.outer.split.us.i, label %.outer.split.preheader.i

.outer.split.preheader.i:                         ; preds = %.outer.i173
  br i1 %i.ado, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, label %bb.fd

bb.fd:                                            ; preds = %.outer.split.preheader.i
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1 ; 3 uses
  %i.adq = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !2821, !noalias !2824, !noundef !19 ; 5 uses
  %i.adr = icmp sgt i8 %i.adq, -1
  br i1 %i.adr, label %bb.fe, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i: ; preds = %bb.fd
  %i.ads = and i8 %i.adq, 31
  %i.adt = zext nneg i8 %i.ads to i32             ; 3 uses
  %i.adu = icmp ne ptr %i.adp, %i.adk
  tail call void @llvm.assume(i1 %i.adu)
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2 ; 3 uses
  %i.adw = load i8, ptr %i.adp, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.adx = shl nuw nsw i32 %i.adt, 6
  %i.ady = and i8 %i.adw, 63
  %i.adz = zext nneg i8 %i.ady to i32             ; 2 uses
  %i.aea = or disjoint i32 %i.adx, %i.adz
  %i.aeb = icmp samesign ugt i8 %i.adq, -33
  br i1 %i.aeb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i, label %bb.ff

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i
  %i.aec = icmp ne ptr %i.adv, %i.adk
  tail call void @llvm.assume(i1 %i.aec)
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3 ; 3 uses
  %i.aee = load i8, ptr %i.adv, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.aef = shl nuw nsw i32 %i.adz, 6
  %i.aeg = and i8 %i.aee, 63
  %i.aeh = zext nneg i8 %i.aeg to i32
  %i.aei = or disjoint i32 %i.aef, %i.aeh         ; 2 uses
  %i.aej = shl nuw nsw i32 %i.adt, 12
  %i.aek = or disjoint i32 %i.aei, %i.aej
  %i.ael = icmp samesign ugt i8 %i.adq, -17
  br i1 %i.ael, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i, label %bb.ff

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i
  %i.aem = icmp ne ptr %i.aed, %i.adk
  tail call void @llvm.assume(i1 %i.aem)
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 4
  %i.aeo = load i8, ptr %i.aed, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.aep = shl nuw nsw i32 %i.adt, 18
  %i.aeq = and i32 %i.aep, 1835008
  %i.aer = shl nuw nsw i32 %i.aei, 6
  %i.aes = and i8 %i.aeo, 63
  %i.aet = zext nneg i8 %i.aes to i32
  %i.aeu = or disjoint i32 %i.aer, %i.aet
  %i.aev = or disjoint i32 %i.aeu, %i.aeq
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aew = zext nneg i8 %i.adq to i32
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i
  %.sroa.0.1.peel.i = phi ptr [ %i.adp, %bb.fe ], [ %i.aen, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i ], [ %i.aed, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i ], [ %i.adv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.peel.i = phi i32 [ %i.aew, %bb.fe ], [ %i.aev, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i ], [ %i.aek, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i ], [ %i.aea, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i ] ; 6 uses
  %i.aex = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.aex)
  %i.aey = ptrtoint ptr %.sroa.0.1.peel.i to i64
  %i.aez = sub i64 %.sroa.11.0.ph.i, %i.adn
  %i.afa = add i64 %i.aez, %i.aey                 ; 3 uses
  %i.afb = icmp eq i32 %.sroa.4.0.i.ph.i.peel.i, 46
  br i1 %i.afb, label %.split.us.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.afc = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.peel.i, 57
  %i.afd = add nsw i32 %.sroa.4.0.i.ph.i.peel.i, -65
  %i.afe = and i32 %i.afd, -33
  %i.aff = add nuw nsw i32 %i.afe, 10
  %i.afg = add nsw i32 %.sroa.4.0.i.ph.i.peel.i, -48
  %.sroa.02.0.i.peel.i = select i1 %i.afc, i32 %i.aff, i32 %i.afg ; 3 uses
  %i.afh = icmp ult i32 %.sroa.02.0.i.peel.i, 16
  br i1 %i.afh, label %bb.fh, label %.split194.us.i.loopexit306

bb.fh:                                            ; preds = %bb.fg
  %i.afi = icmp eq i32 %.sroa.02.0.i.peel.i, 0
  br i1 %i.afi, label %.outer.split.i, label %.split203.us.i

.outer.split.us.i:                                ; preds = %.outer.i173
  br i1 %i.ado, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, label %bb.fi

bb.fi:                                            ; preds = %.outer.split.us.i
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1 ; 3 uses
  %i.afk = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !2821, !noalias !2824, !noundef !19 ; 5 uses
  %i.afl = icmp sgt i8 %i.afk, -1
  br i1 %i.afl, label %bb.fj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i: ; preds = %bb.fi
  %i.afm = and i8 %i.afk, 31
  %i.afn = zext nneg i8 %i.afm to i32             ; 3 uses
  %i.afo = icmp ne ptr %i.afj, %i.adk
  tail call void @llvm.assume(i1 %i.afo)
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2 ; 3 uses
  %i.afq = load i8, ptr %i.afj, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.afr = shl nuw nsw i32 %i.afn, 6
  %i.afs = and i8 %i.afq, 63
  %i.aft = zext nneg i8 %i.afs to i32             ; 2 uses
  %i.afu = or disjoint i32 %i.afr, %i.aft
  %i.afv = icmp samesign ugt i8 %i.afk, -33
  br i1 %i.afv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i, label %bb.fk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i
  %i.afw = icmp ne ptr %i.afp, %i.adk
  tail call void @llvm.assume(i1 %i.afw)
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3 ; 3 uses
  %i.afy = load i8, ptr %i.afp, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.afz = shl nuw nsw i32 %i.aft, 6
  %i.aga = and i8 %i.afy, 63
  %i.agb = zext nneg i8 %i.aga to i32
  %i.agc = or disjoint i32 %i.afz, %i.agb         ; 2 uses
  %i.agd = shl nuw nsw i32 %i.afn, 12
  %i.age = or disjoint i32 %i.agc, %i.agd
  %i.agf = icmp samesign ugt i8 %i.afk, -17
  br i1 %i.agf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i, label %bb.fk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i
  %i.agg = icmp ne ptr %i.afx, %i.adk
  tail call void @llvm.assume(i1 %i.agg)
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 4
  %i.agi = load i8, ptr %i.afx, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.agj = shl nuw nsw i32 %i.afn, 18
  %i.agk = and i32 %i.agj, 1835008
  %i.agl = shl nuw nsw i32 %i.agc, 6
  %i.agm = and i8 %i.agi, 63
  %i.agn = zext nneg i8 %i.agm to i32
  %i.ago = or disjoint i32 %i.agl, %i.agn
  %i.agp = or disjoint i32 %i.ago, %i.agk
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.agq = zext nneg i8 %i.afk to i32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i
  %.sroa.0.1.us.i = phi ptr [ %i.afj, %bb.fj ], [ %i.agh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i ], [ %i.afx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i ], [ %i.afp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.us.i = phi i32 [ %i.agq, %bb.fj ], [ %i.agp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i ], [ %i.age, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i ], [ %i.afu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i ] ; 6 uses
  %i.agr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i, 1114112
  tail call void @llvm.assume(i1 %i.agr)
  %i.ags = ptrtoint ptr %.sroa.0.1.us.i to i64
  %i.agt = sub i64 %.sroa.11.0.ph.i, %i.adn
  %i.agu = add i64 %i.agt, %i.ags                 ; 2 uses
  %i.agv = icmp eq i32 %.sroa.4.0.i.ph.i.us.i, 46
  br i1 %i.agv, label %.split.us.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.agw = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.us.i, 57
  %i.agx = add nsw i32 %.sroa.4.0.i.ph.i.us.i, -65
  %i.agy = and i32 %i.agx, -33
  %i.agz = add nuw nsw i32 %i.agy, 10
  %i.aha = add nsw i32 %.sroa.4.0.i.ph.i.us.i, -48
  %.sroa.02.0.i.us.i = select i1 %i.agw, i32 %i.agz, i32 %i.aha ; 2 uses
  %i.ahb = icmp ult i32 %.sroa.02.0.i.us.i, 16
  br i1 %i.ahb, label %.split203.us.i, label %.split194.us.i.loopexit306

.outer.split.i:                                   ; preds = %bb.fh, %bb.fq
  %.sroa.11.0.i = phi i64 [ %i.aip, %bb.fq ], [ %i.afa, %bb.fh ] ; 4 uses
  %.sroa.0.0.i188 = phi ptr [ %.sroa.0.1.i190, %bb.fq ], [ %.sroa.0.1.peel.i, %bb.fh ] ; 7 uses
  %i.ahc = ptrtoint ptr %.sroa.0.0.i188 to i64
  %i.ahd = icmp eq ptr %.sroa.0.0.i188, %i.adk
  br i1 %i.ahd, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194, label %bb.fm

bb.fm:                                            ; preds = %.outer.split.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 1 ; 3 uses
  %i.ahf = load i8, ptr %.sroa.0.0.i188, align 1, !alias.scope !2821, !noalias !2824, !noundef !19 ; 5 uses
  %i.ahg = icmp sgt i8 %i.ahf, -1
  br i1 %i.ahg, label %bb.fn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189

end_hunk_3
begin_hunk_4_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a

bb.gk:                                            ; preds = %bb.gj
  %i.amo = zext nneg i8 %i.ali to i32
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i
  %.sroa.0129.2.ph.peel.i = phi ptr [ %i.aln, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i ], [ %i.alv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i ], [ %i.amf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i ], [ %i.alh, %bb.gk ]
  %.sroa.4.0.i112.ph.peel.i = phi i32 [ %i.als, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i ], [ %i.amc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i ], [ %i.amn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i ], [ %i.amo, %bb.gk ] ; 2 uses
  %i.amp = icmp samesign ult i32 %.sroa.4.0.i112.ph.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.amp)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i: ; preds = %bb.gl, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178
  %.sroa.031.3300.i = phi i1 [ %.sroa.031.3299.i, %bb.gl ], [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ]
  %.sroa.0129.1.peel.i = phi ptr [ %.sroa.0129.2.ph.peel.i, %bb.gl ], [ %.sroa.0119.2.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ] ; 3 uses
  %.sroa.036.0.peel.i = phi i32 [ %.sroa.4.0.i112.ph.peel.i, %bb.gl ], [ %spec.select.i.i.i.i179, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ]
  %i.amq = add nsw i32 %.sroa.036.0.peel.i, -48   ; 3 uses
  %i.amr = icmp ult i32 %i.amq, 10
  br i1 %i.amr, label %.peel.next.i181.preheader, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

.peel.next.i181.preheader:                        ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0129.1.peel.i) ]
  %i.ams = icmp eq ptr %.sroa.0129.1.peel.i, %i.adk
  br i1 %i.ams, label %.thread.i182, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next.i181.preheader, %.peel.next.i181
  %.sroa.0129.0.i411 = phi ptr [ %.sroa.0129.2.ph.i, %.peel.next.i181 ], [ %.sroa.0129.1.peel.i, %.peel.next.i181.preheader ] ; 5 uses
  %i.amt = phi i32 [ %i.aoy, %.peel.next.i181 ], [ %i.amq, %.peel.next.i181.preheader ] ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 1 ; 3 uses
  %i.amv = load i8, ptr %.sroa.0129.0.i411, align 1, !alias.scope !2821, !noalias !2843, !noundef !19 ; 5 uses
  %i.amw = icmp sgt i8 %i.amv, -1
  br i1 %i.amw, label %bb.gm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i: ; preds = %.lr.ph
  %i.amx = and i8 %i.amv, 31
  %i.amy = zext nneg i8 %i.amx to i32             ; 3 uses
  %i.amz = icmp ne ptr %i.amu, %i.adk
  tail call void @llvm.assume(i1 %i.amz)
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 2 ; 3 uses
  %i.anb = load i8, ptr %i.amu, align 1, !alias.scope !2821, !noalias !2843, !noundef !19
  %i.anc = shl nuw nsw i32 %i.amy, 6
  %i.and = and i8 %i.anb, 63
  %i.ane = zext nneg i8 %i.and to i32             ; 2 uses
  %i.anf = or disjoint i32 %i.anc, %i.ane
  %i.ang = icmp samesign ugt i8 %i.amv, -33
  br i1 %i.ang, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i, label %bb.gn

bb.gm:                                            ; preds = %.lr.ph
  %i.anh = zext nneg i8 %i.amv to i32
  br label %bb.gn

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i
  %i.ani = icmp ne ptr %i.ana, %i.adk
  tail call void @llvm.assume(i1 %i.ani)
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 3 ; 3 uses
  %i.ank = load i8, ptr %i.ana, align 1, !alias.scope !2821, !noalias !2843, !noundef !19
  %i.anl = shl nuw nsw i32 %i.ane, 6
  %i.anm = and i8 %i.ank, 63
  %i.ann = zext nneg i8 %i.anm to i32
  %i.ano = or disjoint i32 %i.anl, %i.ann         ; 2 uses
  %i.anp = shl nuw nsw i32 %i.amy, 12
  %i.anq = or disjoint i32 %i.ano, %i.anp
  %i.anr = icmp samesign ugt i8 %i.amv, -17
  br i1 %i.anr, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i, label %bb.gn

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i
  %i.ans = icmp ne ptr %i.anj, %i.adk
  tail call void @llvm.assume(i1 %i.ans)
  %i.ant = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 4
  %i.anu = load i8, ptr %i.anj, align 1, !alias.scope !2821, !noalias !2843, !noundef !19
  %i.anv = shl nuw nsw i32 %i.amy, 18
  %i.anw = and i32 %i.anv, 1835008
  %i.anx = shl nuw nsw i32 %i.ano, 6
  %i.any = and i8 %i.anu, 63
  %i.anz = zext nneg i8 %i.any to i32
  %i.aoa = or disjoint i32 %i.anx, %i.anz
  %i.aob = or disjoint i32 %i.aoa, %i.anw
  br label %bb.gn

bb.gn:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i, %bb.gm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i
  %.sroa.0129.2.ph.i = phi ptr [ %i.ana, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i ], [ %i.anj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i ], [ %i.ant, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i ], [ %i.amu, %bb.gm ] ; 2 uses
  %.sroa.4.0.i112.ph.i = phi i32 [ %i.anf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i ], [ %i.anq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i ], [ %i.aob, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i ], [ %i.anh, %bb.gm ] ; 2 uses
  %i.aoc = icmp samesign ult i32 %.sroa.4.0.i112.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.aoc)
  %i.aod = add nsw i32 %.sroa.4.0.i112.ph.i, -48  ; 2 uses
  %i.aoe = icmp ult i32 %i.aod, 10
  br i1 %i.aoe, label %bb.gv, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194: ; preds = %.outer.split.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.go:                                            ; preds = %.thread.i182
  %i.aof = icmp ugt i64 %spec.store.select2.i, %.sroa.4.0.ph.i
  br i1 %i.aof, label %bb.gr, label %bb.gp

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595: ; preds = %.thread.i182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 16 dereferenceable(32) @93, i64 32, i1 false), !noalias !2821
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i8 0, ptr %.sroa.442.0..sroa_idx.i, align 16, !alias.scope !2818, !noalias !2821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.gz

bb.gp:                                            ; preds = %bb.go
  %i.aog = xor i64 %spec.store.select2.i, -1
  %i.aoh = add i64 %.sroa.4.0.ph.i, %i.aog        ; 2 uses
  %i.aoi = icmp ugt i64 %i.aoh, 2147483647
  %i.aoj = shl nuw nsw i64 %i.aoh, 32
  %.sroa.071.0.insert.insert.i = select i1 %i.aoi, i64 513, i64 %i.aoj ; 2 uses
  %i.aok = trunc i64 %.sroa.071.0.insert.insert.i to i1
  br i1 %i.aok, label %bb.gq, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i, !prof !167

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2846
  store i8 2, ptr %i.a, align 1, !noalias !2846
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #35, !noalias !2818
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i: ; preds = %bb.gp
  %.sroa.6.0.extract.shift.i93.i = lshr i64 %.sroa.071.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i94.i = trunc nuw i64 %.sroa.6.0.extract.shift.i93.i to i32
  %i.aol = sub nsw i32 0, %.sroa.6.0.extract.trunc.i94.i
  br label %bb.gt

bb.gr:                                            ; preds = %bb.go
  %i.aom = sub nuw i64 %spec.store.select2.i, %.sroa.4.0.ph.i ; 2 uses
  %i.aon = icmp ugt i64 %i.aom, 2147483647
  %i.aoo = shl nuw nsw i64 %i.aom, 32
  %.sroa.075.0.insert.insert.i = select i1 %i.aon, i64 513, i64 %i.aoo ; 2 uses
  %i.aop = trunc i64 %.sroa.075.0.insert.insert.i to i1
  br i1 %i.aop, label %bb.gs, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i, !prof !167

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2849
  store i8 2, ptr %i.b, align 1, !noalias !2849
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !noalias !2818
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.gr
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.075.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  br label %bb.gt

bb.gt:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i
  %.sroa.044.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i ], [ %i.aol, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i ] ; 3 uses
  %i.aoq = shl nsw i32 %.sroa.044.0.i, 2
  %i.aor = add i32 %.sroa.044.0.i, -536870912
  %i.aos = icmp ult i32 %i.aor, -1073741824
  br i1 %i.aos, label %bb.gu, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit, !prof !167

bb.gu:                                            ; preds = %bb.gt
  %i.aot = icmp sgt i32 %.sroa.044.0.i, -1
  %..i = select i1 %i.aot, i32 2147483647, i32 -2147483648
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit

bb.gv:                                            ; preds = %bb.gn
  %i.aou = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.amt, i32 10) ; 2 uses
  %i.aov = extractvalue { i32, i1 } %i.aou, 0
  %i.aow = extractvalue { i32, i1 } %i.aou, 1
  br i1 %i.aow, label %bb.gw, label %.peel.next.i181, !prof !167

bb.gw:                                            ; preds = %bb.gv
  %i.aox = icmp sgt i32 %i.amt, -1
  %.92.i = select i1 %i.aox, i32 2147483647, i32 -2147483648
  br label %.peel.next.i181

.peel.next.i181:                                  ; preds = %bb.gw, %bb.gv
  %.sroa.069.0.i = phi i32 [ %i.aov, %bb.gv ], [ %.92.i, %bb.gw ]
  %i.aoy = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.069.0.i, i32 %i.aod) ; 2 uses
  %i.aoz = icmp eq ptr %.sroa.0129.2.ph.i, %i.adk
  br i1 %i.aoz, label %.thread.i182, label %.lr.ph, !llvm.loop !2852

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread: ; preds = %.split.us.i, %bb.gn, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, %bb.gf, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i, %bb.gb, %.split194.us.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194
  %.sink699 = phi ptr [ @64, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195 ], [ @79, %bb.gn ], [ @80, %.split194.us.i ], [ @64, %bb.gb ], [ @85, %bb.gf ], [ @86, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194 ], [ @85, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i ], [ @79, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i ], [ @63, %.split.us.i ]
  %.sink = phi i64 [ 25, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195 ], [ 29, %bb.gn ], [ 32, %.split194.us.i ], [ 25, %bb.gb ], [ 22, %bb.gf ], [ 31, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194 ], [ 22, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i ], [ 29, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i ], [ 29, %.split.us.i ]
  store ptr %.sink699, ptr %i.aa, align 16, !alias.scope !2818, !noalias !2821
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sink, ptr %i.apa, align 8, !alias.scope !2818, !noalias !2821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.gy

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit: ; preds = %bb.gt, %bb.gu
  %.sroa.070.0.i = phi i32 [ %i.aoq, %bb.gt ], [ %..i, %bb.gu ]
  %i.apb = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.070.0.i, i32 -1)
  %i.apc = tail call i32 @llvm.sadd.sat.i32(i32 %i.apb, i32 113)
  %i.apd = tail call i32 @llvm.sadd.sat.i32(i32 %i.apc, i32 -128)
  %i.ape = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.040.0.i, i32 %i.apd)
  store i32 %i.ape, ptr %i.adh, align 16, !noalias !2823
  %.not.i183 = icmp eq i8 %.sroa.025.0.ph.i, -1
  %..sroa.025.0.i = select i1 %.not.i183, i8 0, i8 %.sroa.025.0.ph.i
  call fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE9normalizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.c, i8 noundef range(i8 0, 5) %.sroa.028.0, i8 noundef %..sroa.025.0.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 21
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !1722 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.apf = icmp eq i8 %.pre, 2
  br i1 %i.apf, label %bb.gy, label %bb.gz

bb.gx:                                            ; preds = %bb.fa
  store ptr @165, ptr %0, align 16
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.apg, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %7, align 1
  br label %bb.ha

bb.gy:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit
  %i.aph = load ptr, ptr %i.aa, align 16, !nonnull !19, !noundef !19
  %i.api = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.apj = load i64, ptr %i.api, align 8, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %i.aph, ptr %0, align 16
  %i.apk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.apj, ptr %i.apk, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %8, align 1
  br label %bb.ha

bb.gz:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit
  %i.apl = phi i8 [ 0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595 ], [ %.pre, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit ]
  %.sroa.0117.0.copyload = load ptr, ptr %i.aa, align 16
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4118.0.copyload = load i64, ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5119.sroa.0.0.copyload = load i32, ptr %.sroa.5119.0..sroa_idx, align 16
  %.sroa.5119.sroa.4.0..sroa.5119.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.5119.sroa.4.0.copyload = load i8, ptr %.sroa.5119.sroa.4.0..sroa.5119.0..sroa_idx.sroa_idx, align 4
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7121.0..sroa_idx, i64 10, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.fb

bb.ha:                                            ; preds = %bb.ab, %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread, %bb.gy, %bb.gx, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread, %bb.fb, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @169, ptr %i.b, align 8, !captures !1994
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 18, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i64 [ 18, %bb.a ], [ %i.h, %bb.c ]
  %i.e = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef %i.d), !noalias !2853 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECslLuZgPVt6hg_3ide.exit.thread

bb.c:                                             ; preds = %bb.e, %bb.d
  %.not.i.i = icmp ugt i64 %i.h, 18
  br i1 %.not.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECslLuZgPVt6hg_3ide.exit.thread, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.e, 1        ; 6 uses
  %or.cond16.i.not.i = icmp ult i64 %i.h, 18
  br i1 %or.cond16.i.not.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 1, %i.h
  %i.j = and i64 %i.i, 6336
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %.split.i

_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.c, %bb.b, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.49.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.k, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_Csbq3eHDLgq0Z_8la_arenaNtB5_6RawIdxNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !19, !align !449, !noundef !19
  %i.o = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @170, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.o

.split.i:                                         ; preds = %bb.e
  %i.p = sub nuw nsw i64 17, %i.h
  %i.q = getelementptr inbounds nuw i8, ptr @169, i64 %i.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.b, align 8, !captures !1994
  store i64 %i.p, ptr %i.c, align 8
  br label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECslLuZgPVt6hg_3ide.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @172, ptr %i.b, align 8, !captures !1994
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 18, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i64 [ 18, %bb.a ], [ %i.h, %bb.c ]
  %i.e = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef %i.d), !noalias !2857 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECslLuZgPVt6hg_3ide.exit.thread

bb.c:                                             ; preds = %bb.e, %bb.d
  %.not.i.i = icmp ugt i64 %i.h, 18
  br i1 %.not.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECslLuZgPVt6hg_3ide.exit.thread, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.e, 1        ; 6 uses
  %or.cond16.i.not.i = icmp ult i64 %i.h, 18
  br i1 %or.cond16.i.not.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 1, %i.h
  %i.j = and i64 %i.i, 12672
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %.split.i

_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.c, %bb.b, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.49.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.k, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_Csbq3eHDLgq0Z_8la_arenaNtB5_6RawIdxNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !19, !align !449, !noundef !19
  %i.o = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @170, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.o

.split.i:                                         ; preds = %bb.e
  %i.p = sub nuw nsw i64 17, %i.h
  %i.q = getelementptr inbounds nuw i8, ptr @172, i64 %i.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.b, align 8, !captures !1994
  store i64 %i.p, ptr %i.c, align 8
  br label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECslLuZgPVt6hg_3ide.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !noundef !19
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i64, ptr %i.d, align 8, !range !2861, !noundef !19
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.e, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsc_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxTokenNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr %.0.val, ptr %.0.val1) unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.sroa.01.0 = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !334, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !167

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.f = load i32, ptr %i.e, align 8, !noundef !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.0.val)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0 = phi i32 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %.sroa.03.0 = load ptr, ptr %i.h, align 8, !nonnull !19, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val1, i64 60
  %i.j = load i8, ptr %i.i, align 4, !range !334, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.e, !prof !167

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !noundef !19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.0.val1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0 = phi i32 [ %i.n, %bb.f ], [ %i.m, %bb.e ]
  %i.o = icmp eq ptr %.sroa.01.0, %.sroa.03.0
  %i.p = icmp eq i32 %.sroa.02.0, %.sroa.04.0
  %.sroa.0.0 = and i1 %i.o, %i.p
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB5_8ReceiverNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
end_hunk_4
