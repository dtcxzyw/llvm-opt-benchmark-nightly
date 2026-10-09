Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/autocorr?download=true
inline.NumInlined: 330
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi:bb.a
  %brmerge.not = and i1 %12, %or.cond
  %.mux = select i1 %or.cond, i8 0, i8 %i.c
  br i1 %brmerge.not, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %brmerge181.demorgan = and i1 %12, %i.d
  br i1 %brmerge181.demorgan, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef %8) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  %.0140 = phi i8 [ %.mux, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %i.t = and i64 %8, 1
  %.not156 = icmp eq i64 %i.t, 0                  ; 2 uses
  %i.u = and i64 %8, 5
  %or.cond175.not = icmp eq i64 %i.u, 5
  br i1 %or.cond175.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 587, ptr noundef nonnull @.str.3) #17
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %common.resume

bb.s:                                             ; preds = %bb.o
  br i1 %12, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not158 = icmp eq ptr %2, null
  %i.w = select i1 %.not158, ptr @.str.5, ptr %2
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.w, i32 noundef %4, i32 noundef %3) ; 0 uses
  %i.y = select i1 %10, ptr @.str.24, ptr @.str.25
  %i.z = trunc nuw i8 %.0140 to i1
  %i.aa = select i1 %i.z, ptr @.str.24, ptr @.str.25
  %i.ab = select i1 %11, ptr @.str.24, ptr @.str.25
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab) ; 0 uses
  %i.ad = fpext float %7 to double
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %8, double noundef %i.ad, i32 noundef %9) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.af = sext i32 %3 to i64                      ; 3 uses
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 601, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 133 uses
  %i.ah = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 602, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 152 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aj = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = add nsw i32 %4, -1
  %i.am = trunc nuw i8 %.0140 to i1
  %i.an = icmp slt i32 %9, 1
  %i.ao = icmp sgt i32 %.0147.fr, 0
  %i.ap = zext i32 %.0147.fr to i64               ; 15 uses
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = icmp sgt i32 %3, 0                      ; 12 uses
  %i.as = and i64 %8, 512
  %.not123.i = icmp eq i64 %i.as, 0
  %i.at = and i64 %8, 36
  %i.au = icmp eq i64 %i.at, 36                   ; 2 uses
  %i.av = and i64 %8, 68
  %i.aw = icmp eq i64 %i.av, 68                   ; 3 uses
  %or.cond.i = or i1 %i.au, %i.aw
  %or.cond127.i = or i1 %i.o, %or.cond.i
  %i.ax = and i64 %8, 12
  %i.ay = icmp eq i64 %i.ax, 12
  %spec.select.i = select i1 %i.o, i32 3, i32 1
  %.0110.i = select i1 %i.aw, i32 2, i32 %spec.select.i
  %i.az = zext i32 %3 to i64                      ; 199 uses
  %or.cond170.i = and i1 %i.ar, %i.au
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 4 uses
  %i.bb = zext nneg i32 %i.al to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ba
  %scevgep420 = getelementptr i8, ptr %i.ah, i64 %i.ba
  %i.bc = mul nuw nsw i64 %i.az, 12               ; 6 uses
  %i.bd = shl nuw nsw i64 %i.az, 2                ; 12 uses
  %scevgep462 = getelementptr i8, ptr %i.ag, i64 %i.bd ; 10 uses
  %scevgep501 = getelementptr i8, ptr %i.ah, i64 %i.bd ; 8 uses
  %i.be = add nsw i64 %i.bc, -4                   ; 3 uses
  %i.bf = add nsw i64 %i.bc, -8                   ; 2 uses
  %scevgep1266 = getelementptr i8, ptr %i.ah, i64 4
  %i.bg = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.bh = add nsw i64 %i.az, -1                   ; 4 uses
  %scevgep1298 = getelementptr i8, ptr %i.ah, i64 4
  %i.bi = add nsw i64 %i.ap, -1
  %i.bj = add nsw i64 %i.ap, -1
  %min.iters.check1249 = icmp ult i32 %.0147.fr, 8
  %n.vec1251 = and i64 %i.ap, 2147483640          ; 3 uses
  %cmp.n1263 = icmp eq i64 %n.vec1251, %i.ap
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check1218 = icmp ult i32 %3, 4
  %min.iters.check1220 = icmp ult i32 %3, 32
  %i.bk = and i64 %i.az, 28
  %n.vec1222 = and i64 %i.az, 2147483616          ; 4 uses
  %cmp.n1231 = icmp eq i64 %n.vec1222, %i.az
  %min.epilog.iters.check1236 = icmp eq i64 %i.bk, 0
  %n.vec1238 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1244 = icmp eq i64 %n.vec1238, %i.az
  %min.iters.check1187 = icmp ult i32 %3, 4
  %min.iters.check1189 = icmp ult i32 %3, 32
  %i.bl = and i64 %i.az, 28
  %n.vec1191 = and i64 %i.az, 2147483616          ; 4 uses
  %cmp.n1200 = icmp eq i64 %n.vec1191, %i.az
  %min.epilog.iters.check1205 = icmp eq i64 %i.bl, 0
  %n.vec1207 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1213 = icmp eq i64 %n.vec1207, %i.az
  %min.iters.check1155 = icmp ult i32 %3, 4
  %min.iters.check1157 = icmp ult i32 %3, 16
  %i.bm = and i64 %i.az, 12
  %n.vec1159 = and i64 %i.az, 2147483632          ; 4 uses
  %cmp.n1168 = icmp eq i64 %n.vec1159, %i.az
  %min.epilog.iters.check1173 = icmp eq i64 %i.bm, 0
  %n.vec1175 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1182 = icmp eq i64 %n.vec1175, %i.az
  %xtraiter1362 = and i64 %i.az, 3                ; 2 uses
  %lcmp.mod1363.not = icmp eq i64 %xtraiter1362, 0
  %min.iters.check1127 = icmp ult i32 %3, 8
  %n.vec1129 = and i64 %i.az, 2147483640          ; 3 uses
  %cmp.n1139 = icmp eq i64 %n.vec1129, %i.az
  %min.iters.check1095 = icmp ult i32 %3, 9
  %min.iters.check1097 = icmp ult i32 %3, 33
  %i.bn = and i64 %i.az, 31                       ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 32, i64 %i.bn      ; 2 uses
  %n.vec1099 = sub nsw i64 %i.az, %i.bp           ; 3 uses
  %min.epilog.iters.check1116 = icmp samesign ult i64 %i.bp, 9
  %i.bq = and i64 %i.az, 7                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 8, i64 %i.bq
  %n.vec1118 = sub nsw i64 %i.az, %i.bs           ; 2 uses
  %min.iters.check1056 = icmp ult i32 %3, 4
  %min.iters.check1058 = icmp ult i32 %3, 32
  %i.bt = and i64 %i.az, 28
  %n.vec1060 = and i64 %i.az, 4294967264          ; 4 uses
  %cmp.n1073 = icmp eq i64 %n.vec1060, %i.az
  %min.epilog.iters.check1078 = icmp eq i64 %i.bt, 0
  %n.vec1080 = and i64 %i.az, 4294967292          ; 3 uses
  %cmp.n1087 = icmp eq i64 %n.vec1080, %i.az
  %min.iters.check1019 = icmp ult i32 %3, 9
  %min.iters.check1021 = icmp ult i32 %3, 33
  %i.bu = and i64 %i.az, 31                       ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i64 32, i64 %i.bu      ; 2 uses
  %n.vec1023 = sub nsw i64 %i.az, %i.bw           ; 3 uses
  %min.epilog.iters.check1040 = icmp samesign ult i64 %i.bw, 9
  %i.bx = and i64 %i.az, 7                        ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 8, i64 %i.bx
  %n.vec1042 = sub nsw i64 %i.az, %i.bz           ; 2 uses
  %min.iters.check979 = icmp ult i32 %3, 4
  %min.iters.check981 = icmp ult i32 %3, 32
  %i.ca = and i64 %i.az, 28
  %n.vec983 = and i64 %i.az, 4294967264           ; 4 uses
  %cmp.n996 = icmp eq i64 %n.vec983, %i.az
  %min.epilog.iters.check1001 = icmp eq i64 %i.ca, 0
  %n.vec1003 = and i64 %i.az, 4294967292          ; 3 uses
  %cmp.n1010 = icmp eq i64 %n.vec1003, %i.az
  %min.iters.check942 = icmp ult i32 %3, 9
  %min.iters.check944 = icmp ult i32 %3, 33
  %i.cb = and i64 %i.az, 31                       ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 32, i64 %i.cb      ; 2 uses
  %n.vec946 = sub nsw i64 %i.az, %i.cd            ; 3 uses
  %min.epilog.iters.check963 = icmp samesign ult i64 %i.cd, 9
  %i.ce = and i64 %i.az, 7                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = select i1 %i.cf, i64 8, i64 %i.ce
  %n.vec965 = sub nsw i64 %i.az, %i.cg            ; 2 uses
  %min.iters.check902 = icmp ult i32 %3, 4
  %min.iters.check904 = icmp ult i32 %3, 32
  %i.ch = and i64 %i.az, 28
  %n.vec906 = and i64 %i.az, 4294967264           ; 4 uses
  %cmp.n919 = icmp eq i64 %n.vec906, %i.az
  %min.epilog.iters.check924 = icmp eq i64 %i.ch, 0
  %n.vec926 = and i64 %i.az, 4294967292           ; 3 uses
  %cmp.n933 = icmp eq i64 %n.vec926, %i.az
  %min.iters.check883 = icmp ult i32 %3, 8
  %n.vec885 = and i64 %i.az, 2147483640           ; 3 uses
  %cmp.n894 = icmp eq i64 %n.vec885, %i.az
  %min.iters.check846 = icmp ult i32 %3, 4
  %min.iters.check848 = icmp ult i32 %3, 32
  %i.ci = and i64 %i.az, 28
  %n.vec850 = and i64 %i.az, 2147483616           ; 4 uses
  %broadcast.splatinsert851 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat852 = shufflevector <8 x i32> %broadcast.splatinsert851, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n862 = icmp eq i64 %n.vec850, %i.az
  %min.epilog.iters.check867 = icmp eq i64 %i.ci, 0
  %n.vec869 = and i64 %i.az, 2147483644           ; 3 uses
  %broadcast.splatinsert870 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat871 = shufflevector <4 x i32> %broadcast.splatinsert870, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n881 = icmp eq i64 %n.vec869, %i.az
  %min.iters.check815 = icmp ult i32 %3, 9
  %min.iters.check817 = icmp ult i32 %3, 33
  %i.cj = and i64 %i.az, 31                       ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = select i1 %i.ck, i64 32, i64 %i.cj      ; 2 uses
  %n.vec819 = sub nsw i64 %i.az, %i.cl            ; 3 uses
  %min.epilog.iters.check836 = icmp samesign ult i64 %i.cl, 9
  %i.cm = and i64 %i.az, 7                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 8, i64 %i.cm
  %n.vec838 = sub nsw i64 %i.az, %i.co            ; 2 uses
  %min.iters.check777 = icmp ult i32 %3, 4
  %min.iters.check779 = icmp ult i32 %3, 32
  %i.cp = and i64 %i.az, 28
  %n.vec781 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n794 = icmp eq i64 %n.vec781, %i.az
  %min.epilog.iters.check799 = icmp eq i64 %i.cp, 0
  %n.vec801 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n808 = icmp eq i64 %n.vec801, %i.az
  %min.iters.check741 = icmp ult i32 %3, 9
  %min.iters.check743 = icmp ult i32 %3, 33
  %i.cq = and i64 %i.az, 31                       ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 32, i64 %i.cq      ; 2 uses
  %n.vec745 = sub nsw i64 %i.az, %i.cs            ; 3 uses
  %min.epilog.iters.check762 = icmp samesign ult i64 %i.cs, 9
  %i.ct = and i64 %i.az, 7                        ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 8, i64 %i.ct
  %n.vec764 = sub nsw i64 %i.az, %i.cv            ; 2 uses
  %min.iters.check702 = icmp ult i32 %3, 4
  %min.iters.check704 = icmp ult i32 %3, 32
  %i.cw = and i64 %i.az, 28
  %n.vec706 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n719 = icmp eq i64 %n.vec706, %i.az
  %min.epilog.iters.check724 = icmp eq i64 %i.cw, 0
  %n.vec726 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n733 = icmp eq i64 %n.vec726, %i.az
  %min.iters.check666 = icmp ult i32 %3, 9
  %min.iters.check668 = icmp ult i32 %3, 33
  %i.cx = and i64 %i.az, 31                       ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 32, i64 %i.cx      ; 2 uses
  %n.vec670 = sub nsw i64 %i.az, %i.cz            ; 3 uses
  %min.epilog.iters.check687 = icmp samesign ult i64 %i.cz, 9
  %i.da = and i64 %i.az, 7                        ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = select i1 %i.db, i64 8, i64 %i.da
  %n.vec689 = sub nsw i64 %i.az, %i.dc            ; 2 uses
  %min.iters.check627 = icmp ult i32 %3, 4
  %min.iters.check629 = icmp ult i32 %3, 32
  %i.dd = and i64 %i.az, 28
  %n.vec631 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n644 = icmp eq i64 %n.vec631, %i.az
  %min.epilog.iters.check649 = icmp eq i64 %i.dd, 0
  %n.vec651 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n658 = icmp eq i64 %n.vec651, %i.az
  %min.iters.check586 = icmp ult i32 %3, 9
  %min.iters.check588 = icmp ult i32 %3, 33
  %i.de = and i64 %i.az, 31                       ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 32, i64 %i.de      ; 2 uses
  %n.vec590 = sub nsw i64 %i.az, %i.dg            ; 3 uses
  %min.epilog.iters.check611 = icmp samesign ult i64 %i.dg, 9
  %i.dh = and i64 %i.az, 7                        ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.di, i64 8, i64 %i.dh
  %n.vec613 = sub nsw i64 %i.az, %i.dj            ; 2 uses
  %min.iters.check548 = icmp ult i32 %3, 4
  %min.iters.check550 = icmp ult i32 %3, 32
  %i.dk = and i64 %i.az, 28
  %n.vec552 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n565 = icmp eq i64 %n.vec552, %i.az
  %min.epilog.iters.check570 = icmp eq i64 %i.dk, 0
  %n.vec572 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n579 = icmp eq i64 %n.vec572, %i.az
  %min.iters.check507 = icmp ult i32 %3, 9
  %min.iters.check509 = icmp ult i32 %3, 33
  %i.dl = and i64 %i.az, 31                       ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = select i1 %i.dm, i64 32, i64 %i.dl      ; 2 uses
  %n.vec511 = sub nsw i64 %i.az, %i.dn            ; 3 uses
  %min.epilog.iters.check532 = icmp samesign ult i64 %i.dn, 9
  %i.do = and i64 %i.az, 7                        ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 8, i64 %i.do
  %n.vec534 = sub nsw i64 %i.az, %i.dq            ; 2 uses
  %min.iters.check467 = icmp ult i32 %3, 4
  %min.iters.check469 = icmp ult i32 %3, 32
  %i.dr = and i64 %i.az, 28
  %n.vec471 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n484 = icmp eq i64 %n.vec471, %i.az
  %min.epilog.iters.check489 = icmp eq i64 %i.dr, 0
  %n.vec491 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n498 = icmp eq i64 %n.vec491, %i.az
  %min.iters.check425 = icmp ult i32 %3, 8
  %min.iters.check427 = icmp ult i32 %3, 32
  %i.ds = and i64 %i.az, 24
  %n.vec429 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n444 = icmp eq i64 %n.vec429, %i.az
  %min.epilog.iters.check449 = icmp eq i64 %i.ds, 0
  %n.vec451 = and i64 %i.az, 2147483640           ; 3 uses
  %cmp.n459 = icmp eq i64 %n.vec451, %i.az
  %xtraiter1413 = and i64 %i.az, 3                ; 2 uses
  %lcmp.mod1414.not = icmp eq i64 %xtraiter1413, 0
  %min.iters.check386 = icmp ult i32 %3, 4
  %min.iters.check388 = icmp ult i32 %3, 32
  %i.dt = and i64 %i.az, 28
  %n.vec390 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n403 = icmp eq i64 %n.vec390, %i.az
  %min.epilog.iters.check408 = icmp eq i64 %i.dt, 0
  %n.vec410 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n417 = icmp eq i64 %n.vec410, %i.az
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check369 = icmp ult i32 %3, 32
  %i.du = and i64 %i.az, 28
  %n.vec = and i64 %i.az, 4294967264              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.az
  %min.epilog.iters.check = icmp eq i64 %i.du, 0
  %n.vec373 = and i64 %i.az, 4294967292           ; 3 uses
  %broadcast.splatinsert374 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat375 = shufflevector <4 x i32> %broadcast.splatinsert374, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n383 = icmp eq i64 %n.vec373, %i.az
  %xtraiter1419 = and i64 %i.az, 3                ; 2 uses
  %lcmp.mod1420.not = icmp eq i64 %xtraiter1419, 0
  br label %bb.v

._crit_edge:                                      ; preds = %_ZL10do_ac_coreiiPfS_im.exit, %bb.u
  br i1 %12, label %bb.ca, label %bb.cb

bb.v:                                             ; preds = %.lr.ph, %_ZL10do_ac_coreiiPfS_im.exit
  %indvars.iv288 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next289, %_ZL10do_ac_coreiiPfS_im.exit ] ; 5 uses
  br i1 %12, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dv = trunc nuw nsw i64 %indvars.iv288 to i32
  %i.dw = urem i32 %i.dv, 100
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = icmp eq i64 %indvars.iv288, %i.bb
  %or.cond177 = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond177, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ea = trunc i64 %indvars.iv288 to i32
  %i.eb = add i32 %i.ea, 1
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.10, i32 noundef %i.eb) #18 ; 0 uses
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ee = call i32 @fflush(ptr noundef %i.ed)     ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv288
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !224 ; 203 uses
  %i.eh = ptrtoaddr ptr %i.eg to i64              ; 4 uses
  br i1 %i.am, label %bb.z, label %bb.bg

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ei = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 356, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 162 uses
  %i.ej = ptrtoaddr ptr %i.ei to i64
  br i1 %.not156, label %bb.aa, label %.loopexit171.i

bb.aa:                                            ; preds = %bb.z
  br i1 %.not, label %bb.ab, label %.preheader178.i

.preheader178.i:                                  ; preds = %bb.aa
  br i1 %i.ar, label %iter.check1233, label %.loopexit171.thread293.sink.split.i

iter.check1233:                                   ; preds = %.preheader178.i
  %i.ek = sub i64 %i.eh, %i.ai
  %diff.check1216 = icmp ugt i64 %i.ek, -128
  %or.cond1333 = select i1 %min.iters.check1218, i1 true, i1 %diff.check1216
  br i1 %or.cond1333, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check1219

vector.main.loop.iter.check1219:                  ; preds = %iter.check1233
  br i1 %min.iters.check1220, label %vec.epilog.ph1237, label %vector.body1223

vector.body1223:                                  ; preds = %vector.main.loop.iter.check1219, %vector.body1223
  %index1224 = phi i64 [ %index.next1229, %vector.body1223 ], [ 0, %vector.main.loop.iter.check1219 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index1224 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %wide.load1225 = load <8 x float>, ptr %i.el, align 4, !tbaa !24
  %wide.load1226 = load <8 x float>, ptr %i.em, align 4, !tbaa !24
  %wide.load1227 = load <8 x float>, ptr %i.en, align 4, !tbaa !24
  %wide.load1228 = load <8 x float>, ptr %i.eo, align 4, !tbaa !24
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1224 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  store <8 x float> %wide.load1225, ptr %i.ep, align 4, !tbaa !24
  store <8 x float> %wide.load1226, ptr %i.eq, align 4, !tbaa !24
  store <8 x float> %wide.load1227, ptr %i.er, align 4, !tbaa !24
  store <8 x float> %wide.load1228, ptr %i.es, align 4, !tbaa !24
  %index.next1229 = add nuw i64 %index1224, 32    ; 2 uses
  %i.et = icmp eq i64 %index.next1229, %n.vec1222
  br i1 %i.et, label %middle.block1230, label %vector.body1223, !llvm.loop !49

middle.block1230:                                 ; preds = %vector.body1223
  br i1 %cmp.n1231, label %iter.check1202, label %vec.epilog.iter.check1235

vec.epilog.iter.check1235:                        ; preds = %middle.block1230
  br i1 %min.epilog.iters.check1236, label %.lr.ph.i.preheader, label %vec.epilog.ph1237, !prof !28

vec.epilog.ph1237:                                ; preds = %vector.main.loop.iter.check1219, %vec.epilog.iter.check1235
  %vec.epilog.resume.val1232 = phi i64 [ %n.vec1222, %vec.epilog.iter.check1235 ], [ 0, %vector.main.loop.iter.check1219 ]
  br label %vec.epilog.vector.body1239

vec.epilog.vector.body1239:                       ; preds = %vec.epilog.vector.body1239, %vec.epilog.ph1237
  %index1240 = phi i64 [ %vec.epilog.resume.val1232, %vec.epilog.ph1237 ], [ %index.next1242, %vec.epilog.vector.body1239 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index1240
  %wide.load1241 = load <4 x float>, ptr %i.eu, align 4, !tbaa !24
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1240
  store <4 x float> %wide.load1241, ptr %i.ev, align 4, !tbaa !24
  %index.next1242 = add nuw i64 %index1240, 4     ; 2 uses
  %i.ew = icmp eq i64 %index.next1242, %n.vec1238
  br i1 %i.ew, label %vec.epilog.middle.block1243, label %vec.epilog.vector.body1239, !llvm.loop !50

vec.epilog.middle.block1243:                      ; preds = %vec.epilog.vector.body1239
  br i1 %cmp.n1244, label %iter.check1202, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check1233, %vec.epilog.iter.check1235, %vec.epilog.middle.block1243
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check1233 ], [ %n.vec1222, %vec.epilog.iter.check1235 ], [ %n.vec1238, %vec.epilog.middle.block1243 ] ; 4 uses
  %i.ex = sub nsw i64 %i.az, %indvars.iv.i.ph
  %xtraiter1356 = and i64 %i.ex, 7                ; 2 uses
  %lcmp.mod1357.not = icmp eq i64 %xtraiter1356, 0
  br i1 %lcmp.mod1357.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter1358 = phi i64 [ %prol.iter1358.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i.prol
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !24
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store float %i.ez, ptr %i.fa, align 4, !tbaa !24
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter1358.next = add i64 %prol.iter1358, 1 ; 2 uses
  %prol.iter1358.cmp.not = icmp eq i64 %prol.iter1358.next, %xtraiter1356
  br i1 %prol.iter1358.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !51

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fb = sub nsw i64 %indvars.iv.i.ph, %i.az
  %i.fc = icmp ugt i64 %i.fb, -8
  br i1 %i.fc, label %iter.check1202, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !24
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  store float %i.fe, ptr %i.ff, align 4, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !24
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store float %i.fh, ptr %i.fi, align 4, !tbaa !24
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.1
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !24
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1
  store float %i.fk, ptr %i.fl, align 4, !tbaa !24
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.2
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !24
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.2
  store float %i.fn, ptr %i.fo, align 4, !tbaa !24
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.3
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !24
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.3
  store float %i.fq, ptr %i.fr, align 4, !tbaa !24
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !24
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.4
  store float %i.ft, ptr %i.fu, align 4, !tbaa !24
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.5
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !24
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.5
  store float %i.fw, ptr %i.fx, align 4, !tbaa !24
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.6
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !24
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.6
  store float %i.fz, ptr %i.ga, align 4, !tbaa !24
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.az
  br i1 %exitcond.not.i.7, label %iter.check1202, label %.lr.ph.i, !llvm.loop !52

iter.check1202:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block1243, %middle.block1230
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef nonnull %i.ah, ptr noundef %i.ei, i32 noundef 1)
  %i.gb = sub i64 %i.ej, %i.eh
  %diff.check1185 = icmp ugt i64 %i.gb, -128
  %or.cond1334 = select i1 %min.iters.check1187, i1 true, i1 %diff.check1185
  br i1 %or.cond1334, label %.lr.ph182.i.preheader, label %vector.main.loop.iter.check1188

vector.main.loop.iter.check1188:                  ; preds = %iter.check1202
  br i1 %min.iters.check1189, label %vec.epilog.ph1206, label %vector.body1192

vector.body1192:                                  ; preds = %vector.main.loop.iter.check1188, %vector.body1192
  %index1193 = phi i64 [ %index.next1198, %vector.body1192 ], [ 0, %vector.main.loop.iter.check1188 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index1193 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 96
  %wide.load1194 = load <8 x float>, ptr %i.gc, align 4, !tbaa !24
  %wide.load1195 = load <8 x float>, ptr %i.gd, align 4, !tbaa !24
  %wide.load1196 = load <8 x float>, ptr %i.ge, align 4, !tbaa !24
  %wide.load1197 = load <8 x float>, ptr %i.gf, align 4, !tbaa !24
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index1193 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
end_hunk_0
begin_hunk_1_@_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi:bb.a
  %bound11148 = icmp ult ptr %i.ei, %scevgep1142
  %found.conflict1149 = and i1 %bound01147, %bound11148
  %conflict.rdx = or i1 %found.conflict1146, %found.conflict1149
  %bound01150 = icmp ult ptr %i.ag, %scevgep1143
  %bound11151 = icmp ult ptr %i.ei, %scevgep462
  %found.conflict1152 = and i1 %bound01150, %bound11151
  %conflict.rdx1153 = or i1 %conflict.rdx, %found.conflict1152
  br i1 %conflict.rdx1153, label %.lr.ph186.i.preheader, label %vector.main.loop.iter.check1156

vector.main.loop.iter.check1156:                  ; preds = %vector.memcheck1141
  br i1 %min.iters.check1157, label %vec.epilog.ph1174, label %vector.body1160

vector.body1160:                                  ; preds = %vector.main.loop.iter.check1156, %vector.body1160
  %index1161 = phi i64 [ %index.next1166, %vector.body1160 ], [ 0, %vector.main.loop.iter.check1156 ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index1161 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %wide.load1162 = load <8 x float>, ptr %i.hs, align 4, !tbaa !24, !alias.scope !225
  %wide.load1163 = load <8 x float>, ptr %i.ht, align 4, !tbaa !24, !alias.scope !225
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index1161 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32 ; 2 uses
  %wide.load1164 = load <8 x float>, ptr %i.hu, align 4, !tbaa !24, !alias.scope !226, !noalias !227
  %wide.load1165 = load <8 x float>, ptr %i.hv, align 4, !tbaa !24, !alias.scope !226, !noalias !227
  %i.hw = fadd <8 x float> %wide.load1162, %wide.load1164 ; 2 uses
  %i.hx = fadd <8 x float> %wide.load1163, %wide.load1165 ; 2 uses
  store <8 x float> %i.hw, ptr %i.hu, align 4, !tbaa !24, !alias.scope !226, !noalias !227
  store <8 x float> %i.hx, ptr %i.hv, align 4, !tbaa !24, !alias.scope !226, !noalias !227
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index1161 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  store <8 x float> %i.hw, ptr %i.hy, align 4, !tbaa !24, !alias.scope !228, !noalias !225
  store <8 x float> %i.hx, ptr %i.hz, align 4, !tbaa !24, !alias.scope !228, !noalias !225
  %index.next1166 = add nuw i64 %index1161, 16    ; 2 uses
  %i.ia = icmp eq i64 %index.next1166, %n.vec1159
  br i1 %i.ia, label %middle.block1167, label %vector.body1160, !llvm.loop !61

middle.block1167:                                 ; preds = %vector.body1160
  br i1 %cmp.n1168, label %.loopexit171.thread.i, label %vec.epilog.iter.check1172

vec.epilog.iter.check1172:                        ; preds = %middle.block1167
  br i1 %min.epilog.iters.check1173, label %.lr.ph186.i.preheader, label %vec.epilog.ph1174, !prof !229

vec.epilog.ph1174:                                ; preds = %vector.main.loop.iter.check1156, %vec.epilog.iter.check1172
  %vec.epilog.resume.val1169 = phi i64 [ %n.vec1159, %vec.epilog.iter.check1172 ], [ 0, %vector.main.loop.iter.check1156 ]
  br label %vec.epilog.vector.body1176

vec.epilog.vector.body1176:                       ; preds = %vec.epilog.vector.body1176, %vec.epilog.ph1174
  %index1177 = phi i64 [ %vec.epilog.resume.val1169, %vec.epilog.ph1174 ], [ %index.next1180, %vec.epilog.vector.body1176 ] ; 4 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index1177
  %wide.load1178 = load <4 x float>, ptr %i.ib, align 4, !tbaa !24, !alias.scope !225
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index1177 ; 2 uses
  %wide.load1179 = load <4 x float>, ptr %i.ic, align 4, !tbaa !24, !alias.scope !226, !noalias !227
  %i.id = fadd <4 x float> %wide.load1178, %wide.load1179 ; 2 uses
  store <4 x float> %i.id, ptr %i.ic, align 4, !tbaa !24, !alias.scope !226, !noalias !227
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index1177
  store <4 x float> %i.id, ptr %i.ie, align 4, !tbaa !24, !alias.scope !228, !noalias !225
  %index.next1180 = add nuw i64 %index1177, 4     ; 2 uses
  %i.if = icmp eq i64 %index.next1180, %n.vec1175
  br i1 %i.if, label %vec.epilog.middle.block1181, label %vec.epilog.vector.body1176, !llvm.loop !62

vec.epilog.middle.block1181:                      ; preds = %vec.epilog.vector.body1176
  br i1 %cmp.n1182, label %.loopexit171.thread.i, label %.lr.ph186.i.preheader

.lr.ph186.i.preheader:                            ; preds = %iter.check1170, %vector.memcheck1141, %vec.epilog.iter.check1172, %vec.epilog.middle.block1181
  %indvars.iv227.i.ph = phi i64 [ 0, %iter.check1170 ], [ 0, %vector.memcheck1141 ], [ %n.vec1159, %vec.epilog.iter.check1172 ], [ %n.vec1175, %vec.epilog.middle.block1181 ] ; 3 uses
  br i1 %lcmp.mod1363.not, label %.lr.ph186.i.prol.loopexit, label %.lr.ph186.i.prol

.lr.ph186.i.prol:                                 ; preds = %.lr.ph186.i.preheader, %.lr.ph186.i.prol
  %indvars.iv227.i.prol = phi i64 [ %indvars.iv.next228.i.prol, %.lr.ph186.i.prol ], [ %indvars.iv227.i.ph, %.lr.ph186.i.preheader ] ; 4 uses
  %prol.iter1364 = phi i64 [ %prol.iter1364.next, %.lr.ph186.i.prol ], [ 0, %.lr.ph186.i.preheader ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv227.i.prol
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !24
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv227.i.prol ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !24
  %i.ik = fadd float %i.ih, %i.ij                 ; 2 uses
  store float %i.ik, ptr %i.ii, align 4, !tbaa !24
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv227.i.prol
  store float %i.ik, ptr %i.il, align 4, !tbaa !24
  %indvars.iv.next228.i.prol = add nuw nsw i64 %indvars.iv227.i.prol, 1 ; 2 uses
  %prol.iter1364.next = add i64 %prol.iter1364, 1 ; 2 uses
  %prol.iter1364.cmp.not = icmp eq i64 %prol.iter1364.next, %xtraiter1362
  br i1 %prol.iter1364.cmp.not, label %.lr.ph186.i.prol.loopexit, label %.lr.ph186.i.prol, !llvm.loop !63

.lr.ph186.i.prol.loopexit:                        ; preds = %.lr.ph186.i.prol, %.lr.ph186.i.preheader
  %indvars.iv227.i.unr = phi i64 [ %indvars.iv227.i.ph, %.lr.ph186.i.preheader ], [ %indvars.iv.next228.i.prol, %.lr.ph186.i.prol ]
  %i.im = sub nsw i64 %indvars.iv227.i.ph, %i.az
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %.loopexit171.thread.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %.lr.ph186.i.prol.loopexit, %.lr.ph186.i
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i.3, %.lr.ph186.i ], [ %indvars.iv227.i.unr, %.lr.ph186.i.prol.loopexit ] ; 7 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv227.i
  %i.ip = load float, ptr %i.io, align 4, !tbaa !24
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv227.i ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !24
  %i.is = fadd float %i.ip, %i.ir                 ; 2 uses
  store float %i.is, ptr %i.iq, align 4, !tbaa !24
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv227.i
  store float %i.is, ptr %i.it, align 4, !tbaa !24
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next228.i
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !24
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next228.i ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !24
  %i.iy = fadd float %i.iv, %i.ix                 ; 2 uses
  store float %i.iy, ptr %i.iw, align 4, !tbaa !24
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next228.i
  store float %i.iy, ptr %i.iz, align 4, !tbaa !24
  %indvars.iv.next228.i.1 = add nuw nsw i64 %indvars.iv227.i, 2 ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next228.i.1
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !24
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next228.i.1 ; 2 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !24
  %i.je = fadd float %i.jb, %i.jd                 ; 2 uses
  store float %i.je, ptr %i.jc, align 4, !tbaa !24
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next228.i.1
  store float %i.je, ptr %i.jf, align 4, !tbaa !24
  %indvars.iv.next228.i.2 = add nuw nsw i64 %indvars.iv227.i, 3 ; 3 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next228.i.2
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !24
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next228.i.2 ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !24
  %i.jk = fadd float %i.jh, %i.jj                 ; 2 uses
  store float %i.jk, ptr %i.ji, align 4, !tbaa !24
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next228.i.2
  store float %i.jk, ptr %i.jl, align 4, !tbaa !24
  %indvars.iv.next228.i.3 = add nuw nsw i64 %indvars.iv227.i, 4 ; 2 uses
  %exitcond231.not.i.3 = icmp eq i64 %indvars.iv.next228.i.3, %i.az
  br i1 %exitcond231.not.i.3, label %.loopexit171.thread.i, label %.lr.ph186.i, !llvm.loop !64

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.aw, label %bb.ac, label %bb.bb

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ar, label %.lr.ph.i.i.preheader, label %._crit_edge201.i

.lr.ph.i.i.preheader:                             ; preds = %bb.ac
  br i1 %min.iters.check883, label %.lr.ph.i.i.preheader1347, label %vector.body886

vector.body886:                                   ; preds = %.lr.ph.i.i.preheader, %vector.body886
  %index887 = phi i64 [ %index.next892, %vector.body886 ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.jm = mul nuw nsw i64 %index887, 12
  %i.jn = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.jm ; 2 uses
  %wide.vec888 = load <24 x float>, ptr %i.jn, align 4, !tbaa !24 ; 3 uses
  %strided.vec889 = shufflevector <24 x float> %wide.vec888, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 3 uses
  %strided.vec890 = shufflevector <24 x float> %wide.vec888, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 3 uses
  %strided.vec891 = shufflevector <24 x float> %wide.vec888, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 3 uses
  %i.jo = fmul <8 x float> %strided.vec890, %strided.vec890
  %i.jp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec889, <8 x float> %strided.vec889, <8 x float> %i.jo)
  %i.jq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec891, <8 x float> %strided.vec891, <8 x float> %i.jp)
  %i.jr = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.jq)
  %i.js = fdiv <8 x float> splat (float 1.000000e+00), %i.jr ; 3 uses
  %i.jt = fmul <8 x float> %strided.vec889, %i.js
  %i.ju = fmul <8 x float> %strided.vec890, %i.js
  %i.jv = fmul <8 x float> %strided.vec891, %i.js
  %i.jw = shufflevector <8 x float> %i.jt, <8 x float> %i.ju, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jx = shufflevector <8 x float> %i.jv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.jw, <16 x float> %i.jx, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.jn, align 4, !tbaa !24
  %index.next892 = add nuw i64 %index887, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next892, %n.vec885
  br i1 %i.jy, label %middle.block893, label %vector.body886, !llvm.loop !65

middle.block893:                                  ; preds = %vector.body886
  br i1 %cmp.n894, label %iter.check864, label %.lr.ph.i.i.preheader1347

.lr.ph.i.i.preheader1347:                         ; preds = %.lr.ph.i.i.preheader, %middle.block893
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec885, %middle.block893 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader1347, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader1347 ] ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv.i.i, 12
  %i.jz = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i.i ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !24 ; 3 uses
  %i.kc = load <2 x float>, ptr %i.jz, align 4, !tbaa !24 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.kc, %i.kc
  %i.kd = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ke = extractelement <2 x float> %i.kc, i64 0 ; 2 uses
  %i.kf = call float @llvm.fmuladd.f32(float %i.ke, float %i.ke, float %i.kd)
  %i.kg = call noundef float @llvm.fmuladd.f32(float %i.kb, float %i.kb, float %i.kf)
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.kg)
  %i.kh = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ki = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x float> %i.kc, %i.kj
  store <2 x float> %i.kk, ptr %i.jz, align 4, !tbaa !24
  %i.kl = fmul float %i.kb, %i.kh
  store float %i.kl, ptr %i.ka, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.az
  br i1 %exitcond.not.i.i, label %iter.check864, label %.lr.ph.i.i, !llvm.loop !66

iter.check864:                                    ; preds = %.lr.ph.i.i, %middle.block893
  br i1 %min.iters.check846, label %.lr.ph198.i.preheader, label %vector.main.loop.iter.check847

vector.main.loop.iter.check847:                   ; preds = %iter.check864
  br i1 %min.iters.check848, label %vec.epilog.ph868, label %vector.body853

vector.body853:                                   ; preds = %vector.main.loop.iter.check847, %vector.body853
  %index854 = phi i64 [ %index.next859, %vector.body853 ], [ 0, %vector.main.loop.iter.check847 ] ; 2 uses
  %vec.ind855 = phi <8 x i32> [ %vec.ind.next860, %vector.body853 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.main.loop.iter.check847 ] ; 5 uses
  %step.add856 = add <8 x i32> %vec.ind855, splat (i32 8)
  %step.add.2857 = add <8 x i32> %vec.ind855, splat (i32 16)
  %step.add.3858 = add <8 x i32> %vec.ind855, splat (i32 24)
  %27 = sub <8 x i32> %broadcast.splat852, %vec.ind855
  %28 = sub <8 x i32> %broadcast.splat852, %step.add856
  %29 = sub <8 x i32> %broadcast.splat852, %step.add.2857
  %30 = sub <8 x i32> %broadcast.splat852, %step.add.3858
  %i.km = uitofp nneg <8 x i32> %27 to <8 x double>
  %i.kn = uitofp nneg <8 x i32> %28 to <8 x double>
  %i.ko = uitofp nneg <8 x i32> %29 to <8 x double>
  %i.kp = uitofp nneg <8 x i32> %30 to <8 x double>
  %i.kq = fmul nnan <8 x double> %i.km, splat (double -5.000000e-01)
  %i.kr = fmul nnan <8 x double> %i.kn, splat (double -5.000000e-01)
  %i.ks = fmul nnan <8 x double> %i.ko, splat (double -5.000000e-01)
  %i.kt = fmul nnan <8 x double> %i.kp, splat (double -5.000000e-01)
  %i.ku = fptrunc <8 x double> %i.kq to <8 x float>
  %i.kv = fptrunc <8 x double> %i.kr to <8 x float>
  %i.kw = fptrunc <8 x double> %i.ks to <8 x float>
  %i.kx = fptrunc <8 x double> %i.kt to <8 x float>
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index854 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 96
  store <8 x float> %i.ku, ptr %i.ky, align 4, !tbaa !24
  store <8 x float> %i.kv, ptr %i.kz, align 4, !tbaa !24
  store <8 x float> %i.kw, ptr %i.la, align 4, !tbaa !24
  store <8 x float> %i.kx, ptr %i.lb, align 4, !tbaa !24
  %index.next859 = add nuw i64 %index854, 32      ; 2 uses
  %vec.ind.next860 = add <8 x i32> %vec.ind855, splat (i32 32)
  %i.lc = icmp eq i64 %index.next859, %n.vec850
  br i1 %i.lc, label %middle.block861, label %vector.body853, !llvm.loop !67

middle.block861:                                  ; preds = %vector.body853
  br i1 %cmp.n862, label %iter.check833, label %vec.epilog.iter.check866

vec.epilog.iter.check866:                         ; preds = %middle.block861
  br i1 %min.epilog.iters.check867, label %.lr.ph198.i.preheader, label %vec.epilog.ph868, !prof !28

vec.epilog.ph868:                                 ; preds = %vector.main.loop.iter.check847, %vec.epilog.iter.check866
  %vec.epilog.resume.val863 = phi i64 [ %n.vec850, %vec.epilog.iter.check866 ], [ 0, %vector.main.loop.iter.check847 ] ; 2 uses
  %i.ld = trunc nuw nsw i64 %vec.epilog.resume.val863 to i32
  %broadcast.splatinsert872 = insertelement <4 x i32> poison, i32 %i.ld, i64 0
  %broadcast.splat873 = shufflevector <4 x i32> %broadcast.splatinsert872, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction874 = or disjoint <4 x i32> %broadcast.splat873, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body875

vec.epilog.vector.body875:                        ; preds = %vec.epilog.vector.body875, %vec.epilog.ph868
  %index876 = phi i64 [ %vec.epilog.resume.val863, %vec.epilog.ph868 ], [ %index.next878, %vec.epilog.vector.body875 ] ; 2 uses
  %vec.ind877 = phi <4 x i32> [ %induction874, %vec.epilog.ph868 ], [ %vec.ind.next879, %vec.epilog.vector.body875 ] ; 2 uses
  %i.le = sub <4 x i32> %broadcast.splat871, %vec.ind877
  %i.lf = uitofp nneg <4 x i32> %i.le to <4 x double>
  %i.lg = fmul nnan <4 x double> %i.lf, splat (double -5.000000e-01)
  %i.lh = fptrunc <4 x double> %i.lg to <4 x float>
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index876
  store <4 x float> %i.lh, ptr %i.li, align 4, !tbaa !24
  %index.next878 = add nuw i64 %index876, 4       ; 2 uses
  %vec.ind.next879 = add <4 x i32> %vec.ind877, splat (i32 4)
  %i.lj = icmp eq i64 %index.next878, %n.vec869
  br i1 %i.lj, label %vec.epilog.middle.block880, label %vec.epilog.vector.body875, !llvm.loop !68

vec.epilog.middle.block880:                       ; preds = %vec.epilog.vector.body875
  br i1 %cmp.n881, label %iter.check833, label %.lr.ph198.i.preheader

.lr.ph198.i.preheader:                            ; preds = %iter.check864, %vec.epilog.iter.check866, %vec.epilog.middle.block880
  %indvars.iv249.i.ph = phi i64 [ 0, %iter.check864 ], [ %n.vec850, %vec.epilog.iter.check866 ], [ %n.vec869, %vec.epilog.middle.block880 ]
  br label %.lr.ph198.i

.lr.ph198.i:                                      ; preds = %.lr.ph198.i.preheader, %.lr.ph198.i
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %.lr.ph198.i ], [ %indvars.iv249.i.ph, %.lr.ph198.i.preheader ] ; 3 uses
  %i.lk = trunc i64 %indvars.iv249.i to i32
  %i.ll = sub i32 %3, %i.lk
  %i.lm = uitofp nneg i32 %i.ll to double
  %i.ln = fmul nnan double %i.lm, -5.000000e-01
  %i.lo = fptrunc double %i.ln to float
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv249.i
  store float %i.lo, ptr %i.lp, align 4, !tbaa !24
  %indvars.iv.next250.i = add nuw nsw i64 %indvars.iv249.i, 1 ; 2 uses
  %exitcond253.not.i = icmp eq i64 %indvars.iv.next250.i, %i.az
  br i1 %exitcond253.not.i, label %iter.check833, label %.lr.ph198.i, !llvm.loop !69

iter.check833:                                    ; preds = %.lr.ph198.i, %vec.epilog.middle.block880, %middle.block861
  br i1 %min.iters.check815, label %.lr.ph200.i.preheader, label %vector.memcheck810

vector.memcheck810:                               ; preds = %iter.check833
  %scevgep811 = getelementptr i8, ptr %i.eg, i64 %i.bf
  %bound0812 = icmp ult ptr %i.ah, %scevgep811
  %bound1813 = icmp ult ptr %i.eg, %scevgep501
  %found.conflict814 = and i1 %bound0812, %bound1813
  br i1 %found.conflict814, label %.lr.ph200.i.preheader, label %vector.main.loop.iter.check816

vector.main.loop.iter.check816:                   ; preds = %vector.memcheck810
  br i1 %min.iters.check817, label %vec.epilog.ph837, label %vector.body820

vector.body820:                                   ; preds = %vector.main.loop.iter.check816, %vector.body820
  %index821 = phi i64 [ %index.next830, %vector.body820 ], [ 0, %vector.main.loop.iter.check816 ] ; 6 uses
  %i.lq = mul nuw nsw i64 %index821, 12
  %i.lr = mul nuw i64 %index821, 12
  %i.ls = mul nuw i64 %index821, 12
  %i.lt = mul nuw i64 %index821, 12
  %i.lu = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.lq
  %i.lv = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.lr
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 96
  %i.lx = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ls
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 192
  %i.lz = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.lt
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 288
  %wide.vec822 = load <24 x float>, ptr %i.lu, align 4, !tbaa !24, !alias.scope !230
  %strided.vec823 = shufflevector <24 x float> %wide.vec822, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %wide.vec824 = load <24 x float>, ptr %i.lw, align 4, !tbaa !24, !alias.scope !230
  %strided.vec825 = shufflevector <24 x float> %wide.vec824, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %wide.vec826 = load <24 x float>, ptr %i.ly, align 4, !tbaa !24, !alias.scope !230
  %strided.vec827 = shufflevector <24 x float> %wide.vec826, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %wide.vec828 = load <24 x float>, ptr %i.ma, align 4, !tbaa !24, !alias.scope !230
  %strided.vec829 = shufflevector <24 x float> %wide.vec828, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %i.mb = fmul <8 x float> %strided.vec823, %strided.vec823
  %i.mc = fmul <8 x float> %strided.vec825, %strided.vec825
  %i.md = fmul <8 x float> %strided.vec827, %strided.vec827
  %i.me = fmul <8 x float> %strided.vec829, %strided.vec829
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index821 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 96
  store <8 x float> %i.mb, ptr %i.mf, align 4, !tbaa !24, !alias.scope !231, !noalias !230
  store <8 x float> %i.mc, ptr %i.mg, align 4, !tbaa !24, !alias.scope !231, !noalias !230
  store <8 x float> %i.md, ptr %i.mh, align 4, !tbaa !24, !alias.scope !231, !noalias !230
  store <8 x float> %i.me, ptr %i.mi, align 4, !tbaa !24, !alias.scope !231, !noalias !230
  %index.next830 = add nuw i64 %index821, 32      ; 2 uses
  %i.mj = icmp eq i64 %index.next830, %n.vec819
  br i1 %i.mj, label %vec.epilog.iter.check835, label %vector.body820, !llvm.loop !73

vec.epilog.iter.check835:                         ; preds = %vector.body820
  br i1 %min.epilog.iters.check836, label %.lr.ph200.i.preheader, label %vec.epilog.ph837, !prof !30

vec.epilog.ph837:                                 ; preds = %vector.main.loop.iter.check816, %vec.epilog.iter.check835
  %vec.epilog.resume.val832 = phi i64 [ %n.vec819, %vec.epilog.iter.check835 ], [ 0, %vector.main.loop.iter.check816 ]
  br label %vec.epilog.vector.body839

vec.epilog.vector.body839:                        ; preds = %vec.epilog.vector.body839, %vec.epilog.ph837
  %index840 = phi i64 [ %vec.epilog.resume.val832, %vec.epilog.ph837 ], [ %index.next843, %vec.epilog.vector.body839 ] ; 3 uses
  %i.mk = mul nuw nsw i64 %index840, 12
  %i.ml = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.mk
  %wide.vec841 = load <24 x float>, ptr %i.ml, align 4, !tbaa !24, !alias.scope !230
  %strided.vec842 = shufflevector <24 x float> %wide.vec841, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %i.mm = fmul <8 x float> %strided.vec842, %strided.vec842
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index840
  store <8 x float> %i.mm, ptr %i.mn, align 4, !tbaa !24, !alias.scope !231, !noalias !230
  %index.next843 = add nuw i64 %index840, 8       ; 2 uses
  %i.mo = icmp eq i64 %index.next843, %n.vec838
  br i1 %i.mo, label %.lr.ph200.i.preheader, label %vec.epilog.vector.body839, !llvm.loop !74

.lr.ph200.i.preheader:                            ; preds = %vec.epilog.vector.body839, %iter.check833, %vector.memcheck810, %vec.epilog.iter.check835
  %indvars.iv254.i.ph = phi i64 [ 0, %iter.check833 ], [ 0, %vector.memcheck810 ], [ %n.vec819, %vec.epilog.iter.check835 ], [ %n.vec838, %vec.epilog.vector.body839 ] ; 4 uses
  %i.mp = sub nsw i64 %i.az, %indvars.iv254.i.ph
  %xtraiter1383 = and i64 %i.mp, 7                ; 2 uses
  %lcmp.mod1384.not = icmp eq i64 %xtraiter1383, 0
  br i1 %lcmp.mod1384.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol

.lr.ph200.i.prol:                                 ; preds = %.lr.ph200.i.preheader, %.lr.ph200.i.prol
  %indvars.iv254.i.prol = phi i64 [ %indvars.iv.next255.i.prol, %.lr.ph200.i.prol ], [ %indvars.iv254.i.ph, %.lr.ph200.i.preheader ] ; 3 uses
  %prol.iter1385 = phi i64 [ %prol.iter1385.next, %.lr.ph200.i.prol ], [ 0, %.lr.ph200.i.preheader ]
  %.idx289.i.prol = mul nuw nsw i64 %indvars.iv254.i.prol, 12
  %i.mq = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx289.i.prol
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !24 ; 2 uses
  %i.ms = fmul float %i.mr, %i.mr
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv254.i.prol
  store float %i.ms, ptr %i.mt, align 4, !tbaa !24
  %indvars.iv.next255.i.prol = add nuw nsw i64 %indvars.iv254.i.prol, 1 ; 2 uses
  %prol.iter1385.next = add i64 %prol.iter1385, 1 ; 2 uses
  %prol.iter1385.cmp.not = icmp eq i64 %prol.iter1385.next, %xtraiter1383
  br i1 %prol.iter1385.cmp.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol, !llvm.loop !75

.lr.ph200.i.prol.loopexit:                        ; preds = %.lr.ph200.i.prol, %.lr.ph200.i.preheader
  %indvars.iv254.i.unr = phi i64 [ %indvars.iv254.i.ph, %.lr.ph200.i.preheader ], [ %indvars.iv.next255.i.prol, %.lr.ph200.i.prol ]
  %i.mu = sub nsw i64 %indvars.iv254.i.ph, %i.az
  %i.mv = icmp ugt i64 %i.mu, -8
  br i1 %i.mv, label %._crit_edge201.i, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i
  %indvars.iv254.i = phi i64 [ %indvars.iv.next255.i.7, %.lr.ph200.i ], [ %indvars.iv254.i.unr, %.lr.ph200.i.prol.loopexit ] ; 10 uses
  %.idx289.i = mul nuw nsw i64 %indvars.iv254.i, 12
  %i.mw = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx289.i
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !24 ; 2 uses
  %i.my = fmul float %i.mx, %i.mx
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv254.i
  store float %i.my, ptr %i.mz, align 4, !tbaa !24
  %indvars.iv.next255.i = add nuw nsw i64 %indvars.iv254.i, 1 ; 2 uses
  %.idx289.i.1 = mul nuw nsw i64 %indvars.iv.next255.i, 12
  %i.na = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx289.i.1
  %i.nb = load float, ptr %i.na, align 4, !tbaa !24 ; 2 uses
  %i.nc = fmul float %i.nb, %i.nb
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next255.i
  store float %i.nc, ptr %i.nd, align 4, !tbaa !24
  %indvars.iv.next255.i.1 = add nuw nsw i64 %indvars.iv254.i, 2 ; 2 uses
  %.idx289.i.2 = mul nuw nsw i64 %indvars.iv.next255.i.1, 12
  %i.ne = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx289.i.2
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !24 ; 2 uses
  %i.ng = fmul float %i.nf, %i.nf
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next255.i.1
  store float %i.ng, ptr %i.nh, align 4, !tbaa !24
  %indvars.iv.next255.i.2 = add nuw nsw i64 %indvars.iv254.i, 3 ; 2 uses
  %.idx289.i.3 = mul nuw nsw i64 %indvars.iv.next255.i.2, 12
  %i.ni = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx289.i.3
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !24 ; 2 uses
  %i.nk = fmul float %i.nj, %i.nj
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next255.i.2
  store float %i.nk, ptr %i.nl, align 4, !tbaa !24
  %indvars.iv.next255.i.3 = add nuw nsw i64 %indvars.iv254.i, 4 ; 2 uses
  %.idx289.i.4 = mul nuw nsw i64 %indvars.iv.next255.i.3, 12
  %i.nm = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx289.i.4
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !24 ; 2 uses
  %i.no = fmul float %i.nn, %i.nn
end_hunk_1
begin_hunk_2_@_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi:bb.a
  %scevgep897 = getelementptr i8, ptr %i.ei, i64 %i.bd
  %bound0898 = icmp ult ptr %i.ag, %scevgep897
  %bound1899 = icmp ult ptr %i.ei, %scevgep462
  %found.conflict900 = and i1 %bound0898, %bound1899
  br i1 %found.conflict900, label %.lr.ph194.2.i.preheader, label %vector.main.loop.iter.check903

vector.main.loop.iter.check903:                   ; preds = %vector.memcheck896
  br i1 %min.iters.check904, label %vec.epilog.ph925, label %vector.body907

vector.body907:                                   ; preds = %vector.main.loop.iter.check903, %vector.body907
  %index908 = phi i64 [ %index.next917, %vector.body907 ], [ 0, %vector.main.loop.iter.check903 ] ; 3 uses
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index908 ; 4 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 32
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdi, i64 64
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdi, i64 96
  %wide.load909 = load <8 x float>, ptr %i.bdi, align 4, !tbaa !24, !alias.scope !264
  %wide.load910 = load <8 x float>, ptr %i.bdj, align 4, !tbaa !24, !alias.scope !264
  %wide.load911 = load <8 x float>, ptr %i.bdk, align 4, !tbaa !24, !alias.scope !264
  %wide.load912 = load <8 x float>, ptr %i.bdl, align 4, !tbaa !24, !alias.scope !264
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index908 ; 5 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 32 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdm, i64 64 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdm, i64 96 ; 2 uses
  %wide.load913 = load <8 x float>, ptr %i.bdm, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  %wide.load914 = load <8 x float>, ptr %i.bdn, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  %wide.load915 = load <8 x float>, ptr %i.bdo, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  %wide.load916 = load <8 x float>, ptr %i.bdp, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  %i.bdq = fadd <8 x float> %wide.load909, %wide.load913
  %i.bdr = fadd <8 x float> %wide.load910, %wide.load914
  %i.bds = fadd <8 x float> %wide.load911, %wide.load915
  %i.bdt = fadd <8 x float> %wide.load912, %wide.load916
  store <8 x float> %i.bdq, ptr %i.bdm, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  store <8 x float> %i.bdr, ptr %i.bdn, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  store <8 x float> %i.bds, ptr %i.bdo, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  store <8 x float> %i.bdt, ptr %i.bdp, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  %index.next917 = add nuw i64 %index908, 32      ; 2 uses
  %i.bdu = icmp eq i64 %index.next917, %n.vec906
  br i1 %i.bdu, label %middle.block918, label %vector.body907, !llvm.loop !194

middle.block918:                                  ; preds = %vector.body907
  br i1 %cmp.n919, label %.loopexit171.thread.i, label %vec.epilog.iter.check923

vec.epilog.iter.check923:                         ; preds = %middle.block918
  br i1 %min.epilog.iters.check924, label %.lr.ph194.2.i.preheader, label %vec.epilog.ph925, !prof !28

vec.epilog.ph925:                                 ; preds = %vector.main.loop.iter.check903, %vec.epilog.iter.check923
  %vec.epilog.resume.val920 = phi i64 [ %n.vec906, %vec.epilog.iter.check923 ], [ 0, %vector.main.loop.iter.check903 ]
  br label %vec.epilog.vector.body927

vec.epilog.vector.body927:                        ; preds = %vec.epilog.vector.body927, %vec.epilog.ph925
  %index928 = phi i64 [ %vec.epilog.resume.val920, %vec.epilog.ph925 ], [ %index.next931, %vec.epilog.vector.body927 ] ; 3 uses
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index928
  %wide.load929 = load <4 x float>, ptr %i.bdv, align 4, !tbaa !24, !alias.scope !264
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index928 ; 2 uses
  %wide.load930 = load <4 x float>, ptr %i.bdw, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  %i.bdx = fadd <4 x float> %wide.load929, %wide.load930
  store <4 x float> %i.bdx, ptr %i.bdw, align 4, !tbaa !24, !alias.scope !265, !noalias !264
  %index.next931 = add nuw i64 %index928, 4       ; 2 uses
  %i.bdy = icmp eq i64 %index.next931, %n.vec926
  br i1 %i.bdy, label %vec.epilog.middle.block932, label %vec.epilog.vector.body927, !llvm.loop !195

vec.epilog.middle.block932:                       ; preds = %vec.epilog.vector.body927
  br i1 %cmp.n933, label %.loopexit171.thread.i, label %.lr.ph194.2.i.preheader

.lr.ph194.2.i.preheader:                          ; preds = %iter.check921, %vector.memcheck896, %vec.epilog.iter.check923, %vec.epilog.middle.block932
  %indvars.iv240.2.i.ph = phi i64 [ 0, %iter.check921 ], [ 0, %vector.memcheck896 ], [ %n.vec906, %vec.epilog.iter.check923 ], [ %n.vec926, %vec.epilog.middle.block932 ] ; 4 uses
  %i.bdz = sub nsw i64 %i.az, %indvars.iv240.2.i.ph
  %xtraiter1380 = and i64 %i.bdz, 7               ; 2 uses
  %lcmp.mod1381.not = icmp eq i64 %xtraiter1380, 0
  br i1 %lcmp.mod1381.not, label %.lr.ph194.2.i.prol.loopexit, label %.lr.ph194.2.i.prol

.lr.ph194.2.i.prol:                               ; preds = %.lr.ph194.2.i.preheader, %.lr.ph194.2.i.prol
  %indvars.iv240.2.i.prol = phi i64 [ %indvars.iv.next241.2.i.prol, %.lr.ph194.2.i.prol ], [ %indvars.iv240.2.i.ph, %.lr.ph194.2.i.preheader ] ; 3 uses
  %prol.iter1382 = phi i64 [ %prol.iter1382.next, %.lr.ph194.2.i.prol ], [ 0, %.lr.ph194.2.i.preheader ]
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv240.2.i.prol
  %i.beb = load float, ptr %i.bea, align 4, !tbaa !24
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv240.2.i.prol ; 2 uses
  %i.bed = load float, ptr %i.bec, align 4, !tbaa !24
  %i.bee = fadd float %i.beb, %i.bed
  store float %i.bee, ptr %i.bec, align 4, !tbaa !24
  %indvars.iv.next241.2.i.prol = add nuw nsw i64 %indvars.iv240.2.i.prol, 1 ; 2 uses
  %prol.iter1382.next = add i64 %prol.iter1382, 1 ; 2 uses
  %prol.iter1382.cmp.not = icmp eq i64 %prol.iter1382.next, %xtraiter1380
  br i1 %prol.iter1382.cmp.not, label %.lr.ph194.2.i.prol.loopexit, label %.lr.ph194.2.i.prol, !llvm.loop !196

.lr.ph194.2.i.prol.loopexit:                      ; preds = %.lr.ph194.2.i.prol, %.lr.ph194.2.i.preheader
  %indvars.iv240.2.i.unr = phi i64 [ %indvars.iv240.2.i.ph, %.lr.ph194.2.i.preheader ], [ %indvars.iv.next241.2.i.prol, %.lr.ph194.2.i.prol ]
  %i.bef = sub nsw i64 %indvars.iv240.2.i.ph, %i.az
  %i.beg = icmp ugt i64 %i.bef, -8
  br i1 %i.beg, label %.loopexit171.thread.i, label %.lr.ph194.2.i

.lr.ph194.2.i:                                    ; preds = %.lr.ph194.2.i.prol.loopexit, %.lr.ph194.2.i
  %indvars.iv240.2.i = phi i64 [ %indvars.iv.next241.2.i.7, %.lr.ph194.2.i ], [ %indvars.iv240.2.i.unr, %.lr.ph194.2.i.prol.loopexit ] ; 10 uses
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv240.2.i
  %i.bei = load float, ptr %i.beh, align 4, !tbaa !24
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv240.2.i ; 2 uses
  %i.bek = load float, ptr %i.bej, align 4, !tbaa !24
  %i.bel = fadd float %i.bei, %i.bek
  store float %i.bel, ptr %i.bej, align 4, !tbaa !24
  %indvars.iv.next241.2.i = add nuw nsw i64 %indvars.iv240.2.i, 1 ; 2 uses
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next241.2.i
  %i.ben = load float, ptr %i.bem, align 4, !tbaa !24
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next241.2.i ; 2 uses
  %i.bep = load float, ptr %i.beo, align 4, !tbaa !24
  %i.beq = fadd float %i.ben, %i.bep
  store float %i.beq, ptr %i.beo, align 4, !tbaa !24
  %indvars.iv.next241.2.i.1 = add nuw nsw i64 %indvars.iv240.2.i, 2 ; 2 uses
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next241.2.i.1
  %i.bes = load float, ptr %i.ber, align 4, !tbaa !24
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next241.2.i.1 ; 2 uses
  %i.beu = load float, ptr %i.bet, align 4, !tbaa !24
  %i.bev = fadd float %i.bes, %i.beu
  store float %i.bev, ptr %i.bet, align 4, !tbaa !24
  %indvars.iv.next241.2.i.2 = add nuw nsw i64 %indvars.iv240.2.i, 3 ; 2 uses
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next241.2.i.2
  %i.bex = load float, ptr %i.bew, align 4, !tbaa !24
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next241.2.i.2 ; 2 uses
  %i.bez = load float, ptr %i.bey, align 4, !tbaa !24
  %i.bfa = fadd float %i.bex, %i.bez
  store float %i.bfa, ptr %i.bey, align 4, !tbaa !24
  %indvars.iv.next241.2.i.3 = add nuw nsw i64 %indvars.iv240.2.i, 4 ; 2 uses
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next241.2.i.3
  %i.bfc = load float, ptr %i.bfb, align 4, !tbaa !24
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next241.2.i.3 ; 2 uses
  %i.bfe = load float, ptr %i.bfd, align 4, !tbaa !24
  %i.bff = fadd float %i.bfc, %i.bfe
  store float %i.bff, ptr %i.bfd, align 4, !tbaa !24
  %indvars.iv.next241.2.i.4 = add nuw nsw i64 %indvars.iv240.2.i, 5 ; 2 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next241.2.i.4
  %i.bfh = load float, ptr %i.bfg, align 4, !tbaa !24
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next241.2.i.4 ; 2 uses
  %i.bfj = load float, ptr %i.bfi, align 4, !tbaa !24
  %i.bfk = fadd float %i.bfh, %i.bfj
  store float %i.bfk, ptr %i.bfi, align 4, !tbaa !24
  %indvars.iv.next241.2.i.5 = add nuw nsw i64 %indvars.iv240.2.i, 6 ; 2 uses
  %i.bfl = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next241.2.i.5
  %i.bfm = load float, ptr %i.bfl, align 4, !tbaa !24
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next241.2.i.5 ; 2 uses
  %i.bfo = load float, ptr %i.bfn, align 4, !tbaa !24
  %i.bfp = fadd float %i.bfm, %i.bfo
  store float %i.bfp, ptr %i.bfn, align 4, !tbaa !24
  %indvars.iv.next241.2.i.6 = add nuw nsw i64 %indvars.iv240.2.i, 7 ; 2 uses
  %i.bfq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next241.2.i.6
  %i.bfr = load float, ptr %i.bfq, align 4, !tbaa !24
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next241.2.i.6 ; 2 uses
  %i.bft = load float, ptr %i.bfs, align 4, !tbaa !24
  %i.bfu = fadd float %i.bfr, %i.bft
  store float %i.bfu, ptr %i.bfs, align 4, !tbaa !24
  %indvars.iv.next241.2.i.7 = add nuw nsw i64 %indvars.iv240.2.i, 8 ; 2 uses
  %exitcond244.2.not.i.7 = icmp eq i64 %indvars.iv.next241.2.i.7, %i.az
  br i1 %exitcond244.2.not.i.7, label %.loopexit171.thread.i, label %.lr.ph194.2.i, !llvm.loop !197

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 529, ptr noundef nonnull @.str.31, i64 noundef %8) #17
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %common.resume

.loopexit171.thread.i:                            ; preds = %.lr.ph186.i.prol.loopexit, %.lr.ph186.i, %.lr.ph194.2.i.prol.loopexit, %.lr.ph194.2.i, %.lr.ph213.2.i.prol.loopexit, %.lr.ph213.2.i, %middle.block1167, %vec.epilog.middle.block1181, %middle.block918, %vec.epilog.middle.block932, %middle.block402, %vec.epilog.middle.block416
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull %i.ei)
  br label %iter.check

.loopexit171.thread293.sink.split.i:              ; preds = %._crit_edge191.2.i, %.preheader178.i
  %.sink296.i = phi i32 [ 0, %._crit_edge191.2.i ], [ 1, %.preheader178.i ]
  %.sink.i = phi i32 [ 0, %._crit_edge191.2.i ], [ 2, %.preheader178.i ]
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.ah, ptr noundef %i.ei, i32 noundef %.sink296.i)
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.ah, ptr noundef %i.ei, i32 noundef %.sink.i)
  br label %.loopexit171.thread293.i

.loopexit171.thread293.i:                         ; preds = %.loopexit171.thread293.sink.split.i, %bb.aw
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef %i.ei)
  br label %_ZL12do_four_coremiPfS_S_.exit

.loopexit171.i:                                   ; preds = %bb.z
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.eg, ptr noundef %i.ag, i32 noundef 0)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef %i.ei)
  br i1 %i.ar, label %iter.check, label %_ZL12do_four_coremiPfS_S_.exit

iter.check:                                       ; preds = %.loopexit171.i, %.loopexit171.thread.i
  %i.bfw = sub i64 %i.ak, %i.eh
  %diff.check = icmp ugt i64 %i.bfw, -128
  %or.cond1335 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1335, label %.lr.ph217.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check369, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.main.loop.iter.check ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 4 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 32
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfx, i64 64
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfx, i64 96
  %wide.load = load <8 x float>, ptr %i.bfx, align 4, !tbaa !24
  %wide.load370 = load <8 x float>, ptr %i.bfy, align 4, !tbaa !24
  %wide.load371 = load <8 x float>, ptr %i.bfz, align 4, !tbaa !24
  %wide.load372 = load <8 x float>, ptr %i.bga, align 4, !tbaa !24
  %i.bgb = sub <8 x i32> %broadcast.splat, %vec.ind
  %31 = sub <8 x i32> %broadcast.splat, %step.add
  %32 = sub <8 x i32> %broadcast.splat, %step.add.2
  %33 = sub <8 x i32> %broadcast.splat, %step.add.3
  %i.bgc = uitofp nneg <8 x i32> %i.bgb to <8 x float>
  %i.bgd = uitofp nneg <8 x i32> %31 to <8 x float>
  %i.bge = uitofp nneg <8 x i32> %32 to <8 x float>
  %i.bgf = uitofp nneg <8 x i32> %33 to <8 x float>
  %i.bgg = fdiv <8 x float> %wide.load, %i.bgc
  %i.bgh = fdiv <8 x float> %wide.load370, %i.bgd
  %i.bgi = fdiv <8 x float> %wide.load371, %i.bge
  %i.bgj = fdiv <8 x float> %wide.load372, %i.bgf
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index ; 4 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 32
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgk, i64 64
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgk, i64 96
  store <8 x float> %i.bgg, ptr %i.bgk, align 4, !tbaa !24
  store <8 x float> %i.bgh, ptr %i.bgl, align 4, !tbaa !24
  store <8 x float> %i.bgi, ptr %i.bgm, align 4, !tbaa !24
  store <8 x float> %i.bgj, ptr %i.bgn, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bgo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bgo, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL12do_four_coremiPfS_S_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph217.i.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bgp = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert376 = insertelement <4 x i32> poison, i32 %i.bgp, i64 0
  %broadcast.splat377 = shufflevector <4 x i32> %broadcast.splatinsert376, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat377, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index378 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next381, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind379 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.bgq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index378
  %wide.load380 = load <4 x float>, ptr %i.bgq, align 4, !tbaa !24
  %i.bgr = sub <4 x i32> %broadcast.splat375, %vec.ind379
  %i.bgs = uitofp nneg <4 x i32> %i.bgr to <4 x float>
  %i.bgt = fdiv <4 x float> %wide.load380, %i.bgs
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index378
  store <4 x float> %i.bgt, ptr %i.bgu, align 4, !tbaa !24
  %index.next381 = add nuw i64 %index378, 4       ; 2 uses
  %vec.ind.next382 = add <4 x i32> %vec.ind379, splat (i32 4)
  %i.bgv = icmp eq i64 %index.next381, %n.vec373
  br i1 %i.bgv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !199

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n383, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph217.i.preheader

.lr.ph217.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv282.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec373, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod1420.not, label %.lr.ph217.i.prol.loopexit, label %.lr.ph217.i.prol

.lr.ph217.i.prol:                                 ; preds = %.lr.ph217.i.preheader, %.lr.ph217.i.prol
  %indvars.iv282.i.prol = phi i64 [ %indvars.iv.next283.i.prol, %.lr.ph217.i.prol ], [ %indvars.iv282.i.ph, %.lr.ph217.i.preheader ] ; 4 uses
  %prol.iter1421 = phi i64 [ %prol.iter1421.next, %.lr.ph217.i.prol ], [ 0, %.lr.ph217.i.preheader ]
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv282.i.prol
  %i.bgx = load float, ptr %i.bgw, align 4, !tbaa !24
  %i.bgy = trunc i64 %indvars.iv282.i.prol to i32
  %i.bgz = sub i32 %3, %i.bgy
  %i.bha = uitofp nneg i32 %i.bgz to float
  %i.bhb = fdiv float %i.bgx, %i.bha
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv282.i.prol
  store float %i.bhb, ptr %i.bhc, align 4, !tbaa !24
  %indvars.iv.next283.i.prol = add nuw nsw i64 %indvars.iv282.i.prol, 1 ; 2 uses
  %prol.iter1421.next = add i64 %prol.iter1421, 1 ; 2 uses
  %prol.iter1421.cmp.not = icmp eq i64 %prol.iter1421.next, %xtraiter1419
  br i1 %prol.iter1421.cmp.not, label %.lr.ph217.i.prol.loopexit, label %.lr.ph217.i.prol, !llvm.loop !200

.lr.ph217.i.prol.loopexit:                        ; preds = %.lr.ph217.i.prol, %.lr.ph217.i.preheader
  %indvars.iv282.i.unr = phi i64 [ %indvars.iv282.i.ph, %.lr.ph217.i.preheader ], [ %indvars.iv.next283.i.prol, %.lr.ph217.i.prol ]
  %i.bhd = sub nsw i64 %indvars.iv282.i.ph, %i.az
  %i.bhe = icmp ugt i64 %i.bhd, -4
  br i1 %i.bhe, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph217.i

.lr.ph217.i:                                      ; preds = %.lr.ph217.i.prol.loopexit, %.lr.ph217.i
  %indvars.iv282.i = phi i64 [ %indvars.iv.next283.i.3, %.lr.ph217.i ], [ %indvars.iv282.i.unr, %.lr.ph217.i.prol.loopexit ] ; 7 uses
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv282.i
  %i.bhg = load float, ptr %i.bhf, align 4, !tbaa !24
  %i.bhh = trunc i64 %indvars.iv282.i to i32
  %i.bhi = sub i32 %3, %i.bhh
  %i.bhj = uitofp nneg i32 %i.bhi to float
  %i.bhk = fdiv float %i.bhg, %i.bhj
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv282.i
  store float %i.bhk, ptr %i.bhl, align 4, !tbaa !24
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 3 uses
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next283.i
  %i.bhn = load float, ptr %i.bhm, align 4, !tbaa !24
  %i.bho = trunc i64 %indvars.iv.next283.i to i32
  %i.bhp = sub i32 %3, %i.bho
  %i.bhq = uitofp nneg i32 %i.bhp to float
  %i.bhr = fdiv float %i.bhn, %i.bhq
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next283.i
  store float %i.bhr, ptr %i.bhs, align 4, !tbaa !24
  %indvars.iv.next283.i.1 = add nuw nsw i64 %indvars.iv282.i, 2 ; 3 uses
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next283.i.1
  %i.bhu = load float, ptr %i.bht, align 4, !tbaa !24
  %i.bhv = trunc i64 %indvars.iv.next283.i.1 to i32
  %i.bhw = sub i32 %3, %i.bhv
  %i.bhx = uitofp nneg i32 %i.bhw to float
  %i.bhy = fdiv float %i.bhu, %i.bhx
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next283.i.1
  store float %i.bhy, ptr %i.bhz, align 4, !tbaa !24
  %indvars.iv.next283.i.2 = add nuw nsw i64 %indvars.iv282.i, 3 ; 3 uses
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next283.i.2
  %i.bib = load float, ptr %i.bia, align 4, !tbaa !24
  %i.bic = trunc i64 %indvars.iv.next283.i.2 to i32
  %i.bid = sub i32 %3, %i.bic
  %i.bie = uitofp nneg i32 %i.bid to float
  %i.bif = fdiv float %i.bib, %i.bie
  %i.big = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next283.i.2
  store float %i.bif, ptr %i.big, align 4, !tbaa !24
  %indvars.iv.next283.i.3 = add nuw nsw i64 %indvars.iv282.i, 4 ; 2 uses
  %exitcond286.not.i.3 = icmp eq i64 %indvars.iv.next283.i.3, %i.az
  br i1 %exitcond286.not.i.3, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph217.i, !llvm.loop !201

_ZL12do_four_coremiPfS_S_.exit:                   ; preds = %.lr.ph217.i.prol.loopexit, %.lr.ph217.i, %middle.block, %vec.epilog.middle.block, %.loopexit171.thread293.i, %.loopexit171.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZL10do_ac_coreiiPfS_im.exit

bb.bg:                                            ; preds = %bb.y
  br i1 %i.an, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.i = phi i32 [ 1, %bb.bh ], [ %9, %bb.bg ]   ; 17 uses
  %i.bih = load ptr, ptr @debug, align 8, !tbaa !22 ; 2 uses
  %.not.i183 = icmp eq ptr %i.bih, null
  br i1 %.not.i183, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bii = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bih, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %.0147.fr, i32 noundef %.0.i, i64 noundef %8) #16 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br i1 %i.ao, label %.preheader131.i, label %_ZL10do_ac_coreiiPfS_im.exit

.preheader131.i:                                  ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.aq, i1 false), !tbaa !24
  br i1 %i.ar, label %.lr.ph152.split.us.i, label %.lr.ph182.i184

.lr.ph152.split.us.i:                             ; preds = %.preheader131.i
  br i1 %.not156, label %.lr.ph152.split.us.split.us.i, label %.lr.ph137.us.preheader.i

.lr.ph137.us.preheader.i:                         ; preds = %.lr.ph152.split.us.i
  %i.bij = zext nneg i32 %.0.i to i64             ; 5 uses
  %i.bik = shl nuw nsw i64 %i.bij, 2
  %i.bil = urem i64 %i.bh, %i.bij
  %i.bim = sub nuw nsw i64 %i.bh, %i.bil
  %i.bin = shl nsw i64 %i.bim, 2
  %i.bio = getelementptr i8, ptr %i.eg, i64 %i.bin
  %scevgep1306 = getelementptr i8, ptr %i.bio, i64 4
  %bound01310 = icmp ult ptr %i.ah, %scevgep1306
  br label %.lr.ph137.us.i

.lr.ph152.split.us.split.us.i:                    ; preds = %.lr.ph152.split.us.i
  br i1 %.not, label %.lr.ph152.split.us.split.us.split.us.i, label %.lr.ph137.us.us.preheader.i

.lr.ph137.us.us.preheader.i:                      ; preds = %.lr.ph152.split.us.split.us.i
  %i.bip = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.i

.lr.ph152.split.us.split.us.split.us.i:           ; preds = %.lr.ph152.split.us.split.us.i
  br i1 %.not123.i, label %.lr.ph152.split.us.split.us.split.us.split.us.i, label %.lr.ph137.us.us.us.preheader.i

.lr.ph137.us.us.us.preheader.i:                   ; preds = %.lr.ph152.split.us.split.us.split.us.i
  %i.biq = zext nneg i32 %.0.i to i64             ; 5 uses
  %i.bir = shl nuw nsw i64 %i.biq, 2
  %i.bis = urem i64 %i.bh, %i.biq
  %i.bit = sub nuw nsw i64 %i.bh, %i.bis
  %i.biu = shl nsw i64 %i.bit, 2
  %i.biv = getelementptr i8, ptr %i.eg, i64 %i.biu
  %scevgep1270 = getelementptr i8, ptr %i.biv, i64 4
  %bound01274 = icmp ult ptr %i.ah, %scevgep1270
  br label %.lr.ph137.us.us.us.i

.lr.ph152.split.us.split.us.split.us.split.us.i:  ; preds = %.lr.ph152.split.us.split.us.split.us.i
  br i1 %or.cond127.i, label %.lr.ph137.us.us.us.us.us.preheader.i, label %.lr.ph152.split.us.split.us.split.us.split.us.split.i

.lr.ph137.us.us.us.us.us.preheader.i:             ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.i
  %i.biw = mul i32 %.0.i, 3
  %i.bix = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.us.us.us.i

.lr.ph137.us.us.us.us.us.i:                       ; preds = %.critedge.us.us.us.us.us.i, %.lr.ph137.us.us.us.us.us.preheader.i
  %indvars.iv254.i191 = phi i64 [ 0, %.lr.ph137.us.us.us.us.us.preheader.i ], [ %indvars.iv.next255.i193, %.critedge.us.us.us.us.us.i ] ; 3 uses
  %indvar.i = phi i32 [ 0, %.lr.ph137.us.us.us.us.us.preheader.i ], [ %indvar.next.i, %.critedge.us.us.us.us.us.i ] ; 2 uses
  %i.biy = mul i32 %i.biw, %indvar.i
  %i.biz = zext i32 %i.biy to i64
  %i.bja = shl nuw nsw i64 %i.biz, 2
  %scevgep244.i = getelementptr i8, ptr %i.eg, i64 %i.bja ; 2 uses
  %i.bjb = trunc nuw nsw i64 %indvars.iv254.i191 to i32
  %.sroa.5276.0.scevgep244.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep244.i, i64 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph137.us.us.us.us.us.i
  %indvars.iv249.i192 = phi i64 [ %indvars.iv.next250.i194, %bb.bp ], [ 0, %.lr.ph137.us.us.us.us.us.i ] ; 4 uses
end_hunk_2
