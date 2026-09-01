Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.08?download=true
inline.NumInlined: 91
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsa_NtNtCsi68uqYEhoRA_5gimli5write2opNtB5_9OperationNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq:bb.a
  %i.db = icmp eq i64 %i.cy, %i.da
  br i1 %i.db, label %bb.ax, label %bb.c

bb.x:                                             ; preds = %bb.b
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !range !6, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = trunc nuw i64 %i.dd to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !6, !noundef !5
  %i.di = trunc nuw i64 %i.dh to i1               ; 2 uses
  br i1 %i.df, label %bb.az, label %bb.ba

bb.y:                                             ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !6, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = trunc nuw i64 %i.dk to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !6, !noundef !5
  %i.dp = trunc nuw i64 %i.do to i1               ; 2 uses
  br i1 %i.dm, label %bb.bc, label %bb.bd

bb.z:                                             ; preds = %bb.b
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = tail call fastcc noundef zeroext i1 @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr) #23, !inline_history !177
  br label %bb.c

bb.aa:                                            ; preds = %bb.b
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load i16, ptr %i.dt, align 8, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = load i16, ptr %i.dv, align 8, !noundef !5
  %i.dx = icmp eq i16 %i.du, %i.dw
  br label %bb.c

bb.ab:                                            ; preds = %bb.b
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !5 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !5
  %i.ec = icmp eq i64 %i.dz, %i.eb
  br i1 %i.ec, label %bb.bf, label %bb.c

bb.ac:                                            ; preds = %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !5
  %i.eh = icmp eq i64 %i.ee, %i.eg
  %i.ei = icmp eq i64 %i.a, %i.f
  %or.cond = and i1 %i.ei, %i.eh
  br i1 %or.cond, label %bb.bg, label %bb.c

bb.ad:                                            ; preds = %bb.b
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load i64, ptr %i.el, align 8, !noundef !5
  %i.en = icmp eq i64 %i.ek, %i.em
  br label %bb.c

bb.ae:                                            ; preds = %bb.b
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !5
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !noundef !5
  %i.es = icmp eq i64 %i.ep, %i.er
  br i1 %i.es, label %bb.bi, label %bb.c

bb.af:                                            ; preds = %bb.b
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !noundef !5
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !5
  %i.ex = icmp eq i64 %i.eu, %i.ew
  br label %bb.c

bb.ag:                                            ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !noundef !5
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !noundef !5
  %i.fc = icmp eq i32 %i.ez, %i.fb
  br label %bb.c

bb.ah:                                            ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !noundef !5
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !noundef !5
  %i.fh = icmp eq i32 %i.fe, %i.fg
  br label %bb.c

bb.ai:                                            ; preds = %bb.b
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !noundef !5
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br label %bb.c

bb.aj:                                            ; preds = %bb.e
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !nonnull !5, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !5, !noundef !5
  %bcmp14 = tail call i32 @bcmp(ptr nonnull %i.fq, ptr nonnull %i.fo, i64 %i.m)
  %i.fr = icmp eq i32 %bcmp14, 0
  br label %bb.c

bb.ak:                                            ; preds = %bb.g
  %i.fs = trunc nuw i64 %i.w to i1
  br i1 %i.fs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !5
  %i.fx = icmp eq i64 %i.fu, %i.fw
  br i1 %i.fx, label %bb.an, label %bb.c

bb.am:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !noundef !5
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !5
  %i.gc = icmp eq i64 %i.fz, %i.gb
  br label %bb.c

bb.an:                                            ; preds = %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !5
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !5
  %i.gh = icmp eq i64 %i.ge, %i.gg
  br label %bb.c

bb.ao:                                            ; preds = %bb.j
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !noundef !5 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !5
  %i.gm = icmp eq i64 %i.gj, %i.gl
  br i1 %i.gm, label %bb.ap, label %bb.c

bb.ap:                                            ; preds = %bb.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !5, !noundef !5
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !5, !noundef !5
  %bcmp13 = tail call i32 @bcmp(ptr nonnull %i.gq, ptr nonnull %i.go, i64 %i.gj)
  %i.gr = icmp eq i32 %bcmp13, 0
  br label %bb.c

bb.aq:                                            ; preds = %bb.l
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gt = load i16, ptr %i.gs, align 8, !noundef !5
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gv = load i16, ptr %i.gu, align 8, !noundef !5
  %i.gw = icmp eq i16 %i.gt, %i.gv
  br label %bb.c

bb.ar:                                            ; preds = %bb.m
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !noundef !5
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !5
  %i.hb = icmp eq i64 %i.gy, %i.ha
  br label %bb.c

bb.as:                                            ; preds = %bb.p
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.hd = load i8, ptr %i.hc, align 1, !noundef !5
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.hf = load i8, ptr %i.he, align 1, !noundef !5
  %i.hg = icmp eq i8 %i.hd, %i.hf
  br label %bb.c

bb.at:                                            ; preds = %bb.q
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hi = load i8, ptr %i.hh, align 8, !noundef !5
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hk = load i8, ptr %i.hj, align 8, !noundef !5
  %i.hl = icmp eq i8 %i.hi, %i.hk
  br i1 %i.hl, label %bb.au, label %bb.c

bb.au:                                            ; preds = %bb.at
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !noundef !5
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !5
  %i.hq = icmp eq i64 %i.hn, %i.hp
  br label %bb.c

bb.av:                                            ; preds = %bb.v
  %i.hr = trunc nuw i64 %i.ct to i1               ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !noundef !5
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !noundef !5
  %i.hw = icmp eq i64 %i.ht, %i.hv                ; 2 uses
  %.not = xor i1 %i.hr, true
  %brmerge.not = and i1 %i.hw, %i.hr
  %.mux = and i1 %i.hw, %.not
  br i1 %brmerge.not, label %bb.aw, label %bb.c

bb.aw:                                            ; preds = %bb.av
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hy = load i64, ptr %i.hx, align 8, !noundef !5
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ia = load i64, ptr %i.hz, align 8, !noundef !5
  %i.ib = icmp eq i64 %i.hy, %i.ia
  br label %bb.c

bb.ax:                                            ; preds = %bb.w
  %i.ic = trunc nuw i64 %i.cy to i1               ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !noundef !5
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ig = load i64, ptr %i.if, align 8, !noundef !5
  %i.ih = icmp eq i64 %i.ie, %i.ig                ; 2 uses
  %.not23 = xor i1 %i.ic, true
  %brmerge25.not = and i1 %i.ih, %i.ic
  %.mux26 = and i1 %i.ih, %.not23
  br i1 %brmerge25.not, label %bb.ay, label %bb.c

bb.ay:                                            ; preds = %bb.ax
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ij = load i64, ptr %i.ii, align 8, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.il = load i64, ptr %i.ik, align 8, !noundef !5
  %i.im = icmp eq i64 %i.ij, %i.il
  br label %bb.c

bb.az:                                            ; preds = %bb.x
  br i1 %i.di, label %bb.bb, label %bb.c

bb.ba:                                            ; preds = %bb.x
  %i.in = xor i1 %i.di, true
  br label %bb.c

bb.bb:                                            ; preds = %bb.az
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ip = load i64, ptr %i.de, align 8, !noundef !5
  %i.iq = load i64, ptr %i.io, align 8, !noundef !5
  %i.ir = icmp eq i64 %i.ip, %i.iq
  br label %bb.c

bb.bc:                                            ; preds = %bb.y
  br i1 %i.dp, label %bb.be, label %bb.c

bb.bd:                                            ; preds = %bb.y
  %i.is = xor i1 %i.dp, true
  br label %bb.c

bb.be:                                            ; preds = %bb.bc
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.iu = load i64, ptr %i.dl, align 8, !noundef !5
  %i.iv = load i64, ptr %i.it, align 8, !noundef !5
  %i.iw = icmp eq i64 %i.iu, %i.iv
  br label %bb.c

bb.bf:                                            ; preds = %bb.ab
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !nonnull !5, !noundef !5
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !5, !noundef !5
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ja, ptr nonnull %i.iy, i64 %i.dz)
  %i.jb = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.bg:                                            ; preds = %bb.ac
  %i.jc = trunc nuw i64 %i.a to i1                ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !noundef !5
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !noundef !5
  %i.jh = icmp eq i64 %i.je, %i.jg                ; 2 uses
  %.not27 = xor i1 %i.jc, true
  %brmerge29.not = and i1 %i.jh, %i.jc
  %.mux30 = and i1 %i.jh, %.not27
  br i1 %brmerge29.not, label %bb.bh, label %bb.c

bb.bh:                                            ; preds = %bb.bg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !noundef !5
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !noundef !5
  %i.jm = icmp eq i64 %i.jj, %i.jl
  br label %bb.c

bb.bi:                                            ; preds = %bb.ae
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !noundef !5
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !5
  %i.jr = icmp eq i64 %i.jo, %i.jq
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB4_9Operation4size(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read2opINtB5_13OperationIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE4nextCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read2opINtB5_13OperationIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE11offset_fromCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE7addressCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_sleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_sdataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsi68uqYEhoRA_5gimli5write2opNtB2_10Expression4size(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCsbbt5GHOb4oK_8indexmap6BucketINtNtB7_3vec3VechEuEE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4unit14DebugInfoFixupE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs4GFMLGV1pRI_6ruzstd(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsiHO4aZxHxup_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB1L_E0NCINvB14_8get_hashB1L_uE0ECs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs3Kj8CJc7CAH_10wasmparser13binary_readerNtB5_12BinaryReader7read_u7(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs3Kj8CJc7CAH_10wasmparser13binary_readerNtB5_12BinaryReader11read_reader(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core5namesNtB5_4NameNtB9_10Subsection11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i8 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core7linkingNtB5_7LinkingNtB9_10Subsection11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i8 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterjEENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCs3Kj8CJc7CAH_10wasmparser13binary_readerNtB6_17BinaryReaderError3newReECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core5namesNtB2_6NamingNtB6_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core8memoriesNtNtB4_5types10MemoryTypeNtB6_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core7exportsNtB2_6ExportNtB6_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core7globalsNtB2_6GlobalNtB6_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core7importsNtB5_17ImportItemCompactNtB9_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core7importsNtB2_7ImportsNtB6_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core7linkingNtB5_10SymbolInfoNtB9_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs3Kj8CJc7CAH_10wasmparser7readersReNtB5_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs3Kj8CJc7CAH_10wasmparser7readersmNtB4_10FromReader11from_reader(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_ENtNtBM_3fmt5Debug3fmtCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std2io5stdio23attempt_print_to_stderr(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_0
