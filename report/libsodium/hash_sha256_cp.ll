Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/hash_sha256_cp?download=true
inline.NumInlined: 167
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@SHA256_Transform:bb.a
  %i.ajc = getelementptr i8, ptr %i.li, i64 96
  store i32 %i.ajb, ptr %i.ajc, align 4
  %i.ajd = tail call i32 @llvm.fshl.i32(i32 %i.ail, i32 %i.ail, i32 15)
  %i.aje = tail call i32 @llvm.fshl.i32(i32 %i.ail, i32 %i.ail, i32 13)
  %i.ajf = xor i32 %i.ajd, %i.aje
  %i.ajg = lshr i32 %i.ail, 10
  %i.ajh = xor i32 %i.ajf, %i.ajg
  %i.aji = tail call i32 @llvm.fshl.i32(i32 %i.aeb, i32 %i.aeb, i32 25)
  %i.ajj = tail call i32 @llvm.fshl.i32(i32 %i.aeb, i32 %i.aeb, i32 14)
  %i.ajk = xor i32 %i.aji, %i.ajj
  %i.ajl = lshr i32 %i.aeb, 3
  %i.ajm = xor i32 %i.ajk, %i.ajl
  %i.ajn = add i32 %i.ajm, %i.adh
  %i.ajo = add i32 %i.ajn, %i.afd
  %i.ajp = add i32 %i.ajo, %i.ajh                 ; 6 uses
  %i.ajq = getelementptr i8, ptr %i.li, i64 100
  store i32 %i.ajp, ptr %i.ajq, align 4
  %i.ajr = tail call i32 @llvm.fshl.i32(i32 %i.ajb, i32 %i.ajb, i32 15)
  %i.ajs = tail call i32 @llvm.fshl.i32(i32 %i.ajb, i32 %i.ajb, i32 13)
  %i.ajt = xor i32 %i.ajr, %i.ajs
  %i.aju = lshr i32 %i.ajb, 10
  %i.ajv = xor i32 %i.ajt, %i.aju
  %i.ajw = tail call i32 @llvm.fshl.i32(i32 %i.aet, i32 %i.aet, i32 25)
  %i.ajx = tail call i32 @llvm.fshl.i32(i32 %i.aet, i32 %i.aet, i32 14)
  %i.ajy = xor i32 %i.ajw, %i.ajx
  %i.ajz = lshr i32 %i.aet, 3
  %i.aka = xor i32 %i.ajy, %i.ajz
  %i.akb = load i32, ptr %i.wr, align 4
  %i.akc = add i32 %i.afv, %i.aka
  %i.akd = add i32 %i.akc, %i.akb
  %i.ake = add i32 %i.akd, %i.ajv                 ; 6 uses
  %i.akf = getelementptr i8, ptr %i.li, i64 104
  store i32 %i.ake, ptr %i.akf, align 4
  %i.akg = tail call i32 @llvm.fshl.i32(i32 %i.ajp, i32 %i.ajp, i32 15)
  %i.akh = tail call i32 @llvm.fshl.i32(i32 %i.ajp, i32 %i.ajp, i32 13)
  %i.aki = xor i32 %i.akg, %i.akh
  %i.akj = lshr i32 %i.ajp, 10
  %i.akk = xor i32 %i.aki, %i.akj
  %i.akl = tail call i32 @llvm.fshl.i32(i32 %i.afl, i32 %i.afl, i32 25)
  %i.akm = tail call i32 @llvm.fshl.i32(i32 %i.afl, i32 %i.afl, i32 14)
  %i.akn = xor i32 %i.akl, %i.akm
  %i.ako = lshr i32 %i.afl, 3
  %i.akp = xor i32 %i.akn, %i.ako
  %i.akq = load i32, ptr %i.xu, align 4
  %i.akr = add i32 %i.agn, %i.akp
  %i.aks = add i32 %i.akr, %i.akq
  %i.akt = add i32 %i.aks, %i.akk                 ; 6 uses
  %i.aku = getelementptr i8, ptr %i.li, i64 108
  store i32 %i.akt, ptr %i.aku, align 4
  %i.akv = tail call i32 @llvm.fshl.i32(i32 %i.ake, i32 %i.ake, i32 15)
  %i.akw = tail call i32 @llvm.fshl.i32(i32 %i.ake, i32 %i.ake, i32 13)
  %i.akx = xor i32 %i.akv, %i.akw
  %i.aky = lshr i32 %i.ake, 10
  %i.akz = xor i32 %i.akx, %i.aky
  %i.ala = tail call i32 @llvm.fshl.i32(i32 %i.agd, i32 %i.agd, i32 25)
  %i.alb = tail call i32 @llvm.fshl.i32(i32 %i.agd, i32 %i.agd, i32 14)
  %i.alc = xor i32 %i.ala, %i.alb
  %i.ald = lshr i32 %i.agd, 3
  %i.ale = xor i32 %i.alc, %i.ald
  %i.alf = load i32, ptr %i.yx, align 4
  %i.alg = add i32 %i.ahf, %i.ale
  %i.alh = add i32 %i.alg, %i.alf
  %i.ali = add i32 %i.alh, %i.akz                 ; 6 uses
  %i.alj = getelementptr i8, ptr %i.li, i64 112
  store i32 %i.ali, ptr %i.alj, align 4
  %i.alk = tail call i32 @llvm.fshl.i32(i32 %i.akt, i32 %i.akt, i32 15)
  %i.all = tail call i32 @llvm.fshl.i32(i32 %i.akt, i32 %i.akt, i32 13)
  %i.alm = xor i32 %i.alk, %i.all
  %i.aln = lshr i32 %i.akt, 10
  %i.alo = xor i32 %i.alm, %i.aln
  %i.alp = tail call i32 @llvm.fshl.i32(i32 %i.agv, i32 %i.agv, i32 25)
  %i.alq = tail call i32 @llvm.fshl.i32(i32 %i.agv, i32 %i.agv, i32 14)
  %i.alr = xor i32 %i.alp, %i.alq
  %i.als = lshr i32 %i.agv, 3
  %i.alt = xor i32 %i.alr, %i.als
  %i.alu = load i32, ptr %i.aaa, align 4
  %i.alv = add i32 %i.ahv, %i.alt
  %i.alw = add i32 %i.alv, %i.alu
  %i.alx = add i32 %i.alw, %i.alo                 ; 6 uses
  %i.aly = getelementptr i8, ptr %i.li, i64 116
  store i32 %i.alx, ptr %i.aly, align 4
  %i.alz = tail call i32 @llvm.fshl.i32(i32 %i.ali, i32 %i.ali, i32 15)
  %i.ama = tail call i32 @llvm.fshl.i32(i32 %i.ali, i32 %i.ali, i32 13)
  %i.amb = xor i32 %i.alz, %i.ama
  %i.amc = lshr i32 %i.ali, 10
  %i.amd = xor i32 %i.amb, %i.amc
  %i.ame = tail call i32 @llvm.fshl.i32(i32 %i.adu, i32 %i.adu, i32 25)
  %i.amf = tail call i32 @llvm.fshl.i32(i32 %i.adu, i32 %i.adu, i32 14)
  %i.amg = xor i32 %i.ame, %i.amf
  %i.amh = lshr i32 %i.adu, 3
  %i.ami = xor i32 %i.amg, %i.amh
  %i.amj = add i32 %i.ami, %i.adb
  %i.amk = add i32 %i.amj, %i.ail
  %i.aml = add i32 %i.amk, %i.amd
  %i.amm = getelementptr i8, ptr %i.li, i64 120
  store i32 %i.aml, ptr %i.amm, align 4
  %i.amn = tail call i32 @llvm.fshl.i32(i32 %i.alx, i32 %i.alx, i32 15)
  %i.amo = tail call i32 @llvm.fshl.i32(i32 %i.alx, i32 %i.alx, i32 13)
  %i.amp = xor i32 %i.amn, %i.amo
  %i.amq = lshr i32 %i.alx, 10
  %i.amr = xor i32 %i.amp, %i.amq
  %i.ams = tail call i32 @llvm.fshl.i32(i32 %i.adr, i32 %i.adr, i32 25)
  %i.amt = tail call i32 @llvm.fshl.i32(i32 %i.adr, i32 %i.adr, i32 14)
  %i.amu = xor i32 %i.ams, %i.amt
  %i.amv = lshr i32 %i.adr, 3
  %i.amw = xor i32 %i.amu, %i.amv
  %i.amx = load i32, ptr %i.acg, align 4
  %i.amy = add i32 %i.ajb, %i.amw
  %i.amz = add i32 %i.amy, %i.amx
  %i.ana = add i32 %i.amz, %i.amr
  %i.anb = getelementptr i8, ptr %i.li, i64 124
  store i32 %i.ana, ptr %i.anb, align 4
  br label %bb.b

split:                                            ; preds = %bb.b
  %i.anc = load i32, ptr %0, align 4
  %i.and = add i32 %i.anc, %i.acz
  store i32 %i.and, ptr %0, align 4
  %i.ane = load i32, ptr %i.kv, align 4
  %i.anf = getelementptr i8, ptr %0, i64 4        ; 2 uses
  %i.ang = load i32, ptr %i.anf, align 4
  %i.anh = add i32 %i.ang, %i.ane
  store i32 %i.anh, ptr %i.anf, align 4
  %i.ani = load i32, ptr %i.kw, align 4
  %i.anj = getelementptr i8, ptr %0, i64 8        ; 2 uses
  %i.ank = load i32, ptr %i.anj, align 4
  %i.anl = add i32 %i.ank, %i.ani
  store i32 %i.anl, ptr %i.anj, align 4
  %i.anm = load i32, ptr %i.ku, align 4
  %i.ann = getelementptr i8, ptr %0, i64 12       ; 2 uses
  %i.ano = load i32, ptr %i.ann, align 4
  %i.anp = add i32 %i.ano, %i.anm
  store i32 %i.anp, ptr %i.ann, align 4
  %i.anq = load i32, ptr %i.kq, align 4
  %i.anr = getelementptr i8, ptr %0, i64 16       ; 2 uses
  %i.ans = load i32, ptr %i.anr, align 4
  %i.ant = add i32 %i.ans, %i.anq
  store i32 %i.ant, ptr %i.anr, align 4
  %i.anu = load i32, ptr %i.kr, align 4
  %i.anv = getelementptr i8, ptr %0, i64 20       ; 2 uses
  %i.anw = load i32, ptr %i.anv, align 4
  %i.anx = add i32 %i.anw, %i.anu
  store i32 %i.anx, ptr %i.anv, align 4
  %i.any = load i32, ptr %i.ks, align 4
  %i.anz = getelementptr i8, ptr %0, i64 24       ; 2 uses
  %i.aoa = load i32, ptr %i.anz, align 4
  %i.aob = add i32 %i.aoa, %i.any
  store i32 %i.aob, ptr %i.anz, align 4
  %i.aoc = load i32, ptr %i.kt, align 4
  %i.aod = getelementptr i8, ptr %0, i64 28       ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 4
  %i.aof = add i32 %i.aoe, %i.aoc
  store i32 %i.aof, ptr %i.aod, align 4
  ret void
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha256_final(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  fence acquire
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 63                         ; 5 uses
  %i.g = icmp samesign ult i32 %i.f, 56
  br i1 %i.g, label %.lr.ph.i, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.a
  %i.h = sub nuw nsw i32 64, %i.f
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep.i = getelementptr i8, ptr %i.j, i64 40
  %i.k = zext nneg i32 %i.h to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 16 dereferenceable(1) @PAD, i64 %i.k, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call fastcc void @SHA256_Transform(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 noundef 0, i64 noundef 56, i1 noundef false) #6
  br label %SHA256_Pad.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = zext nneg i32 %i.f to i64
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep32.i = getelementptr i8, ptr %i.o, i64 40
  %narrow.i = sub nuw nsw i32 56, %i.f
  %i.p = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep32.i, ptr nonnull align 16 @PAD, i64 %i.p, i1 false)
  br label %SHA256_Pad.exit

SHA256_Pad.exit:                                  ; preds = %.preheader28.i, %.lr.ph.i
  %i.q = getelementptr i8, ptr %0, i64 40
  %i.r = getelementptr i8, ptr %0, i64 96
  %2 = load <8 x i8>, ptr %i.b, align 8
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call fastcc void @SHA256_Transform(ptr noundef nonnull %0, ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s)
  %i.t = load i32, ptr %0, align 8                ; 4 uses
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr i8, ptr %1, i64 3
  store i8 %i.u, ptr %i.v, align 1
  %i.w = lshr i32 %i.t, 8
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr i8, ptr %1, i64 2
  store i8 %i.x, ptr %i.y, align 1
  %i.z = lshr i32 %i.t, 16
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr i8, ptr %1, i64 1
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i32 %i.t, 24
  %i.ad = trunc nuw i32 %i.ac to i8
  store i8 %i.ad, ptr %1, align 1
  %i.ae = getelementptr i8, ptr %1, i64 4
  %i.af = getelementptr i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 4 uses
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr i8, ptr %1, i64 7
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = lshr i32 %i.ag, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr i8, ptr %1, i64 6
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = lshr i32 %i.ag, 16
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr i8, ptr %1, i64 5
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = lshr i32 %i.ag, 24
  %i.aq = trunc nuw i32 %i.ap to i8
  store i8 %i.aq, ptr %i.ae, align 1
  %i.ar = getelementptr i8, ptr %1, i64 8
  %i.as = getelementptr i8, ptr %0, i64 8
  %i.at = load i32, ptr %i.as, align 8            ; 4 uses
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr i8, ptr %1, i64 11
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = lshr i32 %i.at, 8
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr i8, ptr %1, i64 10
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = lshr i32 %i.at, 16
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr i8, ptr %1, i64 9
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = lshr i32 %i.at, 24
  %i.bd = trunc nuw i32 %i.bc to i8
  store i8 %i.bd, ptr %i.ar, align 1
  %i.be = getelementptr i8, ptr %1, i64 12
  %i.bf = getelementptr i8, ptr %0, i64 12
  %i.bg = load i32, ptr %i.bf, align 4            ; 4 uses
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr i8, ptr %1, i64 15
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = lshr i32 %i.bg, 8
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr i8, ptr %1, i64 14
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = lshr i32 %i.bg, 16
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr i8, ptr %1, i64 13
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = lshr i32 %i.bg, 24
  %i.bq = trunc nuw i32 %i.bp to i8
  store i8 %i.bq, ptr %i.be, align 1
  %i.br = getelementptr i8, ptr %1, i64 16
  %i.bs = getelementptr i8, ptr %0, i64 16
  %i.bt = load i32, ptr %i.bs, align 8            ; 4 uses
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr i8, ptr %1, i64 19
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = lshr i32 %i.bt, 8
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr i8, ptr %1, i64 18
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = lshr i32 %i.bt, 16
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr i8, ptr %1, i64 17
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = lshr i32 %i.bt, 24
  %i.cd = trunc nuw i32 %i.cc to i8
  store i8 %i.cd, ptr %i.br, align 1
  %i.ce = getelementptr i8, ptr %1, i64 20
  %i.cf = getelementptr i8, ptr %0, i64 20
  %i.cg = load i32, ptr %i.cf, align 4            ; 4 uses
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr i8, ptr %1, i64 23
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = lshr i32 %i.cg, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr i8, ptr %1, i64 22
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = lshr i32 %i.cg, 16
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr i8, ptr %1, i64 21
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = lshr i32 %i.cg, 24
  %i.cq = trunc nuw i32 %i.cp to i8
  store i8 %i.cq, ptr %i.ce, align 1
  %i.cr = getelementptr i8, ptr %1, i64 24
  %i.cs = getelementptr i8, ptr %0, i64 24
  %i.ct = load i32, ptr %i.cs, align 8            ; 4 uses
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr i8, ptr %1, i64 27
  store i8 %i.cu, ptr %i.cv, align 1
  %i.cw = lshr i32 %i.ct, 8
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr i8, ptr %1, i64 26
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = lshr i32 %i.ct, 16
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr i8, ptr %1, i64 25
  store i8 %i.da, ptr %i.db, align 1
  %i.dc = lshr i32 %i.ct, 24
  %i.dd = trunc nuw i32 %i.dc to i8
  store i8 %i.dd, ptr %i.cr, align 1
  %i.de = getelementptr i8, ptr %1, i64 28
  %i.df = getelementptr i8, ptr %0, i64 28
  %i.dg = load i32, ptr %i.df, align 4            ; 4 uses
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr i8, ptr %1, i64 31
  store i8 %i.dh, ptr %i.di, align 1
  %i.dj = lshr i32 %i.dg, 8
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr i8, ptr %1, i64 30
  store i8 %i.dk, ptr %i.dl, align 1
  %i.dm = lshr i32 %i.dg, 16
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr i8, ptr %1, i64 29
  store i8 %i.dn, ptr %i.do, align 1
  %i.dp = lshr i32 %i.dg, 24
  %i.dq = trunc nuw i32 %i.dp to i8
  store i8 %i.dq, ptr %i.de, align 1
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 288) #6
  call void @sodium_memzero(ptr noundef nonnull %0, i64 noundef 104) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha256(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.crypto_hash_sha256_state, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) @crypto_hash_sha256_init.sha256_initial_state, i64 noundef 32, i1 noundef false) #6
  %i.b = call i32 @crypto_hash_sha256_update(ptr noundef %3, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.c = call i32 @crypto_hash_sha256_final(ptr noundef %3, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !16, !17, !18}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !16, !17, !18}
!7 = distinct !{!7, !19}
!8 = distinct !{!8, !16, !17}
!9 = distinct !{!9, !16, !17}
!10 = distinct !{!10, !16, !17, !18}
!11 = distinct !{!11, !16, !17, !18}
!12 = distinct !{!12, !19}
!13 = distinct !{!13, !16}
!14 = distinct !{!14, !16, !17}
!15 = !{!"branch_weights", i32 4, i32 28}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
