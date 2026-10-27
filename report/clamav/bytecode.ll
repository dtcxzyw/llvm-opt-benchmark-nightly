Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode?download=true
inline.NumInlined: 105
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 55
begin_hunk_0_@cli_bytecode_prepare_interpreter:bb.a

bb.gv:                                            ; preds = %bb.gu
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.adz
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !95
  %i.aee = or i32 %i.aed, 1073741824
  store i32 %i.aee, ptr %i.adu, align 4, !tbaa !101
  br label %.thread1116

bb.gw:                                            ; preds = %bb.gt, %bb.gu
  %.not1001 = icmp sgt i32 %i.adv, -1
  br i1 %.not1001, label %bb.ha, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aef = and i32 %i.adv, 2147483647             ; 2 uses
  %i.aeg = zext nneg i32 %i.aef to i64            ; 2 uses
  %i.aeh = load i64, ptr %i.d, align 8, !tbaa !133 ; 2 uses
  %i.aei = icmp ult i64 %i.aeh, %i.aeg
  br i1 %i.aei, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.aej = trunc nuw i64 %indvars.iv2027 to i32
  %i.aek = trunc nuw i64 %indvars.iv2024 to i32
  %i.ael = trunc nuw nsw i64 %i.aeh to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.409, i32 noundef %i.aef, i32 noundef %i.ael, i32 noundef %i.aek, i32 noundef %i.aej) #24
  tail call void @free(ptr noundef nonnull %i.hy) #24
  tail call void @free(ptr noundef %i.g) #24
  br label %.thread1186

bb.gz:                                            ; preds = %bb.gx
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.aeg
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !102
  %i.aeo = trunc i64 %i.aen to i32
  %i.aep = or i32 %i.aeo, -2147483648
  store i32 %i.aep, ptr %i.adu, align 4, !tbaa !101
  br label %.thread1116

bb.ha:                                            ; preds = %bb.gw
  %.not1002 = icmp ult i32 %i.adv, %i.hv
  br i1 %.not1002, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aeq = trunc nuw i64 %indvars.iv2027 to i32
  %i.aer = trunc nuw i64 %indvars.iv2024 to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.410, i32 noundef %i.adv, i32 noundef %i.hv, i32 noundef %i.aer, i32 noundef %i.aeq) #24
  tail call void @free(ptr noundef nonnull %i.hy) #24
  tail call void @free(ptr noundef %i.g) #24
  br label %.thread1186

bb.hc:                                            ; preds = %bb.ha
  %i.aes = zext nneg i32 %i.adv to i64
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.aes
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !95
  store i32 %i.aeu, ptr %i.adu, align 4, !tbaa !101
  br label %.thread1116

bb.hd:                                            ; preds = %bb.z
  %i.aev = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 4 uses
  %i.aew = load i32, ptr %i.aev, align 8, !tbaa !101 ; 7 uses
  %i.aex = load i32, ptr %i.ho, align 8, !tbaa !144
  %i.aey = icmp ult i32 %i.aew, %i.aex
  br i1 %i.aey, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.aez = load ptr, ptr %i.ke, align 8, !tbaa !90
  %i.afa = zext i32 %i.aew to i64                 ; 2 uses
  %i.afb = getelementptr inbounds nuw [2 x i8], ptr %i.aez, i64 %i.afa
  %i.afc = load i16, ptr %i.afb, align 2, !tbaa !91
  %.not994 = icmp sgt i16 %i.afc, -1
  br i1 %.not994, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.afa
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !95
  %i.aff = or i32 %i.afe, 1073741824
  store i32 %i.aff, ptr %i.aev, align 8, !tbaa !101
  br label %.thread1116

bb.hg:                                            ; preds = %bb.hd, %bb.he
  %.not995 = icmp sgt i32 %i.aew, -1
  br i1 %.not995, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.afg = and i32 %i.aew, 2147483647             ; 2 uses
  %i.afh = zext nneg i32 %i.afg to i64            ; 2 uses
  %i.afi = load i64, ptr %i.d, align 8, !tbaa !133 ; 2 uses
  %i.afj = icmp ult i64 %i.afi, %i.afh
  br i1 %i.afj, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.afk = trunc nuw i64 %indvars.iv2027 to i32
  %i.afl = trunc nuw i64 %indvars.iv2024 to i32
  %i.afm = trunc nuw nsw i64 %i.afi to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.409, i32 noundef %i.afg, i32 noundef %i.afm, i32 noundef %i.afl, i32 noundef %i.afk) #24
  tail call void @free(ptr noundef nonnull %i.hy) #24
  tail call void @free(ptr noundef %i.g) #24
  br label %.thread1186

bb.hj:                                            ; preds = %bb.hh
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.afh
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !102
  %i.afp = trunc i64 %i.afo to i32
  %i.afq = or i32 %i.afp, -2147483648
  store i32 %i.afq, ptr %i.aev, align 8, !tbaa !101
  br label %.thread1116

bb.hk:                                            ; preds = %bb.hg
  %.not996 = icmp ult i32 %i.aew, %i.hv
  br i1 %.not996, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.afr = trunc nuw i64 %indvars.iv2027 to i32
  %i.afs = trunc nuw i64 %indvars.iv2024 to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.410, i32 noundef %i.aew, i32 noundef %i.hv, i32 noundef %i.afs, i32 noundef %i.afr) #24
  tail call void @free(ptr noundef nonnull %i.hy) #24
  tail call void @free(ptr noundef %i.g) #24
  br label %.thread1186

bb.hm:                                            ; preds = %bb.hk
  %i.aft = zext nneg i32 %i.aew to i64
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.aft
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !95
  store i32 %i.afv, ptr %i.aev, align 8, !tbaa !101
  br label %.thread1116

bb.hn:                                            ; preds = %bb.z
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.415, i32 noundef %i.lf) #24
  br label %._crit_edge1648

.thread1116:                                      ; preds = %bb.da, %.preheader, %bb.z, %bb.z, %bb.z, %bb.z, %bb.cn, %bb.hj, %bb.hm, %bb.gz, %bb.hc, %bb.gf, %bb.gi, %bb.fy, %bb.gb, %bb.ex, %bb.fa, %get_geptypesize.exit, %bb.dh, %bb.dk, %bb.ca, %bb.cd, %bb.bf, %bb.bi, %bb.ay, %bb.bb, %bb.ar, %bb.au, %bb.ak, %bb.an, %bb.hf, %bb.gv, %bb.dd
  %indvars.iv.next2025 = add nuw nsw i64 %indvars.iv2024, 1 ; 2 uses
  %i.afw = load i32, ptr %i.kb, align 4, !tbaa !143
  %i.afx = zext i32 %i.afw to i64
  %i.afy = icmp samesign ult i64 %indvars.iv.next2025, %i.afx
  br i1 %i.afy, label %bb.z, label %._crit_edge1648

._crit_edge1648:                                  ; preds = %get_geptypesize.exit, %.thread1116, %get_geptypesize.exit.thread, %bb.ep, %bb.em, %bb.ek, %bb.ch, %bb.cf, %bb.cm, %bb.es, %bb.hn, %bb.dn, %bb.cj, %.preheader1197
  %i.afz = phi i1 [ true, %.preheader1197 ], [ false, %get_geptypesize.exit.thread ], [ false, %bb.ep ], [ false, %bb.em ], [ false, %bb.ek ], [ false, %bb.ch ], [ false, %bb.cf ], [ false, %bb.cm ], [ false, %bb.es ], [ false, %bb.hn ], [ false, %bb.dn ], [ false, %bb.cj ], [ false, %get_geptypesize.exit ], [ true, %.thread1116 ]
  %.1825.lcssa = phi i32 [ 0, %.preheader1197 ], [ 28, %get_geptypesize.exit.thread ], [ 28, %bb.ep ], [ 28, %bb.em ], [ 28, %bb.ek ], [ 28, %bb.ch ], [ 28, %bb.cf ], [ 20, %bb.cm ], [ 28, %bb.es ], [ 28, %bb.hn ], [ 28, %bb.dn ], [ 28, %bb.cj ], [ 28, %get_geptypesize.exit ], [ 0, %.thread1116 ]
  tail call void @free(ptr noundef %i.hy) #24
  %indvars.iv.next2028 = add nuw nsw i64 %indvars.iv2027, 1 ; 2 uses
  %i.aga = load i32, ptr %i.ax, align 4, !tbaa !82
  %i.agb = zext i32 %i.aga to i64
  %i.agc = icmp samesign ult i64 %indvars.iv.next2028, %i.agb
  %i.agd = and i1 %i.afz, %i.agc
  br i1 %i.agd, label %bb.r, label %._crit_edge1652

._crit_edge1652:                                  ; preds = %._crit_edge1648, %.preheader1198
  %.0824.lcssa = phi i32 [ 0, %.preheader1198 ], [ %.1825.lcssa, %._crit_edge1648 ]
  tail call void @free(ptr noundef %i.g) #24
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 3, ptr %i.age, align 8, !tbaa !121
  br label %.thread1186

.thread1186:                                      ; preds = %bb.hl, %bb.hi, %bb.hb, %bb.gy, %bb.gr, %bb.go, %bb.gh, %bb.ge, %bb.ga, %bb.fx, %bb.ft, %bb.fq, %bb.fj, %bb.fg, %bb.ez, %bb.ew, %bb.eh, %bb.ef, %bb.dv, %bb.ds, %bb.dp, %bb.dj, %bb.dg, %bb.cc, %bb.bz, %bb.bv, %bb.bs, %bb.bo, %bb.bl, %bb.bh, %bb.be, %bb.ba, %bb.ax, %bb.at, %bb.aq, %bb.am, %bb.aj, %bb.af, %bb.ac, %bb.ct, %bb.cw, %bb.s, %._crit_edge1652, %bb.g, %bb.b
  %.32 = phi i32 [ 20, %bb.b ], [ %.0824.lcssa, %._crit_edge1652 ], [ 20, %bb.g ], [ 28, %bb.ct ], [ 28, %bb.gh ], [ 28, %bb.gr ], [ 28, %bb.ga ], [ 28, %bb.ez ], [ 28, %bb.fj ], [ 28, %bb.ft ], [ 28, %bb.eh ], [ 28, %bb.dv ], [ 28, %bb.dp ], [ 28, %bb.dj ], [ 28, %bb.cc ], [ 28, %bb.hb ], [ 28, %bb.bv ], [ 28, %bb.bo ], [ 28, %bb.bh ], [ 28, %bb.ba ], [ 28, %bb.at ], [ 28, %bb.am ], [ 28, %bb.af ], [ 20, %bb.s ], [ 28, %bb.cw ], [ 28, %bb.ac ], [ 28, %bb.aj ], [ 28, %bb.aq ], [ 28, %bb.ax ], [ 28, %bb.be ], [ 28, %bb.bl ], [ 28, %bb.bs ], [ 28, %bb.bz ], [ 28, %bb.dg ], [ 28, %bb.hl ], [ 28, %bb.ds ], [ 28, %bb.ef ], [ 28, %bb.ew ], [ 28, %bb.fg ], [ 28, %bb.fq ], [ 28, %bb.fx ], [ 28, %bb.ge ], [ 28, %bb.go ], [ 28, %bb.gy ], [ 28, %bb.hi ]
  ret i32 %.32
}

; Function Attrs: nounwind uwtable
define i32 @cli_bytecode_init(ptr noundef initializes((0, 520)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %0, i8 0, i64 520, i1 false)
  %i.a = tail call i32 @cli_bytecode_init_jit(ptr noundef nonnull %0, i32 noundef 0) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169
  %.not = icmp eq ptr %i.c, null
  %i.d = select i1 %.not, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59, ptr noundef nonnull %i.d) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 1, ptr %i.e, align 4, !tbaa !242
  ret i32 %i.a
}

declare i32 @cli_bytecode_init_jit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_bytecode_done(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @cli_bytecode_done_jit(ptr noundef %0, i32 noundef 0) #24
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @cli_bytecode_context_setfile(ptr noundef initializes((56, 60), (72, 80)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !173
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.e, ptr %i.f, align 8, !tbaa !157
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cli_bytecode_runlsig(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.cli_bc_ctx, align 8         ; 24 uses
  %8 = alloca %struct.cli_pe_hook_data, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = load ptr, ptr %2, align 8, !tbaa !168
  %i.b = add i32 %3, -1
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [200 x i8], ptr %i.a, i64 %i.c ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.e = icmp eq i32 %3, 0
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.043 = phi ptr [ %i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1344) %7, i8 0, i64 1344, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i32 60000, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 -1, ptr %i.k, align 4, !tbaa !37
  %i.l = call i32 @cli_bytecode_context_setfuncid(ptr noundef nonnull %7, ptr noundef nonnull %i.d, i32 noundef 0) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr %4, ptr %i.n, align 8, !tbaa !155
  store ptr %5, ptr %i.m, align 8, !tbaa !156
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 1088
  store ptr %0, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1076
  %i.s = load i32, ptr %i.r, align 4, !tbaa !175
  store i32 %i.s, ptr %i.j, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %6, ptr %i.t, align 8, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !173
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !174
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 120
  store ptr %i.x, ptr %i.y, align 8, !tbaa !157
  %.not52 = icmp eq ptr %1, null
  br i1 %.not52, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !244
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !245
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 1064
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.af, i8 0, i64 640, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load <2 x i32>, ptr %i.ag, align 8, !tbaa !95
  store <2 x i32> %i.ah, ptr %8, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !246
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 %i.aj, ptr %i.ak, align 8, !tbaa !250
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !251
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 644
  store i32 %i.am, ptr %i.an, align 4, !tbaa !252
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr %8, ptr %i.ao, align 8, !tbaa !158
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !253
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 1072
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !254
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 164 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !177 ; 2 uses
  %.not53 = icmp eq i32 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !164 ; 2 uses
  br i1 %.not53, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.62, i32 noundef %i.at, i32 noundef %i.av) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !178 ; 2 uses
  %.not57 = icmp eq ptr %i.ax, null
  br i1 %.not57, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !177
  %i.az = add i32 %i.ay, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = call i32 @cli_bitset_set(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #24 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bc, ptr noundef nonnull align 4 dereferenceable(256) %4, i64 256, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bd, ptr noundef nonnull align 4 dereferenceable(256) %5, i64 256, i1 false)
  call fastcc void @bytecode_context_reset(ptr noundef nonnull %7)
  br label %bb.q

bb.k:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.63, ptr noundef %.043, i32 noundef %i.av) #24
  %i.be = call i32 @cli_bytecode_run(ptr noundef nonnull %2, ptr noundef nonnull %i.d, ptr noundef nonnull %7) ; 2 uses
  %.not54 = icmp eq i32 %i.be, 0
  br i1 %.not54, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %i.au, align 8, !tbaa !164
  %i.bg = call ptr @cl_strerror(i32 noundef %i.be) #24
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.64, ptr noundef %.043, i32 noundef %i.bf, ptr noundef %i.bg) #24
  call fastcc void @bytecode_context_reset(ptr noundef nonnull %7)
  %i.bh = call i32 @cli_checktimelimit(ptr noundef nonnull %0) #24
  %.not56 = icmp eq i32 %i.bh, 0
  br i1 %.not56, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !255
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65, i32 noundef %i.bk) #24
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !165 ; 2 uses
  %.not55 = icmp eq ptr %i.bm, null
  br i1 %.not55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.66, ptr noundef nonnull %i.bm) #24
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !165
  %i.bo = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.bn) #24
  call fastcc void @bytecode_context_reset(ptr noundef nonnull %7)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !39
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !95
  %i.bs = load i32, ptr %i.au, align 8, !tbaa !164
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.67, ptr noundef %.043, i32 noundef %i.bs, i32 noundef %i.br) #24
  call fastcc void @bytecode_context_reset(ptr noundef nonnull %7)
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.a, %bb.p, %bb.o, %bb.m, %bb.j
  %.0 = phi i32 [ 0, %bb.p ], [ 0, %bb.j ], [ 21, %bb.m ], [ 2, %bb.a ], [ %i.bo, %bb.o ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @cli_bytecode_context_setctx(ptr nofree noundef writeonly captures(none) initializes((24, 28), (1088, 1096)) %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store ptr %1, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1076
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.f, align 8, !tbaa !36
  ret void
}

declare i32 @cli_bitset_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #3

declare i32 @cli_checktimelimit(ptr noundef) local_unnamed_addr #3

declare i32 @cli_append_virus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_bytecode_runhook(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.b = add i32 %3, -256
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !256
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4, !tbaa !95   ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread136, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, i32 noundef %3, i32 noundef %i.h) #24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %4, ptr %i.i, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !173
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !174
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %i.m, ptr %i.n, align 8, !tbaa !157
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.o, ptr %i.q, align 8, !tbaa !155
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 768
  store ptr %i.r, ptr %i.p, align 8, !tbaa !156
  %.not165 = icmp eq i32 %i.h, 0
  br i1 %.not165, label %.split.thread, label %.lr.ph

.split.thread:                                    ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.81) #24
  br label %.thread136

.lr.ph:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1080 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread126
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread126 ] ; 2 uses
  %.079162 = phi i32 [ 0, %.lr.ph ], [ %.180135, %.thread126 ] ; 5 uses
  %.081161 = phi i32 [ 0, %.lr.ph ], [ %.2134, %.thread126 ] ; 7 uses
  %.083160 = phi i32 [ 0, %.lr.ph ], [ %.184133, %.thread126 ] ; 3 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !257
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !95
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [200 x i8], ptr %i.z, i64 %i.ac ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !126
  %.not100 = icmp eq ptr %i.af, null
  br i1 %.not100, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !178 ; 2 uses
  %.not101 = icmp eq ptr %i.ag, null
  br i1 %.not101, label %.thread126, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 164
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !177
  %i.aj = add i32 %i.ai, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = tail call i32 @cli_bitset_test(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #24
  %.not102 = icmp eq i32 %i.al, 0
  br i1 %.not102, label %.thread126, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !164
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.69, i32 noundef %i.an) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ao = tail call i32 @cli_bytecode_context_setfuncid(ptr noundef %2, ptr noundef nonnull %i.ad, i32 noundef 0) ; 0 uses
  %i.ap = tail call i32 @cli_bytecode_run(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ad, ptr noundef %2) ; 2 uses
  %i.aq = add i32 %.083160, 1                     ; 4 uses
  %.not103 = icmp eq i32 %i.ap, 0
  br i1 %.not103, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !164
  %i.at = tail call ptr @cl_strerror(i32 noundef %i.ap) #24
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.70, i32 noundef %i.as, ptr noundef %i.at) #24
  br label %.thread126

bb.i:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !165 ; 2 uses
  %.not104 = icmp eq ptr %i.au, null
  br i1 %.not104, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71, ptr noundef nonnull %i.au) #24
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !165 ; 3 uses
  %i.aw = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(14) @.str.72, i64 noundef 13) #26
  %.not110 = icmp eq i32 %i.aw, 0
  br i1 %.not110, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull %i.av) #24
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = tail call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef nonnull %i.av) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.085 = phi i32 [ %i.ay, %bb.l ], [ %i.ax, %bb.k ]
  %i.az = icmp eq i32 %.085, 1
  tail call fastcc void @bytecode_context_reset(ptr noundef nonnull %2)
  br i1 %i.az, label %.thread136, label %.thread126

bb.n:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !95 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !164
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73, i32 noundef %i.bd, i32 noundef %i.bb) #24
  switch i32 %i.bb, label %bb.x [
    i32 846430, label %.thread
    i32 0, label %bb.o
  ]

.thread:                                          ; preds = %bb.n
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74) #24
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !42  ; 6 uses
  %i.bf = load i32, ptr %i.x, align 4, !tbaa !37  ; 6 uses
  store ptr null, ptr %i.w, align 8, !tbaa !42
  store i32 -1, ptr %i.x, align 4, !tbaa !37
  %i.bg = add i32 %i.bf, 1
  %or.cond = icmp ult i32 %i.bg, 2
  br i1 %or.cond, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !71
  %.not106 = icmp eq i32 %i.bj, 0
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !164 ; 2 uses
  br i1 %.not106, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.75, i32 noundef %i.bk, ptr noundef %i.be) #24
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.76, i32 noundef %i.bk) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bl = tail call i64 @lseek(i32 noundef %i.bf, i64 noundef 0, i32 noundef 0) #24 ; 0 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.77) #24
  %i.bm = tail call i32 @cli_magic_scan_desc(i32 noundef %i.bf, ptr noundef %i.be, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #24 ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
end_hunk_0
