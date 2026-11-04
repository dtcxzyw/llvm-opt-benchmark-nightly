Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/crypt_blowfish?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@BF_crypt:bb.a
  %i.ckd = and i32 %i.ckc, 255
  %i.cke = lshr i32 %i.cjy, 24
  %i.ckf = zext nneg i32 %i.cjz to i64
  %i.ckg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ckf
  %i.ckh = load i32, ptr %i.ckg, align 4, !tbaa !14
  %i.cki = zext nneg i32 %i.ckb to i64
  %i.ckj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cki
  %i.ckk = load i32, ptr %i.ckj, align 4, !tbaa !14
  %i.ckl = zext nneg i32 %i.ckd to i64
  %i.ckm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ckl
  %i.ckn = load i32, ptr %i.ckm, align 4, !tbaa !14
  %i.cko = zext nneg i32 %i.cke to i64
  %i.ckp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cko
  %i.ckq = load i32, ptr %i.ckp, align 4, !tbaa !14
  %i.ckr = add i32 %i.ckq, %i.ckn
  %i.cks = xor i32 %i.ckr, %i.ckk
  %i.ckt = add i32 %i.cks, %i.ckh
  %i.cku = xor i32 %i.caq, %i.ckt
  %i.ckv = xor i32 %i.cku, %i.cjb                 ; 5 uses
  %i.ckw = and i32 %i.ckv, 255
  %i.ckx = lshr i32 %i.ckv, 8
  %i.cky = and i32 %i.ckx, 255
  %i.ckz = lshr i32 %i.ckv, 16
  %i.cla = and i32 %i.ckz, 255
  %i.clb = lshr i32 %i.ckv, 24
  %i.clc = zext nneg i32 %i.ckw to i64
  %i.cld = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.clc
  %i.cle = load i32, ptr %i.cld, align 4, !tbaa !14
  %i.clf = zext nneg i32 %i.cky to i64
  %i.clg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.clf
  %i.clh = load i32, ptr %i.clg, align 4, !tbaa !14
  %i.cli = zext nneg i32 %i.cla to i64
  %i.clj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cli
  %i.clk = load i32, ptr %i.clj, align 4, !tbaa !14
  %i.cll = zext nneg i32 %i.clb to i64
  %i.clm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cll
  %i.cln = load i32, ptr %i.clm, align 4, !tbaa !14
  %i.clo = add i32 %i.cln, %i.clk
  %i.clp = xor i32 %i.clo, %i.clh
  %i.clq = add i32 %i.clp, %i.cle
  %i.clr = xor i32 %i.car, %i.clq
  %i.cls = xor i32 %i.clr, %i.cjy                 ; 5 uses
  %i.clt = and i32 %i.cls, 255
  %i.clu = lshr i32 %i.cls, 8
  %i.clv = and i32 %i.clu, 255
  %i.clw = lshr i32 %i.cls, 16
  %i.clx = and i32 %i.clw, 255
  %i.cly = lshr i32 %i.cls, 24
  %i.clz = zext nneg i32 %i.clt to i64
  %i.cma = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.clz
  %i.cmb = load i32, ptr %i.cma, align 4, !tbaa !14
  %i.cmc = zext nneg i32 %i.clv to i64
  %i.cmd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cmc
  %i.cme = load i32, ptr %i.cmd, align 4, !tbaa !14
  %i.cmf = zext nneg i32 %i.clx to i64
  %i.cmg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cmf
  %i.cmh = load i32, ptr %i.cmg, align 4, !tbaa !14
  %i.cmi = zext nneg i32 %i.cly to i64
  %i.cmj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cmi
  %i.cmk = load i32, ptr %i.cmj, align 4, !tbaa !14
  %i.cml = add i32 %i.cmk, %i.cmh
  %i.cmm = xor i32 %i.cml, %i.cme
  %i.cmn = add i32 %i.cmm, %i.cmb
  %i.cmo = xor i32 %i.cas, %i.cmn
  %i.cmp = xor i32 %i.cmo, %i.ckv                 ; 5 uses
  %i.cmq = and i32 %i.cmp, 255
  %i.cmr = lshr i32 %i.cmp, 8
  %i.cms = and i32 %i.cmr, 255
  %i.cmt = lshr i32 %i.cmp, 16
  %i.cmu = and i32 %i.cmt, 255
  %i.cmv = lshr i32 %i.cmp, 24
  %i.cmw = zext nneg i32 %i.cmq to i64
  %i.cmx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cmw
  %i.cmy = load i32, ptr %i.cmx, align 4, !tbaa !14
  %i.cmz = zext nneg i32 %i.cms to i64
  %i.cna = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cmz
  %i.cnb = load i32, ptr %i.cna, align 4, !tbaa !14
  %i.cnc = zext nneg i32 %i.cmu to i64
  %i.cnd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cnc
  %i.cne = load i32, ptr %i.cnd, align 4, !tbaa !14
  %i.cnf = zext nneg i32 %i.cmv to i64
  %i.cng = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cnf
  %i.cnh = load i32, ptr %i.cng, align 4, !tbaa !14
  %i.cni = add i32 %i.cnh, %i.cne
  %i.cnj = xor i32 %i.cni, %i.cnb
  %i.cnk = add i32 %i.cnj, %i.cmy
  %i.cnl = xor i32 %i.cat, %i.cnk
  %i.cnm = xor i32 %i.cnl, %i.cls                 ; 5 uses
  %i.cnn = and i32 %i.cnm, 255
  %i.cno = lshr i32 %i.cnm, 8
  %i.cnp = and i32 %i.cno, 255
  %i.cnq = lshr i32 %i.cnm, 16
  %i.cnr = and i32 %i.cnq, 255
  %i.cns = lshr i32 %i.cnm, 24
  %i.cnt = zext nneg i32 %i.cnn to i64
  %i.cnu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cnt
  %i.cnv = load i32, ptr %i.cnu, align 4, !tbaa !14
  %i.cnw = zext nneg i32 %i.cnp to i64
  %i.cnx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cnw
  %i.cny = load i32, ptr %i.cnx, align 4, !tbaa !14
  %i.cnz = zext nneg i32 %i.cnr to i64
  %i.coa = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cnz
  %i.cob = load i32, ptr %i.coa, align 4, !tbaa !14
  %i.coc = zext nneg i32 %i.cns to i64
  %i.cod = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.coc
  %i.coe = load i32, ptr %i.cod, align 4, !tbaa !14
  %i.cof = add i32 %i.coe, %i.cob
  %i.cog = xor i32 %i.cof, %i.cny
  %i.coh = add i32 %i.cog, %i.cnv
  %i.coi = xor i32 %i.cau, %i.coh
  %i.coj = xor i32 %i.coi, %i.cmp                 ; 5 uses
  %i.cok = and i32 %i.coj, 255
  %i.col = lshr i32 %i.coj, 8
  %i.com = and i32 %i.col, 255
  %i.con = lshr i32 %i.coj, 16
  %i.coo = and i32 %i.con, 255
  %i.cop = lshr i32 %i.coj, 24
  %i.coq = zext nneg i32 %i.cok to i64
  %i.cor = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.coq
  %i.cos = load i32, ptr %i.cor, align 4, !tbaa !14
  %i.cot = zext nneg i32 %i.com to i64
  %i.cou = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cot
  %i.cov = load i32, ptr %i.cou, align 4, !tbaa !14
  %i.cow = zext nneg i32 %i.coo to i64
  %i.cox = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cow
  %i.coy = load i32, ptr %i.cox, align 4, !tbaa !14
  %i.coz = zext nneg i32 %i.cop to i64
  %i.cpa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.coz
  %i.cpb = load i32, ptr %i.cpa, align 4, !tbaa !14
  %i.cpc = add i32 %i.cpb, %i.coy
  %i.cpd = xor i32 %i.cpc, %i.cov
  %i.cpe = add i32 %i.cpd, %i.cos
  %i.cpf = xor i32 %i.cav, %i.cpe
  %i.cpg = xor i32 %i.cpf, %i.cnm                 ; 2 uses
  %i.cph = xor i32 %i.caw, %i.coj                 ; 2 uses
  %i.cpi = add nsw i32 %.11847, -1                ; 2 uses
  %.not1874 = icmp eq i32 %i.cpi, 0
  br i1 %.not1874, label %bb.x, label %bb.w, !llvm.loop !24

bb.x:                                             ; preds = %bb.w
  %i.cpj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1931
  store i32 %i.cph, ptr %i.cpj, align 4, !tbaa !13
  %i.cpk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.caz
  store i32 %i.cpg, ptr %i.cpk, align 4, !tbaa !13
  %indvars.iv.next1932 = add nuw nsw i64 %indvars.iv1931, 2
  %i.cpl = icmp samesign ult i64 %indvars.iv1931, 4
  br i1 %i.cpl, label %bb.v, label %BF_swap.exit1881, !llvm.loop !25

BF_swap.exit1881:                                 ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %2, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 28, i1 false)
  %i.cpm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cpn = load i8, ptr %i.cpm, align 1, !tbaa !13
  %i.cpo = sext i8 %i.cpn to i64
  %i.cpp = getelementptr i8, ptr @BF_atoi64, i64 %i.cpo
  %i.cpq = getelementptr i8, ptr %i.cpp, i64 -32
  %i.cpr = load i8, ptr %i.cpq, align 1, !tbaa !13
  %i.cps = and i8 %i.cpr, 48
  %i.cpt = zext nneg i8 %i.cps to i64
  %i.cpu = getelementptr inbounds nuw i8, ptr @BF_itoa64, i64 %i.cpt
  %i.cpv = load i8, ptr %i.cpu, align 16, !tbaa !13
  %i.cpw = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 %i.cpv, ptr %i.cpw, align 1, !tbaa !13
  %i.cpx = getelementptr inbounds nuw i8, ptr %5, i64 4256 ; 2 uses
  %i.cpy = load <4 x i32>, ptr %i.ah, align 4, !tbaa !14
  %i.cpz = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.cpy)
  store <4 x i32> %i.cpz, ptr %i.ah, align 4, !tbaa !14
  %i.cqa = load i32, ptr %i.cpx, align 4, !tbaa !14
  %i.cqb = tail call i32 @llvm.bswap.i32(i32 %i.cqa)
  %i.cqc = getelementptr inbounds nuw i8, ptr %5, i64 4260 ; 2 uses
  store i32 %i.cqb, ptr %i.cpx, align 4, !tbaa !14
  %i.cqd = load i32, ptr %i.cqc, align 4, !tbaa !14
  %i.cqe = tail call i32 @llvm.bswap.i32(i32 %i.cqd)
  store i32 %i.cqe, ptr %i.cqc, align 4, !tbaa !14
  %i.cqf = getelementptr inbounds nuw i8, ptr %2, i64 29
  call fastcc void @BF_encode(ptr noundef nonnull %i.cqf, ptr noundef %i.ah)
  %i.cqg = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i8 0, ptr %i.cqg, align 1, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %BF_swap.exit1881, %bb.o, %bb.l, %bb.b
  %.01860 = phi ptr [ null, %bb.b ], [ null, %bb.l ], [ null, %bb.o ], [ %2, %BF_swap.exit1881 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret ptr %.01860
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @BF_set_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i8 noundef zeroext %3) unnamed_addr #5 {
bb.a:
  %i.a = zext i8 %3 to i32                        ; 2 uses
  %i.b = and i32 %i.a, 1
  %.sroa.idx.not = icmp eq i32 %i.b, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.045 = phi i32 [ 0, %bb.a ], [ %i.ai, %bb.b ]
  %.03144 = phi i32 [ 0, %bb.a ], [ %.2.3, %bb.b ]
  %.03442 = phi ptr [ %0, %bb.a ], [ %.236.3, %bb.b ] ; 2 uses
  %i.c = load i8, ptr %.03442, align 1, !tbaa !13 ; 3 uses
  %i.d = zext i8 %i.c to i32
  %i.e = sext i8 %i.c to i32
  %.not37 = icmp eq i8 %i.c, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.03442, i64 1
  %.236 = select i1 %.not37, ptr %0, ptr %i.f     ; 2 uses
  %i.g = load i8, ptr %.236, align 1, !tbaa !13   ; 3 uses
  %i.h = zext i8 %i.g to i32
  %i.i = sext i8 %i.g to i32                      ; 2 uses
  %.not37.1 = icmp eq i8 %i.g, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.236, i64 1
  %.236.1 = select i1 %.not37.1, ptr %0, ptr %i.j ; 2 uses
  %i.k = shl nuw nsw i32 %i.d, 16
  %i.l = shl nuw nsw i32 %i.h, 8
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = load i8, ptr %.236.1, align 1, !tbaa !13 ; 3 uses
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = shl nsw i32 %i.e, 16
  %i.r = shl nsw i32 %i.i, 8
  %i.s = or i32 %i.q, %i.r
  %i.t = sext i8 %i.n to i32                      ; 2 uses
  %i.u = or i32 %i.s, %i.t
  %i.v = or i32 %i.i, %i.t
  %.not37.2 = icmp eq i8 %i.n, 0
  %i.w = getelementptr inbounds nuw i8, ptr %.236.1, i64 1
  %.236.2 = select i1 %.not37.2, ptr %0, ptr %i.w ; 2 uses
  %i.x = shl nuw i32 %i.p, 8
  %i.y = load i8, ptr %.236.2, align 1, !tbaa !13 ; 3 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nsw i32 %i.u, 8
  %i.ac = sext i8 %i.y to i32                     ; 2 uses
  %i.ad = or i32 %i.ab, %i.ac                     ; 2 uses
  %i.ae = or i32 %i.v, %i.ac
  %i.af = and i32 %i.ae, 128
  %.2.3 = or i32 %i.af, %.03144                   ; 2 uses
  %.not37.3 = icmp eq i8 %i.y, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.236.2, i64 1
  %.236.3 = select i1 %.not37.3, ptr %0, ptr %i.ag
  %i.ah = xor i32 %i.aa, %i.ad
  %i.ai = or i32 %i.ah, %.045                     ; 3 uses
  %.sroa.speculated = select i1 %.sroa.idx.not, i32 %i.aa, i32 %i.ad ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sroa.speculated, ptr %i.aj, align 4, !tbaa !14
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @BF_init_state, i64 4096), i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %i.am = xor i32 %i.al, %.sroa.speculated
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.ao = shl nuw nsw i32 %i.a, 15
  %i.ap = lshr i32 %i.ai, 16
  %.0.masked = and i32 %i.ai, 65535
  %i.aq = or i32 %.0.masked, %i.ap
  %i.ar = shl nuw nsw i32 %.2.3, 9
  %i.as = sub nuw nsw i32 65536, %i.aq
  %i.at = and i32 %i.ao, %i.ar
  %i.au = and i32 %i.at, %i.as
  %i.av = load i32, ptr %2, align 4, !tbaa !14
  %i.aw = xor i32 %i.av, %i.au
  store i32 %i.aw, ptr %2, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 1) i32 @BF_decode(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i32
  %i.d = add nsw i32 %i.c, -32                    ; 2 uses
  %i.e = icmp ugt i32 %i.d, 95
  br i1 %i.e, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  %i.i = icmp ugt i8 %i.h, 63
  br i1 %i.i, label %bb.at, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.a, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -32                    ; 2 uses
  %i.n = icmp ugt i32 %i.m, 95
  br i1 %i.n, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13    ; 3 uses
  %i.r = icmp ugt i8 %i.q, 63
  br i1 %i.r, label %bb.at, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = shl nuw i8 %i.h, 2
  %i.t = lshr i8 %i.q, 4
  %i.u = or disjoint i8 %i.t, %i.s
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.u, ptr %0, align 1, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.j, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -32                    ; 2 uses
  %i.z = icmp ugt i32 %i.y, 95
  br i1 %i.z, label %bb.at, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13  ; 3 uses
  %i.ad = icmp ugt i8 %i.ac, 63
  br i1 %i.ad, label %bb.at, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = shl i8 %i.q, 4
  %i.af = lshr i8 %i.ac, 2
  %i.ag = or disjoint i8 %i.af, %i.ae
  %.ptr54 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ag, ptr %.ptr, align 1, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i8, ptr %i.v, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -32                  ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 95
  br i1 %i.al, label %bb.at, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13  ; 2 uses
  %i.ap = icmp ugt i8 %i.ao, 63
  br i1 %i.ap, label %bb.at, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = shl i8 %i.ac, 6
  %i.ar = or disjoint i8 %i.ao, %i.aq
  store i8 %i.ar, ptr %.ptr54, align 1, !tbaa !13
  %.039.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.at = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -32                  ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 95
  br i1 %i.aw, label %bb.at, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13  ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 63
  br i1 %i.ba, label %bb.at, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bc = load i8, ptr %i.as, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -32                  ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 95
  br i1 %i.bf, label %bb.at, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13  ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 63
  br i1 %i.bj, label %bb.at, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = shl nuw i8 %i.az, 2
  %i.bl = lshr i8 %i.bi, 4
  %i.bm = or disjoint i8 %i.bl, %i.bk
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bm, ptr %.039.ptr.1, align 1, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bo = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -32                  ; 2 uses
  %i.br = icmp ugt i32 %i.bq, 95
  br i1 %i.br, label %bb.at, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13  ; 3 uses
  %i.bv = icmp ugt i8 %i.bu, 63
  br i1 %i.bv, label %bb.at, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = shl i8 %i.bi, 4
  %i.bx = lshr i8 %i.bu, 2
  %i.by = or disjoint i8 %i.bx, %i.bw
  %.ptr54.1 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.by, ptr %.ptr.1, align 1, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -32                  ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 95
  br i1 %i.cd, label %bb.at, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13  ; 2 uses
  %i.ch = icmp ugt i8 %i.cg, 63
  br i1 %i.ch, label %bb.at, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = shl i8 %i.bu, 6
  %i.cj = or disjoint i8 %i.cg, %i.ci
  store i8 %i.cj, ptr %.ptr54.1, align 1, !tbaa !13
  %.039.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cl = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -32                  ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 95
  br i1 %i.co, label %bb.at, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13  ; 2 uses
  %i.cs = icmp ugt i8 %i.cr, 63
  br i1 %i.cs, label %bb.at, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cu = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -32                  ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 95
  br i1 %i.cx, label %bb.at, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13  ; 3 uses
  %i.db = icmp ugt i8 %i.da, 63
  br i1 %i.db, label %bb.at, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = shl nuw i8 %i.cr, 2
  %i.dd = lshr i8 %i.da, 4
  %i.de = or disjoint i8 %i.dd, %i.dc
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.de, ptr %.039.ptr.2, align 1, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.dg = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nsw i32 %i.dh, -32                  ; 2 uses
  %i.dj = icmp ugt i32 %i.di, 95
  br i1 %i.dj, label %bb.at, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13  ; 3 uses
end_hunk_0
