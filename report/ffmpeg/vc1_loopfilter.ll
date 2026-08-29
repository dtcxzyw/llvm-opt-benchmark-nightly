Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1_loopfilter?download=true
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ff_vc1_i_loop_filter:bb.a
bb.dq:                                            ; preds = %bb.dp
  %i.acf = load i32, ptr %i.abx, align 4, !tbaa !56
  %i.acg = icmp eq i32 %i.acf, 1
  %i.ach = load i64, ptr %i.abz, align 16, !tbaa !72 ; 2 uses
  br i1 %i.acg, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aci = load ptr, ptr %i.aby, align 16, !tbaa !80
  tail call void %i.aci(ptr noundef %i.abq, i64 noundef %i.ach, i32 noundef %i.ace) #1, !inline_history !81
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.acj = load ptr, ptr %i.aca, align 16, !tbaa !82
  %i.ack = shl nsw i64 %i.ach, 1
  tail call void %i.acj(ptr noundef %i.abq, i64 noundef %i.ack, i32 noundef %i.ace) #1, !inline_history !81
  %i.acl = load ptr, ptr %i.aca, align 16, !tbaa !82
  %i.acm = load i64, ptr %i.abz, align 16, !tbaa !72 ; 2 uses
  %i.acn = getelementptr inbounds i8, ptr %i.abq, i64 %i.acm
  %i.aco = shl nsw i64 %i.acm, 1
  tail call void %i.acl(ptr noundef %i.acn, i64 noundef %i.aco, i32 noundef %i.ace) #1, !inline_history !81
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dp, %bb.dr, %bb.ds
  %i.acp = load i8, ptr %i.abw, align 8, !tbaa !51
  %i.acq = zext i8 %i.acp to i32                  ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8 ; 3 uses
  %i.acs = load i32, ptr %i.abx, align 4, !tbaa !56
  %i.act = icmp eq i32 %i.acs, 1
  %i.acu = load i64, ptr %i.abz, align 16, !tbaa !72 ; 2 uses
  br i1 %i.act, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.acv = load ptr, ptr %i.aby, align 16, !tbaa !80
  tail call void %i.acv(ptr noundef nonnull %i.acr, i64 noundef %i.acu, i32 noundef %i.acq) #1, !inline_history !81
  br label %vc1_i_h_loop_filter.exit.1

bb.dv:                                            ; preds = %bb.dt
  %i.acw = load ptr, ptr %i.aca, align 16, !tbaa !82
  %i.acx = shl nsw i64 %i.acu, 1
  tail call void %i.acw(ptr noundef nonnull %i.acr, i64 noundef %i.acx, i32 noundef %i.acq) #1, !inline_history !81
  %i.acy = load ptr, ptr %i.aca, align 16, !tbaa !82
  %i.acz = load i64, ptr %i.abz, align 16, !tbaa !72 ; 2 uses
  %i.ada = getelementptr inbounds i8, ptr %i.acr, i64 %i.acz
  %i.adb = shl nsw i64 %i.acz, 1
  tail call void %i.acy(ptr noundef nonnull %i.ada, i64 noundef %i.adb, i32 noundef %i.acq) #1, !inline_history !81
  br label %vc1_i_h_loop_filter.exit.1

vc1_i_h_loop_filter.exit.1:                       ; preds = %bb.du, %bb.dv
  %i.adc = getelementptr i8, ptr %0, i64 3176
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !71 ; 3 uses
  %i.ade = load i8, ptr %i.abw, align 8, !tbaa !51
  %i.adf = zext i8 %i.ade to i32                  ; 3 uses
  br i1 %.not485, label %.loopexit.critedge, label %bb.dw

bb.dw:                                            ; preds = %vc1_i_h_loop_filter.exit.1
  %i.adg = load i32, ptr %i.abx, align 4, !tbaa !56
  %i.adh = icmp eq i32 %i.adg, 1
  br i1 %i.adh, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.adi = load ptr, ptr %i.aca, align 16, !tbaa !82
  %i.adj = load i64, ptr %i.acb, align 8, !tbaa !76
  tail call void %i.adi(ptr noundef %i.add, i64 noundef %i.adj, i32 noundef %i.adf) #1, !inline_history !81
  br label %vc1_i_h_loop_filter.exit.2

bb.dy:                                            ; preds = %bb.dw
  %i.adk = load ptr, ptr %i.acc, align 16, !tbaa !83
  %i.adl = load i64, ptr %i.acb, align 8, !tbaa !76
  %i.adm = shl nsw i64 %i.adl, 1
  tail call void %i.adk(ptr noundef %i.add, i64 noundef %i.adm, i32 noundef %i.adf) #1, !inline_history !81
  %i.adn = load ptr, ptr %i.acc, align 16, !tbaa !83
  %i.ado = load i64, ptr %i.acb, align 8, !tbaa !76 ; 2 uses
  %i.adp = getelementptr inbounds i8, ptr %i.add, i64 %i.ado
  %i.adq = shl nsw i64 %i.ado, 1
  tail call void %i.adn(ptr noundef %i.adp, i64 noundef %i.adq, i32 noundef %i.adf) #1, !inline_history !81
  br label %vc1_i_h_loop_filter.exit.2

vc1_i_h_loop_filter.exit.2:                       ; preds = %bb.dx, %bb.dy
  %i.adr = getelementptr i8, ptr %0, i64 3184
  %i.ads = load ptr, ptr %i.adr, align 16, !tbaa !71 ; 3 uses
  %i.adt = load i8, ptr %i.abw, align 8, !tbaa !51
  %i.adu = zext i8 %i.adt to i32                  ; 3 uses
  br i1 %.not485, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %vc1_i_h_loop_filter.exit.2
  %i.adv = load i32, ptr %i.abx, align 4, !tbaa !56
  %i.adw = icmp eq i32 %i.adv, 1
  br i1 %i.adw, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.adx = load ptr, ptr %i.aca, align 16, !tbaa !82
  %i.ady = load i64, ptr %i.acb, align 8, !tbaa !76
  tail call void %i.adx(ptr noundef %i.ads, i64 noundef %i.ady, i32 noundef %i.adu) #1, !inline_history !81
  br label %.loopexit

bb.eb:                                            ; preds = %bb.dz
  %i.adz = load ptr, ptr %i.acc, align 16, !tbaa !83
  %i.aea = load i64, ptr %i.acb, align 8, !tbaa !76
  %i.aeb = shl nsw i64 %i.aea, 1
  tail call void %i.adz(ptr noundef %i.ads, i64 noundef %i.aeb, i32 noundef %i.adu) #1, !inline_history !81
  %i.aec = load ptr, ptr %i.acc, align 16, !tbaa !83
  %i.aed = load i64, ptr %i.acb, align 8, !tbaa !76 ; 2 uses
  %i.aee = getelementptr inbounds i8, ptr %i.ads, i64 %i.aed
  %i.aef = shl nsw i64 %i.aed, 1
  tail call void %i.aec(ptr noundef %i.aee, i64 noundef %i.aef, i32 noundef %i.adu) #1, !inline_history !81
  br label %.loopexit

.loopexit.critedge:                               ; preds = %vc1_i_h_loop_filter.exit.1
  %i.aeg = getelementptr i8, ptr %0, i64 3184
  %i.aeh = load ptr, ptr %i.aeg, align 16, !tbaa !71 ; 0 uses
  %i.aei = load i8, ptr %i.abw, align 8, !tbaa !51
  %i.aej = zext i8 %i.aei to i32                  ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.critedge, %vc1_i_h_loop_filter.exit.2, %bb.ea, %bb.eb, %.loopexit282, %.loopexit284
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vc1_p_loop_filter(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 5 uses
  %i.d = load i32, ptr %i.c, align 16, !tbaa !73
  %i.e = add nsw i32 %i.d, 2
  %.not = icmp slt i32 %i.b, %i.e
  br i1 %.not, label %.loopexit1177, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9    ; 2 uses
  %.not715 = icmp eq i32 %i.g, 0
  br i1 %.not715, label %.loopexit1178, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.k = load i64, ptr %i.j, align 16, !tbaa !72
  %.neg = mul i64 %i.k, -32
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %.neg
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 5 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38
  %i.r = shl nsw i32 %i.q, 1
  %i.s = xor i32 %i.r, -1
  %i.t = add i32 %i.g, %i.s
  %i.u = sext i32 %i.t to i64                     ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !85
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.u ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !86
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !87
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.u
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %vc1_p_v_loop_filter.exit852
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %vc1_p_v_loop_filter.exit852 ] ; 12 uses
  %i.aq = icmp samesign ugt i64 %indvars.iv, 3    ; 2 uses
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.au = load i64, ptr %i.ag, align 8, !tbaa !76
  %.neg742 = mul i64 %i.au, -16
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %.neg742
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !68
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !38
  %i.bb = shl nsw i32 %i.ba, 1
  %i.bc = xor i32 %i.bb, -1
  %i.bd = add i32 %i.az, %i.bc
  %i.be = load i32, ptr %i.am, align 4, !tbaa !88
  %i.bf = add nsw i32 %i.bd, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.ax, i64 %i.bg
  %i.bi = load i8, ptr %i.af, align 8, !tbaa !51
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !68
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = shl nuw nsw i32 %indvars.iv.tr, 2       ; 3 uses
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.bn = load i8, ptr %i.y, align 1, !tbaa !55
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %i.bq = trunc nuw nsw i32 %i.bp to i8           ; 2 uses
  %i.br = and i8 %i.bn, %i.bq
  %i.bs = load i32, ptr %i.p, align 4, !tbaa !38
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.y, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !55
  %i.bw = and i8 %i.bv, %i.bq
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bt
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !68
  %i.bz = lshr i32 %i.by, %i.bk
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ca = load ptr, ptr %i.ah, align 16, !tbaa !90
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !68
  %i.cd = load i32, ptr %i.aj, align 16, !tbaa !91
  %i.ce = load i32, ptr %i.ak, align 8, !tbaa !92
  %i.cf = add i32 %i.cc, -2
  %i.cg = shl i32 %i.cd, 2
  %i.ch = sub i32 %i.cf, %i.cg
  %i.ci = add nsw i32 %i.ch, %i.ce
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cj ; 2 uses
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !71
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cj ; 2 uses
  %i.cn = load i8, ptr %i.af, align 8, !tbaa !51  ; 2 uses
  %i.co = load i32, ptr %i.v, align 4, !tbaa !68  ; 2 uses
  %i.cp = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.cq = trunc nuw nsw i64 %i.cp to i32          ; 3 uses
  %i.cr = lshr i32 %i.co, %i.cq                   ; 2 uses
  %i.cs = load i64, ptr %i.j, align 16, !tbaa !89 ; 3 uses
  %i.ct = and i64 %i.cp, 8
  %i.cu = mul nsw i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.m, i64 %i.cu
  %i.cw = shl nuw nsw i64 %indvars.iv, 3
  %i.cx = and i64 %i.cw, 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %i.cz = icmp samesign ult i64 %indvars.iv, 2
  %i.da = load i8, ptr %i.y, align 1, !tbaa !55   ; 2 uses
  %i.db = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dc = shl nuw nsw i32 1, %i.db
  %i.dd = trunc nuw nsw i32 %i.dc to i8
  %i.de = and i8 %i.da, %i.dd                     ; 2 uses
  br i1 %i.cz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.df = shl nuw nsw i32 4, %i.db
  %i.dg = trunc nuw nsw i32 %i.df to i8
  %i.dh = and i8 %i.da, %i.dg
  %i.di = trunc nuw nsw i64 %i.cp to i32
  %i.dj = or disjoint i32 %i.di, 8
  %i.dk = lshr i32 %i.co, %i.dj
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dl = load i32, ptr %i.p, align 4, !tbaa !38
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.y, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !55
  %i.dp = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = shl nuw nsw i32 1, %i.dq
  %i.ds = trunc nuw nsw i32 %i.dr to i8
  %i.dt = and i8 %i.do, %i.ds
  %i.du = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.dm
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !68
  %.tr = trunc nuw nsw i64 %i.dp to i32
  %i.dw = shl nuw nsw i32 %.tr, 2
  %i.dx = lshr i32 %i.dv, %i.dw
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.dy = phi i64 [ %i.bm, %bb.e ], [ %i.cs, %bb.g ], [ %i.cs, %bb.h ] ; 5 uses
  %i.dz = phi i32 [ %i.bl, %bb.e ], [ %i.cr, %bb.g ], [ %i.cr, %bb.h ] ; 3 uses
  %i.ea = phi i32 [ %i.bk, %bb.e ], [ %i.cq, %bb.g ], [ %i.cq, %bb.h ]
  %.in = phi i8 [ %i.bi, %bb.e ], [ %i.cn, %bb.g ], [ %i.cn, %bb.h ]
  %i.eb = phi ptr [ %i.bh, %bb.e ], [ %i.cm, %bb.g ], [ %i.cm, %bb.h ] ; 2 uses
  %i.ec = phi ptr [ %i.ab, %bb.e ], [ %i.ck, %bb.g ], [ %i.ck, %bb.h ] ; 3 uses
  %i.ed = phi i8 [ %i.br, %bb.e ], [ %i.de, %bb.g ], [ %i.de, %bb.h ]
  %.0.i8321037 = phi ptr [ %i.aw, %bb.e ], [ %i.cy, %bb.g ], [ %i.cy, %bb.h ] ; 4 uses
  %.094.i838 = phi i32 [ %i.bz, %bb.e ], [ %i.dk, %bb.g ], [ %i.dx, %bb.h ]
  %.093.i839 = phi i8 [ %i.bw, %bb.e ], [ %i.dh, %bb.g ], [ %i.dt, %bb.h ]
  %i.ee = zext i8 %.in to i32                     ; 4 uses
  %i.ef = trunc i64 %i.dy to i32                  ; 4 uses
  %i.eg = icmp ne i8 %i.ed, 0
  %i.eh = icmp ne i8 %.093.i839, 0
  %or.cond4.i840 = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond4.i840, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ei = load i16, ptr %i.ec, align 2, !tbaa !93
  %.in96.i841 = select i1 %i.aq, ptr %i.p, ptr %i.aj
  %i.ej = load i32, ptr %.in96.i841, align 4, !tbaa !68
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !93
  %.not.i842 = icmp eq i16 %i.ei, %i.em
  br i1 %.not.i842, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !93
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !93
  %.not98.i845 = icmp eq i16 %i.eo, %i.eq
  br i1 %.not98.i845, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.er = load i32, ptr %i.an, align 4, !tbaa !56
  %i.es = icmp eq i32 %i.er, 2
  br i1 %i.es, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.et = load i8, ptr %i.eb, align 1, !tbaa !55
  %i.eu = getelementptr inbounds i8, ptr %i.eb, i64 %i.ek
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !55
  %.not100.i851 = icmp eq i8 %i.et, %i.ev
  br i1 %.not100.i851, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ew = lshr i32 %.094.i838, 2
  %i.ex = or i32 %i.ew, %i.dz                     ; 2 uses
  %i.ey = and i32 %i.ex, 1
  %.not101.i846 = icmp eq i32 %i.ey, 0
  br i1 %.not101.i846, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ez = load ptr, ptr %i.ao, align 8, !tbaa !94
  %i.fa = shl nsw i32 %i.ef, 3
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %.0.i8321037, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %sext.i847 = shl i64 %i.dy, 32
  %i.fe = ashr exact i64 %sext.i847, 32
  tail call void %i.ez(ptr noundef nonnull %i.fd, i64 noundef %i.fe, i32 noundef %i.ee) #1, !inline_history !95
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ff = and i32 %i.ex, 2
  %.not102.i848 = icmp eq i32 %i.ff, 0
  br i1 %.not102.i848, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.i, %bb.j, %bb.k, %bb.m
  %.sink1340.in = phi ptr [ %i.ap, %bb.i ], [ %i.ap, %bb.m ], [ %i.ap, %bb.k ], [ %i.ap, %bb.j ], [ %i.ao, %bb.p ]
  %.sink1340 = load ptr, ptr %.sink1340.in, align 8, !tbaa !96
  %i.fg = shl nsw i32 %i.ef, 3
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %.0.i8321037, i64 %i.fh
  %sext103.i849 = shl i64 %i.dy, 32
  %i.fj = ashr exact i64 %sext103.i849, 32
  tail call void %.sink1340(ptr noundef %i.fi, i64 noundef %i.fj, i32 noundef %i.ee) #1
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.fk = load i32, ptr %i.ae, align 4, !tbaa !68
  %i.fl = ashr i32 %i.fk, %i.ea
  %i.fm = and i32 %i.fl, 11
  %or.cond6.i833 = icmp eq i32 %i.fm, 3
  br i1 %or.cond6.i833, label %bb.r, label %vc1_p_v_loop_filter.exit852

bb.r:                                             ; preds = %bb.q
  %i.fn = and i32 %i.dz, 5
  %.not105.i834 = icmp eq i32 %i.fn, 0
  br i1 %.not105.i834, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fo = load ptr, ptr %i.ao, align 8, !tbaa !94
  %i.fp = shl nsw i32 %i.ef, 2
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %.0.i8321037, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %sext106.i835 = shl i64 %i.dy, 32
  %i.ft = ashr exact i64 %sext106.i835, 32
  tail call void %i.fo(ptr noundef nonnull %i.fs, i64 noundef %i.ft, i32 noundef %i.ee) #1, !inline_history !95
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fu = and i32 %i.dz, 10
  %.not107.i836 = icmp eq i32 %i.fu, 0
  br i1 %.not107.i836, label %vc1_p_v_loop_filter.exit852, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fv = load ptr, ptr %i.ao, align 8, !tbaa !94
  %i.fw = shl nsw i32 %i.ef, 2
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %.0.i8321037, i64 %i.fx
  %sext108.i837 = shl i64 %i.dy, 32
  %i.fz = ashr exact i64 %sext108.i837, 32
  tail call void %i.fv(ptr noundef %i.fy, i64 noundef %i.fz, i32 noundef %i.ee) #1, !inline_history !95
  br label %vc1_p_v_loop_filter.exit852

vc1_p_v_loop_filter.exit852:                      ; preds = %bb.q, %bb.t, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit1178.loopexit, label %bb.d, !llvm.loop !97

.loopexit1178.loopexit:                           ; preds = %vc1_p_v_loop_filter.exit852
  %.pre = load i32, ptr %i.f, align 4, !tbaa !9
  br label %.loopexit1178

.loopexit1178:                                    ; preds = %.loopexit1178.loopexit, %bb.b
  %i.ga = phi i32 [ %.pre, %.loopexit1178.loopexit ], [ 0, %bb.b ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !65
  %i.gd = add nsw i32 %i.gc, -1
  %i.ge = icmp eq i32 %i.ga, %i.gd
  br i1 %i.ge, label %bb.v, label %.loopexit1177

bb.v:                                             ; preds = %.loopexit1178
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 16, !tbaa !71
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 16, !tbaa !72
  %.neg716 = mul i64 %i.gi, -32
  %i.gj = getelementptr inbounds i8, ptr %i.gg, i64 %.neg716
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.gl = load ptr, ptr %i.gk, align 16, !tbaa !84
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 5 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !38
  %i.go = shl nsw i32 %i.gn, 1
  %i.gp = sub nsw i32 %i.ga, %i.go
  %i.gq = sext i32 %i.gp to i64                   ; 4 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gq ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.gt = load ptr, ptr %i.gs, align 16, !tbaa !85
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gq ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.gw = load ptr, ptr %i.gv, align 16, !tbaa !86
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gq
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.gz = load ptr, ptr %i.gy, align 16, !tbaa !87
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.gq
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %vc1_p_v_loop_filter.exit830
  %indvars.iv1222 = phi i64 [ 0, %bb.v ], [ %indvars.iv.next1223, %vc1_p_v_loop_filter.exit830 ] ; 12 uses
  %i.hm = icmp samesign ugt i64 %indvars.iv1222, 3 ; 2 uses
  br i1 %i.hm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hn = getelementptr [8 x i8], ptr %i.gf, i64 %indvars.iv1222
  %i.ho = getelementptr i8, ptr %i.hn, i64 -24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !71
  %i.hq = load i64, ptr %i.hc, align 8, !tbaa !76
  %.neg741 = mul i64 %i.hq, -16
  %i.hr = getelementptr inbounds i8, ptr %i.hp, i64 %.neg741
  %i.hs = load ptr, ptr %i.hh, align 8, !tbaa !71
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv1222
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !68
  %i.hv = load i32, ptr %i.gm, align 4, !tbaa !38
  %i.hw = shl i32 %i.hv, 1
  %i.hx = sub i32 %i.hu, %i.hw
  %i.hy = load i32, ptr %i.hi, align 4, !tbaa !88
  %i.hz = add nsw i32 %i.hx, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hs, i64 %i.ia
  %i.ic = load i8, ptr %i.hb, align 8, !tbaa !51
  %i.id = load i32, ptr %i.gr, align 4, !tbaa !68
  %indvars.iv1222.tr = trunc nuw nsw i64 %indvars.iv1222 to i32
  %i.ie = shl nuw nsw i32 %indvars.iv1222.tr, 2   ; 3 uses
  %i.if = lshr i32 %i.id, %i.ie
  %i.ig = load i64, ptr %i.hc, align 8, !tbaa !89
  %i.ih = load i8, ptr %i.gu, align 1, !tbaa !55
  %i.ii = trunc nuw nsw i64 %indvars.iv1222 to i32
  %i.ij = shl nuw nsw i32 1, %i.ii
  %i.ik = trunc nuw nsw i32 %i.ij to i8           ; 2 uses
  %i.il = and i8 %i.ih, %i.ik
  %i.im = load i32, ptr %i.gm, align 4, !tbaa !38
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.gu, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !55
  %i.iq = and i8 %i.ip, %i.ik
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.in
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !68
  %i.it = lshr i32 %i.is, %i.ie
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.iu = load ptr, ptr %i.hd, align 16, !tbaa !90
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv1222
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !68
  %i.ix = load i32, ptr %i.hf, align 16, !tbaa !91
  %i.iy = shl i32 %i.ix, 2
  %i.iz = sub i32 %i.iw, %i.iy
  %i.ja = load i32, ptr %i.hg, align 8, !tbaa !92
  %i.jb = add nsw i32 %i.iz, %i.ja
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.jc ; 2 uses
  %i.je = load ptr, ptr %i.hh, align 8, !tbaa !71
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 %i.jc ; 2 uses
  %i.jg = load i8, ptr %i.hb, align 8, !tbaa !51  ; 2 uses
  %i.jh = load i32, ptr %i.gr, align 4, !tbaa !68 ; 2 uses
  %i.ji = shl nuw nsw i64 %indvars.iv1222, 2      ; 3 uses
  %i.jj = trunc nuw nsw i64 %i.ji to i32          ; 3 uses
  %i.jk = lshr i32 %i.jh, %i.jj                   ; 2 uses
  %i.jl = load i64, ptr %i.gh, align 16, !tbaa !89 ; 3 uses
  %i.jm = and i64 %i.ji, 8
  %i.jn = mul nsw i64 %i.jl, %i.jm
  %i.jo = getelementptr inbounds i8, ptr %i.gj, i64 %i.jn
  %i.jp = shl nuw nsw i64 %indvars.iv1222, 3
  %i.jq = and i64 %i.jp, 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jq ; 2 uses
  %i.js = icmp samesign ult i64 %indvars.iv1222, 2
  %i.jt = load i8, ptr %i.gu, align 1, !tbaa !55  ; 2 uses
  %i.ju = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %i.jv = shl nuw nsw i32 1, %i.ju
  %i.jw = trunc nuw nsw i32 %i.jv to i8
  %i.jx = and i8 %i.jt, %i.jw                     ; 2 uses
  br i1 %i.js, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jy = shl nuw nsw i32 4, %i.ju
  %i.jz = trunc nuw nsw i32 %i.jy to i8
  %i.ka = and i8 %i.jt, %i.jz
  %i.kb = trunc nuw nsw i64 %i.ji to i32
  %i.kc = or disjoint i32 %i.kb, 8
  %i.kd = lshr i32 %i.jh, %i.kc
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ke = load i32, ptr %i.gm, align 4, !tbaa !38
  %i.kf = sext i32 %i.ke to i64                   ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.gu, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !55
  %i.ki = add nsw i64 %indvars.iv1222, -2         ; 2 uses
  %i.kj = trunc nuw nsw i64 %i.ki to i32
  %i.kk = shl nuw nsw i32 1, %i.kj
  %i.kl = trunc nuw nsw i32 %i.kk to i8
  %i.km = and i8 %i.kh, %i.kl
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.kf
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !68
  %.tr1301 = trunc nuw nsw i64 %i.ki to i32
  %i.kp = shl nuw nsw i32 %.tr1301, 2
  %i.kq = lshr i32 %i.ko, %i.kp
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %i.kr = phi i64 [ %i.ig, %bb.x ], [ %i.jl, %bb.z ], [ %i.jl, %bb.aa ] ; 5 uses
  %i.ks = phi i32 [ %i.if, %bb.x ], [ %i.jk, %bb.z ], [ %i.jk, %bb.aa ] ; 3 uses
  %i.kt = phi i32 [ %i.ie, %bb.x ], [ %i.jj, %bb.z ], [ %i.jj, %bb.aa ]
  %.in1382 = phi i8 [ %i.ic, %bb.x ], [ %i.jg, %bb.z ], [ %i.jg, %bb.aa ]
  %i.ku = phi ptr [ %i.ib, %bb.x ], [ %i.jf, %bb.z ], [ %i.jf, %bb.aa ] ; 2 uses
  %i.kv = phi ptr [ %i.gx, %bb.x ], [ %i.jd, %bb.z ], [ %i.jd, %bb.aa ] ; 3 uses
  %i.kw = phi i8 [ %i.il, %bb.x ], [ %i.jx, %bb.z ], [ %i.jx, %bb.aa ]
  %.0.i8101043 = phi ptr [ %i.hr, %bb.x ], [ %i.jr, %bb.z ], [ %i.jr, %bb.aa ] ; 4 uses
  %.094.i816 = phi i32 [ %i.it, %bb.x ], [ %i.kd, %bb.z ], [ %i.kq, %bb.aa ]
  %.093.i817 = phi i8 [ %i.iq, %bb.x ], [ %i.ka, %bb.z ], [ %i.km, %bb.aa ]
  %i.kx = zext i8 %.in1382 to i32                 ; 4 uses
  %i.ky = trunc i64 %i.kr to i32                  ; 4 uses
  %i.kz = icmp ne i8 %i.kw, 0
  %i.la = icmp ne i8 %.093.i817, 0
  %or.cond4.i818 = select i1 %i.kz, i1 true, i1 %i.la
  br i1 %or.cond4.i818, label %.sink.split1342, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lb = load i16, ptr %i.kv, align 2, !tbaa !93
  %.in96.i819 = select i1 %i.hm, ptr %i.gm, ptr %i.hf
  %i.lc = load i32, ptr %.in96.i819, align 4, !tbaa !68
  %i.ld = sext i32 %i.lc to i64                   ; 2 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.ld ; 2 uses
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !93
  %.not.i820 = icmp eq i16 %i.lb, %i.lf
  br i1 %.not.i820, label %bb.ad, label %.sink.split1342

bb.ad:                                            ; preds = %bb.ac
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !93
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !93
  %.not98.i823 = icmp eq i16 %i.lh, %i.lj
  br i1 %.not98.i823, label %bb.ae, label %.sink.split1342

bb.ae:                                            ; preds = %bb.ad
  %i.lk = load i32, ptr %i.hj, align 4, !tbaa !56
  %i.ll = icmp eq i32 %i.lk, 2
  br i1 %i.ll, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lm = load i8, ptr %i.ku, align 1, !tbaa !55
  %i.ln = getelementptr inbounds i8, ptr %i.ku, i64 %i.ld
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !55
  %.not100.i829 = icmp eq i8 %i.lm, %i.lo
  br i1 %.not100.i829, label %bb.ag, label %.sink.split1342

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.lp = lshr i32 %.094.i816, 2
  %i.lq = or i32 %i.lp, %i.ks                     ; 2 uses
  %i.lr = and i32 %i.lq, 1
  %.not101.i824 = icmp eq i32 %i.lr, 0
  br i1 %.not101.i824, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ls = load ptr, ptr %i.hk, align 8, !tbaa !94
  %i.lt = shl nsw i32 %i.ky, 3
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds i8, ptr %.0.i8101043, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %sext.i825 = shl i64 %i.kr, 32
  %i.lx = ashr exact i64 %sext.i825, 32
  tail call void %i.ls(ptr noundef nonnull %i.lw, i64 noundef %i.lx, i32 noundef %i.kx) #1, !inline_history !95
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ly = and i32 %i.lq, 2
  %.not102.i826 = icmp eq i32 %i.ly, 0
  br i1 %.not102.i826, label %bb.aj, label %.sink.split1342

.sink.split1342:                                  ; preds = %bb.ai, %bb.ab, %bb.ac, %bb.ad, %bb.af
  %.sink1344.in = phi ptr [ %i.hl, %bb.ab ], [ %i.hl, %bb.af ], [ %i.hl, %bb.ad ], [ %i.hl, %bb.ac ], [ %i.hk, %bb.ai ]
  %.sink1344 = load ptr, ptr %.sink1344.in, align 8, !tbaa !96
  %i.lz = shl nsw i32 %i.ky, 3
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds i8, ptr %.0.i8101043, i64 %i.ma
  %sext103.i827 = shl i64 %i.kr, 32
  %i.mc = ashr exact i64 %sext103.i827, 32
  tail call void %.sink1344(ptr noundef %i.mb, i64 noundef %i.mc, i32 noundef %i.kx) #1
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split1342, %bb.ai
  %i.md = load i32, ptr %i.ha, align 4, !tbaa !68
  %i.me = ashr i32 %i.md, %i.kt
  %i.mf = and i32 %i.me, 11
  %or.cond6.i811 = icmp eq i32 %i.mf, 3
  br i1 %or.cond6.i811, label %bb.ak, label %vc1_p_v_loop_filter.exit830

bb.ak:                                            ; preds = %bb.aj
  %i.mg = and i32 %i.ks, 5
  %.not105.i812 = icmp eq i32 %i.mg, 0
  br i1 %.not105.i812, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mh = load ptr, ptr %i.hk, align 8, !tbaa !94
  %i.mi = shl nsw i32 %i.ky, 2
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %.0.i8101043, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %sext106.i813 = shl i64 %i.kr, 32
  %i.mm = ashr exact i64 %sext106.i813, 32
  tail call void %i.mh(ptr noundef nonnull %i.ml, i64 noundef %i.mm, i32 noundef %i.kx) #1, !inline_history !95
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.mn = and i32 %i.ks, 10
  %.not107.i814 = icmp eq i32 %i.mn, 0
  br i1 %.not107.i814, label %vc1_p_v_loop_filter.exit830, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mo = load ptr, ptr %i.hk, align 8, !tbaa !94
  %i.mp = shl nsw i32 %i.ky, 2
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds i8, ptr %.0.i8101043, i64 %i.mq
  %sext108.i815 = shl i64 %i.kr, 32
  %i.ms = ashr exact i64 %sext108.i815, 32
  tail call void %i.mo(ptr noundef %i.mr, i64 noundef %i.ms, i32 noundef %i.kx) #1, !inline_history !95
  br label %vc1_p_v_loop_filter.exit830

vc1_p_v_loop_filter.exit830:                      ; preds = %bb.aj, %bb.am, %bb.an
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 1 ; 2 uses
  %exitcond1225.not = icmp eq i64 %indvars.iv.next1223, 6
  br i1 %exitcond1225.not, label %.loopexit1177, label %bb.w, !llvm.loop !98

.loopexit1177:                                    ; preds = %vc1_p_v_loop_filter.exit830, %.loopexit1178, %bb.a
  %i.mt = load i32, ptr %i.a, align 8, !tbaa !37  ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !79
  %i.mw = add nsw i32 %i.mv, -1
  %i.mx = icmp eq i32 %i.mt, %i.mw
  br i1 %i.mx, label %bb.ao, label %.loopexit1173

bb.ao:                                            ; preds = %.loopexit1177
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 4 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !9  ; 3 uses
  %.not717 = icmp eq i32 %i.mz, 0
  br i1 %.not717, label %.loopexit1175, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.na = load i32, ptr %i.c, align 16, !tbaa !73
  %.not718.not = icmp sgt i32 %i.mt, %i.na
  br i1 %.not718.not, label %bb.aq, label %.loopexit1176

bb.aq:                                            ; preds = %bb.ap
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 16, !tbaa !71
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 16, !tbaa !72
  %.neg719 = mul i64 %i.ne, -16
  %i.nf = getelementptr inbounds i8, ptr %i.nc, i64 %.neg719
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 -16
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.ni = load ptr, ptr %i.nh, align 16, !tbaa !84
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 5 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !38
  %i.nl = xor i32 %i.nk, -1
  %i.nm = add i32 %i.mz, %i.nl
  %i.nn = sext i32 %i.nm to i64                   ; 4 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.nn ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.nq = load ptr, ptr %i.np, align 16, !tbaa !85
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 %i.nn ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.nt = load ptr, ptr %i.ns, align 16, !tbaa !86
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.nt, i64 %i.nn
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.nw = load ptr, ptr %i.nv, align 16, !tbaa !87
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.nn
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 4 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %vc1_p_v_loop_filter.exit808
  %indvars.iv1226 = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next1227, %vc1_p_v_loop_filter.exit808 ] ; 12 uses
  %i.oj = icmp samesign ugt i64 %indvars.iv1226, 3 ; 2 uses
  br i1 %i.oj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ok = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv1226
  %i.ol = getelementptr i8, ptr %i.ok, i64 -24
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !71
  %i.on = load i64, ptr %i.nz, align 8, !tbaa !76
  %.neg740 = mul i64 %i.on, -8
  %i.oo = getelementptr inbounds i8, ptr %i.om, i64 %.neg740
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 -8
  %i.oq = load ptr, ptr %i.oe, align 8, !tbaa !71
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv1226
  %i.os = load i32, ptr %i.or, align 4, !tbaa !68
  %i.ot = load i32, ptr %i.nj, align 4, !tbaa !38
  %i.ou = xor i32 %i.ot, -1
  %i.ov = add i32 %i.os, %i.ou
  %i.ow = load i32, ptr %i.of, align 4, !tbaa !88
  %i.ox = add nsw i32 %i.ov, %i.ow
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds i8, ptr %i.oq, i64 %i.oy
  %i.pa = load i8, ptr %i.ny, align 8, !tbaa !51
  %i.pb = load i32, ptr %i.no, align 4, !tbaa !68
  %indvars.iv1226.tr = trunc nuw nsw i64 %indvars.iv1226 to i32
  %i.pc = shl nuw nsw i32 %indvars.iv1226.tr, 2   ; 3 uses
  %i.pd = lshr i32 %i.pb, %i.pc
  %i.pe = load i64, ptr %i.nz, align 8, !tbaa !89
  %i.pf = load i8, ptr %i.nr, align 1, !tbaa !55
  %i.pg = trunc nuw nsw i64 %indvars.iv1226 to i32
  %i.ph = shl nuw nsw i32 1, %i.pg
  %i.pi = trunc nuw nsw i32 %i.ph to i8           ; 2 uses
  %i.pj = and i8 %i.pf, %i.pi
  %i.pk = load i32, ptr %i.nj, align 4, !tbaa !38
  %i.pl = sext i32 %i.pk to i64                   ; 2 uses
  %i.pm = getelementptr inbounds i8, ptr %i.nr, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !55
  %i.po = and i8 %i.pn, %i.pi
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.pl
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !68
  %i.pr = lshr i32 %i.pq, %i.pc
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.ps = load ptr, ptr %i.oa, align 16, !tbaa !90
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv1226
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !68
  %i.pv = load i32, ptr %i.oc, align 16, !tbaa !91
  %i.pw = load i32, ptr %i.od, align 8, !tbaa !92
  %i.px = add i32 %i.pu, -2
  %i.py = shl i32 %i.pv, 1
  %i.pz = sub i32 %i.px, %i.py
  %i.qa = add nsw i32 %i.pz, %i.pw
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.qb ; 2 uses
  %i.qd = load ptr, ptr %i.oe, align 8, !tbaa !71
  %i.qe = getelementptr inbounds i8, ptr %i.qd, i64 %i.qb ; 2 uses
  %i.qf = load i8, ptr %i.ny, align 8, !tbaa !51  ; 2 uses
  %i.qg = load i32, ptr %i.no, align 4, !tbaa !68 ; 2 uses
  %i.qh = shl nuw nsw i64 %indvars.iv1226, 2      ; 3 uses
  %i.qi = trunc nuw nsw i64 %i.qh to i32          ; 3 uses
  %i.qj = lshr i32 %i.qg, %i.qi                   ; 2 uses
  %i.qk = load i64, ptr %i.nd, align 16, !tbaa !89 ; 3 uses
  %i.ql = and i64 %i.qh, 8
  %i.qm = mul nsw i64 %i.qk, %i.ql
  %i.qn = getelementptr inbounds i8, ptr %i.ng, i64 %i.qm
  %i.qo = shl nuw nsw i64 %indvars.iv1226, 3
  %i.qp = and i64 %i.qo, 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qp ; 2 uses
  %i.qr = icmp samesign ult i64 %indvars.iv1226, 2
  %i.qs = load i8, ptr %i.nr, align 1, !tbaa !55  ; 2 uses
  %i.qt = trunc nuw nsw i64 %indvars.iv1226 to i32 ; 2 uses
  %i.qu = shl nuw nsw i32 1, %i.qt
  %i.qv = trunc nuw nsw i32 %i.qu to i8
  %i.qw = and i8 %i.qs, %i.qv                     ; 2 uses
  br i1 %i.qr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.qx = shl nuw nsw i32 4, %i.qt
  %i.qy = trunc nuw nsw i32 %i.qx to i8
  %i.qz = and i8 %i.qs, %i.qy
  %i.ra = trunc nuw nsw i64 %i.qh to i32
  %i.rb = or disjoint i32 %i.ra, 8
  %i.rc = lshr i32 %i.qg, %i.rb
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.rd = load i32, ptr %i.nj, align 4, !tbaa !38
  %i.re = sext i32 %i.rd to i64                   ; 2 uses
  %i.rf = getelementptr inbounds i8, ptr %i.nr, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !55
  %i.rh = add nsw i64 %indvars.iv1226, -2         ; 2 uses
  %i.ri = trunc nuw nsw i64 %i.rh to i32
  %i.rj = shl nuw nsw i32 1, %i.ri
  %i.rk = trunc nuw nsw i32 %i.rj to i8
  %i.rl = and i8 %i.rg, %i.rk
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.re
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !68
  %.tr1302 = trunc nuw nsw i64 %i.rh to i32
  %i.ro = shl nuw nsw i32 %.tr1302, 2
  %i.rp = lshr i32 %i.rn, %i.ro
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.as
  %i.rq = phi i64 [ %i.pe, %bb.as ], [ %i.qk, %bb.au ], [ %i.qk, %bb.av ] ; 5 uses
  %i.rr = phi i32 [ %i.pd, %bb.as ], [ %i.qj, %bb.au ], [ %i.qj, %bb.av ] ; 3 uses
  %i.rs = phi i32 [ %i.pc, %bb.as ], [ %i.qi, %bb.au ], [ %i.qi, %bb.av ]
  %.in1384 = phi i8 [ %i.pa, %bb.as ], [ %i.qf, %bb.au ], [ %i.qf, %bb.av ]
  %i.rt = phi ptr [ %i.oz, %bb.as ], [ %i.qe, %bb.au ], [ %i.qe, %bb.av ] ; 2 uses
  %i.ru = phi ptr [ %i.nu, %bb.as ], [ %i.qc, %bb.au ], [ %i.qc, %bb.av ] ; 3 uses
  %i.rv = phi i8 [ %i.pj, %bb.as ], [ %i.qw, %bb.au ], [ %i.qw, %bb.av ]
  %.0.i7881049 = phi ptr [ %i.op, %bb.as ], [ %i.qq, %bb.au ], [ %i.qq, %bb.av ] ; 4 uses
  %.094.i794 = phi i32 [ %i.pr, %bb.as ], [ %i.rc, %bb.au ], [ %i.rp, %bb.av ]
  %.093.i795 = phi i8 [ %i.po, %bb.as ], [ %i.qz, %bb.au ], [ %i.rl, %bb.av ]
  %i.rw = zext i8 %.in1384 to i32                 ; 4 uses
  %i.rx = trunc i64 %i.rq to i32                  ; 4 uses
  %i.ry = icmp ne i8 %i.rv, 0
  %i.rz = icmp ne i8 %.093.i795, 0
  %or.cond4.i796 = select i1 %i.ry, i1 true, i1 %i.rz
  br i1 %or.cond4.i796, label %.sink.split1346, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.sa = load i16, ptr %i.ru, align 2, !tbaa !93
  %.in96.i797 = select i1 %i.oj, ptr %i.nj, ptr %i.oc
  %i.sb = load i32, ptr %.in96.i797, align 4, !tbaa !68
  %i.sc = sext i32 %i.sb to i64                   ; 2 uses
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.sc ; 2 uses
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !93
  %.not.i798 = icmp eq i16 %i.sa, %i.se
  br i1 %.not.i798, label %bb.ay, label %.sink.split1346

bb.ay:                                            ; preds = %bb.ax
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 2
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !93
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 2
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !93
  %.not98.i801 = icmp eq i16 %i.sg, %i.si
  br i1 %.not98.i801, label %bb.az, label %.sink.split1346

bb.az:                                            ; preds = %bb.ay
  %i.sj = load i32, ptr %i.og, align 4, !tbaa !56
  %i.sk = icmp eq i32 %i.sj, 2
  br i1 %i.sk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.sl = load i8, ptr %i.rt, align 1, !tbaa !55
  %i.sm = getelementptr inbounds i8, ptr %i.rt, i64 %i.sc
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !55
  %.not100.i807 = icmp eq i8 %i.sl, %i.sn
  br i1 %.not100.i807, label %bb.bb, label %.sink.split1346

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.so = lshr i32 %.094.i794, 2
  %i.sp = or i32 %i.so, %i.rr                     ; 2 uses
  %i.sq = and i32 %i.sp, 1
  %.not101.i802 = icmp eq i32 %i.sq, 0
  br i1 %.not101.i802, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.sr = load ptr, ptr %i.oh, align 8, !tbaa !94
  %i.ss = shl nsw i32 %i.rx, 3
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds i8, ptr %.0.i7881049, i64 %i.st
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %sext.i803 = shl i64 %i.rq, 32
  %i.sw = ashr exact i64 %sext.i803, 32
  tail call void %i.sr(ptr noundef nonnull %i.sv, i64 noundef %i.sw, i32 noundef %i.rw) #1, !inline_history !95
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.sx = and i32 %i.sp, 2
  %.not102.i804 = icmp eq i32 %i.sx, 0
  br i1 %.not102.i804, label %bb.be, label %.sink.split1346

.sink.split1346:                                  ; preds = %bb.bd, %bb.aw, %bb.ax, %bb.ay, %bb.ba
  %.sink1348.in = phi ptr [ %i.oi, %bb.aw ], [ %i.oi, %bb.ba ], [ %i.oi, %bb.ay ], [ %i.oi, %bb.ax ], [ %i.oh, %bb.bd ]
  %.sink1348 = load ptr, ptr %.sink1348.in, align 8, !tbaa !96
  %i.sy = shl nsw i32 %i.rx, 3
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds i8, ptr %.0.i7881049, i64 %i.sz
  %sext103.i805 = shl i64 %i.rq, 32
  %i.tb = ashr exact i64 %sext103.i805, 32
  tail call void %.sink1348(ptr noundef %i.ta, i64 noundef %i.tb, i32 noundef %i.rw) #1
  br label %bb.be

bb.be:                                            ; preds = %.sink.split1346, %bb.bd
  %i.tc = load i32, ptr %i.nx, align 4, !tbaa !68
  %i.td = ashr i32 %i.tc, %i.rs
  %i.te = and i32 %i.td, 11
  %or.cond6.i789 = icmp eq i32 %i.te, 3
  br i1 %or.cond6.i789, label %bb.bf, label %vc1_p_v_loop_filter.exit808

bb.bf:                                            ; preds = %bb.be
  %i.tf = and i32 %i.rr, 5
  %.not105.i790 = icmp eq i32 %i.tf, 0
  br i1 %.not105.i790, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.tg = load ptr, ptr %i.oh, align 8, !tbaa !94
  %i.th = shl nsw i32 %i.rx, 2
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds i8, ptr %.0.i7881049, i64 %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  %sext106.i791 = shl i64 %i.rq, 32
  %i.tl = ashr exact i64 %sext106.i791, 32
  tail call void %i.tg(ptr noundef nonnull %i.tk, i64 noundef %i.tl, i32 noundef %i.rw) #1, !inline_history !95
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.tm = and i32 %i.rr, 10
  %.not107.i792 = icmp eq i32 %i.tm, 0
  br i1 %.not107.i792, label %vc1_p_v_loop_filter.exit808, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.tn = load ptr, ptr %i.oh, align 8, !tbaa !94
  %i.to = shl nsw i32 %i.rx, 2
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds i8, ptr %.0.i7881049, i64 %i.tp
  %sext108.i793 = shl i64 %i.rq, 32
  %i.tr = ashr exact i64 %sext108.i793, 32
  tail call void %i.tn(ptr noundef %i.tq, i64 noundef %i.tr, i32 noundef %i.rw) #1, !inline_history !95
  br label %vc1_p_v_loop_filter.exit808

vc1_p_v_loop_filter.exit808:                      ; preds = %bb.be, %bb.bh, %bb.bi
  %indvars.iv.next1227 = add nuw nsw i64 %indvars.iv1226, 1 ; 2 uses
  %exitcond1229.not = icmp eq i64 %indvars.iv.next1227, 6
  br i1 %exitcond1229.not, label %.loopexit1176.loopexit, label %bb.ar, !llvm.loop !99

.loopexit1176.loopexit:                           ; preds = %vc1_p_v_loop_filter.exit808
  %.pre1278 = load i32, ptr %i.my, align 4, !tbaa !9
  br label %.loopexit1176

.loopexit1176:                                    ; preds = %.loopexit1176.loopexit, %bb.ap
  %i.ts = phi i32 [ %.pre1278, %.loopexit1176.loopexit ], [ %i.mz, %bb.ap ]
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 16, !tbaa !71
  %i.tv = getelementptr inbounds i8, ptr %i.tu, i64 -16
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.tx = load ptr, ptr %i.tw, align 16, !tbaa !84
  %i.ty = add nsw i32 %i.ts, -1
  %i.tz = sext i32 %i.ty to i64                   ; 3 uses
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.tz ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.uc = load ptr, ptr %i.ub, align 16, !tbaa !85
  %i.ud = getelementptr inbounds i8, ptr %i.uc, i64 %i.tz
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.uf = load ptr, ptr %i.ue, align 16, !tbaa !87
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.tz
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 9912
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 5304
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit1176, %vc1_p_v_loop_filter.exit786
  %indvars.iv1230 = phi i64 [ 0, %.loopexit1176 ], [ %indvars.iv.next1231, %vc1_p_v_loop_filter.exit786 ] ; 9 uses
  %i.us = icmp samesign ugt i64 %indvars.iv1230, 3
  br i1 %i.us, label %.thread1315, label %bb.bk

.thread1315:                                      ; preds = %bb.bj
  %i.ut = getelementptr [8 x i8], ptr %i.tt, i64 %indvars.iv1230
  %i.uu = getelementptr i8, ptr %i.ut, i64 -24
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !71
  %i.uw = getelementptr inbounds i8, ptr %i.uv, i64 -8
  %i.ux = load i8, ptr %i.uh, align 8, !tbaa !51
  %i.uy = zext i8 %i.ux to i32
  %i.uz = load i32, ptr %i.ua, align 4, !tbaa !68
  %indvars.iv1230.tr = trunc nuw nsw i64 %indvars.iv1230 to i32
  %i.va = shl nuw nsw i32 %indvars.iv1230.tr, 2   ; 2 uses
  %i.vb = lshr i32 %i.uz, %i.va
  %i.vc = load i64, ptr %i.ui, align 8, !tbaa !89 ; 2 uses
  %i.vd = trunc i64 %i.vc to i32
  br label %.thread1053

bb.bk:                                            ; preds = %bb.bj
  %i.ve = load ptr, ptr %i.uk, align 16, !tbaa !90
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %indvars.iv1230
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !68
  %i.vh = add nsw i32 %i.vg, -2
  %i.vi = load i32, ptr %i.um, align 8, !tbaa !92
  %i.vj = add nsw i32 %i.vh, %i.vi
  %i.vk = sext i32 %i.vj to i64                   ; 2 uses
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.vk ; 3 uses
  %i.vm = load ptr, ptr %i.un, align 8, !tbaa !71
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 %i.vk ; 2 uses
  %i.vo = load i8, ptr %i.uh, align 8, !tbaa !51
  %i.vp = zext i8 %i.vo to i32                    ; 7 uses
  %i.vq = load i32, ptr %i.ua, align 4, !tbaa !68 ; 2 uses
  %i.vr = shl nuw nsw i64 %indvars.iv1230, 2      ; 3 uses
  %i.vs = trunc nuw nsw i64 %i.vr to i32          ; 5 uses
  %i.vt = lshr i32 %i.vq, %i.vs                   ; 5 uses
  %i.vu = load i64, ptr %i.uj, align 16, !tbaa !89 ; 9 uses
  %i.vv = trunc i64 %i.vu to i32                  ; 7 uses
  %i.vw = and i64 %i.vr, 8
  %i.vx = mul nsw i64 %i.vu, %i.vw
  %i.vy = getelementptr inbounds i8, ptr %i.tv, i64 %i.vx
  %i.vz = shl nuw nsw i64 %indvars.iv1230, 3
  %i.wa = and i64 %i.vz, 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.wa ; 7 uses
  %i.wc = icmp samesign ult i64 %indvars.iv1230, 2
  br i1 %i.wc, label %bb.bl, label %.thread1053

bb.bl:                                            ; preds = %bb.bk
  %i.wd = load i8, ptr %i.ud, align 1, !tbaa !55  ; 2 uses
  %i.we = trunc nuw nsw i64 %indvars.iv1230 to i32 ; 2 uses
  %i.wf = shl nuw nsw i32 1, %i.we
  %i.wg = trunc nuw nsw i32 %i.wf to i8
  %i.wh = and i8 %i.wd, %i.wg
  %i.wi = shl nuw nsw i32 4, %i.we
  %i.wj = trunc nuw nsw i32 %i.wi to i8
  %i.wk = and i8 %i.wd, %i.wj
  %i.wl = trunc nuw nsw i64 %i.vr to i32
  %i.wm = or disjoint i32 %i.wl, 8
  %i.wn = lshr i32 %i.vq, %i.wm
  %i.wo = icmp ne i8 %i.wh, 0
  %i.wp = icmp ne i8 %i.wk, 0
  %or.cond4.i774 = select i1 %i.wo, i1 true, i1 %i.wp
  br i1 %or.cond4.i774, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wq = load i16, ptr %i.vl, align 2, !tbaa !93
  %i.wr = load i32, ptr %i.uo, align 16, !tbaa !68
  %i.ws = sext i32 %i.wr to i64                   ; 2 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.ws ; 2 uses
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !93
  %.not.i776 = icmp eq i16 %i.wq, %i.wu
  br i1 %.not.i776, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vl, i64 2
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !93
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 2
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !93
  %.not98.i779 = icmp eq i16 %i.ww, %i.wy
  br i1 %.not98.i779, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.wz = load i32, ptr %i.up, align 4, !tbaa !56
  %i.xa = icmp eq i32 %i.wz, 2
  br i1 %i.xa, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.xb = load i8, ptr %i.vn, align 1, !tbaa !55
  %i.xc = getelementptr inbounds i8, ptr %i.vn, i64 %i.ws
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !55
  %.not100.i785 = icmp eq i8 %i.xb, %i.xd
  br i1 %.not100.i785, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %bb.bm, %bb.bl
  %i.xe = load ptr, ptr %i.ur, align 8, !tbaa !77
  %i.xf = shl nsw i32 %i.vv, 3
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds i8, ptr %i.wb, i64 %i.xg
  %sext104.i777 = shl i64 %i.vu, 32
  %i.xi = ashr exact i64 %sext104.i777, 32
  tail call void %i.xe(ptr noundef nonnull %i.xh, i64 noundef %i.xi, i32 noundef %i.vp) #1, !inline_history !95
  br label %.thread1053

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %i.xj = lshr i32 %i.wn, 2
  %i.xk = or i32 %i.xj, %i.vt                     ; 2 uses
  %i.xl = and i32 %i.xk, 1
  %.not101.i780 = icmp eq i32 %i.xl, 0
  br i1 %.not101.i780, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.xm = load ptr, ptr %i.uq, align 8, !tbaa !94
  %i.xn = shl nsw i32 %i.vv, 3
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds i8, ptr %i.wb, i64 %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %sext.i781 = shl i64 %i.vu, 32
  %i.xr = ashr exact i64 %sext.i781, 32
  tail call void %i.xm(ptr noundef nonnull %i.xq, i64 noundef %i.xr, i32 noundef %i.vp) #1, !inline_history !95
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.xs = and i32 %i.xk, 2
  %.not102.i782 = icmp eq i32 %i.xs, 0
  br i1 %.not102.i782, label %.thread1053, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.xt = load ptr, ptr %i.uq, align 8, !tbaa !94
  %i.xu = shl nsw i32 %i.vv, 3
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds i8, ptr %i.wb, i64 %i.xv
  %sext103.i783 = shl i64 %i.vu, 32
  %i.xx = ashr exact i64 %sext103.i783, 32
  tail call void %i.xt(ptr noundef nonnull %i.xw, i64 noundef %i.xx, i32 noundef %i.vp) #1, !inline_history !95
  br label %.thread1053

.thread1053:                                      ; preds = %.thread1315, %bb.bu, %bb.bt, %bb.bq, %bb.bk
  %i.xy = phi i32 [ %i.vv, %bb.bk ], [ %i.vv, %bb.bu ], [ %i.vv, %bb.bt ], [ %i.vv, %bb.bq ], [ %i.vd, %.thread1315 ] ; 2 uses
  %i.xz = phi i64 [ %i.vu, %bb.bk ], [ %i.vu, %bb.bu ], [ %i.vu, %bb.bt ], [ %i.vu, %bb.bq ], [ %i.vc, %.thread1315 ] ; 2 uses
  %i.ya = phi i32 [ %i.vt, %bb.bk ], [ %i.vt, %bb.bu ], [ %i.vt, %bb.bt ], [ %i.vt, %bb.bq ], [ %i.vb, %.thread1315 ] ; 2 uses
  %i.yb = phi i32 [ %i.vs, %bb.bk ], [ %i.vs, %bb.bu ], [ %i.vs, %bb.bt ], [ %i.vs, %bb.bq ], [ %i.va, %.thread1315 ]
  %i.yc = phi i32 [ %i.vp, %bb.bk ], [ %i.vp, %bb.bu ], [ %i.vp, %bb.bt ], [ %i.vp, %bb.bq ], [ %i.uy, %.thread1315 ] ; 2 uses
  %.0.i7661055 = phi ptr [ %i.wb, %bb.bk ], [ %i.wb, %bb.bu ], [ %i.wb, %bb.bt ], [ %i.wb, %bb.bq ], [ %i.uw, %.thread1315 ] ; 2 uses
  %i.yd = load i32, ptr %i.ug, align 4, !tbaa !68
  %i.ye = ashr i32 %i.yd, %i.yb
  %i.yf = and i32 %i.ye, 11
  %or.cond6.i767 = icmp eq i32 %i.yf, 3
  br i1 %or.cond6.i767, label %bb.bv, label %vc1_p_v_loop_filter.exit786

bb.bv:                                            ; preds = %.thread1053
  %i.yg = and i32 %i.ya, 5
  %.not105.i768 = icmp eq i32 %i.yg, 0
  br i1 %.not105.i768, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.yh = load ptr, ptr %i.uq, align 8, !tbaa !94
  %i.yi = shl nsw i32 %i.xy, 2
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds i8, ptr %.0.i7661055, i64 %i.yj
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 4
  %sext106.i769 = shl i64 %i.xz, 32
  %i.ym = ashr exact i64 %sext106.i769, 32
  tail call void %i.yh(ptr noundef nonnull %i.yl, i64 noundef %i.ym, i32 noundef %i.yc) #1, !inline_history !95
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.yn = and i32 %i.ya, 10
  %.not107.i770 = icmp eq i32 %i.yn, 0
  br i1 %.not107.i770, label %vc1_p_v_loop_filter.exit786, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.yo = load ptr, ptr %i.uq, align 8, !tbaa !94
  %i.yp = shl nsw i32 %i.xy, 2
  %i.yq = sext i32 %i.yp to i64
  %i.yr = getelementptr inbounds i8, ptr %.0.i7661055, i64 %i.yq
  %sext108.i771 = shl i64 %i.xz, 32
  %i.ys = ashr exact i64 %sext108.i771, 32
  tail call void %i.yo(ptr noundef %i.yr, i64 noundef %i.ys, i32 noundef %i.yc) #1, !inline_history !95
  br label %vc1_p_v_loop_filter.exit786

vc1_p_v_loop_filter.exit786:                      ; preds = %.thread1053, %bb.bx, %bb.by
  %indvars.iv.next1231 = add nuw nsw i64 %indvars.iv1230, 1 ; 2 uses
  %exitcond1233.not = icmp eq i64 %indvars.iv.next1231, 6
  br i1 %exitcond1233.not, label %.loopexit1175.loopexit, label %bb.bj, !llvm.loop !100

.loopexit1175.loopexit:                           ; preds = %vc1_p_v_loop_filter.exit786
  %.pre1279 = load i32, ptr %i.my, align 4, !tbaa !9
  %.pre1282.pre = load i32, ptr %i.a, align 8, !tbaa !37
  br label %.loopexit1175

.loopexit1175:                                    ; preds = %.loopexit1175.loopexit, %bb.ao
  %.pre1282 = phi i32 [ %.pre1282.pre, %.loopexit1175.loopexit ], [ %i.mt, %bb.ao ] ; 2 uses
  %i.yt = phi i32 [ %.pre1279, %.loopexit1175.loopexit ], [ 0, %bb.ao ] ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !65
  %i.yw = add nsw i32 %i.yv, -1
  %i.yx = icmp eq i32 %i.yt, %i.yw
  br i1 %i.yx, label %bb.bz, label %.loopexit1173

bb.bz:                                            ; preds = %.loopexit1175
  %i.yy = load i32, ptr %i.c, align 16, !tbaa !73
  %.not720.not = icmp sgt i32 %.pre1282, %i.yy
  br i1 %.not720.not, label %bb.ca, label %.loopexit1174

bb.ca:                                            ; preds = %bb.bz
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.za = load ptr, ptr %i.yz, align 16, !tbaa !71
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 16, !tbaa !72
  %.neg721 = mul i64 %i.zc, -16
  %i.zd = getelementptr inbounds i8, ptr %i.za, i64 %.neg721
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.zf = load ptr, ptr %i.ze, align 16, !tbaa !84
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 5 uses
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !38
  %i.zi = sub nsw i32 %i.yt, %i.zh
  %i.zj = sext i32 %i.zi to i64                   ; 4 uses
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.zj ; 4 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.zm = load ptr, ptr %i.zl, align 16, !tbaa !85
  %i.zn = getelementptr inbounds i8, ptr %i.zm, i64 %i.zj ; 4 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.zp = load ptr, ptr %i.zo, align 16, !tbaa !86
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.zj
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.zs = load ptr, ptr %i.zr, align 16, !tbaa !87
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zs, i64 %i.zj
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 4 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 4 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %vc1_p_v_loop_filter.exit764
  %indvars.iv1234 = phi i64 [ 0, %bb.ca ], [ %indvars.iv.next1235, %vc1_p_v_loop_filter.exit764 ] ; 12 uses
  %i.aaf = icmp samesign ugt i64 %indvars.iv1234, 3 ; 2 uses
  br i1 %i.aaf, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.aag = getelementptr [8 x i8], ptr %i.yz, i64 %indvars.iv1234
  %i.aah = getelementptr i8, ptr %i.aag, i64 -24
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !71
  %i.aaj = load i64, ptr %i.zv, align 8, !tbaa !76
  %.neg739 = mul i64 %i.aaj, -8
  %i.aak = getelementptr inbounds i8, ptr %i.aai, i64 %.neg739
  %i.aal = load ptr, ptr %i.aaa, align 8, !tbaa !71
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %indvars.iv1234
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !68
  %i.aao = load i32, ptr %i.zg, align 4, !tbaa !38
  %i.aap = sub i32 %i.aan, %i.aao
  %i.aaq = load i32, ptr %i.aab, align 4, !tbaa !88
  %i.aar = add nsw i32 %i.aap, %i.aaq
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds i8, ptr %i.aal, i64 %i.aas
  %i.aau = load i8, ptr %i.zu, align 8, !tbaa !51
  %i.aav = load i32, ptr %i.zk, align 4, !tbaa !68
  %indvars.iv1234.tr = trunc nuw nsw i64 %indvars.iv1234 to i32
  %i.aaw = shl nuw nsw i32 %indvars.iv1234.tr, 2  ; 3 uses
  %i.aax = lshr i32 %i.aav, %i.aaw
  %i.aay = load i64, ptr %i.zv, align 8, !tbaa !89
  %i.aaz = load i8, ptr %i.zn, align 1, !tbaa !55
  %i.aba = trunc nuw nsw i64 %indvars.iv1234 to i32
  %i.abb = shl nuw nsw i32 1, %i.aba
  %i.abc = trunc nuw nsw i32 %i.abb to i8         ; 2 uses
  %i.abd = and i8 %i.aaz, %i.abc
  %i.abe = load i32, ptr %i.zg, align 4, !tbaa !38
  %i.abf = sext i32 %i.abe to i64                 ; 2 uses
  %i.abg = getelementptr inbounds i8, ptr %i.zn, i64 %i.abf
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !55
  %i.abi = and i8 %i.abh, %i.abc
  %i.abj = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.abf
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !68
  %i.abl = lshr i32 %i.abk, %i.aaw
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %i.abm = load ptr, ptr %i.zw, align 16, !tbaa !90
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %indvars.iv1234
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !68
  %i.abp = load i32, ptr %i.zy, align 16, !tbaa !91
  %i.abq = shl i32 %i.abp, 1
  %i.abr = sub i32 %i.abo, %i.abq
  %i.abs = load i32, ptr %i.zz, align 8, !tbaa !92
  %i.abt = add nsw i32 %i.abr, %i.abs
  %i.abu = sext i32 %i.abt to i64                 ; 2 uses
  %i.abv = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.abu ; 2 uses
  %i.abw = load ptr, ptr %i.aaa, align 8, !tbaa !71
  %i.abx = getelementptr inbounds i8, ptr %i.abw, i64 %i.abu ; 2 uses
  %i.aby = load i8, ptr %i.zu, align 8, !tbaa !51 ; 2 uses
  %i.abz = load i32, ptr %i.zk, align 4, !tbaa !68 ; 2 uses
  %i.aca = shl nuw nsw i64 %indvars.iv1234, 2     ; 3 uses
  %i.acb = trunc nuw nsw i64 %i.aca to i32        ; 3 uses
  %i.acc = lshr i32 %i.abz, %i.acb                ; 2 uses
  %i.acd = load i64, ptr %i.zb, align 16, !tbaa !89 ; 3 uses
  %i.ace = and i64 %i.aca, 8
  %i.acf = mul nsw i64 %i.acd, %i.ace
  %i.acg = getelementptr inbounds i8, ptr %i.zd, i64 %i.acf
  %i.ach = shl nuw nsw i64 %indvars.iv1234, 3
  %i.aci = and i64 %i.ach, 8
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aci ; 2 uses
  %i.ack = icmp samesign ult i64 %indvars.iv1234, 2
  %i.acl = load i8, ptr %i.zn, align 1, !tbaa !55 ; 2 uses
  %i.acm = trunc nuw nsw i64 %indvars.iv1234 to i32 ; 2 uses
  %i.acn = shl nuw nsw i32 1, %i.acm
  %i.aco = trunc nuw nsw i32 %i.acn to i8
  %i.acp = and i8 %i.acl, %i.aco                  ; 2 uses
  br i1 %i.ack, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.acq = shl nuw nsw i32 4, %i.acm
  %i.acr = trunc nuw nsw i32 %i.acq to i8
  %i.acs = and i8 %i.acl, %i.acr
  %i.act = trunc nuw nsw i64 %i.aca to i32
  %i.acu = or disjoint i32 %i.act, 8
  %i.acv = lshr i32 %i.abz, %i.acu
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.acw = load i32, ptr %i.zg, align 4, !tbaa !38
  %i.acx = sext i32 %i.acw to i64                 ; 2 uses
  %i.acy = getelementptr inbounds i8, ptr %i.zn, i64 %i.acx
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !55
  %i.ada = add nsw i64 %indvars.iv1234, -2        ; 2 uses
  %i.adb = trunc nuw nsw i64 %i.ada to i32
  %i.adc = shl nuw nsw i32 1, %i.adb
  %i.add = trunc nuw nsw i32 %i.adc to i8
  %i.ade = and i8 %i.acz, %i.add
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.acx
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !68
  %.tr1303 = trunc nuw nsw i64 %i.ada to i32
  %i.adh = shl nuw nsw i32 %.tr1303, 2
  %i.adi = lshr i32 %i.adg, %i.adh
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cc
  %i.adj = phi i64 [ %i.aay, %bb.cc ], [ %i.acd, %bb.ce ], [ %i.acd, %bb.cf ] ; 5 uses
  %i.adk = phi i32 [ %i.aax, %bb.cc ], [ %i.acc, %bb.ce ], [ %i.acc, %bb.cf ] ; 3 uses
  %i.adl = phi i32 [ %i.aaw, %bb.cc ], [ %i.acb, %bb.ce ], [ %i.acb, %bb.cf ]
  %.in1386 = phi i8 [ %i.aau, %bb.cc ], [ %i.aby, %bb.ce ], [ %i.aby, %bb.cf ]
  %i.adm = phi ptr [ %i.aat, %bb.cc ], [ %i.abx, %bb.ce ], [ %i.abx, %bb.cf ] ; 2 uses
  %i.adn = phi ptr [ %i.zq, %bb.cc ], [ %i.abv, %bb.ce ], [ %i.abv, %bb.cf ] ; 3 uses
  %i.ado = phi i8 [ %i.abd, %bb.cc ], [ %i.acp, %bb.ce ], [ %i.acp, %bb.cf ]
  %.0.i7441060 = phi ptr [ %i.aak, %bb.cc ], [ %i.acj, %bb.ce ], [ %i.acj, %bb.cf ] ; 4 uses
  %.094.i750 = phi i32 [ %i.abl, %bb.cc ], [ %i.acv, %bb.ce ], [ %i.adi, %bb.cf ]
  %.093.i751 = phi i8 [ %i.abi, %bb.cc ], [ %i.acs, %bb.ce ], [ %i.ade, %bb.cf ]
  %i.adp = zext i8 %.in1386 to i32                ; 4 uses
  %i.adq = trunc i64 %i.adj to i32                ; 4 uses
  %i.adr = icmp ne i8 %i.ado, 0
  %i.ads = icmp ne i8 %.093.i751, 0
  %or.cond4.i752 = select i1 %i.adr, i1 true, i1 %i.ads
  br i1 %or.cond4.i752, label %.sink.split1350, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.adt = load i16, ptr %i.adn, align 2, !tbaa !93
  %.in96.i753 = select i1 %i.aaf, ptr %i.zg, ptr %i.zy
  %i.adu = load i32, ptr %.in96.i753, align 4, !tbaa !68
  %i.adv = sext i32 %i.adu to i64                 ; 2 uses
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.adn, i64 %i.adv ; 2 uses
  %i.adx = load i16, ptr %i.adw, align 2, !tbaa !93
  %.not.i754 = icmp eq i16 %i.adt, %i.adx
  br i1 %.not.i754, label %bb.ci, label %.sink.split1350

bb.ci:                                            ; preds = %bb.ch
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adn, i64 2
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !93
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adw, i64 2
  %i.aeb = load i16, ptr %i.aea, align 2, !tbaa !93
  %.not98.i757 = icmp eq i16 %i.adz, %i.aeb
  br i1 %.not98.i757, label %bb.cj, label %.sink.split1350

bb.cj:                                            ; preds = %bb.ci
  %i.aec = load i32, ptr %i.aac, align 4, !tbaa !56
  %i.aed = icmp eq i32 %i.aec, 2
  br i1 %i.aed, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.aee = load i8, ptr %i.adm, align 1, !tbaa !55
  %i.aef = getelementptr inbounds i8, ptr %i.adm, i64 %i.adv
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !55
  %.not100.i763 = icmp eq i8 %i.aee, %i.aeg
  br i1 %.not100.i763, label %bb.cl, label %.sink.split1350

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.aeh = lshr i32 %.094.i750, 2
  %i.aei = or i32 %i.aeh, %i.adk                  ; 2 uses
  %i.aej = and i32 %i.aei, 1
  %.not101.i758 = icmp eq i32 %i.aej, 0
  br i1 %.not101.i758, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aek = load ptr, ptr %i.aad, align 8, !tbaa !94
  %i.ael = shl nsw i32 %i.adq, 3
  %i.aem = sext i32 %i.ael to i64
  %i.aen = getelementptr inbounds i8, ptr %.0.i7441060, i64 %i.aem
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 4
  %sext.i759 = shl i64 %i.adj, 32
  %i.aep = ashr exact i64 %sext.i759, 32
  tail call void %i.aek(ptr noundef nonnull %i.aeo, i64 noundef %i.aep, i32 noundef %i.adp) #1, !inline_history !95
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.aeq = and i32 %i.aei, 2
  %.not102.i760 = icmp eq i32 %i.aeq, 0
  br i1 %.not102.i760, label %bb.co, label %.sink.split1350

.sink.split1350:                                  ; preds = %bb.cn, %bb.cg, %bb.ch, %bb.ci, %bb.ck
  %.sink1352.in = phi ptr [ %i.aae, %bb.cg ], [ %i.aae, %bb.ck ], [ %i.aae, %bb.ci ], [ %i.aae, %bb.ch ], [ %i.aad, %bb.cn ]
  %.sink1352 = load ptr, ptr %.sink1352.in, align 8, !tbaa !96
  %i.aer = shl nsw i32 %i.adq, 3
  %i.aes = sext i32 %i.aer to i64
  %i.aet = getelementptr inbounds i8, ptr %.0.i7441060, i64 %i.aes
  %sext103.i761 = shl i64 %i.adj, 32
  %i.aeu = ashr exact i64 %sext103.i761, 32
  tail call void %.sink1352(ptr noundef %i.aet, i64 noundef %i.aeu, i32 noundef %i.adp) #1
  br label %bb.co

bb.co:                                            ; preds = %.sink.split1350, %bb.cn
  %i.aev = load i32, ptr %i.zt, align 4, !tbaa !68
  %i.aew = ashr i32 %i.aev, %i.adl
  %i.aex = and i32 %i.aew, 11
  %or.cond6.i745 = icmp eq i32 %i.aex, 3
  br i1 %or.cond6.i745, label %bb.cp, label %vc1_p_v_loop_filter.exit764

bb.cp:                                            ; preds = %bb.co
  %i.aey = and i32 %i.adk, 5
  %.not105.i746 = icmp eq i32 %i.aey, 0
  br i1 %.not105.i746, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aez = load ptr, ptr %i.aad, align 8, !tbaa !94
  %i.afa = shl nsw i32 %i.adq, 2
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr inbounds i8, ptr %.0.i7441060, i64 %i.afb
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 4
  %sext106.i747 = shl i64 %i.adj, 32
  %i.afe = ashr exact i64 %sext106.i747, 32
  tail call void %i.aez(ptr noundef nonnull %i.afd, i64 noundef %i.afe, i32 noundef %i.adp) #1, !inline_history !95
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.aff = and i32 %i.adk, 10
  %.not107.i748 = icmp eq i32 %i.aff, 0
  br i1 %.not107.i748, label %vc1_p_v_loop_filter.exit764, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.afg = load ptr, ptr %i.aad, align 8, !tbaa !94
  %i.afh = shl nsw i32 %i.adq, 2
  %i.afi = sext i32 %i.afh to i64
  %i.afj = getelementptr inbounds i8, ptr %.0.i7441060, i64 %i.afi
  %sext108.i749 = shl i64 %i.adj, 32
  %i.afk = ashr exact i64 %sext108.i749, 32
  tail call void %i.afg(ptr noundef %i.afj, i64 noundef %i.afk, i32 noundef %i.adp) #1, !inline_history !95
  br label %vc1_p_v_loop_filter.exit764

vc1_p_v_loop_filter.exit764:                      ; preds = %bb.co, %bb.cr, %bb.cs
  %indvars.iv.next1235 = add nuw nsw i64 %indvars.iv1234, 1 ; 2 uses
  %exitcond1237.not = icmp eq i64 %indvars.iv.next1235, 6
  br i1 %exitcond1237.not, label %.loopexit1174.loopexit, label %bb.cb, !llvm.loop !101

.loopexit1174.loopexit:                           ; preds = %vc1_p_v_loop_filter.exit764
  %.pre1280 = load i32, ptr %i.my, align 4, !tbaa !9
  br label %.loopexit1174

.loopexit1174:                                    ; preds = %.loopexit1174.loopexit, %bb.bz
  %i.afl = phi i32 [ %.pre1280, %.loopexit1174.loopexit ], [ %i.yt, %bb.bz ]
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.afn = load ptr, ptr %i.afm, align 16, !tbaa !71
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.afp = load ptr, ptr %i.afo, align 16, !tbaa !84
  %i.afq = sext i32 %i.afl to i64                 ; 3 uses
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.afp, i64 %i.afq ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.aft = load ptr, ptr %i.afs, align 16, !tbaa !85
  %i.afu = getelementptr inbounds i8, ptr %i.aft, i64 %i.afq
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.afw = load ptr, ptr %i.afv, align 16, !tbaa !87
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.afq
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 9912
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 4 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 5304
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit1174, %vc1_p_v_loop_filter.exit
  %indvars.iv1238 = phi i64 [ 0, %.loopexit1174 ], [ %indvars.iv.next1239, %vc1_p_v_loop_filter.exit ] ; 9 uses
  %i.agj = icmp samesign ugt i64 %indvars.iv1238, 3
  br i1 %i.agj, label %.thread1319, label %bb.cu

.thread1319:                                      ; preds = %bb.ct
  %i.agk = getelementptr [8 x i8], ptr %i.afm, i64 %indvars.iv1238
  %i.agl = getelementptr i8, ptr %i.agk, i64 -24
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !71
  %i.agn = load i8, ptr %i.afy, align 8, !tbaa !51
  %i.ago = zext i8 %i.agn to i32
  %i.agp = load i32, ptr %i.afr, align 4, !tbaa !68
  %indvars.iv1238.tr = trunc nuw nsw i64 %indvars.iv1238 to i32
  %i.agq = shl nuw nsw i32 %indvars.iv1238.tr, 2  ; 2 uses
  %i.agr = lshr i32 %i.agp, %i.agq
  %i.ags = load i64, ptr %i.afz, align 8, !tbaa !89 ; 2 uses
  %i.agt = trunc i64 %i.ags to i32
  br label %.thread1064

bb.cu:                                            ; preds = %bb.ct
  %i.agu = load ptr, ptr %i.agb, align 16, !tbaa !90
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %indvars.iv1238
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !68
  %i.agx = load i32, ptr %i.agd, align 8, !tbaa !92
  %i.agy = add nsw i32 %i.agx, %i.agw
  %i.agz = sext i32 %i.agy to i64                 ; 2 uses
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.agz ; 3 uses
  %i.ahb = load ptr, ptr %i.age, align 8, !tbaa !71
  %i.ahc = getelementptr inbounds i8, ptr %i.ahb, i64 %i.agz ; 2 uses
  %i.ahd = load i8, ptr %i.afy, align 8, !tbaa !51
  %i.ahe = zext i8 %i.ahd to i32                  ; 7 uses
  %i.ahf = load i32, ptr %i.afr, align 4, !tbaa !68 ; 2 uses
  %i.ahg = shl nuw nsw i64 %indvars.iv1238, 2     ; 3 uses
  %i.ahh = trunc nuw nsw i64 %i.ahg to i32        ; 5 uses
  %i.ahi = lshr i32 %i.ahf, %i.ahh                ; 5 uses
  %i.ahj = load i64, ptr %i.aga, align 16, !tbaa !89 ; 9 uses
  %i.ahk = trunc i64 %i.ahj to i32                ; 7 uses
  %i.ahl = and i64 %i.ahg, 8
  %i.ahm = mul nsw i64 %i.ahj, %i.ahl
  %i.ahn = getelementptr inbounds i8, ptr %i.afn, i64 %i.ahm
  %i.aho = shl nuw nsw i64 %indvars.iv1238, 3
  %i.ahp = and i64 %i.aho, 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahn, i64 %i.ahp ; 7 uses
  %i.ahr = icmp samesign ult i64 %indvars.iv1238, 2
  br i1 %i.ahr, label %bb.cv, label %.thread1064

bb.cv:                                            ; preds = %bb.cu
  %i.ahs = load i8, ptr %i.afu, align 1, !tbaa !55 ; 2 uses
  %i.aht = trunc nuw nsw i64 %indvars.iv1238 to i32 ; 2 uses
  %i.ahu = shl nuw nsw i32 1, %i.aht
  %i.ahv = trunc nuw nsw i32 %i.ahu to i8
  %i.ahw = and i8 %i.ahs, %i.ahv
  %i.ahx = shl nuw nsw i32 4, %i.aht
  %i.ahy = trunc nuw nsw i32 %i.ahx to i8
  %i.ahz = and i8 %i.ahs, %i.ahy
  %i.aia = trunc nuw nsw i64 %i.ahg to i32
  %i.aib = or disjoint i32 %i.aia, 8
  %i.aic = lshr i32 %i.ahf, %i.aib
  %i.aid = icmp ne i8 %i.ahw, 0
  %i.aie = icmp ne i8 %i.ahz, 0
  %or.cond4.i = select i1 %i.aid, i1 true, i1 %i.aie
  br i1 %or.cond4.i, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aif = load i16, ptr %i.aha, align 2, !tbaa !93
  %i.aig = load i32, ptr %i.agf, align 16, !tbaa !68
  %i.aih = sext i32 %i.aig to i64                 ; 2 uses
  %i.aii = getelementptr inbounds [4 x i8], ptr %i.aha, i64 %i.aih ; 2 uses
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !93
  %.not.i = icmp eq i16 %i.aif, %i.aij
  br i1 %.not.i, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aha, i64 2
  %i.ail = load i16, ptr %i.aik, align 2, !tbaa !93
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aii, i64 2
  %i.ain = load i16, ptr %i.aim, align 2, !tbaa !93
  %.not98.i = icmp eq i16 %i.ail, %i.ain
  br i1 %.not98.i, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.aio = load i32, ptr %i.agg, align 4, !tbaa !56
  %i.aip = icmp eq i32 %i.aio, 2
  br i1 %i.aip, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.aiq = load i8, ptr %i.ahc, align 1, !tbaa !55
  %i.air = getelementptr inbounds i8, ptr %i.ahc, i64 %i.aih
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !55
  %.not100.i = icmp eq i8 %i.aiq, %i.ais
  br i1 %.not100.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cx, %bb.cw, %bb.cv
  %i.ait = load ptr, ptr %i.agi, align 8, !tbaa !77
  %i.aiu = shl nsw i32 %i.ahk, 3
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds i8, ptr %i.ahq, i64 %i.aiv
  %sext104.i = shl i64 %i.ahj, 32
  %i.aix = ashr exact i64 %sext104.i, 32
  tail call void %i.ait(ptr noundef %i.aiw, i64 noundef %i.aix, i32 noundef %i.ahe) #1, !inline_history !95
  br label %.thread1064

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %i.aiy = lshr i32 %i.aic, 2
  %i.aiz = or i32 %i.aiy, %i.ahi                  ; 2 uses
  %i.aja = and i32 %i.aiz, 1
  %.not101.i = icmp eq i32 %i.aja, 0
  br i1 %.not101.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ajb = load ptr, ptr %i.agh, align 8, !tbaa !94
  %i.ajc = shl nsw i32 %i.ahk, 3
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = getelementptr inbounds i8, ptr %i.ahq, i64 %i.ajd
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 4
  %sext.i = shl i64 %i.ahj, 32
  %i.ajg = ashr exact i64 %sext.i, 32
  tail call void %i.ajb(ptr noundef nonnull %i.ajf, i64 noundef %i.ajg, i32 noundef %i.ahe) #1, !inline_history !95
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.ajh = and i32 %i.aiz, 2
  %.not102.i = icmp eq i32 %i.ajh, 0
  br i1 %.not102.i, label %.thread1064, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aji = load ptr, ptr %i.agh, align 8, !tbaa !94
  %i.ajj = shl nsw i32 %i.ahk, 3
  %i.ajk = sext i32 %i.ajj to i64
  %i.ajl = getelementptr inbounds i8, ptr %i.ahq, i64 %i.ajk
  %sext103.i = shl i64 %i.ahj, 32
  %i.ajm = ashr exact i64 %sext103.i, 32
  tail call void %i.aji(ptr noundef %i.ajl, i64 noundef %i.ajm, i32 noundef %i.ahe) #1, !inline_history !95
  br label %.thread1064

.thread1064:                                      ; preds = %.thread1319, %bb.de, %bb.dd, %bb.da, %bb.cu
  %i.ajn = phi i32 [ %i.ahk, %bb.cu ], [ %i.ahk, %bb.de ], [ %i.ahk, %bb.dd ], [ %i.ahk, %bb.da ], [ %i.agt, %.thread1319 ] ; 2 uses
  %i.ajo = phi i64 [ %i.ahj, %bb.cu ], [ %i.ahj, %bb.de ], [ %i.ahj, %bb.dd ], [ %i.ahj, %bb.da ], [ %i.ags, %.thread1319 ] ; 2 uses
  %i.ajp = phi i32 [ %i.ahi, %bb.cu ], [ %i.ahi, %bb.de ], [ %i.ahi, %bb.dd ], [ %i.ahi, %bb.da ], [ %i.agr, %.thread1319 ] ; 2 uses
  %i.ajq = phi i32 [ %i.ahh, %bb.cu ], [ %i.ahh, %bb.de ], [ %i.ahh, %bb.dd ], [ %i.ahh, %bb.da ], [ %i.agq, %.thread1319 ]
  %i.ajr = phi i32 [ %i.ahe, %bb.cu ], [ %i.ahe, %bb.de ], [ %i.ahe, %bb.dd ], [ %i.ahe, %bb.da ], [ %i.ago, %.thread1319 ] ; 2 uses
  %.0.i1066 = phi ptr [ %i.ahq, %bb.cu ], [ %i.ahq, %bb.de ], [ %i.ahq, %bb.dd ], [ %i.ahq, %bb.da ], [ %i.agm, %.thread1319 ] ; 2 uses
  %i.ajs = load i32, ptr %i.afx, align 4, !tbaa !68
  %i.ajt = ashr i32 %i.ajs, %i.ajq
  %i.aju = and i32 %i.ajt, 11
  %or.cond6.i = icmp eq i32 %i.aju, 3
  br i1 %or.cond6.i, label %bb.df, label %vc1_p_v_loop_filter.exit

bb.df:                                            ; preds = %.thread1064
  %i.ajv = and i32 %i.ajp, 5
  %.not105.i = icmp eq i32 %i.ajv, 0
  br i1 %.not105.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ajw = load ptr, ptr %i.agh, align 8, !tbaa !94
  %i.ajx = shl nsw i32 %i.ajn, 2
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds i8, ptr %.0.i1066, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 4
  %sext106.i = shl i64 %i.ajo, 32
  %i.akb = ashr exact i64 %sext106.i, 32
  tail call void %i.ajw(ptr noundef nonnull %i.aka, i64 noundef %i.akb, i32 noundef %i.ajr) #1, !inline_history !95
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.akc = and i32 %i.ajp, 10
  %.not107.i = icmp eq i32 %i.akc, 0
  br i1 %.not107.i, label %vc1_p_v_loop_filter.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.akd = load ptr, ptr %i.agh, align 8, !tbaa !94
  %i.ake = shl nsw i32 %i.ajn, 2
  %i.akf = sext i32 %i.ake to i64
  %i.akg = getelementptr inbounds i8, ptr %.0.i1066, i64 %i.akf
  %sext108.i = shl i64 %i.ajo, 32
  %i.akh = ashr exact i64 %sext108.i, 32
  tail call void %i.akd(ptr noundef %i.akg, i64 noundef %i.akh, i32 noundef %i.ajr) #1, !inline_history !95
  br label %vc1_p_v_loop_filter.exit

vc1_p_v_loop_filter.exit:                         ; preds = %.thread1064, %bb.dh, %bb.di
  %indvars.iv.next1239 = add nuw nsw i64 %indvars.iv1238, 1 ; 2 uses
  %exitcond1241.not = icmp eq i64 %indvars.iv.next1239, 6
  br i1 %exitcond1241.not, label %.loopexit1173.loopexit, label %bb.ct, !llvm.loop !102

.loopexit1173.loopexit:                           ; preds = %vc1_p_v_loop_filter.exit
  %.pre1281 = load i32, ptr %i.a, align 8, !tbaa !37
  br label %.loopexit1173

.loopexit1173:                                    ; preds = %.loopexit1173.loopexit, %.loopexit1175, %.loopexit1177
  %i.aki = phi i32 [ %.pre1281, %.loopexit1173.loopexit ], [ %.pre1282, %.loopexit1175 ], [ %i.mt, %.loopexit1177 ]
  %i.akj = load i32, ptr %i.c, align 16, !tbaa !73
  %i.akk = add nsw i32 %i.akj, 2
  %.not722 = icmp slt i32 %i.aki, %i.akk
  br i1 %.not722, label %.loopexit1171, label %bb.dj

bb.dj:                                            ; preds = %.loopexit1173
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 3 uses
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !9 ; 3 uses
  %i.akn = icmp sgt i32 %i.akm, 1
  br i1 %i.akn, label %bb.dk, label %bb.ed

bb.dk:                                            ; preds = %bb.dj
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 16, !tbaa !71
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.akr = load i64, ptr %i.akq, align 16, !tbaa !72
  %.neg723 = mul i64 %i.akr, -32
  %i.aks = getelementptr inbounds i8, ptr %i.akp, i64 %.neg723
  %i.akt = getelementptr inbounds i8, ptr %i.aks, i64 -32
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.akv = load ptr, ptr %i.aku, align 16, !tbaa !84
  %i.akw = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !38
  %i.aky = add nsw i32 %i.akm, -2
  %i.akz = shl i32 %i.akx, 1
  %i.ala = sub i32 %i.aky, %i.akz
  %i.alb = sext i32 %i.ala to i64                 ; 4 uses
  %i.alc = getelementptr inbounds [4 x i8], ptr %i.akv, i64 %i.alb ; 3 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.ale = load ptr, ptr %i.ald, align 16, !tbaa !85
  %i.alf = getelementptr inbounds i8, ptr %i.ale, i64 %i.alb ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.alh = load ptr, ptr %i.alg, align 16, !tbaa !86
  %i.ali = getelementptr inbounds [4 x i8], ptr %i.alh, i64 %i.alb
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.alk = load ptr, ptr %i.alj, align 16, !tbaa !87
  %i.all = getelementptr inbounds [4 x i8], ptr %i.alk, i64 %i.alb
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alf, i64 1 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alc, i64 4 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %vc1_p_h_loop_filter.exit1033
  %indvars.iv1242 = phi i64 [ 0, %bb.dk ], [ %indvars.iv.next1243, %vc1_p_h_loop_filter.exit1033 ] ; 11 uses
  %i.alz = icmp samesign ugt i64 %indvars.iv1242, 3
  br i1 %i.alz, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ama = getelementptr [8 x i8], ptr %i.ako, i64 %indvars.iv1242
  %i.amb = getelementptr i8, ptr %i.ama, i64 -24
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !71
  %i.amd = load i64, ptr %i.aln, align 8, !tbaa !76
  %.neg738 = mul i64 %i.amd, -16
  %i.ame = getelementptr inbounds i8, ptr %i.amc, i64 %.neg738
  %i.amf = getelementptr inbounds i8, ptr %i.ame, i64 -16
  %i.amg = load ptr, ptr %i.als, align 8, !tbaa !71
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.alp, i64 %indvars.iv1242
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !68
  %i.amj = load i32, ptr %i.akw, align 4, !tbaa !38
  %i.amk = load i32, ptr %i.alt, align 4, !tbaa !88
  %i.aml = add i32 %i.ami, -2
  %i.amm = shl i32 %i.amj, 1
  %i.amn = sub i32 %i.aml, %i.amm
  %i.amo = add nsw i32 %i.amn, %i.amk
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds i8, ptr %i.amg, i64 %i.amp
  %i.amr = load i8, ptr %i.alm, align 8, !tbaa !51
  %i.ams = load i32, ptr %i.alc, align 4, !tbaa !68
  %indvars.iv1242.tr = trunc nuw nsw i64 %indvars.iv1242 to i32
  %i.amt = shl nuw nsw i32 %indvars.iv1242.tr, 2  ; 3 uses
  %i.amu = lshr i32 %i.ams, %i.amt
  %i.amv = load i64, ptr %i.aln, align 8, !tbaa !89
  %i.amw = load i8, ptr %i.alf, align 1, !tbaa !55
  %i.amx = trunc nuw nsw i64 %indvars.iv1242 to i32
  %i.amy = shl nuw nsw i32 1, %i.amx
  %i.amz = trunc nuw nsw i32 %i.amy to i8         ; 2 uses
  %i.ana = and i8 %i.amw, %i.amz
  %i.anb = load i8, ptr %i.alu, align 1, !tbaa !55
  %i.anc = and i8 %i.anb, %i.amz
  %i.and = load i32, ptr %i.alv, align 4, !tbaa !68
  %i.ane = lshr i32 %i.and, %i.amt
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %i.anf = load ptr, ptr %i.alo, align 16, !tbaa !90
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.alp, i64 %indvars.iv1242
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !68
  %i.ani = load i32, ptr %i.alq, align 16, !tbaa !91
  %i.anj = load i32, ptr %i.alr, align 8, !tbaa !92
  %i.ank = add i32 %i.anh, -4
  %i.anl = shl i32 %i.ani, 2
  %i.anm = sub i32 %i.ank, %i.anl
  %i.ann = add nsw i32 %i.anm, %i.anj
  %i.ano = sext i32 %i.ann to i64                 ; 2 uses
  %i.anp = getelementptr inbounds [4 x i8], ptr %i.anf, i64 %i.ano ; 2 uses
  %i.anq = load ptr, ptr %i.als, align 8, !tbaa !71
  %i.anr = getelementptr inbounds i8, ptr %i.anq, i64 %i.ano ; 2 uses
  %i.ans = load i8, ptr %i.alm, align 8, !tbaa !51 ; 2 uses
  %i.ant = load i32, ptr %i.alc, align 4, !tbaa !68 ; 2 uses
  %i.anu = shl nuw nsw i64 %indvars.iv1242, 2     ; 3 uses
  %i.anv = trunc nuw nsw i64 %i.anu to i32        ; 3 uses
  %i.anw = lshr i32 %i.ant, %i.anv                ; 2 uses
  %i.anx = load i64, ptr %i.akq, align 16, !tbaa !89 ; 3 uses
  %i.any = and i64 %i.anu, 8
  %i.anz = mul nsw i64 %i.anx, %i.any
  %i.aoa = getelementptr inbounds i8, ptr %i.akt, i64 %i.anz
  %i.aob = shl nuw nsw i64 %indvars.iv1242, 3
  %i.aoc = and i64 %i.aob, 8
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.aoc ; 2 uses
  %i.aoe = load i8, ptr %i.alf, align 1, !tbaa !55 ; 2 uses
  %i.aof = trunc nuw nsw i64 %indvars.iv1242 to i32 ; 3 uses
  %i.aog = shl nuw nsw i32 1, %i.aof
  %i.aoh = trunc nuw nsw i32 %i.aog to i8
  %i.aoi = and i8 %i.aoe, %i.aoh                  ; 2 uses
  %i.aoj = and i32 %i.aof, 1
  %.not79.i1021 = icmp eq i32 %i.aoj, 0
  br i1 %.not79.i1021, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aok = load i8, ptr %i.alu, align 1, !tbaa !55
  %i.aol = add nsw i64 %indvars.iv1242, -1        ; 2 uses
  %i.aom = trunc nsw i64 %i.aol to i32
  %i.aon = shl nuw nsw i32 1, %i.aom
  %i.aoo = trunc nuw nsw i32 %i.aon to i8
  %i.aop = and i8 %i.aok, %i.aoo
  %i.aoq = load i32, ptr %i.alv, align 4, !tbaa !68
  %.tr1304 = trunc nsw i64 %i.aol to i32
  %i.aor = shl nsw i32 %.tr1304, 2
  %i.aos = lshr i32 %i.aoq, %i.aor
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.aot = shl nuw nsw i32 2, %i.aof
  %i.aou = trunc nuw nsw i32 %i.aot to i8
  %i.aov = and i8 %i.aoe, %i.aou
  %i.aow = trunc nuw nsw i64 %i.anu to i32
  %i.aox = or i32 %i.aow, 4
  %i.aoy = lshr i32 %i.ant, %i.aox
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dm
  %i.aoz = phi i64 [ %i.amv, %bb.dm ], [ %i.anx, %bb.do ], [ %i.anx, %bb.dp ] ; 5 uses
  %i.apa = phi i32 [ %i.amu, %bb.dm ], [ %i.anw, %bb.do ], [ %i.anw, %bb.dp ] ; 3 uses
  %i.apb = phi i32 [ %i.amt, %bb.dm ], [ %i.anv, %bb.do ], [ %i.anv, %bb.dp ]
  %.in1388 = phi i8 [ %i.amr, %bb.dm ], [ %i.ans, %bb.do ], [ %i.ans, %bb.dp ]
  %i.apc = phi ptr [ %i.amq, %bb.dm ], [ %i.anr, %bb.do ], [ %i.anr, %bb.dp ] ; 2 uses
  %i.apd = phi ptr [ %i.ali, %bb.dm ], [ %i.anp, %bb.do ], [ %i.anp, %bb.dp ] ; 4 uses
  %i.ape = phi i8 [ %i.ana, %bb.dm ], [ %i.aoi, %bb.do ], [ %i.aoi, %bb.dp ]
  %.0.i10131071 = phi ptr [ %i.amf, %bb.dm ], [ %i.aod, %bb.do ], [ %i.aod, %bb.dp ] ; 4 uses
  %.076.i1022 = phi i32 [ %i.ane, %bb.dm ], [ %i.aos, %bb.do ], [ %i.aoy, %bb.dp ]
  %.075.i1023 = phi i8 [ %i.anc, %bb.dm ], [ %i.aop, %bb.do ], [ %i.aov, %bb.dp ]
  %i.apf = zext i8 %.in1388 to i32                ; 4 uses
  %i.apg = trunc i64 %i.aoz to i32                ; 2 uses
  %i.aph = icmp ne i8 %i.ape, 0
  %i.api = icmp ne i8 %.075.i1023, 0
  %or.cond.i1024 = select i1 %i.aph, i1 true, i1 %i.api
  br i1 %or.cond.i1024, label %.sink.split1354, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.apj = load i16, ptr %i.apd, align 2, !tbaa !93
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apd, i64 4
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !93
  %.not80.i1025 = icmp eq i16 %i.apj, %i.apl
  br i1 %.not80.i1025, label %bb.ds, label %.sink.split1354

bb.ds:                                            ; preds = %bb.dr
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apd, i64 2
  %i.apn = load i16, ptr %i.apm, align 2, !tbaa !93
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apd, i64 6
  %i.app = load i16, ptr %i.apo, align 2, !tbaa !93
  %.not81.i1027 = icmp eq i16 %i.apn, %i.app
  br i1 %.not81.i1027, label %bb.dt, label %.sink.split1354

bb.dt:                                            ; preds = %bb.ds
  %i.apq = load i32, ptr %i.alw, align 4, !tbaa !56
  %i.apr = icmp eq i32 %i.apq, 2
  br i1 %i.apr, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.aps = load i8, ptr %i.apc, align 1, !tbaa !55
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apc, i64 1
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !55
  %.not82.i1032 = icmp eq i8 %i.aps, %i.apu
  br i1 %.not82.i1032, label %bb.dv, label %.sink.split1354

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.apv = lshr i32 %.076.i1022, 1
  %i.apw = or i32 %i.apv, %i.apa                  ; 2 uses
  %i.apx = and i32 %i.apw, 1
  %.not83.i1028 = icmp eq i32 %i.apx, 0
  br i1 %.not83.i1028, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.apy = load ptr, ptr %i.alx, align 16, !tbaa !83
  %i.apz = shl nsw i32 %i.apg, 2
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds i8, ptr %.0.i10131071, i64 %i.aqa
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8
  %sext.i1029 = shl i64 %i.aoz, 32
  %i.aqd = ashr exact i64 %sext.i1029, 32
  tail call void %i.apy(ptr noundef nonnull %i.aqc, i64 noundef %i.aqd, i32 noundef %i.apf) #1, !inline_history !103
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aqe = and i32 %i.apw, 4
  %.not84.i1030 = icmp eq i32 %i.aqe, 0
  br i1 %.not84.i1030, label %bb.dy, label %.sink.split1354

.sink.split1354:                                  ; preds = %bb.dx, %bb.dq, %bb.dr, %bb.ds, %bb.du
  %.sink1356.in = phi ptr [ %i.aly, %bb.dq ], [ %i.aly, %bb.du ], [ %i.aly, %bb.ds ], [ %i.aly, %bb.dr ], [ %i.alx, %bb.dx ]
  %.sink1356 = load ptr, ptr %.sink1356.in, align 8, !tbaa !96
  %i.aqf = getelementptr inbounds nuw i8, ptr %.0.i10131071, i64 8
  %sext85.i1031 = shl i64 %i.aoz, 32
  %i.aqg = ashr exact i64 %sext85.i1031, 32
  tail call void %.sink1356(ptr noundef nonnull %i.aqf, i64 noundef %i.aqg, i32 noundef %i.apf) #1
  br label %bb.dy

bb.dy:                                            ; preds = %.sink.split1354, %bb.dx
  %i.aqh = load i32, ptr %i.all, align 4, !tbaa !68
  %i.aqi = ashr i32 %i.aqh, %i.apb
  %i.aqj = and i32 %i.aqi, 14
  %or.cond4.i1016 = icmp eq i32 %i.aqj, 6
  br i1 %or.cond4.i1016, label %bb.dz, label %vc1_p_h_loop_filter.exit1033

bb.dz:                                            ; preds = %bb.dy
  %i.aqk = and i32 %i.apa, 3
  %.not87.i1017 = icmp eq i32 %i.aqk, 0
  br i1 %.not87.i1017, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aql = load ptr, ptr %i.alx, align 16, !tbaa !83
  %i.aqm = shl nsw i32 %i.apg, 2
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds i8, ptr %.0.i10131071, i64 %i.aqn
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 4
  %sext88.i1018 = shl i64 %i.aoz, 32
  %i.aqq = ashr exact i64 %sext88.i1018, 32
  tail call void %i.aql(ptr noundef nonnull %i.aqp, i64 noundef %i.aqq, i32 noundef %i.apf) #1, !inline_history !103
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.aqr = and i32 %i.apa, 12
  %.not89.i1019 = icmp eq i32 %i.aqr, 0
  br i1 %.not89.i1019, label %vc1_p_h_loop_filter.exit1033, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aqs = load ptr, ptr %i.alx, align 16, !tbaa !83
  %i.aqt = getelementptr inbounds nuw i8, ptr %.0.i10131071, i64 4
  %sext90.i1020 = shl i64 %i.aoz, 32
  %i.aqu = ashr exact i64 %sext90.i1020, 32
  tail call void %i.aqs(ptr noundef nonnull %i.aqt, i64 noundef %i.aqu, i32 noundef %i.apf) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit1033

vc1_p_h_loop_filter.exit1033:                     ; preds = %bb.dy, %bb.eb, %bb.ec
  %indvars.iv.next1243 = add nuw nsw i64 %indvars.iv1242, 1 ; 2 uses
  %exitcond1245.not = icmp eq i64 %indvars.iv.next1243, 6
  br i1 %exitcond1245.not, label %thread-pre-split, label %bb.dl, !llvm.loop !104

thread-pre-split:                                 ; preds = %vc1_p_h_loop_filter.exit1033
  %.pr = load i32, ptr %i.akl, align 4, !tbaa !9
  br label %bb.ed

bb.ed:                                            ; preds = %thread-pre-split, %bb.dj
  %i.aqv = phi i32 [ %.pr, %thread-pre-split ], [ %i.akm, %bb.dj ] ; 4 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !65
  %i.aqy = add nsw i32 %i.aqx, -1
  %i.aqz = icmp eq i32 %i.aqv, %i.aqy
  br i1 %i.aqz, label %bb.ee, label %.loopexit1171

bb.ee:                                            ; preds = %bb.ed
  %i.ara = icmp sgt i32 %i.aqv, 0
  br i1 %i.ara, label %bb.ef, label %.loopexit1172

bb.ef:                                            ; preds = %bb.ee
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.arc = load ptr, ptr %i.arb, align 16, !tbaa !71
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.are = load i64, ptr %i.ard, align 16, !tbaa !72
  %.neg724 = mul i64 %i.are, -32
  %i.arf = getelementptr inbounds i8, ptr %i.arc, i64 %.neg724
  %i.arg = getelementptr inbounds i8, ptr %i.arf, i64 -16
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.ari = load ptr, ptr %i.arh, align 16, !tbaa !84
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !38
  %i.arl = shl nsw i32 %i.ark, 1
  %i.arm = xor i32 %i.arl, -1
  %i.arn = add i32 %i.aqv, %i.arm
  %i.aro = sext i32 %i.arn to i64                 ; 4 uses
  %i.arp = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %i.aro ; 3 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.arr = load ptr, ptr %i.arq, align 16, !tbaa !85
  %i.ars = getelementptr inbounds i8, ptr %i.arr, i64 %i.aro ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.aru = load ptr, ptr %i.art, align 16, !tbaa !86
  %i.arv = getelementptr inbounds [4 x i8], ptr %i.aru, i64 %i.aro
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.arx = load ptr, ptr %i.arw, align 16, !tbaa !87
  %i.ary = getelementptr inbounds [4 x i8], ptr %i.arx, i64 %i.aro
  %i.arz = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.asf = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ars, i64 1 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arp, i64 4 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %vc1_p_h_loop_filter.exit1011
  %indvars.iv1246 = phi i64 [ 0, %bb.ef ], [ %indvars.iv.next1247, %vc1_p_h_loop_filter.exit1011 ] ; 11 uses
  %i.asm = icmp samesign ugt i64 %indvars.iv1246, 3
  br i1 %i.asm, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.asn = getelementptr [8 x i8], ptr %i.arb, i64 %indvars.iv1246
  %i.aso = getelementptr i8, ptr %i.asn, i64 -24
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !71
  %i.asq = load i64, ptr %i.asa, align 8, !tbaa !76
  %.neg737 = mul i64 %i.asq, -16
  %i.asr = getelementptr inbounds i8, ptr %i.asp, i64 %.neg737
  %i.ass = getelementptr inbounds i8, ptr %i.asr, i64 -8
  %i.ast = load ptr, ptr %i.asf, align 8, !tbaa !71
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv1246
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !68
  %i.asw = load i32, ptr %i.arj, align 4, !tbaa !38
  %i.asx = shl nsw i32 %i.asw, 1
  %i.asy = xor i32 %i.asx, -1
  %i.asz = add i32 %i.asv, %i.asy
  %i.ata = load i32, ptr %i.asg, align 4, !tbaa !88
  %i.atb = add nsw i32 %i.asz, %i.ata
  %i.atc = sext i32 %i.atb to i64
  %i.atd = getelementptr inbounds i8, ptr %i.ast, i64 %i.atc
  %i.ate = load i8, ptr %i.arz, align 8, !tbaa !51
  %i.atf = load i32, ptr %i.arp, align 4, !tbaa !68
  %indvars.iv1246.tr = trunc nuw nsw i64 %indvars.iv1246 to i32
  %i.atg = shl nuw nsw i32 %indvars.iv1246.tr, 2  ; 3 uses
  %i.ath = lshr i32 %i.atf, %i.atg
  %i.ati = load i64, ptr %i.asa, align 8, !tbaa !89
  %i.atj = load i8, ptr %i.ars, align 1, !tbaa !55
  %i.atk = trunc nuw nsw i64 %indvars.iv1246 to i32
  %i.atl = shl nuw nsw i32 1, %i.atk
  %i.atm = trunc nuw nsw i32 %i.atl to i8         ; 2 uses
  %i.atn = and i8 %i.atj, %i.atm
  %i.ato = load i8, ptr %i.ash, align 1, !tbaa !55
  %i.atp = and i8 %i.ato, %i.atm
  %i.atq = load i32, ptr %i.asi, align 4, !tbaa !68
  %i.atr = lshr i32 %i.atq, %i.atg
  br label %bb.el

bb.ei:                                            ; preds = %bb.eg
  %i.ats = load ptr, ptr %i.asb, align 16, !tbaa !90
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv1246
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !68
  %i.atv = load i32, ptr %i.asd, align 16, !tbaa !91
  %i.atw = load i32, ptr %i.ase, align 8, !tbaa !92
  %i.atx = add i32 %i.atu, -2
  %i.aty = shl i32 %i.atv, 2
  %i.atz = sub i32 %i.atx, %i.aty
  %i.aua = add nsw i32 %i.atz, %i.atw
  %i.aub = sext i32 %i.aua to i64                 ; 2 uses
  %i.auc = getelementptr inbounds [4 x i8], ptr %i.ats, i64 %i.aub ; 2 uses
  %i.aud = load ptr, ptr %i.asf, align 8, !tbaa !71
  %i.aue = getelementptr inbounds i8, ptr %i.aud, i64 %i.aub ; 2 uses
  %i.auf = load i8, ptr %i.arz, align 8, !tbaa !51 ; 2 uses
  %i.aug = load i32, ptr %i.arp, align 4, !tbaa !68 ; 2 uses
  %i.auh = shl nuw nsw i64 %indvars.iv1246, 2     ; 3 uses
  %i.aui = trunc nuw nsw i64 %i.auh to i32        ; 3 uses
  %i.auj = lshr i32 %i.aug, %i.aui                ; 2 uses
  %i.auk = load i64, ptr %i.ard, align 16, !tbaa !89 ; 3 uses
  %i.aul = and i64 %i.auh, 8
  %i.aum = mul nsw i64 %i.auk, %i.aul
  %i.aun = getelementptr inbounds i8, ptr %i.arg, i64 %i.aum
  %i.auo = shl nuw nsw i64 %indvars.iv1246, 3
  %i.aup = and i64 %i.auo, 8
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aun, i64 %i.aup ; 2 uses
  %i.aur = load i8, ptr %i.ars, align 1, !tbaa !55 ; 2 uses
  %i.aus = trunc nuw nsw i64 %indvars.iv1246 to i32 ; 3 uses
  %i.aut = shl nuw nsw i32 1, %i.aus
  %i.auu = trunc nuw nsw i32 %i.aut to i8
  %i.auv = and i8 %i.aur, %i.auu                  ; 2 uses
  %i.auw = and i32 %i.aus, 1
  %.not79.i999 = icmp eq i32 %i.auw, 0
  br i1 %.not79.i999, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aux = load i8, ptr %i.ash, align 1, !tbaa !55
  %i.auy = add nsw i64 %indvars.iv1246, -1        ; 2 uses
  %i.auz = trunc nsw i64 %i.auy to i32
  %i.ava = shl nuw nsw i32 1, %i.auz
  %i.avb = trunc nuw nsw i32 %i.ava to i8
  %i.avc = and i8 %i.aux, %i.avb
  %i.avd = load i32, ptr %i.asi, align 4, !tbaa !68
  %.tr1305 = trunc nsw i64 %i.auy to i32
  %i.ave = shl nsw i32 %.tr1305, 2
  %i.avf = lshr i32 %i.avd, %i.ave
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.avg = shl nuw nsw i32 2, %i.aus
  %i.avh = trunc nuw nsw i32 %i.avg to i8
  %i.avi = and i8 %i.aur, %i.avh
  %i.avj = trunc nuw nsw i64 %i.auh to i32
  %i.avk = or i32 %i.avj, 4
  %i.avl = lshr i32 %i.aug, %i.avk
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.eh
  %i.avm = phi i64 [ %i.ati, %bb.eh ], [ %i.auk, %bb.ej ], [ %i.auk, %bb.ek ] ; 5 uses
  %i.avn = phi i32 [ %i.ath, %bb.eh ], [ %i.auj, %bb.ej ], [ %i.auj, %bb.ek ] ; 3 uses
  %i.avo = phi i32 [ %i.atg, %bb.eh ], [ %i.aui, %bb.ej ], [ %i.aui, %bb.ek ]
  %.in1390 = phi i8 [ %i.ate, %bb.eh ], [ %i.auf, %bb.ej ], [ %i.auf, %bb.ek ]
  %i.avp = phi ptr [ %i.atd, %bb.eh ], [ %i.aue, %bb.ej ], [ %i.aue, %bb.ek ] ; 2 uses
  %i.avq = phi ptr [ %i.arv, %bb.eh ], [ %i.auc, %bb.ej ], [ %i.auc, %bb.ek ] ; 4 uses
  %i.avr = phi i8 [ %i.atn, %bb.eh ], [ %i.auv, %bb.ej ], [ %i.auv, %bb.ek ]
  %.0.i9911077 = phi ptr [ %i.ass, %bb.eh ], [ %i.auq, %bb.ej ], [ %i.auq, %bb.ek ] ; 4 uses
  %.076.i1000 = phi i32 [ %i.atr, %bb.eh ], [ %i.avf, %bb.ej ], [ %i.avl, %bb.ek ]
  %.075.i1001 = phi i8 [ %i.atp, %bb.eh ], [ %i.avc, %bb.ej ], [ %i.avi, %bb.ek ]
  %i.avs = zext i8 %.in1390 to i32                ; 4 uses
  %i.avt = trunc i64 %i.avm to i32                ; 2 uses
  %i.avu = icmp ne i8 %i.avr, 0
  %i.avv = icmp ne i8 %.075.i1001, 0
  %or.cond.i1002 = select i1 %i.avu, i1 true, i1 %i.avv
  br i1 %or.cond.i1002, label %.sink.split1357, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.avw = load i16, ptr %i.avq, align 2, !tbaa !93
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avq, i64 4
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !93
  %.not80.i1003 = icmp eq i16 %i.avw, %i.avy
  br i1 %.not80.i1003, label %bb.en, label %.sink.split1357

bb.en:                                            ; preds = %bb.em
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avq, i64 2
  %i.awa = load i16, ptr %i.avz, align 2, !tbaa !93
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avq, i64 6
  %i.awc = load i16, ptr %i.awb, align 2, !tbaa !93
  %.not81.i1005 = icmp eq i16 %i.awa, %i.awc
  br i1 %.not81.i1005, label %bb.eo, label %.sink.split1357

bb.eo:                                            ; preds = %bb.en
  %i.awd = load i32, ptr %i.asj, align 4, !tbaa !56
  %i.awe = icmp eq i32 %i.awd, 2
  br i1 %i.awe, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.awf = load i8, ptr %i.avp, align 1, !tbaa !55
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avp, i64 1
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !55
  %.not82.i1010 = icmp eq i8 %i.awf, %i.awh
  br i1 %.not82.i1010, label %bb.eq, label %.sink.split1357

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.awi = lshr i32 %.076.i1000, 1
  %i.awj = or i32 %i.awi, %i.avn                  ; 2 uses
  %i.awk = and i32 %i.awj, 1
  %.not83.i1006 = icmp eq i32 %i.awk, 0
  br i1 %.not83.i1006, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.awl = load ptr, ptr %i.ask, align 16, !tbaa !83
  %i.awm = shl nsw i32 %i.avt, 2
  %i.awn = sext i32 %i.awm to i64
  %i.awo = getelementptr inbounds i8, ptr %.0.i9911077, i64 %i.awn
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %sext.i1007 = shl i64 %i.avm, 32
  %i.awq = ashr exact i64 %sext.i1007, 32
  tail call void %i.awl(ptr noundef nonnull %i.awp, i64 noundef %i.awq, i32 noundef %i.avs) #1, !inline_history !103
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.awr = and i32 %i.awj, 4
  %.not84.i1008 = icmp eq i32 %i.awr, 0
  br i1 %.not84.i1008, label %bb.et, label %.sink.split1357

.sink.split1357:                                  ; preds = %bb.es, %bb.el, %bb.em, %bb.en, %bb.ep
  %.sink1359.in = phi ptr [ %i.asl, %bb.el ], [ %i.asl, %bb.ep ], [ %i.asl, %bb.en ], [ %i.asl, %bb.em ], [ %i.ask, %bb.es ]
  %.sink1359 = load ptr, ptr %.sink1359.in, align 8, !tbaa !96
  %i.aws = getelementptr inbounds nuw i8, ptr %.0.i9911077, i64 8
  %sext85.i1009 = shl i64 %i.avm, 32
  %i.awt = ashr exact i64 %sext85.i1009, 32
  tail call void %.sink1359(ptr noundef nonnull %i.aws, i64 noundef %i.awt, i32 noundef %i.avs) #1
  br label %bb.et

bb.et:                                            ; preds = %.sink.split1357, %bb.es
  %i.awu = load i32, ptr %i.ary, align 4, !tbaa !68
  %i.awv = ashr i32 %i.awu, %i.avo
  %i.aww = and i32 %i.awv, 14
  %or.cond4.i994 = icmp eq i32 %i.aww, 6
  br i1 %or.cond4.i994, label %bb.eu, label %vc1_p_h_loop_filter.exit1011

bb.eu:                                            ; preds = %bb.et
  %i.awx = and i32 %i.avn, 3
  %.not87.i995 = icmp eq i32 %i.awx, 0
  br i1 %.not87.i995, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.awy = load ptr, ptr %i.ask, align 16, !tbaa !83
  %i.awz = shl nsw i32 %i.avt, 2
  %i.axa = sext i32 %i.awz to i64
  %i.axb = getelementptr inbounds i8, ptr %.0.i9911077, i64 %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 4
  %sext88.i996 = shl i64 %i.avm, 32
  %i.axd = ashr exact i64 %sext88.i996, 32
  tail call void %i.awy(ptr noundef nonnull %i.axc, i64 noundef %i.axd, i32 noundef %i.avs) #1, !inline_history !103
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.axe = and i32 %i.avn, 12
  %.not89.i997 = icmp eq i32 %i.axe, 0
  br i1 %.not89.i997, label %vc1_p_h_loop_filter.exit1011, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.axf = load ptr, ptr %i.ask, align 16, !tbaa !83
  %i.axg = getelementptr inbounds nuw i8, ptr %.0.i9911077, i64 4
  %sext90.i998 = shl i64 %i.avm, 32
  %i.axh = ashr exact i64 %sext90.i998, 32
  tail call void %i.axf(ptr noundef nonnull %i.axg, i64 noundef %i.axh, i32 noundef %i.avs) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit1011

vc1_p_h_loop_filter.exit1011:                     ; preds = %bb.et, %bb.ew, %bb.ex
  %indvars.iv.next1247 = add nuw nsw i64 %indvars.iv1246, 1 ; 2 uses
  %exitcond1249.not = icmp eq i64 %indvars.iv.next1247, 6
  br i1 %exitcond1249.not, label %.loopexit1172.loopexit, label %bb.eg, !llvm.loop !105

.loopexit1172.loopexit:                           ; preds = %vc1_p_h_loop_filter.exit1011
  %.pre1283 = load i32, ptr %i.akl, align 4, !tbaa !9
  br label %.loopexit1172

.loopexit1172:                                    ; preds = %.loopexit1172.loopexit, %bb.ee
  %i.axi = phi i32 [ %.pre1283, %.loopexit1172.loopexit ], [ %i.aqv, %bb.ee ]
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.axk = load ptr, ptr %i.axj, align 16, !tbaa !71
  %i.axl = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.axm = load i64, ptr %i.axl, align 16, !tbaa !72
  %.neg725 = mul i64 %i.axm, -32
  %i.axn = getelementptr inbounds i8, ptr %i.axk, i64 %.neg725
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.axp = load ptr, ptr %i.axo, align 16, !tbaa !84
  %i.axq = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !38
  %i.axs = shl nsw i32 %i.axr, 1
  %i.axt = sub nsw i32 %i.axi, %i.axs
  %i.axu = sext i32 %i.axt to i64                 ; 4 uses
  %i.axv = getelementptr inbounds [4 x i8], ptr %i.axp, i64 %i.axu ; 3 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.axx = load ptr, ptr %i.axw, align 16, !tbaa !85
  %i.axy = getelementptr inbounds i8, ptr %i.axx, i64 %i.axu ; 3 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.aya = load ptr, ptr %i.axz, align 16, !tbaa !86
  %i.ayb = getelementptr inbounds [4 x i8], ptr %i.aya, i64 %i.axu
  %i.ayc = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.ayd = load ptr, ptr %i.ayc, align 16, !tbaa !87
  %i.aye = getelementptr inbounds [4 x i8], ptr %i.ayd, i64 %i.axu
  %i.ayf = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ayi = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.ayl = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axy, i64 1
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.axv, i64 4
  %i.ayp = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.ayq = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.ey

bb.ey:                                            ; preds = %.loopexit1172, %vc1_p_h_loop_filter.exit989
  %indvars.iv1250 = phi i64 [ 0, %.loopexit1172 ], [ %indvars.iv.next1251, %vc1_p_h_loop_filter.exit989 ] ; 10 uses
  %i.ays = icmp samesign ugt i64 %indvars.iv1250, 3
  br i1 %i.ays, label %bb.ez, label %.thread1081

bb.ez:                                            ; preds = %bb.ey
  %i.ayt = getelementptr [8 x i8], ptr %i.axj, i64 %indvars.iv1250
  %i.ayu = getelementptr i8, ptr %i.ayt, i64 -24
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !71
  %i.ayw = load i64, ptr %i.ayg, align 8, !tbaa !76
  %.neg736 = mul i64 %i.ayw, -16
  %i.ayx = getelementptr inbounds i8, ptr %i.ayv, i64 %.neg736 ; 2 uses
  %i.ayy = load i8, ptr %i.ayf, align 8, !tbaa !51
  %i.ayz = zext i8 %i.ayy to i32                  ; 2 uses
  %i.aza = load i32, ptr %i.axv, align 4, !tbaa !68
  %indvars.iv1250.tr = trunc nuw nsw i64 %indvars.iv1250 to i32
  %i.azb = shl nuw nsw i32 %indvars.iv1250.tr, 2  ; 4 uses
  %i.azc = lshr i32 %i.aza, %i.azb                ; 2 uses
  %i.azd = load i64, ptr %i.ayg, align 8, !tbaa !89 ; 3 uses
  %i.aze = trunc i64 %i.azd to i32                ; 2 uses
  %i.azf = and i64 %indvars.iv1250, 5
  %.not78.i971 = icmp eq i64 %i.azf, 0
  br i1 %.not78.i971, label %bb.fa, label %bb.fk

.thread1081:                                      ; preds = %bb.ey
  %i.azg = load i8, ptr %i.ayf, align 8, !tbaa !51
  %i.azh = zext i8 %i.azg to i32                  ; 2 uses
  %i.azi = load i32, ptr %i.axv, align 4, !tbaa !68 ; 2 uses
  %i.azj = shl nuw nsw i64 %indvars.iv1250, 2     ; 3 uses
  %i.azk = trunc nuw nsw i64 %i.azj to i32        ; 3 uses
  %i.azl = lshr i32 %i.azi, %i.azk                ; 2 uses
  %i.azm = load i64, ptr %i.axl, align 16, !tbaa !89 ; 4 uses
  %i.azn = trunc i64 %i.azm to i32                ; 2 uses
  %i.azo = and i64 %i.azj, 8
  %i.azp = mul nsw i64 %i.azm, %i.azo
  %i.azq = getelementptr inbounds i8, ptr %i.axn, i64 %i.azp
  %i.azr = shl nuw nsw i64 %indvars.iv1250, 3
  %i.azs = and i64 %i.azr, 8
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azq, i64 %i.azs ; 2 uses
  %i.azu = trunc nuw nsw i64 %indvars.iv1250 to i32 ; 3 uses
  %i.azv = and i32 %i.azu, 1
  %.not78.i9711083 = icmp eq i32 %i.azv, 0
  br i1 %.not78.i9711083, label %bb.fb, label %bb.fk

bb.fa:                                            ; preds = %bb.ez
  %i.azw = load ptr, ptr %i.ayl, align 8, !tbaa !71
  %i.azx = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %indvars.iv1250
  %i.azy = load i32, ptr %i.azx, align 4, !tbaa !68
  %i.azz = load i32, ptr %i.axq, align 4, !tbaa !38
  %i.baa = shl i32 %i.azz, 1
  %i.bab = sub i32 %i.azy, %i.baa
  %i.bac = load i32, ptr %i.aym, align 4, !tbaa !88
  %i.bad = add nsw i32 %i.bab, %i.bac
  %i.bae = sext i32 %i.bad to i64
  %i.baf = getelementptr inbounds i8, ptr %i.azw, i64 %i.bae
  %i.bag = load i8, ptr %i.axy, align 1, !tbaa !55
  %i.bah = and i8 %i.bag, 4
  %i.bai = load i8, ptr %i.ayn, align 1, !tbaa !55
  %i.baj = and i8 %i.bai, 4
  %i.bak = load i32, ptr %i.ayo, align 4, !tbaa !68
  %i.bal = lshr i32 %i.bak, %i.azb
  br label %bb.fc

bb.fb:                                            ; preds = %.thread1081
  %i.bam = load ptr, ptr %i.ayl, align 8, !tbaa !71
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %indvars.iv1250
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !68
  %i.bap = load i32, ptr %i.ayj, align 16, !tbaa !91
  %i.baq = shl i32 %i.bap, 2
  %i.bar = sub i32 %i.bao, %i.baq
  %i.bas = load i32, ptr %i.ayk, align 8, !tbaa !92
  %i.bat = add nsw i32 %i.bar, %i.bas
  %i.bau = sext i32 %i.bat to i64                 ; 2 uses
  %i.bav = getelementptr inbounds i8, ptr %i.bam, i64 %i.bau
  %i.baw = load ptr, ptr %i.ayh, align 16, !tbaa !90
  %i.bax = getelementptr inbounds [4 x i8], ptr %i.baw, i64 %i.bau
  %i.bay = load i8, ptr %i.axy, align 1, !tbaa !55 ; 2 uses
  %i.baz = shl nuw nsw i32 1, %i.azu
  %i.bba = trunc nuw nsw i32 %i.baz to i8
  %i.bbb = and i8 %i.bay, %i.bba
  %i.bbc = shl nuw nsw i32 2, %i.azu
  %i.bbd = trunc nuw nsw i32 %i.bbc to i8
  %i.bbe = and i8 %i.bay, %i.bbd
  %i.bbf = trunc nuw nsw i64 %i.azj to i32
  %i.bbg = or i32 %i.bbf, 4
  %i.bbh = lshr i32 %i.azi, %i.bbg
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.bbi = phi i32 [ %i.aze, %bb.fa ], [ %i.azn, %bb.fb ] ; 3 uses
  %i.bbj = phi i64 [ %i.azd, %bb.fa ], [ %i.azm, %bb.fb ] ; 4 uses
  %i.bbk = phi i32 [ %i.azc, %bb.fa ], [ %i.azl, %bb.fb ] ; 3 uses
  %i.bbl = phi i32 [ %i.azb, %bb.fa ], [ %i.azk, %bb.fb ] ; 2 uses
  %i.bbm = phi i32 [ %i.ayz, %bb.fa ], [ %i.azh, %bb.fb ] ; 4 uses
  %i.bbn = phi ptr [ %i.baf, %bb.fa ], [ %i.bav, %bb.fb ] ; 2 uses
  %i.bbo = phi ptr [ %i.ayb, %bb.fa ], [ %i.bax, %bb.fb ] ; 4 uses
  %i.bbp = phi i8 [ %i.bah, %bb.fa ], [ %i.bbb, %bb.fb ]
  %.0.i96910851088 = phi ptr [ %i.ayx, %bb.fa ], [ %i.azt, %bb.fb ] ; 4 uses
  %.076.i978 = phi i32 [ %i.bal, %bb.fa ], [ %i.bbh, %bb.fb ]
  %.075.i979 = phi i8 [ %i.baj, %bb.fa ], [ %i.bbe, %bb.fb ]
  %i.bbq = icmp ne i8 %i.bbp, 0
  %i.bbr = icmp ne i8 %.075.i979, 0
  %or.cond.i980 = select i1 %i.bbq, i1 true, i1 %i.bbr
  br i1 %or.cond.i980, label %.sink.split1360, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bbs = load i16, ptr %i.bbo, align 2, !tbaa !93
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbo, i64 4
  %i.bbu = load i16, ptr %i.bbt, align 2, !tbaa !93
  %.not80.i981 = icmp eq i16 %i.bbs, %i.bbu
  br i1 %.not80.i981, label %bb.fe, label %.sink.split1360

bb.fe:                                            ; preds = %bb.fd
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbo, i64 2
  %i.bbw = load i16, ptr %i.bbv, align 2, !tbaa !93
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbo, i64 6
  %i.bby = load i16, ptr %i.bbx, align 2, !tbaa !93
  %.not81.i983 = icmp eq i16 %i.bbw, %i.bby
  br i1 %.not81.i983, label %bb.ff, label %.sink.split1360

bb.ff:                                            ; preds = %bb.fe
  %i.bbz = load i32, ptr %i.ayp, align 4, !tbaa !56
  %i.bca = icmp eq i32 %i.bbz, 2
  br i1 %i.bca, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.bcb = load i8, ptr %i.bbn, align 1, !tbaa !55
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbn, i64 1
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !55
  %.not82.i988 = icmp eq i8 %i.bcb, %i.bcd
  br i1 %.not82.i988, label %bb.fh, label %.sink.split1360

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.bce = lshr i32 %.076.i978, 1
  %i.bcf = or i32 %i.bce, %i.bbk                  ; 2 uses
  %i.bcg = and i32 %i.bcf, 1
  %.not83.i984 = icmp eq i32 %i.bcg, 0
  br i1 %.not83.i984, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bch = load ptr, ptr %i.ayq, align 16, !tbaa !83
  %i.bci = shl nsw i32 %i.bbi, 2
  %i.bcj = sext i32 %i.bci to i64
  %i.bck = getelementptr inbounds i8, ptr %.0.i96910851088, i64 %i.bcj
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 8
  %sext.i985 = shl i64 %i.bbj, 32
  %i.bcm = ashr exact i64 %sext.i985, 32
  tail call void %i.bch(ptr noundef nonnull %i.bcl, i64 noundef %i.bcm, i32 noundef %i.bbm) #1, !inline_history !103
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.bcn = and i32 %i.bcf, 4
  %.not84.i986 = icmp eq i32 %i.bcn, 0
  br i1 %.not84.i986, label %bb.fk, label %.sink.split1360

.sink.split1360:                                  ; preds = %bb.fj, %bb.fc, %bb.fd, %bb.fe, %bb.fg
  %.sink1362.in = phi ptr [ %i.ayr, %bb.fc ], [ %i.ayr, %bb.fg ], [ %i.ayr, %bb.fe ], [ %i.ayr, %bb.fd ], [ %i.ayq, %bb.fj ]
  %.sink1362 = load ptr, ptr %.sink1362.in, align 8, !tbaa !96
  %i.bco = getelementptr inbounds nuw i8, ptr %.0.i96910851088, i64 8
  %sext85.i987 = shl i64 %i.bbj, 32
  %i.bcp = ashr exact i64 %sext85.i987, 32
  tail call void %.sink1362(ptr noundef nonnull %i.bco, i64 noundef %i.bcp, i32 noundef %i.bbm) #1
  br label %bb.fk

bb.fk:                                            ; preds = %.sink.split1360, %.thread1081, %bb.fj, %bb.ez
  %i.bcq = phi i32 [ %i.azn, %.thread1081 ], [ %i.aze, %bb.ez ], [ %i.bbi, %bb.fj ], [ %i.bbi, %.sink.split1360 ]
  %i.bcr = phi i64 [ %i.azm, %.thread1081 ], [ %i.azd, %bb.ez ], [ %i.bbj, %bb.fj ], [ %i.bbj, %.sink.split1360 ] ; 2 uses
  %i.bcs = phi i32 [ %i.azl, %.thread1081 ], [ %i.azc, %bb.ez ], [ %i.bbk, %bb.fj ], [ %i.bbk, %.sink.split1360 ] ; 2 uses
  %i.bct = phi i32 [ %i.azk, %.thread1081 ], [ %i.azb, %bb.ez ], [ %i.bbl, %bb.fj ], [ %i.bbl, %.sink.split1360 ]
  %i.bcu = phi i32 [ %i.azh, %.thread1081 ], [ %i.ayz, %bb.ez ], [ %i.bbm, %bb.fj ], [ %i.bbm, %.sink.split1360 ] ; 2 uses
  %.0.i9691084 = phi ptr [ %i.azt, %.thread1081 ], [ %i.ayx, %bb.ez ], [ %.0.i96910851088, %bb.fj ], [ %.0.i96910851088, %.sink.split1360 ] ; 2 uses
  %i.bcv = load i32, ptr %i.aye, align 4, !tbaa !68
  %i.bcw = ashr i32 %i.bcv, %i.bct
  %i.bcx = and i32 %i.bcw, 14
  %or.cond4.i972 = icmp eq i32 %i.bcx, 6
  br i1 %or.cond4.i972, label %bb.fl, label %vc1_p_h_loop_filter.exit989

bb.fl:                                            ; preds = %bb.fk
  %i.bcy = and i32 %i.bcs, 3
  %.not87.i973 = icmp eq i32 %i.bcy, 0
  br i1 %.not87.i973, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.bcz = load ptr, ptr %i.ayq, align 16, !tbaa !83
  %i.bda = shl nsw i32 %i.bcq, 2
  %i.bdb = sext i32 %i.bda to i64
  %i.bdc = getelementptr inbounds i8, ptr %.0.i9691084, i64 %i.bdb
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 4
  %sext88.i974 = shl i64 %i.bcr, 32
  %i.bde = ashr exact i64 %sext88.i974, 32
  tail call void %i.bcz(ptr noundef nonnull %i.bdd, i64 noundef %i.bde, i32 noundef %i.bcu) #1, !inline_history !103
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.bdf = and i32 %i.bcs, 12
  %.not89.i975 = icmp eq i32 %i.bdf, 0
  br i1 %.not89.i975, label %vc1_p_h_loop_filter.exit989, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bdg = load ptr, ptr %i.ayq, align 16, !tbaa !83
  %i.bdh = getelementptr inbounds nuw i8, ptr %.0.i9691084, i64 4
  %sext90.i976 = shl i64 %i.bcr, 32
  %i.bdi = ashr exact i64 %sext90.i976, 32
  tail call void %i.bdg(ptr noundef nonnull %i.bdh, i64 noundef %i.bdi, i32 noundef %i.bcu) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit989

vc1_p_h_loop_filter.exit989:                      ; preds = %bb.fk, %bb.fn, %bb.fo
  %indvars.iv.next1251 = add nuw nsw i64 %indvars.iv1250, 1 ; 2 uses
  %exitcond1253.not = icmp eq i64 %indvars.iv.next1251, 6
  br i1 %exitcond1253.not, label %.loopexit1171, label %bb.ey, !llvm.loop !106

.loopexit1171:                                    ; preds = %vc1_p_h_loop_filter.exit989, %bb.ed, %.loopexit1173
  %i.bdj = load i32, ptr %i.a, align 8, !tbaa !37 ; 2 uses
  %i.bdk = load i32, ptr %i.mu, align 4, !tbaa !79
  %i.bdl = add nsw i32 %i.bdk, -1
  %i.bdm = icmp eq i32 %i.bdj, %i.bdl
  br i1 %i.bdm, label %bb.fp, label %.loopexit

bb.fp:                                            ; preds = %.loopexit1171
  %i.bdn = load i32, ptr %i.c, align 16, !tbaa !73
  %.not727.not = icmp sgt i32 %i.bdj, %i.bdn
  br i1 %.not727.not, label %bb.fq, label %.loopexit1169

bb.fq:                                            ; preds = %bb.fp
  %i.bdo = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 3 uses
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !9 ; 3 uses
  %i.bdq = icmp sgt i32 %i.bdp, 1
  br i1 %i.bdq, label %bb.fr, label %bb.gk

bb.fr:                                            ; preds = %bb.fq
  %i.bdr = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.bds = load ptr, ptr %i.bdr, align 16, !tbaa !71
  %i.bdt = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bdu = load i64, ptr %i.bdt, align 16, !tbaa !72
  %.neg728 = mul i64 %i.bdu, -16
  %i.bdv = getelementptr inbounds i8, ptr %i.bds, i64 %.neg728
  %i.bdw = getelementptr inbounds i8, ptr %i.bdv, i64 -32
  %i.bdx = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.bdy = load ptr, ptr %i.bdx, align 16, !tbaa !84
  %i.bdz = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.bea = load i32, ptr %i.bdz, align 4, !tbaa !38
  %i.beb = add nsw i32 %i.bdp, -2
  %i.bec = sub i32 %i.beb, %i.bea
  %i.bed = sext i32 %i.bec to i64                 ; 4 uses
  %i.bee = getelementptr inbounds [4 x i8], ptr %i.bdy, i64 %i.bed ; 3 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.beg = load ptr, ptr %i.bef, align 16, !tbaa !85
  %i.beh = getelementptr inbounds i8, ptr %i.beg, i64 %i.bed ; 3 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.bej = load ptr, ptr %i.bei, align 16, !tbaa !86
  %i.bek = getelementptr inbounds [4 x i8], ptr %i.bej, i64 %i.bed
  %i.bel = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.bem = load ptr, ptr %i.bel, align 16, !tbaa !87
  %i.ben = getelementptr inbounds [4 x i8], ptr %i.bem, i64 %i.bed
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ber = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bet = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.beu = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.bew = getelementptr inbounds nuw i8, ptr %i.beh, i64 1 ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bee, i64 4 ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.bez = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %vc1_p_h_loop_filter.exit967
  %indvars.iv1254 = phi i64 [ 0, %bb.fr ], [ %indvars.iv.next1255, %vc1_p_h_loop_filter.exit967 ] ; 11 uses
  %i.bfb = icmp samesign ugt i64 %indvars.iv1254, 3
  br i1 %i.bfb, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.bfc = getelementptr [8 x i8], ptr %i.bdr, i64 %indvars.iv1254
  %i.bfd = getelementptr i8, ptr %i.bfc, i64 -24
  %i.bfe = load ptr, ptr %i.bfd, align 8, !tbaa !71
  %i.bff = load i64, ptr %i.bep, align 8, !tbaa !76
  %.neg735 = mul i64 %i.bff, -8
  %i.bfg = getelementptr inbounds i8, ptr %i.bfe, i64 %.neg735
  %i.bfh = getelementptr inbounds i8, ptr %i.bfg, i64 -16
  %i.bfi = load ptr, ptr %i.beu, align 8, !tbaa !71
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %indvars.iv1254
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !68
  %i.bfl = load i32, ptr %i.bdz, align 4, !tbaa !38
  %i.bfm = load i32, ptr %i.bev, align 4, !tbaa !88
  %i.bfn = add i32 %i.bfk, -2
  %i.bfo = sub i32 %i.bfn, %i.bfl
  %i.bfp = add nsw i32 %i.bfo, %i.bfm
  %i.bfq = sext i32 %i.bfp to i64
  %i.bfr = getelementptr inbounds i8, ptr %i.bfi, i64 %i.bfq
  %i.bfs = load i8, ptr %i.beo, align 8, !tbaa !51
  %i.bft = load i32, ptr %i.bee, align 4, !tbaa !68
  %indvars.iv1254.tr = trunc nuw nsw i64 %indvars.iv1254 to i32
  %i.bfu = shl nuw nsw i32 %indvars.iv1254.tr, 2  ; 3 uses
  %i.bfv = lshr i32 %i.bft, %i.bfu
  %i.bfw = load i64, ptr %i.bep, align 8, !tbaa !89
  %i.bfx = load i8, ptr %i.beh, align 1, !tbaa !55
  %i.bfy = trunc nuw nsw i64 %indvars.iv1254 to i32
  %i.bfz = shl nuw nsw i32 1, %i.bfy
  %i.bga = trunc nuw nsw i32 %i.bfz to i8         ; 2 uses
  %i.bgb = and i8 %i.bfx, %i.bga
  %i.bgc = load i8, ptr %i.bew, align 1, !tbaa !55
  %i.bgd = and i8 %i.bgc, %i.bga
  %i.bge = load i32, ptr %i.bex, align 4, !tbaa !68
  %i.bgf = lshr i32 %i.bge, %i.bfu
  br label %bb.fx

bb.fu:                                            ; preds = %bb.fs
  %i.bgg = load ptr, ptr %i.beq, align 16, !tbaa !90
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %indvars.iv1254
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !68
  %i.bgj = load i32, ptr %i.bes, align 16, !tbaa !91
  %i.bgk = load i32, ptr %i.bet, align 8, !tbaa !92
  %i.bgl = add i32 %i.bgi, -4
  %i.bgm = shl i32 %i.bgj, 1
  %i.bgn = sub i32 %i.bgl, %i.bgm
  %i.bgo = add nsw i32 %i.bgn, %i.bgk
  %i.bgp = sext i32 %i.bgo to i64                 ; 2 uses
  %i.bgq = getelementptr inbounds [4 x i8], ptr %i.bgg, i64 %i.bgp ; 2 uses
  %i.bgr = load ptr, ptr %i.beu, align 8, !tbaa !71
  %i.bgs = getelementptr inbounds i8, ptr %i.bgr, i64 %i.bgp ; 2 uses
  %i.bgt = load i8, ptr %i.beo, align 8, !tbaa !51 ; 2 uses
  %i.bgu = load i32, ptr %i.bee, align 4, !tbaa !68 ; 2 uses
  %i.bgv = shl nuw nsw i64 %indvars.iv1254, 2     ; 3 uses
  %i.bgw = trunc nuw nsw i64 %i.bgv to i32        ; 3 uses
  %i.bgx = lshr i32 %i.bgu, %i.bgw                ; 2 uses
  %i.bgy = load i64, ptr %i.bdt, align 16, !tbaa !89 ; 3 uses
  %i.bgz = and i64 %i.bgv, 8
  %i.bha = mul nsw i64 %i.bgy, %i.bgz
  %i.bhb = getelementptr inbounds i8, ptr %i.bdw, i64 %i.bha
  %i.bhc = shl nuw nsw i64 %indvars.iv1254, 3
  %i.bhd = and i64 %i.bhc, 8
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhb, i64 %i.bhd ; 2 uses
  %i.bhf = load i8, ptr %i.beh, align 1, !tbaa !55 ; 2 uses
  %i.bhg = trunc nuw nsw i64 %indvars.iv1254 to i32 ; 3 uses
  %i.bhh = shl nuw nsw i32 1, %i.bhg
  %i.bhi = trunc nuw nsw i32 %i.bhh to i8
  %i.bhj = and i8 %i.bhf, %i.bhi                  ; 2 uses
  %i.bhk = and i32 %i.bhg, 1
  %.not79.i955 = icmp eq i32 %i.bhk, 0
  br i1 %.not79.i955, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.bhl = load i8, ptr %i.bew, align 1, !tbaa !55
  %i.bhm = add nsw i64 %indvars.iv1254, -1        ; 2 uses
  %i.bhn = trunc nsw i64 %i.bhm to i32
  %i.bho = shl nuw nsw i32 1, %i.bhn
  %i.bhp = trunc nuw nsw i32 %i.bho to i8
  %i.bhq = and i8 %i.bhl, %i.bhp
  %i.bhr = load i32, ptr %i.bex, align 4, !tbaa !68
  %.tr1306 = trunc nsw i64 %i.bhm to i32
  %i.bhs = shl nsw i32 %.tr1306, 2
  %i.bht = lshr i32 %i.bhr, %i.bhs
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  %i.bhu = shl nuw nsw i32 2, %i.bhg
  %i.bhv = trunc nuw nsw i32 %i.bhu to i8
  %i.bhw = and i8 %i.bhf, %i.bhv
  %i.bhx = trunc nuw nsw i64 %i.bgv to i32
  %i.bhy = or i32 %i.bhx, 4
  %i.bhz = lshr i32 %i.bgu, %i.bhy
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.ft
  %i.bia = phi i64 [ %i.bfw, %bb.ft ], [ %i.bgy, %bb.fv ], [ %i.bgy, %bb.fw ] ; 5 uses
  %i.bib = phi i32 [ %i.bfv, %bb.ft ], [ %i.bgx, %bb.fv ], [ %i.bgx, %bb.fw ] ; 3 uses
  %i.bic = phi i32 [ %i.bfu, %bb.ft ], [ %i.bgw, %bb.fv ], [ %i.bgw, %bb.fw ]
  %.in1392 = phi i8 [ %i.bfs, %bb.ft ], [ %i.bgt, %bb.fv ], [ %i.bgt, %bb.fw ]
  %i.bid = phi ptr [ %i.bfr, %bb.ft ], [ %i.bgs, %bb.fv ], [ %i.bgs, %bb.fw ] ; 2 uses
  %i.bie = phi ptr [ %i.bek, %bb.ft ], [ %i.bgq, %bb.fv ], [ %i.bgq, %bb.fw ] ; 4 uses
  %i.bif = phi i8 [ %i.bgb, %bb.ft ], [ %i.bhj, %bb.fv ], [ %i.bhj, %bb.fw ]
  %.0.i9471094 = phi ptr [ %i.bfh, %bb.ft ], [ %i.bhe, %bb.fv ], [ %i.bhe, %bb.fw ] ; 4 uses
  %.076.i956 = phi i32 [ %i.bgf, %bb.ft ], [ %i.bht, %bb.fv ], [ %i.bhz, %bb.fw ]
  %.075.i957 = phi i8 [ %i.bgd, %bb.ft ], [ %i.bhq, %bb.fv ], [ %i.bhw, %bb.fw ]
  %i.big = zext i8 %.in1392 to i32                ; 4 uses
  %i.bih = trunc i64 %i.bia to i32                ; 2 uses
  %i.bii = icmp ne i8 %i.bif, 0
  %i.bij = icmp ne i8 %.075.i957, 0
  %or.cond.i958 = select i1 %i.bii, i1 true, i1 %i.bij
  br i1 %or.cond.i958, label %.sink.split1363, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bik = load i16, ptr %i.bie, align 2, !tbaa !93
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bie, i64 4
  %i.bim = load i16, ptr %i.bil, align 2, !tbaa !93
  %.not80.i959 = icmp eq i16 %i.bik, %i.bim
  br i1 %.not80.i959, label %bb.fz, label %.sink.split1363

bb.fz:                                            ; preds = %bb.fy
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bie, i64 2
  %i.bio = load i16, ptr %i.bin, align 2, !tbaa !93
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bie, i64 6
  %i.biq = load i16, ptr %i.bip, align 2, !tbaa !93
  %.not81.i961 = icmp eq i16 %i.bio, %i.biq
  br i1 %.not81.i961, label %bb.ga, label %.sink.split1363

bb.ga:                                            ; preds = %bb.fz
  %i.bir = load i32, ptr %i.bey, align 4, !tbaa !56
  %i.bis = icmp eq i32 %i.bir, 2
  br i1 %i.bis, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bit = load i8, ptr %i.bid, align 1, !tbaa !55
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bid, i64 1
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !55
  %.not82.i966 = icmp eq i8 %i.bit, %i.biv
  br i1 %.not82.i966, label %bb.gc, label %.sink.split1363

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.biw = lshr i32 %.076.i956, 1
  %i.bix = or i32 %i.biw, %i.bib                  ; 2 uses
  %i.biy = and i32 %i.bix, 1
  %.not83.i962 = icmp eq i32 %i.biy, 0
  br i1 %.not83.i962, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.biz = load ptr, ptr %i.bez, align 16, !tbaa !83
  %i.bja = shl nsw i32 %i.bih, 2
  %i.bjb = sext i32 %i.bja to i64
  %i.bjc = getelementptr inbounds i8, ptr %.0.i9471094, i64 %i.bjb
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 8
  %sext.i963 = shl i64 %i.bia, 32
  %i.bje = ashr exact i64 %sext.i963, 32
  tail call void %i.biz(ptr noundef nonnull %i.bjd, i64 noundef %i.bje, i32 noundef %i.big) #1, !inline_history !103
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.bjf = and i32 %i.bix, 4
  %.not84.i964 = icmp eq i32 %i.bjf, 0
  br i1 %.not84.i964, label %bb.gf, label %.sink.split1363

.sink.split1363:                                  ; preds = %bb.ge, %bb.fx, %bb.fy, %bb.fz, %bb.gb
  %.sink1365.in = phi ptr [ %i.bfa, %bb.fx ], [ %i.bfa, %bb.gb ], [ %i.bfa, %bb.fz ], [ %i.bfa, %bb.fy ], [ %i.bez, %bb.ge ]
  %.sink1365 = load ptr, ptr %.sink1365.in, align 8, !tbaa !96
  %i.bjg = getelementptr inbounds nuw i8, ptr %.0.i9471094, i64 8
  %sext85.i965 = shl i64 %i.bia, 32
  %i.bjh = ashr exact i64 %sext85.i965, 32
  tail call void %.sink1365(ptr noundef nonnull %i.bjg, i64 noundef %i.bjh, i32 noundef %i.big) #1
  br label %bb.gf

bb.gf:                                            ; preds = %.sink.split1363, %bb.ge
  %i.bji = load i32, ptr %i.ben, align 4, !tbaa !68
  %i.bjj = ashr i32 %i.bji, %i.bic
  %i.bjk = and i32 %i.bjj, 14
  %or.cond4.i950 = icmp eq i32 %i.bjk, 6
  br i1 %or.cond4.i950, label %bb.gg, label %vc1_p_h_loop_filter.exit967

bb.gg:                                            ; preds = %bb.gf
  %i.bjl = and i32 %i.bib, 3
  %.not87.i951 = icmp eq i32 %i.bjl, 0
  br i1 %.not87.i951, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.bjm = load ptr, ptr %i.bez, align 16, !tbaa !83
  %i.bjn = shl nsw i32 %i.bih, 2
  %i.bjo = sext i32 %i.bjn to i64
  %i.bjp = getelementptr inbounds i8, ptr %.0.i9471094, i64 %i.bjo
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 4
  %sext88.i952 = shl i64 %i.bia, 32
  %i.bjr = ashr exact i64 %sext88.i952, 32
  tail call void %i.bjm(ptr noundef nonnull %i.bjq, i64 noundef %i.bjr, i32 noundef %i.big) #1, !inline_history !103
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.bjs = and i32 %i.bib, 12
  %.not89.i953 = icmp eq i32 %i.bjs, 0
  br i1 %.not89.i953, label %vc1_p_h_loop_filter.exit967, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bjt = load ptr, ptr %i.bez, align 16, !tbaa !83
  %i.bju = getelementptr inbounds nuw i8, ptr %.0.i9471094, i64 4
  %sext90.i954 = shl i64 %i.bia, 32
  %i.bjv = ashr exact i64 %sext90.i954, 32
  tail call void %i.bjt(ptr noundef nonnull %i.bju, i64 noundef %i.bjv, i32 noundef %i.big) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit967

vc1_p_h_loop_filter.exit967:                      ; preds = %bb.gf, %bb.gi, %bb.gj
  %indvars.iv.next1255 = add nuw nsw i64 %indvars.iv1254, 1 ; 2 uses
  %exitcond1257.not = icmp eq i64 %indvars.iv.next1255, 6
  br i1 %exitcond1257.not, label %thread-pre-split1096, label %bb.fs, !llvm.loop !107

thread-pre-split1096:                             ; preds = %vc1_p_h_loop_filter.exit967
  %.pr1097 = load i32, ptr %i.bdo, align 4, !tbaa !9
  br label %bb.gk

bb.gk:                                            ; preds = %thread-pre-split1096, %bb.fq
  %i.bjw = phi i32 [ %.pr1097, %thread-pre-split1096 ], [ %i.bdp, %bb.fq ] ; 4 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bjy = load i32, ptr %i.bjx, align 4, !tbaa !65
  %i.bjz = add nsw i32 %i.bjy, -1
  %i.bka = icmp eq i32 %i.bjw, %i.bjz
  br i1 %i.bka, label %bb.gl, label %.loopexit1169

bb.gl:                                            ; preds = %bb.gk
  %i.bkb = icmp sgt i32 %i.bjw, 0
  br i1 %i.bkb, label %bb.gm, label %.loopexit1170

bb.gm:                                            ; preds = %bb.gl
  %i.bkc = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.bkd = load ptr, ptr %i.bkc, align 16, !tbaa !71
  %i.bke = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bkf = load i64, ptr %i.bke, align 16, !tbaa !72
  %.neg729 = mul i64 %i.bkf, -16
  %i.bkg = getelementptr inbounds i8, ptr %i.bkd, i64 %.neg729
  %i.bkh = getelementptr inbounds i8, ptr %i.bkg, i64 -16
  %i.bki = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.bkj = load ptr, ptr %i.bki, align 16, !tbaa !84
  %i.bkk = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.bkl = load i32, ptr %i.bkk, align 4, !tbaa !38
  %i.bkm = xor i32 %i.bkl, -1
  %i.bkn = add i32 %i.bjw, %i.bkm
  %i.bko = sext i32 %i.bkn to i64                 ; 4 uses
  %i.bkp = getelementptr inbounds [4 x i8], ptr %i.bkj, i64 %i.bko ; 3 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.bkr = load ptr, ptr %i.bkq, align 16, !tbaa !85
  %i.bks = getelementptr inbounds i8, ptr %i.bkr, i64 %i.bko ; 3 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.bku = load ptr, ptr %i.bkt, align 16, !tbaa !86
  %i.bkv = getelementptr inbounds [4 x i8], ptr %i.bku, i64 %i.bko
  %i.bkw = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.bkx = load ptr, ptr %i.bkw, align 16, !tbaa !87
  %i.bky = getelementptr inbounds [4 x i8], ptr %i.bkx, i64 %i.bko
  %i.bkz = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.blc = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.blf = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bks, i64 1 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bkp, i64 4 ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.blk = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %vc1_p_h_loop_filter.exit945
  %indvars.iv1258 = phi i64 [ 0, %bb.gm ], [ %indvars.iv.next1259, %vc1_p_h_loop_filter.exit945 ] ; 11 uses
  %i.blm = icmp samesign ugt i64 %indvars.iv1258, 3
  br i1 %i.blm, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.bln = getelementptr [8 x i8], ptr %i.bkc, i64 %indvars.iv1258
  %i.blo = getelementptr i8, ptr %i.bln, i64 -24
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !71
  %i.blq = load i64, ptr %i.bla, align 8, !tbaa !76
  %.neg734 = mul i64 %i.blq, -8
  %i.blr = getelementptr inbounds i8, ptr %i.blp, i64 %.neg734
  %i.bls = getelementptr inbounds i8, ptr %i.blr, i64 -8
  %i.blt = load ptr, ptr %i.blf, align 8, !tbaa !71
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.blc, i64 %indvars.iv1258
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !68
  %i.blw = load i32, ptr %i.bkk, align 4, !tbaa !38
  %i.blx = xor i32 %i.blw, -1
  %i.bly = add i32 %i.blv, %i.blx
  %i.blz = load i32, ptr %i.blg, align 4, !tbaa !88
  %i.bma = add nsw i32 %i.bly, %i.blz
  %i.bmb = sext i32 %i.bma to i64
  %i.bmc = getelementptr inbounds i8, ptr %i.blt, i64 %i.bmb
  %i.bmd = load i8, ptr %i.bkz, align 8, !tbaa !51
  %i.bme = load i32, ptr %i.bkp, align 4, !tbaa !68
  %indvars.iv1258.tr = trunc nuw nsw i64 %indvars.iv1258 to i32
  %i.bmf = shl nuw nsw i32 %indvars.iv1258.tr, 2  ; 3 uses
  %i.bmg = lshr i32 %i.bme, %i.bmf
  %i.bmh = load i64, ptr %i.bla, align 8, !tbaa !89
  %i.bmi = load i8, ptr %i.bks, align 1, !tbaa !55
  %i.bmj = trunc nuw nsw i64 %indvars.iv1258 to i32
  %i.bmk = shl nuw nsw i32 1, %i.bmj
  %i.bml = trunc nuw nsw i32 %i.bmk to i8         ; 2 uses
  %i.bmm = and i8 %i.bmi, %i.bml
  %i.bmn = load i8, ptr %i.blh, align 1, !tbaa !55
  %i.bmo = and i8 %i.bmn, %i.bml
  %i.bmp = load i32, ptr %i.bli, align 4, !tbaa !68
  %i.bmq = lshr i32 %i.bmp, %i.bmf
  br label %bb.gs

bb.gp:                                            ; preds = %bb.gn
  %i.bmr = load ptr, ptr %i.blb, align 16, !tbaa !90
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %i.blc, i64 %indvars.iv1258
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !68
  %i.bmu = load i32, ptr %i.bld, align 16, !tbaa !91
  %i.bmv = load i32, ptr %i.ble, align 8, !tbaa !92
  %i.bmw = add i32 %i.bmt, -2
  %i.bmx = shl i32 %i.bmu, 1
  %i.bmy = sub i32 %i.bmw, %i.bmx
  %i.bmz = add nsw i32 %i.bmy, %i.bmv
  %i.bna = sext i32 %i.bmz to i64                 ; 2 uses
  %i.bnb = getelementptr inbounds [4 x i8], ptr %i.bmr, i64 %i.bna ; 2 uses
  %i.bnc = load ptr, ptr %i.blf, align 8, !tbaa !71
  %i.bnd = getelementptr inbounds i8, ptr %i.bnc, i64 %i.bna ; 2 uses
  %i.bne = load i8, ptr %i.bkz, align 8, !tbaa !51 ; 2 uses
  %i.bnf = load i32, ptr %i.bkp, align 4, !tbaa !68 ; 2 uses
  %i.bng = shl nuw nsw i64 %indvars.iv1258, 2     ; 3 uses
  %i.bnh = trunc nuw nsw i64 %i.bng to i32        ; 3 uses
  %i.bni = lshr i32 %i.bnf, %i.bnh                ; 2 uses
  %i.bnj = load i64, ptr %i.bke, align 16, !tbaa !89 ; 3 uses
  %i.bnk = and i64 %i.bng, 8
  %i.bnl = mul nsw i64 %i.bnj, %i.bnk
  %i.bnm = getelementptr inbounds i8, ptr %i.bkh, i64 %i.bnl
  %i.bnn = shl nuw nsw i64 %indvars.iv1258, 3
  %i.bno = and i64 %i.bnn, 8
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %i.bno ; 2 uses
  %i.bnq = load i8, ptr %i.bks, align 1, !tbaa !55 ; 2 uses
  %i.bnr = trunc nuw nsw i64 %indvars.iv1258 to i32 ; 3 uses
  %i.bns = shl nuw nsw i32 1, %i.bnr
  %i.bnt = trunc nuw nsw i32 %i.bns to i8
  %i.bnu = and i8 %i.bnq, %i.bnt                  ; 2 uses
  %i.bnv = and i32 %i.bnr, 1
  %.not79.i933 = icmp eq i32 %i.bnv, 0
  br i1 %.not79.i933, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.bnw = load i8, ptr %i.blh, align 1, !tbaa !55
  %i.bnx = add nsw i64 %indvars.iv1258, -1        ; 2 uses
  %i.bny = trunc nsw i64 %i.bnx to i32
  %i.bnz = shl nuw nsw i32 1, %i.bny
  %i.boa = trunc nuw nsw i32 %i.bnz to i8
  %i.bob = and i8 %i.bnw, %i.boa
  %i.boc = load i32, ptr %i.bli, align 4, !tbaa !68
  %.tr1307 = trunc nsw i64 %i.bnx to i32
  %i.bod = shl nsw i32 %.tr1307, 2
  %i.boe = lshr i32 %i.boc, %i.bod
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.bof = shl nuw nsw i32 2, %i.bnr
  %i.bog = trunc nuw nsw i32 %i.bof to i8
  %i.boh = and i8 %i.bnq, %i.bog
  %i.boi = trunc nuw nsw i64 %i.bng to i32
  %i.boj = or i32 %i.boi, 4
  %i.bok = lshr i32 %i.bnf, %i.boj
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %bb.go
  %i.bol = phi i64 [ %i.bmh, %bb.go ], [ %i.bnj, %bb.gq ], [ %i.bnj, %bb.gr ] ; 5 uses
  %i.bom = phi i32 [ %i.bmg, %bb.go ], [ %i.bni, %bb.gq ], [ %i.bni, %bb.gr ] ; 3 uses
  %i.bon = phi i32 [ %i.bmf, %bb.go ], [ %i.bnh, %bb.gq ], [ %i.bnh, %bb.gr ]
  %.in1394 = phi i8 [ %i.bmd, %bb.go ], [ %i.bne, %bb.gq ], [ %i.bne, %bb.gr ]
  %i.boo = phi ptr [ %i.bmc, %bb.go ], [ %i.bnd, %bb.gq ], [ %i.bnd, %bb.gr ] ; 2 uses
  %i.bop = phi ptr [ %i.bkv, %bb.go ], [ %i.bnb, %bb.gq ], [ %i.bnb, %bb.gr ] ; 4 uses
  %i.boq = phi i8 [ %i.bmm, %bb.go ], [ %i.bnu, %bb.gq ], [ %i.bnu, %bb.gr ]
  %.0.i9251102 = phi ptr [ %i.bls, %bb.go ], [ %i.bnp, %bb.gq ], [ %i.bnp, %bb.gr ] ; 4 uses
  %.076.i934 = phi i32 [ %i.bmq, %bb.go ], [ %i.boe, %bb.gq ], [ %i.bok, %bb.gr ]
  %.075.i935 = phi i8 [ %i.bmo, %bb.go ], [ %i.bob, %bb.gq ], [ %i.boh, %bb.gr ]
  %i.bor = zext i8 %.in1394 to i32                ; 4 uses
  %i.bos = trunc i64 %i.bol to i32                ; 2 uses
  %i.bot = icmp ne i8 %i.boq, 0
  %i.bou = icmp ne i8 %.075.i935, 0
  %or.cond.i936 = select i1 %i.bot, i1 true, i1 %i.bou
  br i1 %or.cond.i936, label %.sink.split1366, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.bov = load i16, ptr %i.bop, align 2, !tbaa !93
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bop, i64 4
  %i.box = load i16, ptr %i.bow, align 2, !tbaa !93
  %.not80.i937 = icmp eq i16 %i.bov, %i.box
  br i1 %.not80.i937, label %bb.gu, label %.sink.split1366

bb.gu:                                            ; preds = %bb.gt
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bop, i64 2
  %i.boz = load i16, ptr %i.boy, align 2, !tbaa !93
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bop, i64 6
  %i.bpb = load i16, ptr %i.bpa, align 2, !tbaa !93
  %.not81.i939 = icmp eq i16 %i.boz, %i.bpb
  br i1 %.not81.i939, label %bb.gv, label %.sink.split1366

bb.gv:                                            ; preds = %bb.gu
  %i.bpc = load i32, ptr %i.blj, align 4, !tbaa !56
  %i.bpd = icmp eq i32 %i.bpc, 2
  br i1 %i.bpd, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.bpe = load i8, ptr %i.boo, align 1, !tbaa !55
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.boo, i64 1
  %i.bpg = load i8, ptr %i.bpf, align 1, !tbaa !55
  %.not82.i944 = icmp eq i8 %i.bpe, %i.bpg
  br i1 %.not82.i944, label %bb.gx, label %.sink.split1366

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.bph = lshr i32 %.076.i934, 1
  %i.bpi = or i32 %i.bph, %i.bom                  ; 2 uses
  %i.bpj = and i32 %i.bpi, 1
  %.not83.i940 = icmp eq i32 %i.bpj, 0
  br i1 %.not83.i940, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.bpk = load ptr, ptr %i.blk, align 16, !tbaa !83
  %i.bpl = shl nsw i32 %i.bos, 2
  %i.bpm = sext i32 %i.bpl to i64
  %i.bpn = getelementptr inbounds i8, ptr %.0.i9251102, i64 %i.bpm
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 8
  %sext.i941 = shl i64 %i.bol, 32
  %i.bpp = ashr exact i64 %sext.i941, 32
  tail call void %i.bpk(ptr noundef nonnull %i.bpo, i64 noundef %i.bpp, i32 noundef %i.bor) #1, !inline_history !103
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.bpq = and i32 %i.bpi, 4
  %.not84.i942 = icmp eq i32 %i.bpq, 0
  br i1 %.not84.i942, label %bb.ha, label %.sink.split1366

.sink.split1366:                                  ; preds = %bb.gz, %bb.gs, %bb.gt, %bb.gu, %bb.gw
  %.sink1368.in = phi ptr [ %i.bll, %bb.gs ], [ %i.bll, %bb.gw ], [ %i.bll, %bb.gu ], [ %i.bll, %bb.gt ], [ %i.blk, %bb.gz ]
  %.sink1368 = load ptr, ptr %.sink1368.in, align 8, !tbaa !96
  %i.bpr = getelementptr inbounds nuw i8, ptr %.0.i9251102, i64 8
  %sext85.i943 = shl i64 %i.bol, 32
  %i.bps = ashr exact i64 %sext85.i943, 32
  tail call void %.sink1368(ptr noundef nonnull %i.bpr, i64 noundef %i.bps, i32 noundef %i.bor) #1
  br label %bb.ha

bb.ha:                                            ; preds = %.sink.split1366, %bb.gz
  %i.bpt = load i32, ptr %i.bky, align 4, !tbaa !68
  %i.bpu = ashr i32 %i.bpt, %i.bon
  %i.bpv = and i32 %i.bpu, 14
  %or.cond4.i928 = icmp eq i32 %i.bpv, 6
  br i1 %or.cond4.i928, label %bb.hb, label %vc1_p_h_loop_filter.exit945

bb.hb:                                            ; preds = %bb.ha
  %i.bpw = and i32 %i.bom, 3
  %.not87.i929 = icmp eq i32 %i.bpw, 0
  br i1 %.not87.i929, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bpx = load ptr, ptr %i.blk, align 16, !tbaa !83
  %i.bpy = shl nsw i32 %i.bos, 2
  %i.bpz = sext i32 %i.bpy to i64
  %i.bqa = getelementptr inbounds i8, ptr %.0.i9251102, i64 %i.bpz
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 4
  %sext88.i930 = shl i64 %i.bol, 32
  %i.bqc = ashr exact i64 %sext88.i930, 32
  tail call void %i.bpx(ptr noundef nonnull %i.bqb, i64 noundef %i.bqc, i32 noundef %i.bor) #1, !inline_history !103
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.bqd = and i32 %i.bom, 12
  %.not89.i931 = icmp eq i32 %i.bqd, 0
  br i1 %.not89.i931, label %vc1_p_h_loop_filter.exit945, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bqe = load ptr, ptr %i.blk, align 16, !tbaa !83
  %i.bqf = getelementptr inbounds nuw i8, ptr %.0.i9251102, i64 4
  %sext90.i932 = shl i64 %i.bol, 32
  %i.bqg = ashr exact i64 %sext90.i932, 32
  tail call void %i.bqe(ptr noundef nonnull %i.bqf, i64 noundef %i.bqg, i32 noundef %i.bor) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit945

vc1_p_h_loop_filter.exit945:                      ; preds = %bb.ha, %bb.hd, %bb.he
  %indvars.iv.next1259 = add nuw nsw i64 %indvars.iv1258, 1 ; 2 uses
  %exitcond1261.not = icmp eq i64 %indvars.iv.next1259, 6
  br i1 %exitcond1261.not, label %.loopexit1170.loopexit, label %bb.gn, !llvm.loop !108

.loopexit1170.loopexit:                           ; preds = %vc1_p_h_loop_filter.exit945
  %.pre1284 = load i32, ptr %i.bdo, align 4, !tbaa !9
  br label %.loopexit1170

.loopexit1170:                                    ; preds = %.loopexit1170.loopexit, %bb.gl
  %i.bqh = phi i32 [ %.pre1284, %.loopexit1170.loopexit ], [ %i.bjw, %bb.gl ]
  %i.bqi = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.bqj = load ptr, ptr %i.bqi, align 16, !tbaa !71
  %i.bqk = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bql = load i64, ptr %i.bqk, align 16, !tbaa !72
  %.neg730 = mul i64 %i.bql, -16
  %i.bqm = getelementptr inbounds i8, ptr %i.bqj, i64 %.neg730
  %i.bqn = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.bqo = load ptr, ptr %i.bqn, align 16, !tbaa !84
  %i.bqp = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.bqq = load i32, ptr %i.bqp, align 4, !tbaa !38
  %i.bqr = sub nsw i32 %i.bqh, %i.bqq
  %i.bqs = sext i32 %i.bqr to i64                 ; 4 uses
  %i.bqt = getelementptr inbounds [4 x i8], ptr %i.bqo, i64 %i.bqs ; 3 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.bqv = load ptr, ptr %i.bqu, align 16, !tbaa !85
  %i.bqw = getelementptr inbounds i8, ptr %i.bqv, i64 %i.bqs ; 3 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.bqy = load ptr, ptr %i.bqx, align 16, !tbaa !86
  %i.bqz = getelementptr inbounds [4 x i8], ptr %i.bqy, i64 %i.bqs
  %i.bra = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.brb = load ptr, ptr %i.bra, align 16, !tbaa !87
  %i.brc = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.bqs
  %i.brd = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.brg = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bri = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.brj = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bqw, i64 1
  %i.brm = getelementptr inbounds nuw i8, ptr %i.bqt, i64 4
  %i.brn = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.bro = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.hf

bb.hf:                                            ; preds = %.loopexit1170, %vc1_p_h_loop_filter.exit923
  %indvars.iv1262 = phi i64 [ 0, %.loopexit1170 ], [ %indvars.iv.next1263, %vc1_p_h_loop_filter.exit923 ] ; 10 uses
  %i.brq = icmp samesign ugt i64 %indvars.iv1262, 3
  br i1 %i.brq, label %bb.hg, label %.thread1106

bb.hg:                                            ; preds = %bb.hf
  %i.brr = getelementptr [8 x i8], ptr %i.bqi, i64 %indvars.iv1262
  %i.brs = getelementptr i8, ptr %i.brr, i64 -24
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !71
  %i.bru = load i64, ptr %i.bre, align 8, !tbaa !76
  %.neg733 = mul i64 %i.bru, -8
  %i.brv = getelementptr inbounds i8, ptr %i.brt, i64 %.neg733 ; 2 uses
  %i.brw = load i8, ptr %i.brd, align 8, !tbaa !51
  %i.brx = zext i8 %i.brw to i32                  ; 2 uses
  %i.bry = load i32, ptr %i.bqt, align 4, !tbaa !68
  %indvars.iv1262.tr = trunc nuw nsw i64 %indvars.iv1262 to i32
  %i.brz = shl nuw nsw i32 %indvars.iv1262.tr, 2  ; 4 uses
  %i.bsa = lshr i32 %i.bry, %i.brz                ; 2 uses
  %i.bsb = load i64, ptr %i.bre, align 8, !tbaa !89 ; 3 uses
  %i.bsc = trunc i64 %i.bsb to i32                ; 2 uses
  %i.bsd = and i64 %indvars.iv1262, 5
  %.not78.i905 = icmp eq i64 %i.bsd, 0
  br i1 %.not78.i905, label %bb.hh, label %bb.hr

.thread1106:                                      ; preds = %bb.hf
  %i.bse = load i8, ptr %i.brd, align 8, !tbaa !51
  %i.bsf = zext i8 %i.bse to i32                  ; 2 uses
  %i.bsg = load i32, ptr %i.bqt, align 4, !tbaa !68 ; 2 uses
  %i.bsh = shl nuw nsw i64 %indvars.iv1262, 2     ; 3 uses
  %i.bsi = trunc nuw nsw i64 %i.bsh to i32        ; 3 uses
  %i.bsj = lshr i32 %i.bsg, %i.bsi                ; 2 uses
  %i.bsk = load i64, ptr %i.bqk, align 16, !tbaa !89 ; 4 uses
  %i.bsl = trunc i64 %i.bsk to i32                ; 2 uses
  %i.bsm = and i64 %i.bsh, 8
  %i.bsn = mul nsw i64 %i.bsk, %i.bsm
  %i.bso = getelementptr inbounds i8, ptr %i.bqm, i64 %i.bsn
  %i.bsp = shl nuw nsw i64 %indvars.iv1262, 3
  %i.bsq = and i64 %i.bsp, 8
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bso, i64 %i.bsq ; 2 uses
  %i.bss = trunc nuw nsw i64 %indvars.iv1262 to i32 ; 3 uses
  %i.bst = and i32 %i.bss, 1
  %.not78.i9051108 = icmp eq i32 %i.bst, 0
  br i1 %.not78.i9051108, label %bb.hi, label %bb.hr

bb.hh:                                            ; preds = %bb.hg
  %i.bsu = load ptr, ptr %i.brj, align 8, !tbaa !71
  %i.bsv = getelementptr inbounds nuw [4 x i8], ptr %i.brg, i64 %indvars.iv1262
  %i.bsw = load i32, ptr %i.bsv, align 4, !tbaa !68
  %i.bsx = load i32, ptr %i.bqp, align 4, !tbaa !38
  %i.bsy = sub i32 %i.bsw, %i.bsx
  %i.bsz = load i32, ptr %i.brk, align 4, !tbaa !88
  %i.bta = add nsw i32 %i.bsy, %i.bsz
  %i.btb = sext i32 %i.bta to i64
  %i.btc = getelementptr inbounds i8, ptr %i.bsu, i64 %i.btb
  %i.btd = load i8, ptr %i.bqw, align 1, !tbaa !55
  %i.bte = and i8 %i.btd, 4
  %i.btf = load i8, ptr %i.brl, align 1, !tbaa !55
  %i.btg = and i8 %i.btf, 4
  %i.bth = load i32, ptr %i.brm, align 4, !tbaa !68
  %i.bti = lshr i32 %i.bth, %i.brz
  br label %bb.hj

bb.hi:                                            ; preds = %.thread1106
  %i.btj = load ptr, ptr %i.brj, align 8, !tbaa !71
  %i.btk = getelementptr inbounds nuw [4 x i8], ptr %i.brg, i64 %indvars.iv1262
  %i.btl = load i32, ptr %i.btk, align 4, !tbaa !68
  %i.btm = load i32, ptr %i.brh, align 16, !tbaa !91
  %i.btn = shl i32 %i.btm, 1
  %i.bto = sub i32 %i.btl, %i.btn
  %i.btp = load i32, ptr %i.bri, align 8, !tbaa !92
  %i.btq = add nsw i32 %i.bto, %i.btp
  %i.btr = sext i32 %i.btq to i64                 ; 2 uses
  %i.bts = getelementptr inbounds i8, ptr %i.btj, i64 %i.btr
  %i.btt = load ptr, ptr %i.brf, align 16, !tbaa !90
  %i.btu = getelementptr inbounds [4 x i8], ptr %i.btt, i64 %i.btr
  %i.btv = load i8, ptr %i.bqw, align 1, !tbaa !55 ; 2 uses
  %i.btw = shl nuw nsw i32 1, %i.bss
  %i.btx = trunc nuw nsw i32 %i.btw to i8
  %i.bty = and i8 %i.btv, %i.btx
  %i.btz = shl nuw nsw i32 2, %i.bss
  %i.bua = trunc nuw nsw i32 %i.btz to i8
  %i.bub = and i8 %i.btv, %i.bua
  %i.buc = trunc nuw nsw i64 %i.bsh to i32
  %i.bud = or i32 %i.buc, 4
  %i.bue = lshr i32 %i.bsg, %i.bud
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.buf = phi i32 [ %i.bsc, %bb.hh ], [ %i.bsl, %bb.hi ] ; 3 uses
  %i.bug = phi i64 [ %i.bsb, %bb.hh ], [ %i.bsk, %bb.hi ] ; 4 uses
  %i.buh = phi i32 [ %i.bsa, %bb.hh ], [ %i.bsj, %bb.hi ] ; 3 uses
  %i.bui = phi i32 [ %i.brz, %bb.hh ], [ %i.bsi, %bb.hi ] ; 2 uses
  %i.buj = phi i32 [ %i.brx, %bb.hh ], [ %i.bsf, %bb.hi ] ; 4 uses
  %i.buk = phi ptr [ %i.btc, %bb.hh ], [ %i.bts, %bb.hi ] ; 2 uses
  %i.bul = phi ptr [ %i.bqz, %bb.hh ], [ %i.btu, %bb.hi ] ; 4 uses
  %i.bum = phi i8 [ %i.bte, %bb.hh ], [ %i.bty, %bb.hi ]
  %.0.i90311101113 = phi ptr [ %i.brv, %bb.hh ], [ %i.bsr, %bb.hi ] ; 4 uses
  %.076.i912 = phi i32 [ %i.bti, %bb.hh ], [ %i.bue, %bb.hi ]
  %.075.i913 = phi i8 [ %i.btg, %bb.hh ], [ %i.bub, %bb.hi ]
  %i.bun = icmp ne i8 %i.bum, 0
  %i.buo = icmp ne i8 %.075.i913, 0
  %or.cond.i914 = select i1 %i.bun, i1 true, i1 %i.buo
  br i1 %or.cond.i914, label %.sink.split1369, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.bup = load i16, ptr %i.bul, align 2, !tbaa !93
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bul, i64 4
  %i.bur = load i16, ptr %i.buq, align 2, !tbaa !93
  %.not80.i915 = icmp eq i16 %i.bup, %i.bur
  br i1 %.not80.i915, label %bb.hl, label %.sink.split1369

bb.hl:                                            ; preds = %bb.hk
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bul, i64 2
  %i.but = load i16, ptr %i.bus, align 2, !tbaa !93
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bul, i64 6
  %i.buv = load i16, ptr %i.buu, align 2, !tbaa !93
  %.not81.i917 = icmp eq i16 %i.but, %i.buv
  br i1 %.not81.i917, label %bb.hm, label %.sink.split1369

bb.hm:                                            ; preds = %bb.hl
  %i.buw = load i32, ptr %i.brn, align 4, !tbaa !56
  %i.bux = icmp eq i32 %i.buw, 2
  br i1 %i.bux, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.buy = load i8, ptr %i.buk, align 1, !tbaa !55
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buk, i64 1
  %i.bva = load i8, ptr %i.buz, align 1, !tbaa !55
  %.not82.i922 = icmp eq i8 %i.buy, %i.bva
  br i1 %.not82.i922, label %bb.ho, label %.sink.split1369

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.bvb = lshr i32 %.076.i912, 1
  %i.bvc = or i32 %i.bvb, %i.buh                  ; 2 uses
  %i.bvd = and i32 %i.bvc, 1
  %.not83.i918 = icmp eq i32 %i.bvd, 0
  br i1 %.not83.i918, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bve = load ptr, ptr %i.bro, align 16, !tbaa !83
  %i.bvf = shl nsw i32 %i.buf, 2
  %i.bvg = sext i32 %i.bvf to i64
  %i.bvh = getelementptr inbounds i8, ptr %.0.i90311101113, i64 %i.bvg
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 8
  %sext.i919 = shl i64 %i.bug, 32
  %i.bvj = ashr exact i64 %sext.i919, 32
  tail call void %i.bve(ptr noundef nonnull %i.bvi, i64 noundef %i.bvj, i32 noundef %i.buj) #1, !inline_history !103
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.bvk = and i32 %i.bvc, 4
  %.not84.i920 = icmp eq i32 %i.bvk, 0
  br i1 %.not84.i920, label %bb.hr, label %.sink.split1369

.sink.split1369:                                  ; preds = %bb.hq, %bb.hj, %bb.hk, %bb.hl, %bb.hn
  %.sink1371.in = phi ptr [ %i.brp, %bb.hj ], [ %i.brp, %bb.hn ], [ %i.brp, %bb.hl ], [ %i.brp, %bb.hk ], [ %i.bro, %bb.hq ]
  %.sink1371 = load ptr, ptr %.sink1371.in, align 8, !tbaa !96
  %i.bvl = getelementptr inbounds nuw i8, ptr %.0.i90311101113, i64 8
  %sext85.i921 = shl i64 %i.bug, 32
  %i.bvm = ashr exact i64 %sext85.i921, 32
  tail call void %.sink1371(ptr noundef nonnull %i.bvl, i64 noundef %i.bvm, i32 noundef %i.buj) #1
  br label %bb.hr

bb.hr:                                            ; preds = %.sink.split1369, %.thread1106, %bb.hq, %bb.hg
  %i.bvn = phi i32 [ %i.bsl, %.thread1106 ], [ %i.bsc, %bb.hg ], [ %i.buf, %bb.hq ], [ %i.buf, %.sink.split1369 ]
  %i.bvo = phi i64 [ %i.bsk, %.thread1106 ], [ %i.bsb, %bb.hg ], [ %i.bug, %bb.hq ], [ %i.bug, %.sink.split1369 ] ; 2 uses
  %i.bvp = phi i32 [ %i.bsj, %.thread1106 ], [ %i.bsa, %bb.hg ], [ %i.buh, %bb.hq ], [ %i.buh, %.sink.split1369 ] ; 2 uses
  %i.bvq = phi i32 [ %i.bsi, %.thread1106 ], [ %i.brz, %bb.hg ], [ %i.bui, %bb.hq ], [ %i.bui, %.sink.split1369 ]
  %i.bvr = phi i32 [ %i.bsf, %.thread1106 ], [ %i.brx, %bb.hg ], [ %i.buj, %bb.hq ], [ %i.buj, %.sink.split1369 ] ; 2 uses
  %.0.i9031109 = phi ptr [ %i.bsr, %.thread1106 ], [ %i.brv, %bb.hg ], [ %.0.i90311101113, %bb.hq ], [ %.0.i90311101113, %.sink.split1369 ] ; 2 uses
  %i.bvs = load i32, ptr %i.brc, align 4, !tbaa !68
  %i.bvt = ashr i32 %i.bvs, %i.bvq
  %i.bvu = and i32 %i.bvt, 14
  %or.cond4.i906 = icmp eq i32 %i.bvu, 6
  br i1 %or.cond4.i906, label %bb.hs, label %vc1_p_h_loop_filter.exit923

bb.hs:                                            ; preds = %bb.hr
  %i.bvv = and i32 %i.bvp, 3
  %.not87.i907 = icmp eq i32 %i.bvv, 0
  br i1 %.not87.i907, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bvw = load ptr, ptr %i.bro, align 16, !tbaa !83
  %i.bvx = shl nsw i32 %i.bvn, 2
  %i.bvy = sext i32 %i.bvx to i64
  %i.bvz = getelementptr inbounds i8, ptr %.0.i9031109, i64 %i.bvy
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 4
  %sext88.i908 = shl i64 %i.bvo, 32
  %i.bwb = ashr exact i64 %sext88.i908, 32
  tail call void %i.bvw(ptr noundef nonnull %i.bwa, i64 noundef %i.bwb, i32 noundef %i.bvr) #1, !inline_history !103
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.bwc = and i32 %i.bvp, 12
  %.not89.i909 = icmp eq i32 %i.bwc, 0
  br i1 %.not89.i909, label %vc1_p_h_loop_filter.exit923, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.bwd = load ptr, ptr %i.bro, align 16, !tbaa !83
  %i.bwe = getelementptr inbounds nuw i8, ptr %.0.i9031109, i64 4
  %sext90.i910 = shl i64 %i.bvo, 32
  %i.bwf = ashr exact i64 %sext90.i910, 32
  tail call void %i.bwd(ptr noundef nonnull %i.bwe, i64 noundef %i.bwf, i32 noundef %i.bvr) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit923

vc1_p_h_loop_filter.exit923:                      ; preds = %bb.hr, %bb.hu, %bb.hv
  %indvars.iv.next1263 = add nuw nsw i64 %indvars.iv1262, 1 ; 2 uses
  %exitcond1265.not = icmp eq i64 %indvars.iv.next1263, 6
  br i1 %exitcond1265.not, label %.loopexit1169, label %bb.hf, !llvm.loop !109

.loopexit1169:                                    ; preds = %vc1_p_h_loop_filter.exit923, %bb.gk, %bb.fp
  %i.bwg = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 3 uses
  %i.bwh = load i32, ptr %i.bwg, align 4, !tbaa !9 ; 3 uses
  %i.bwi = icmp sgt i32 %i.bwh, 1
  br i1 %i.bwi, label %bb.hw, label %bb.ip

bb.hw:                                            ; preds = %.loopexit1169
  %i.bwj = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.bwk = load ptr, ptr %i.bwj, align 16, !tbaa !71
  %i.bwl = getelementptr inbounds i8, ptr %i.bwk, i64 -32
  %i.bwm = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.bwn = load ptr, ptr %i.bwm, align 16, !tbaa !84
  %i.bwo = add nsw i32 %i.bwh, -2
  %i.bwp = zext nneg i32 %i.bwo to i64            ; 4 uses
  %i.bwq = getelementptr inbounds nuw [4 x i8], ptr %i.bwn, i64 %i.bwp ; 3 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.bws = load ptr, ptr %i.bwr, align 16, !tbaa !85
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bws, i64 %i.bwp ; 3 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.bwv = load ptr, ptr %i.bwu, align 16, !tbaa !86
  %i.bww = getelementptr inbounds nuw [4 x i8], ptr %i.bwv, i64 %i.bwp
  %i.bwx = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.bwy = load ptr, ptr %i.bwx, align 16, !tbaa !87
  %i.bwz = getelementptr inbounds nuw [4 x i8], ptr %i.bwy, i64 %i.bwp
  %i.bxa = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bxc = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bxd = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bxe = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.bxg = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bwt, i64 1 ; 2 uses
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bwq, i64 4 ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.bxl = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.bxm = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %vc1_p_h_loop_filter.exit901
  %indvars.iv1266 = phi i64 [ 0, %bb.hw ], [ %indvars.iv.next1267, %vc1_p_h_loop_filter.exit901 ] ; 11 uses
  %i.bxn = icmp samesign ugt i64 %indvars.iv1266, 3
  br i1 %i.bxn, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.bxo = getelementptr [8 x i8], ptr %i.bwj, i64 %indvars.iv1266
  %i.bxp = getelementptr i8, ptr %i.bxo, i64 -24
  %i.bxq = load ptr, ptr %i.bxp, align 8, !tbaa !71
  %i.bxr = getelementptr inbounds i8, ptr %i.bxq, i64 -16
  %i.bxs = load ptr, ptr %i.bxg, align 8, !tbaa !71
  %i.bxt = getelementptr inbounds nuw [4 x i8], ptr %i.bxe, i64 %indvars.iv1266
  %i.bxu = load i32, ptr %i.bxt, align 4, !tbaa !68
  %i.bxv = add nsw i32 %i.bxu, -2
  %i.bxw = load i32, ptr %i.bxh, align 4, !tbaa !88
  %i.bxx = add nsw i32 %i.bxv, %i.bxw
  %i.bxy = sext i32 %i.bxx to i64
  %i.bxz = getelementptr inbounds i8, ptr %i.bxs, i64 %i.bxy
  %i.bya = load i8, ptr %i.bxa, align 8, !tbaa !51
  %i.byb = load i32, ptr %i.bwq, align 4, !tbaa !68
  %indvars.iv1266.tr = trunc nuw nsw i64 %indvars.iv1266 to i32
  %i.byc = shl nuw nsw i32 %indvars.iv1266.tr, 2  ; 3 uses
  %i.byd = lshr i32 %i.byb, %i.byc
  %i.bye = load i64, ptr %i.bxb, align 8, !tbaa !89
  %i.byf = load i8, ptr %i.bwt, align 1, !tbaa !55
  %i.byg = trunc nuw nsw i64 %indvars.iv1266 to i32
  %i.byh = shl nuw nsw i32 1, %i.byg
  %i.byi = trunc nuw nsw i32 %i.byh to i8         ; 2 uses
  %i.byj = and i8 %i.byf, %i.byi
  %i.byk = load i8, ptr %i.bxi, align 1, !tbaa !55
  %i.byl = and i8 %i.byk, %i.byi
  %i.bym = load i32, ptr %i.bxj, align 4, !tbaa !68
  %i.byn = lshr i32 %i.bym, %i.byc
  br label %bb.ic

bb.hz:                                            ; preds = %bb.hx
  %i.byo = load ptr, ptr %i.bxd, align 16, !tbaa !90
  %i.byp = getelementptr inbounds nuw [4 x i8], ptr %i.bxe, i64 %indvars.iv1266
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !68
  %i.byr = add nsw i32 %i.byq, -4
  %i.bys = load i32, ptr %i.bxf, align 8, !tbaa !92
  %i.byt = add nsw i32 %i.byr, %i.bys
  %i.byu = sext i32 %i.byt to i64                 ; 2 uses
  %i.byv = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.byu ; 2 uses
  %i.byw = load ptr, ptr %i.bxg, align 8, !tbaa !71
  %i.byx = getelementptr inbounds i8, ptr %i.byw, i64 %i.byu ; 2 uses
  %i.byy = load i8, ptr %i.bxa, align 8, !tbaa !51 ; 2 uses
  %i.byz = load i32, ptr %i.bwq, align 4, !tbaa !68 ; 2 uses
  %i.bza = shl nuw nsw i64 %indvars.iv1266, 2     ; 3 uses
  %i.bzb = trunc nuw nsw i64 %i.bza to i32        ; 3 uses
  %i.bzc = lshr i32 %i.byz, %i.bzb                ; 2 uses
  %i.bzd = load i64, ptr %i.bxc, align 16, !tbaa !89 ; 3 uses
  %i.bze = and i64 %i.bza, 8
  %i.bzf = mul nsw i64 %i.bzd, %i.bze
  %i.bzg = getelementptr inbounds i8, ptr %i.bwl, i64 %i.bzf
  %i.bzh = shl nuw nsw i64 %indvars.iv1266, 3
  %i.bzi = and i64 %i.bzh, 8
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzg, i64 %i.bzi ; 2 uses
  %i.bzk = load i8, ptr %i.bwt, align 1, !tbaa !55 ; 2 uses
  %i.bzl = trunc nuw nsw i64 %indvars.iv1266 to i32 ; 3 uses
  %i.bzm = shl nuw nsw i32 1, %i.bzl
  %i.bzn = trunc nuw nsw i32 %i.bzm to i8
  %i.bzo = and i8 %i.bzk, %i.bzn                  ; 2 uses
  %i.bzp = and i32 %i.bzl, 1
  %.not79.i889 = icmp eq i32 %i.bzp, 0
  br i1 %.not79.i889, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.bzq = load i8, ptr %i.bxi, align 1, !tbaa !55
  %i.bzr = add nsw i64 %indvars.iv1266, -1        ; 2 uses
  %i.bzs = trunc nsw i64 %i.bzr to i32
  %i.bzt = shl nuw nsw i32 1, %i.bzs
  %i.bzu = trunc nuw nsw i32 %i.bzt to i8
  %i.bzv = and i8 %i.bzq, %i.bzu
  %i.bzw = load i32, ptr %i.bxj, align 4, !tbaa !68
  %.tr1308 = trunc nsw i64 %i.bzr to i32
  %i.bzx = shl nsw i32 %.tr1308, 2
  %i.bzy = lshr i32 %i.bzw, %i.bzx
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hz
  %i.bzz = shl nuw nsw i32 2, %i.bzl
  %i.caa = trunc nuw nsw i32 %i.bzz to i8
  %i.cab = and i8 %i.bzk, %i.caa
  %i.cac = trunc nuw nsw i64 %i.bza to i32
  %i.cad = or i32 %i.cac, 4
  %i.cae = lshr i32 %i.byz, %i.cad
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia, %bb.hy
  %i.caf = phi i64 [ %i.bye, %bb.hy ], [ %i.bzd, %bb.ia ], [ %i.bzd, %bb.ib ] ; 5 uses
  %i.cag = phi i32 [ %i.byd, %bb.hy ], [ %i.bzc, %bb.ia ], [ %i.bzc, %bb.ib ] ; 3 uses
  %i.cah = phi i32 [ %i.byc, %bb.hy ], [ %i.bzb, %bb.ia ], [ %i.bzb, %bb.ib ]
  %.in1396 = phi i8 [ %i.bya, %bb.hy ], [ %i.byy, %bb.ia ], [ %i.byy, %bb.ib ]
  %i.cai = phi ptr [ %i.bxz, %bb.hy ], [ %i.byx, %bb.ia ], [ %i.byx, %bb.ib ] ; 2 uses
  %i.caj = phi ptr [ %i.bww, %bb.hy ], [ %i.byv, %bb.ia ], [ %i.byv, %bb.ib ] ; 4 uses
  %i.cak = phi i8 [ %i.byj, %bb.hy ], [ %i.bzo, %bb.ia ], [ %i.bzo, %bb.ib ]
  %.0.i8811119 = phi ptr [ %i.bxr, %bb.hy ], [ %i.bzj, %bb.ia ], [ %i.bzj, %bb.ib ] ; 4 uses
  %.076.i890 = phi i32 [ %i.byn, %bb.hy ], [ %i.bzy, %bb.ia ], [ %i.cae, %bb.ib ]
  %.075.i891 = phi i8 [ %i.byl, %bb.hy ], [ %i.bzv, %bb.ia ], [ %i.cab, %bb.ib ]
  %i.cal = zext i8 %.in1396 to i32                ; 4 uses
  %i.cam = trunc i64 %i.caf to i32                ; 2 uses
  %i.can = icmp ne i8 %i.cak, 0
  %i.cao = icmp ne i8 %.075.i891, 0
  %or.cond.i892 = select i1 %i.can, i1 true, i1 %i.cao
  br i1 %or.cond.i892, label %.sink.split1372, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.cap = load i16, ptr %i.caj, align 2, !tbaa !93
  %i.caq = getelementptr inbounds nuw i8, ptr %i.caj, i64 4
  %i.car = load i16, ptr %i.caq, align 2, !tbaa !93
  %.not80.i893 = icmp eq i16 %i.cap, %i.car
  br i1 %.not80.i893, label %bb.ie, label %.sink.split1372

bb.ie:                                            ; preds = %bb.id
  %i.cas = getelementptr inbounds nuw i8, ptr %i.caj, i64 2
  %i.cat = load i16, ptr %i.cas, align 2, !tbaa !93
  %i.cau = getelementptr inbounds nuw i8, ptr %i.caj, i64 6
  %i.cav = load i16, ptr %i.cau, align 2, !tbaa !93
  %.not81.i895 = icmp eq i16 %i.cat, %i.cav
  br i1 %.not81.i895, label %bb.if, label %.sink.split1372

bb.if:                                            ; preds = %bb.ie
  %i.caw = load i32, ptr %i.bxk, align 4, !tbaa !56
  %i.cax = icmp eq i32 %i.caw, 2
  br i1 %i.cax, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.cay = load i8, ptr %i.cai, align 1, !tbaa !55
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cai, i64 1
  %i.cba = load i8, ptr %i.caz, align 1, !tbaa !55
  %.not82.i900 = icmp eq i8 %i.cay, %i.cba
  br i1 %.not82.i900, label %bb.ih, label %.sink.split1372

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.cbb = lshr i32 %.076.i890, 1
  %i.cbc = or i32 %i.cbb, %i.cag                  ; 2 uses
  %i.cbd = and i32 %i.cbc, 1
  %.not83.i896 = icmp eq i32 %i.cbd, 0
  br i1 %.not83.i896, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.cbe = load ptr, ptr %i.bxl, align 16, !tbaa !83
  %i.cbf = shl nsw i32 %i.cam, 2
  %i.cbg = sext i32 %i.cbf to i64
  %i.cbh = getelementptr inbounds i8, ptr %.0.i8811119, i64 %i.cbg
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbh, i64 8
  %sext.i897 = shl i64 %i.caf, 32
  %i.cbj = ashr exact i64 %sext.i897, 32
  tail call void %i.cbe(ptr noundef nonnull %i.cbi, i64 noundef %i.cbj, i32 noundef %i.cal) #1, !inline_history !103
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.cbk = and i32 %i.cbc, 4
  %.not84.i898 = icmp eq i32 %i.cbk, 0
  br i1 %.not84.i898, label %bb.ik, label %.sink.split1372

.sink.split1372:                                  ; preds = %bb.ij, %bb.ic, %bb.id, %bb.ie, %bb.ig
  %.sink1374.in = phi ptr [ %i.bxm, %bb.ic ], [ %i.bxm, %bb.ig ], [ %i.bxm, %bb.ie ], [ %i.bxm, %bb.id ], [ %i.bxl, %bb.ij ]
  %.sink1374 = load ptr, ptr %.sink1374.in, align 8, !tbaa !96
  %i.cbl = getelementptr inbounds nuw i8, ptr %.0.i8811119, i64 8
  %sext85.i899 = shl i64 %i.caf, 32
  %i.cbm = ashr exact i64 %sext85.i899, 32
  tail call void %.sink1374(ptr noundef nonnull %i.cbl, i64 noundef %i.cbm, i32 noundef %i.cal) #1
  br label %bb.ik

bb.ik:                                            ; preds = %.sink.split1372, %bb.ij
  %i.cbn = load i32, ptr %i.bwz, align 4, !tbaa !68
  %i.cbo = ashr i32 %i.cbn, %i.cah
  %i.cbp = and i32 %i.cbo, 14
  %or.cond4.i884 = icmp eq i32 %i.cbp, 6
  br i1 %or.cond4.i884, label %bb.il, label %vc1_p_h_loop_filter.exit901

bb.il:                                            ; preds = %bb.ik
  %i.cbq = and i32 %i.cag, 3
  %.not87.i885 = icmp eq i32 %i.cbq, 0
  br i1 %.not87.i885, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.cbr = load ptr, ptr %i.bxl, align 16, !tbaa !83
  %i.cbs = shl nsw i32 %i.cam, 2
  %i.cbt = sext i32 %i.cbs to i64
  %i.cbu = getelementptr inbounds i8, ptr %.0.i8811119, i64 %i.cbt
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbu, i64 4
  %sext88.i886 = shl i64 %i.caf, 32
  %i.cbw = ashr exact i64 %sext88.i886, 32
  tail call void %i.cbr(ptr noundef nonnull %i.cbv, i64 noundef %i.cbw, i32 noundef %i.cal) #1, !inline_history !103
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.cbx = and i32 %i.cag, 12
  %.not89.i887 = icmp eq i32 %i.cbx, 0
  br i1 %.not89.i887, label %vc1_p_h_loop_filter.exit901, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.cby = load ptr, ptr %i.bxl, align 16, !tbaa !83
  %i.cbz = getelementptr inbounds nuw i8, ptr %.0.i8811119, i64 4
  %sext90.i888 = shl i64 %i.caf, 32
  %i.cca = ashr exact i64 %sext90.i888, 32
  tail call void %i.cby(ptr noundef nonnull %i.cbz, i64 noundef %i.cca, i32 noundef %i.cal) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit901

vc1_p_h_loop_filter.exit901:                      ; preds = %bb.ik, %bb.in, %bb.io
  %indvars.iv.next1267 = add nuw nsw i64 %indvars.iv1266, 1 ; 2 uses
  %exitcond1269.not = icmp eq i64 %indvars.iv.next1267, 6
  br i1 %exitcond1269.not, label %thread-pre-split1121, label %bb.hx, !llvm.loop !110

thread-pre-split1121:                             ; preds = %vc1_p_h_loop_filter.exit901
  %.pr1122 = load i32, ptr %i.bwg, align 4, !tbaa !9
  br label %bb.ip

bb.ip:                                            ; preds = %thread-pre-split1121, %.loopexit1169
  %i.ccb = phi i32 [ %.pr1122, %thread-pre-split1121 ], [ %i.bwh, %.loopexit1169 ] ; 4 uses
  %i.ccc = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ccd = load i32, ptr %i.ccc, align 4, !tbaa !65
  %i.cce = add nsw i32 %i.ccd, -1
  %i.ccf = icmp eq i32 %i.ccb, %i.cce
  br i1 %i.ccf, label %bb.iq, label %.loopexit

bb.iq:                                            ; preds = %bb.ip
  %i.ccg = icmp sgt i32 %i.ccb, 0
  br i1 %i.ccg, label %bb.ir, label %.loopexit1168

bb.ir:                                            ; preds = %bb.iq
  %i.cch = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.cci = load ptr, ptr %i.cch, align 16, !tbaa !71
  %i.ccj = getelementptr inbounds i8, ptr %i.cci, i64 -16
  %i.cck = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.ccl = load ptr, ptr %i.cck, align 16, !tbaa !84
  %i.ccm = add nsw i32 %i.ccb, -1
  %i.ccn = zext nneg i32 %i.ccm to i64            ; 4 uses
  %i.cco = getelementptr inbounds nuw [4 x i8], ptr %i.ccl, i64 %i.ccn ; 3 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.ccq = load ptr, ptr %i.ccp, align 16, !tbaa !85
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccq, i64 %i.ccn ; 3 uses
  %i.ccs = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.cct = load ptr, ptr %i.ccs, align 16, !tbaa !86
  %i.ccu = getelementptr inbounds nuw [4 x i8], ptr %i.cct, i64 %i.ccn
  %i.ccv = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.ccw = load ptr, ptr %i.ccv, align 16, !tbaa !87
  %i.ccx = getelementptr inbounds nuw [4 x i8], ptr %i.ccw, i64 %i.ccn
  %i.ccy = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.ccz = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cda = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cdb = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.cdc = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.cde = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.ccr, i64 1 ; 2 uses
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cco, i64 4 ; 2 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.cdj = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %vc1_p_h_loop_filter.exit879
  %indvars.iv1270 = phi i64 [ 0, %bb.ir ], [ %indvars.iv.next1271, %vc1_p_h_loop_filter.exit879 ] ; 11 uses
  %i.cdl = icmp samesign ugt i64 %indvars.iv1270, 3
  br i1 %i.cdl, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.cdm = getelementptr [8 x i8], ptr %i.cch, i64 %indvars.iv1270
  %i.cdn = getelementptr i8, ptr %i.cdm, i64 -24
  %i.cdo = load ptr, ptr %i.cdn, align 8, !tbaa !71
  %i.cdp = getelementptr inbounds i8, ptr %i.cdo, i64 -8
  %i.cdq = load ptr, ptr %i.cde, align 8, !tbaa !71
  %i.cdr = getelementptr inbounds nuw [4 x i8], ptr %i.cdc, i64 %indvars.iv1270
  %i.cds = load i32, ptr %i.cdr, align 4, !tbaa !68
  %i.cdt = add nsw i32 %i.cds, -1
  %i.cdu = load i32, ptr %i.cdf, align 4, !tbaa !88
  %i.cdv = add nsw i32 %i.cdt, %i.cdu
  %i.cdw = sext i32 %i.cdv to i64
  %i.cdx = getelementptr inbounds i8, ptr %i.cdq, i64 %i.cdw
  %i.cdy = load i8, ptr %i.ccy, align 8, !tbaa !51
  %i.cdz = load i32, ptr %i.cco, align 4, !tbaa !68
  %indvars.iv1270.tr = trunc nuw nsw i64 %indvars.iv1270 to i32
  %i.cea = shl nuw nsw i32 %indvars.iv1270.tr, 2  ; 3 uses
  %i.ceb = lshr i32 %i.cdz, %i.cea
  %i.cec = load i64, ptr %i.ccz, align 8, !tbaa !89
  %i.ced = load i8, ptr %i.ccr, align 1, !tbaa !55
  %i.cee = trunc nuw nsw i64 %indvars.iv1270 to i32
  %i.cef = shl nuw nsw i32 1, %i.cee
  %i.ceg = trunc nuw nsw i32 %i.cef to i8         ; 2 uses
  %i.ceh = and i8 %i.ced, %i.ceg
  %i.cei = load i8, ptr %i.cdg, align 1, !tbaa !55
  %i.cej = and i8 %i.cei, %i.ceg
  %i.cek = load i32, ptr %i.cdh, align 4, !tbaa !68
  %i.cel = lshr i32 %i.cek, %i.cea
  br label %bb.ix

bb.iu:                                            ; preds = %bb.is
  %i.cem = load ptr, ptr %i.cdb, align 16, !tbaa !90
  %i.cen = getelementptr inbounds nuw [4 x i8], ptr %i.cdc, i64 %indvars.iv1270
  %i.ceo = load i32, ptr %i.cen, align 4, !tbaa !68
  %i.cep = add nsw i32 %i.ceo, -2
  %i.ceq = load i32, ptr %i.cdd, align 8, !tbaa !92
  %i.cer = add nsw i32 %i.cep, %i.ceq
  %i.ces = sext i32 %i.cer to i64                 ; 2 uses
  %i.cet = getelementptr inbounds [4 x i8], ptr %i.cem, i64 %i.ces ; 2 uses
  %i.ceu = load ptr, ptr %i.cde, align 8, !tbaa !71
  %i.cev = getelementptr inbounds i8, ptr %i.ceu, i64 %i.ces ; 2 uses
  %i.cew = load i8, ptr %i.ccy, align 8, !tbaa !51 ; 2 uses
  %i.cex = load i32, ptr %i.cco, align 4, !tbaa !68 ; 2 uses
  %i.cey = shl nuw nsw i64 %indvars.iv1270, 2     ; 3 uses
  %i.cez = trunc nuw nsw i64 %i.cey to i32        ; 3 uses
  %i.cfa = lshr i32 %i.cex, %i.cez                ; 2 uses
  %i.cfb = load i64, ptr %i.cda, align 16, !tbaa !89 ; 3 uses
  %i.cfc = and i64 %i.cey, 8
  %i.cfd = mul nsw i64 %i.cfb, %i.cfc
  %i.cfe = getelementptr inbounds i8, ptr %i.ccj, i64 %i.cfd
  %i.cff = shl nuw nsw i64 %indvars.iv1270, 3
  %i.cfg = and i64 %i.cff, 8
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfe, i64 %i.cfg ; 2 uses
  %i.cfi = load i8, ptr %i.ccr, align 1, !tbaa !55 ; 2 uses
  %i.cfj = trunc nuw nsw i64 %indvars.iv1270 to i32 ; 3 uses
  %i.cfk = shl nuw nsw i32 1, %i.cfj
  %i.cfl = trunc nuw nsw i32 %i.cfk to i8
  %i.cfm = and i8 %i.cfi, %i.cfl                  ; 2 uses
  %i.cfn = and i32 %i.cfj, 1
  %.not79.i867 = icmp eq i32 %i.cfn, 0
  br i1 %.not79.i867, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.cfo = load i8, ptr %i.cdg, align 1, !tbaa !55
  %i.cfp = add nsw i64 %indvars.iv1270, -1        ; 2 uses
  %i.cfq = trunc nsw i64 %i.cfp to i32
  %i.cfr = shl nuw nsw i32 1, %i.cfq
  %i.cfs = trunc nuw nsw i32 %i.cfr to i8
  %i.cft = and i8 %i.cfo, %i.cfs
  %i.cfu = load i32, ptr %i.cdh, align 4, !tbaa !68
  %.tr1309 = trunc nsw i64 %i.cfp to i32
  %i.cfv = shl nsw i32 %.tr1309, 2
  %i.cfw = lshr i32 %i.cfu, %i.cfv
  br label %bb.ix

bb.iw:                                            ; preds = %bb.iu
  %i.cfx = shl nuw nsw i32 2, %i.cfj
  %i.cfy = trunc nuw nsw i32 %i.cfx to i8
  %i.cfz = and i8 %i.cfi, %i.cfy
  %i.cga = trunc nuw nsw i64 %i.cey to i32
  %i.cgb = or i32 %i.cga, 4
  %i.cgc = lshr i32 %i.cex, %i.cgb
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %bb.it
  %i.cgd = phi i64 [ %i.cec, %bb.it ], [ %i.cfb, %bb.iv ], [ %i.cfb, %bb.iw ] ; 5 uses
  %i.cge = phi i32 [ %i.ceb, %bb.it ], [ %i.cfa, %bb.iv ], [ %i.cfa, %bb.iw ] ; 3 uses
  %i.cgf = phi i32 [ %i.cea, %bb.it ], [ %i.cez, %bb.iv ], [ %i.cez, %bb.iw ]
  %.in1398 = phi i8 [ %i.cdy, %bb.it ], [ %i.cew, %bb.iv ], [ %i.cew, %bb.iw ]
  %i.cgg = phi ptr [ %i.cdx, %bb.it ], [ %i.cev, %bb.iv ], [ %i.cev, %bb.iw ] ; 2 uses
  %i.cgh = phi ptr [ %i.ccu, %bb.it ], [ %i.cet, %bb.iv ], [ %i.cet, %bb.iw ] ; 4 uses
  %i.cgi = phi i8 [ %i.ceh, %bb.it ], [ %i.cfm, %bb.iv ], [ %i.cfm, %bb.iw ]
  %.0.i8591127 = phi ptr [ %i.cdp, %bb.it ], [ %i.cfh, %bb.iv ], [ %i.cfh, %bb.iw ] ; 4 uses
  %.076.i868 = phi i32 [ %i.cel, %bb.it ], [ %i.cfw, %bb.iv ], [ %i.cgc, %bb.iw ]
  %.075.i869 = phi i8 [ %i.cej, %bb.it ], [ %i.cft, %bb.iv ], [ %i.cfz, %bb.iw ]
  %i.cgj = zext i8 %.in1398 to i32                ; 4 uses
  %i.cgk = trunc i64 %i.cgd to i32                ; 2 uses
  %i.cgl = icmp ne i8 %i.cgi, 0
  %i.cgm = icmp ne i8 %.075.i869, 0
  %or.cond.i870 = select i1 %i.cgl, i1 true, i1 %i.cgm
  br i1 %or.cond.i870, label %.sink.split1375, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.cgn = load i16, ptr %i.cgh, align 2, !tbaa !93
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgh, i64 4
  %i.cgp = load i16, ptr %i.cgo, align 2, !tbaa !93
  %.not80.i871 = icmp eq i16 %i.cgn, %i.cgp
  br i1 %.not80.i871, label %bb.iz, label %.sink.split1375

bb.iz:                                            ; preds = %bb.iy
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgh, i64 2
  %i.cgr = load i16, ptr %i.cgq, align 2, !tbaa !93
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgh, i64 6
  %i.cgt = load i16, ptr %i.cgs, align 2, !tbaa !93
  %.not81.i873 = icmp eq i16 %i.cgr, %i.cgt
  br i1 %.not81.i873, label %bb.ja, label %.sink.split1375

bb.ja:                                            ; preds = %bb.iz
  %i.cgu = load i32, ptr %i.cdi, align 4, !tbaa !56
  %i.cgv = icmp eq i32 %i.cgu, 2
  br i1 %i.cgv, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.cgw = load i8, ptr %i.cgg, align 1, !tbaa !55
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgg, i64 1
  %i.cgy = load i8, ptr %i.cgx, align 1, !tbaa !55
  %.not82.i878 = icmp eq i8 %i.cgw, %i.cgy
  br i1 %.not82.i878, label %bb.jc, label %.sink.split1375

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %i.cgz = lshr i32 %.076.i868, 1
  %i.cha = or i32 %i.cgz, %i.cge                  ; 2 uses
  %i.chb = and i32 %i.cha, 1
  %.not83.i874 = icmp eq i32 %i.chb, 0
  br i1 %.not83.i874, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.chc = load ptr, ptr %i.cdj, align 16, !tbaa !83
  %i.chd = shl nsw i32 %i.cgk, 2
  %i.che = sext i32 %i.chd to i64
  %i.chf = getelementptr inbounds i8, ptr %.0.i8591127, i64 %i.che
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chf, i64 8
  %sext.i875 = shl i64 %i.cgd, 32
  %i.chh = ashr exact i64 %sext.i875, 32
  tail call void %i.chc(ptr noundef nonnull %i.chg, i64 noundef %i.chh, i32 noundef %i.cgj) #1, !inline_history !103
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.chi = and i32 %i.cha, 4
  %.not84.i876 = icmp eq i32 %i.chi, 0
  br i1 %.not84.i876, label %bb.jf, label %.sink.split1375

.sink.split1375:                                  ; preds = %bb.je, %bb.ix, %bb.iy, %bb.iz, %bb.jb
  %.sink1377.in = phi ptr [ %i.cdk, %bb.ix ], [ %i.cdk, %bb.jb ], [ %i.cdk, %bb.iz ], [ %i.cdk, %bb.iy ], [ %i.cdj, %bb.je ]
  %.sink1377 = load ptr, ptr %.sink1377.in, align 8, !tbaa !96
  %i.chj = getelementptr inbounds nuw i8, ptr %.0.i8591127, i64 8
  %sext85.i877 = shl i64 %i.cgd, 32
  %i.chk = ashr exact i64 %sext85.i877, 32
  tail call void %.sink1377(ptr noundef nonnull %i.chj, i64 noundef %i.chk, i32 noundef %i.cgj) #1
  br label %bb.jf

bb.jf:                                            ; preds = %.sink.split1375, %bb.je
  %i.chl = load i32, ptr %i.ccx, align 4, !tbaa !68
  %i.chm = ashr i32 %i.chl, %i.cgf
  %i.chn = and i32 %i.chm, 14
  %or.cond4.i862 = icmp eq i32 %i.chn, 6
  br i1 %or.cond4.i862, label %bb.jg, label %vc1_p_h_loop_filter.exit879

bb.jg:                                            ; preds = %bb.jf
  %i.cho = and i32 %i.cge, 3
  %.not87.i863 = icmp eq i32 %i.cho, 0
  br i1 %.not87.i863, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.chp = load ptr, ptr %i.cdj, align 16, !tbaa !83
  %i.chq = shl nsw i32 %i.cgk, 2
  %i.chr = sext i32 %i.chq to i64
  %i.chs = getelementptr inbounds i8, ptr %.0.i8591127, i64 %i.chr
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chs, i64 4
  %sext88.i864 = shl i64 %i.cgd, 32
  %i.chu = ashr exact i64 %sext88.i864, 32
  tail call void %i.chp(ptr noundef nonnull %i.cht, i64 noundef %i.chu, i32 noundef %i.cgj) #1, !inline_history !103
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.chv = and i32 %i.cge, 12
  %.not89.i865 = icmp eq i32 %i.chv, 0
  br i1 %.not89.i865, label %vc1_p_h_loop_filter.exit879, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.chw = load ptr, ptr %i.cdj, align 16, !tbaa !83
  %i.chx = getelementptr inbounds nuw i8, ptr %.0.i8591127, i64 4
  %sext90.i866 = shl i64 %i.cgd, 32
  %i.chy = ashr exact i64 %sext90.i866, 32
  tail call void %i.chw(ptr noundef nonnull %i.chx, i64 noundef %i.chy, i32 noundef %i.cgj) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit879

vc1_p_h_loop_filter.exit879:                      ; preds = %bb.jf, %bb.ji, %bb.jj
  %indvars.iv.next1271 = add nuw nsw i64 %indvars.iv1270, 1 ; 2 uses
  %exitcond1273.not = icmp eq i64 %indvars.iv.next1271, 6
  br i1 %exitcond1273.not, label %.loopexit1168.loopexit, label %bb.is, !llvm.loop !111

.loopexit1168.loopexit:                           ; preds = %vc1_p_h_loop_filter.exit879
  %.pre1285 = load i32, ptr %i.bwg, align 4, !tbaa !9
  br label %.loopexit1168

.loopexit1168:                                    ; preds = %.loopexit1168.loopexit, %bb.iq
  %i.chz = phi i32 [ %.pre1285, %.loopexit1168.loopexit ], [ %i.ccb, %bb.iq ]
  %i.cia = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.cib = load ptr, ptr %i.cia, align 16, !tbaa !71
  %i.cic = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.cid = load ptr, ptr %i.cic, align 16, !tbaa !84
  %i.cie = sext i32 %i.chz to i64                 ; 4 uses
  %i.cif = getelementptr inbounds [4 x i8], ptr %i.cid, i64 %i.cie ; 3 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %0, i64 10176
  %i.cih = load ptr, ptr %i.cig, align 16, !tbaa !85
  %i.cii = getelementptr inbounds i8, ptr %i.cih, i64 %i.cie ; 3 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.cik = load ptr, ptr %i.cij, align 16, !tbaa !86
  %i.cil = getelementptr inbounds [4 x i8], ptr %i.cik, i64 %i.cie
  %i.cim = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.cin = load ptr, ptr %i.cim, align 16, !tbaa !87
  %i.cio = getelementptr inbounds [4 x i8], ptr %i.cin, i64 %i.cie
  %i.cip = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.ciq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cir = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cis = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.cit = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %0, i64 9992
  %i.civ = getelementptr inbounds nuw i8, ptr %0, i64 9912 ; 2 uses
  %i.ciw = getelementptr inbounds nuw i8, ptr %0, i64 9996
  %i.cix = getelementptr inbounds nuw i8, ptr %i.cii, i64 1
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cif, i64 4
  %i.ciz = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.cja = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 4 uses
  %i.cjb = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 4 uses
  br label %bb.jk

bb.jk:                                            ; preds = %.loopexit1168, %vc1_p_h_loop_filter.exit
  %indvars.iv1274 = phi i64 [ 0, %.loopexit1168 ], [ %indvars.iv.next1275, %vc1_p_h_loop_filter.exit ] ; 10 uses
  %i.cjc = icmp samesign ugt i64 %indvars.iv1274, 3
  br i1 %i.cjc, label %bb.jl, label %.thread1131

bb.jl:                                            ; preds = %bb.jk
  %i.cjd = getelementptr [8 x i8], ptr %i.cia, i64 %indvars.iv1274
  %i.cje = getelementptr i8, ptr %i.cjd, i64 -24
  %i.cjf = load ptr, ptr %i.cje, align 8, !tbaa !71 ; 2 uses
  %i.cjg = load i8, ptr %i.cip, align 8, !tbaa !51
  %i.cjh = zext i8 %i.cjg to i32                  ; 2 uses
  %i.cji = load i32, ptr %i.cif, align 4, !tbaa !68
  %indvars.iv1274.tr = trunc nuw nsw i64 %indvars.iv1274 to i32
  %i.cjj = shl nuw nsw i32 %indvars.iv1274.tr, 2  ; 4 uses
  %i.cjk = lshr i32 %i.cji, %i.cjj                ; 2 uses
  %i.cjl = load i64, ptr %i.ciq, align 8, !tbaa !89 ; 3 uses
  %i.cjm = trunc i64 %i.cjl to i32                ; 2 uses
  %i.cjn = and i64 %indvars.iv1274, 5
  %.not78.i = icmp eq i64 %i.cjn, 0
  br i1 %.not78.i, label %bb.jm, label %bb.jw

.thread1131:                                      ; preds = %bb.jk
  %i.cjo = load i8, ptr %i.cip, align 8, !tbaa !51
  %i.cjp = zext i8 %i.cjo to i32                  ; 2 uses
  %i.cjq = load i32, ptr %i.cif, align 4, !tbaa !68 ; 2 uses
  %i.cjr = shl nuw nsw i64 %indvars.iv1274, 2     ; 3 uses
  %i.cjs = trunc nuw nsw i64 %i.cjr to i32        ; 3 uses
  %i.cjt = lshr i32 %i.cjq, %i.cjs                ; 2 uses
  %i.cju = load i64, ptr %i.cir, align 16, !tbaa !89 ; 4 uses
  %i.cjv = trunc i64 %i.cju to i32                ; 2 uses
  %i.cjw = and i64 %i.cjr, 8
  %i.cjx = mul nsw i64 %i.cju, %i.cjw
  %i.cjy = getelementptr inbounds i8, ptr %i.cib, i64 %i.cjx
  %i.cjz = shl nuw nsw i64 %indvars.iv1274, 3
  %i.cka = and i64 %i.cjz, 8
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cjy, i64 %i.cka ; 2 uses
  %i.ckc = trunc nuw nsw i64 %indvars.iv1274 to i32 ; 3 uses
  %i.ckd = and i32 %i.ckc, 1
  %.not78.i1133 = icmp eq i32 %i.ckd, 0
  br i1 %.not78.i1133, label %bb.jn, label %bb.jw

bb.jm:                                            ; preds = %bb.jl
  %i.cke = load ptr, ptr %i.civ, align 8, !tbaa !71
  %i.ckf = load i32, ptr %i.ciw, align 4, !tbaa !88
  %i.ckg = getelementptr inbounds nuw [4 x i8], ptr %i.cit, i64 %indvars.iv1274
  %i.ckh = load i32, ptr %i.ckg, align 4, !tbaa !68
  %i.cki = add nsw i32 %i.ckf, %i.ckh
  %i.ckj = sext i32 %i.cki to i64
  %i.ckk = getelementptr inbounds i8, ptr %i.cke, i64 %i.ckj
  %i.ckl = load i8, ptr %i.cii, align 1, !tbaa !55
  %i.ckm = and i8 %i.ckl, 4
  %i.ckn = load i8, ptr %i.cix, align 1, !tbaa !55
  %i.cko = and i8 %i.ckn, 4
  %i.ckp = load i32, ptr %i.ciy, align 4, !tbaa !68
  %i.ckq = lshr i32 %i.ckp, %i.cjj
  br label %bb.jo

bb.jn:                                            ; preds = %.thread1131
  %i.ckr = load ptr, ptr %i.civ, align 8, !tbaa !71
  %i.cks = load i32, ptr %i.ciu, align 8, !tbaa !92
  %i.ckt = getelementptr inbounds nuw [4 x i8], ptr %i.cit, i64 %indvars.iv1274
  %i.cku = load i32, ptr %i.ckt, align 4, !tbaa !68
  %i.ckv = add nsw i32 %i.cks, %i.cku
  %i.ckw = sext i32 %i.ckv to i64                 ; 2 uses
  %i.ckx = getelementptr inbounds i8, ptr %i.ckr, i64 %i.ckw
  %i.cky = load ptr, ptr %i.cis, align 16, !tbaa !90
  %i.ckz = getelementptr inbounds [4 x i8], ptr %i.cky, i64 %i.ckw
  %i.cla = load i8, ptr %i.cii, align 1, !tbaa !55 ; 2 uses
  %i.clb = shl nuw nsw i32 1, %i.ckc
  %i.clc = trunc nuw nsw i32 %i.clb to i8
  %i.cld = and i8 %i.cla, %i.clc
  %i.cle = shl nuw nsw i32 2, %i.ckc
  %i.clf = trunc nuw nsw i32 %i.cle to i8
  %i.clg = and i8 %i.cla, %i.clf
  %i.clh = trunc nuw nsw i64 %i.cjr to i32
  %i.cli = or i32 %i.clh, 4
  %i.clj = lshr i32 %i.cjq, %i.cli
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %i.clk = phi i32 [ %i.cjm, %bb.jm ], [ %i.cjv, %bb.jn ] ; 3 uses
  %i.cll = phi i64 [ %i.cjl, %bb.jm ], [ %i.cju, %bb.jn ] ; 4 uses
  %i.clm = phi i32 [ %i.cjk, %bb.jm ], [ %i.cjt, %bb.jn ] ; 3 uses
  %i.cln = phi i32 [ %i.cjj, %bb.jm ], [ %i.cjs, %bb.jn ] ; 2 uses
  %i.clo = phi i32 [ %i.cjh, %bb.jm ], [ %i.cjp, %bb.jn ] ; 4 uses
  %i.clp = phi ptr [ %i.ckk, %bb.jm ], [ %i.ckx, %bb.jn ] ; 2 uses
  %i.clq = phi ptr [ %i.cil, %bb.jm ], [ %i.ckz, %bb.jn ] ; 4 uses
  %i.clr = phi i8 [ %i.ckm, %bb.jm ], [ %i.cld, %bb.jn ]
  %.0.i85411351138 = phi ptr [ %i.cjf, %bb.jm ], [ %i.ckb, %bb.jn ] ; 4 uses
  %.076.i = phi i32 [ %i.ckq, %bb.jm ], [ %i.clj, %bb.jn ]
  %.075.i = phi i8 [ %i.cko, %bb.jm ], [ %i.clg, %bb.jn ]
  %i.cls = icmp ne i8 %i.clr, 0
  %i.clt = icmp ne i8 %.075.i, 0
  %or.cond.i = select i1 %i.cls, i1 true, i1 %i.clt
  br i1 %or.cond.i, label %.sink.split1378, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.clu = load i16, ptr %i.clq, align 2, !tbaa !93
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clq, i64 4
  %i.clw = load i16, ptr %i.clv, align 2, !tbaa !93
  %.not80.i = icmp eq i16 %i.clu, %i.clw
  br i1 %.not80.i, label %bb.jq, label %.sink.split1378

bb.jq:                                            ; preds = %bb.jp
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clq, i64 2
  %i.cly = load i16, ptr %i.clx, align 2, !tbaa !93
  %i.clz = getelementptr inbounds nuw i8, ptr %i.clq, i64 6
  %i.cma = load i16, ptr %i.clz, align 2, !tbaa !93
  %.not81.i = icmp eq i16 %i.cly, %i.cma
  br i1 %.not81.i, label %bb.jr, label %.sink.split1378

bb.jr:                                            ; preds = %bb.jq
  %i.cmb = load i32, ptr %i.ciz, align 4, !tbaa !56
  %i.cmc = icmp eq i32 %i.cmb, 2
  br i1 %i.cmc, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.cmd = load i8, ptr %i.clp, align 1, !tbaa !55
  %i.cme = getelementptr inbounds nuw i8, ptr %i.clp, i64 1
  %i.cmf = load i8, ptr %i.cme, align 1, !tbaa !55
  %.not82.i = icmp eq i8 %i.cmd, %i.cmf
  br i1 %.not82.i, label %bb.jt, label %.sink.split1378

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %i.cmg = lshr i32 %.076.i, 1
  %i.cmh = or i32 %i.cmg, %i.clm                  ; 2 uses
  %i.cmi = and i32 %i.cmh, 1
  %.not83.i = icmp eq i32 %i.cmi, 0
  br i1 %.not83.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.cmj = load ptr, ptr %i.cja, align 16, !tbaa !83
  %i.cmk = shl nsw i32 %i.clk, 2
  %i.cml = sext i32 %i.cmk to i64
  %i.cmm = getelementptr inbounds i8, ptr %.0.i85411351138, i64 %i.cml
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cmm, i64 8
  %sext.i857 = shl i64 %i.cll, 32
  %i.cmo = ashr exact i64 %sext.i857, 32
  tail call void %i.cmj(ptr noundef nonnull %i.cmn, i64 noundef %i.cmo, i32 noundef %i.clo) #1, !inline_history !103
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.cmp = and i32 %i.cmh, 4
  %.not84.i = icmp eq i32 %i.cmp, 0
  br i1 %.not84.i, label %bb.jw, label %.sink.split1378

.sink.split1378:                                  ; preds = %bb.jv, %bb.jo, %bb.jp, %bb.jq, %bb.js
  %.sink1380.in = phi ptr [ %i.cjb, %bb.jo ], [ %i.cjb, %bb.js ], [ %i.cjb, %bb.jq ], [ %i.cjb, %bb.jp ], [ %i.cja, %bb.jv ]
  %.sink1380 = load ptr, ptr %.sink1380.in, align 8, !tbaa !96
  %i.cmq = getelementptr inbounds nuw i8, ptr %.0.i85411351138, i64 8
  %sext85.i = shl i64 %i.cll, 32
  %i.cmr = ashr exact i64 %sext85.i, 32
  tail call void %.sink1380(ptr noundef nonnull %i.cmq, i64 noundef %i.cmr, i32 noundef %i.clo) #1
  br label %bb.jw

bb.jw:                                            ; preds = %.sink.split1378, %.thread1131, %bb.jv, %bb.jl
  %i.cms = phi i32 [ %i.cjv, %.thread1131 ], [ %i.cjm, %bb.jl ], [ %i.clk, %bb.jv ], [ %i.clk, %.sink.split1378 ]
  %i.cmt = phi i64 [ %i.cju, %.thread1131 ], [ %i.cjl, %bb.jl ], [ %i.cll, %bb.jv ], [ %i.cll, %.sink.split1378 ] ; 2 uses
  %i.cmu = phi i32 [ %i.cjt, %.thread1131 ], [ %i.cjk, %bb.jl ], [ %i.clm, %bb.jv ], [ %i.clm, %.sink.split1378 ] ; 2 uses
  %i.cmv = phi i32 [ %i.cjs, %.thread1131 ], [ %i.cjj, %bb.jl ], [ %i.cln, %bb.jv ], [ %i.cln, %.sink.split1378 ]
  %i.cmw = phi i32 [ %i.cjp, %.thread1131 ], [ %i.cjh, %bb.jl ], [ %i.clo, %bb.jv ], [ %i.clo, %.sink.split1378 ] ; 2 uses
  %.0.i8541134 = phi ptr [ %i.ckb, %.thread1131 ], [ %i.cjf, %bb.jl ], [ %.0.i85411351138, %bb.jv ], [ %.0.i85411351138, %.sink.split1378 ] ; 2 uses
  %i.cmx = load i32, ptr %i.cio, align 4, !tbaa !68
  %i.cmy = ashr i32 %i.cmx, %i.cmv
  %i.cmz = and i32 %i.cmy, 14
  %or.cond4.i856 = icmp eq i32 %i.cmz, 6
  br i1 %or.cond4.i856, label %bb.jx, label %vc1_p_h_loop_filter.exit

bb.jx:                                            ; preds = %bb.jw
  %i.cna = and i32 %i.cmu, 3
  %.not87.i = icmp eq i32 %i.cna, 0
  br i1 %.not87.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.cnb = load ptr, ptr %i.cja, align 16, !tbaa !83
  %i.cnc = shl nsw i32 %i.cms, 2
  %i.cnd = sext i32 %i.cnc to i64
  %i.cne = getelementptr inbounds i8, ptr %.0.i8541134, i64 %i.cnd
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cne, i64 4
  %sext88.i = shl i64 %i.cmt, 32
  %i.cng = ashr exact i64 %sext88.i, 32
  tail call void %i.cnb(ptr noundef nonnull %i.cnf, i64 noundef %i.cng, i32 noundef %i.cmw) #1, !inline_history !103
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.cnh = and i32 %i.cmu, 12
  %.not89.i = icmp eq i32 %i.cnh, 0
  br i1 %.not89.i, label %vc1_p_h_loop_filter.exit, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.cni = load ptr, ptr %i.cja, align 16, !tbaa !83
  %i.cnj = getelementptr inbounds nuw i8, ptr %.0.i8541134, i64 4
  %sext90.i = shl i64 %i.cmt, 32
  %i.cnk = ashr exact i64 %sext90.i, 32
  tail call void %i.cni(ptr noundef nonnull %i.cnj, i64 noundef %i.cnk, i32 noundef %i.cmw) #1, !inline_history !103
  br label %vc1_p_h_loop_filter.exit

vc1_p_h_loop_filter.exit:                         ; preds = %bb.jw, %bb.jz, %bb.ka
  %indvars.iv.next1275 = add nuw nsw i64 %indvars.iv1274, 1 ; 2 uses
  %exitcond1277.not = icmp eq i64 %indvars.iv.next1275, 6
  br i1 %exitcond1277.not, label %.loopexit, label %bb.jk, !llvm.loop !112

.loopexit:                                        ; preds = %vc1_p_h_loop_filter.exit, %bb.ip, %.loopexit1171
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vc1_p_intfr_loop_filter(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 13 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 8 uses
end_hunk_0
begin_hunk_1_@ff_vc1_p_intfr_loop_filter:bb.a
  %i.k = add nsw i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !tbaa !72
  %.neg = mul i64 %i.o, -16
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %.neg
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !87
  %i.t = xor i32 %i.f, -1                         ; 2 uses
  %i.u = add i32 %i.b, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = icmp ne i32 %i.d, %i.k                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !57
  %i.aa = add i32 %i.h, %i.t
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %.not124.i373 = icmp eq i8 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 16 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %vc1_p_v_intfr_loop_filter.exit386
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %vc1_p_v_intfr_loop_filter.exit386 ] ; 7 uses
  %i.ah = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.ah, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load i8, ptr %i.ae, align 8, !tbaa !51
  %i.aj = zext i8 %i.ai to i32                    ; 12 uses
  %i.ak = load i64, ptr %i.n, align 16, !tbaa !89 ; 8 uses
  %i.al = trunc i64 %i.ak to i32                  ; 14 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = shl nuw nsw i32 %indvars.iv.tr, 2       ; 2 uses
  %i.an = and i32 %i.am, 8
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ak, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.q, i64 %i.ap
  %i.ar = shl nuw nsw i64 %indvars.iv, 3
  %i.as = and i64 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as ; 12 uses
  %i.au = load i32, ptr %i.w, align 4, !tbaa !68
  %i.av = ashr i32 %i.au, %i.am
  %i.aw = icmp samesign ult i64 %indvars.iv, 2    ; 2 uses
  %i.ax = and i32 %i.av, 11
  %or.cond5.i382 = icmp eq i32 %i.ax, 3           ; 4 uses
  br i1 %.not124.i373, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.aw, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %or.cond5.i382, label %bb.h, label %._crit_edge780

._crit_edge780:                                   ; preds = %bb.g
  %.pre1038 = shl nsw i32 %i.al, 1
  %.pre1040 = sext i32 %.pre1038 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.az = shl nsw i32 %i.al, 3
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.at, i64 %i.ba
  %i.bc = shl nsw i32 %i.al, 1
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  tail call void %i.ay(ptr noundef nonnull %i.bb, i64 noundef %i.bd, i32 noundef %i.aj) #1, !inline_history !113
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge780, %bb.h
  %.pre-phi1041 = phi i64 [ %.pre1040, %._crit_edge780 ], [ %i.bd, %bb.h ]
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.bf = shl nsw i32 %i.al, 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.at, i64 %i.bg
  tail call void %i.be(ptr noundef nonnull %i.bh, i64 noundef %.pre-phi1041, i32 noundef %i.aj) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit386

bb.j:                                             ; preds = %bb.f
  br i1 %or.cond5.i382, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre1042 = shl nsw i32 %i.al, 1
  %.pre1044 = sext i32 %.pre1042 to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.af, align 8, !tbaa !77
  %sext131.i376 = shl i64 %i.ak, 32
  %i.bj = ashr exact i64 %sext131.i376, 32
  %i.bk = getelementptr inbounds i8, ptr %i.at, i64 %i.bj
  %i.bl = shl nsw i32 %i.al, 1
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  tail call void %i.bi(ptr noundef nonnull %i.bk, i64 noundef %i.bm, i32 noundef %i.aj) #1, !inline_history !113
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %.pre-phi1045 = phi i64 [ %.pre1044, %._crit_edge ], [ %i.bm, %bb.k ]
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !77
  %sext133.i375 = mul i64 %i.ak, 38654705664
  %i.bo = ashr exact i64 %sext133.i375, 32
  %i.bp = getelementptr inbounds i8, ptr %i.at, i64 %i.bo
  tail call void %i.bn(ptr noundef nonnull %i.bp, i64 noundef %.pre-phi1045, i32 noundef %i.aj) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit386

bb.m:                                             ; preds = %bb.e
  br i1 %i.aw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %or.cond135.i383 = select i1 %i.x, i1 %or.cond5.i382, i1 false
  br i1 %or.cond135.i383, label %bb.o, label %._crit_edge782

._crit_edge782:                                   ; preds = %bb.n
  %.pre1030 = shl nsw i32 %i.al, 1
  %.pre1032 = sext i32 %.pre1030 to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.br = shl nsw i32 %i.al, 2
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.at, i64 %i.bs
  %i.bu = shl nsw i32 %i.al, 1
  %i.bv = sext i32 %i.bu to i64                   ; 3 uses
  tail call void %i.bq(ptr noundef nonnull %i.bt, i64 noundef %i.bv, i32 noundef %i.aj) #1, !inline_history !113
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !77
  %sext129.i385 = mul i64 %i.ak, 21474836480
  %i.bx = ashr exact i64 %sext129.i385, 32
  %i.by = getelementptr inbounds i8, ptr %i.at, i64 %i.bx
  tail call void %i.bw(ptr noundef nonnull %i.by, i64 noundef %i.bv, i32 noundef %i.aj) #1, !inline_history !113
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge782, %bb.o
  %.pre-phi1033 = phi i64 [ %.pre1032, %._crit_edge782 ], [ %i.bv, %bb.o ] ; 2 uses
  %i.bz = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.ca = shl nsw i32 %i.al, 3
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.at, i64 %i.cb
  tail call void %i.bz(ptr noundef nonnull %i.cc, i64 noundef %.pre-phi1033, i32 noundef %i.aj) #1, !inline_history !113
  %i.cd = load ptr, ptr %i.af, align 8, !tbaa !77
  %sext130.i384 = mul i64 %i.ak, 38654705664
  %i.ce = ashr exact i64 %sext130.i384, 32
  %i.cf = getelementptr inbounds i8, ptr %i.at, i64 %i.ce
  tail call void %i.cd(ptr noundef nonnull %i.cf, i64 noundef %.pre-phi1033, i32 noundef %i.aj) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit386

bb.q:                                             ; preds = %bb.m
  br i1 %or.cond5.i382, label %bb.r, label %._crit_edge781

._crit_edge781:                                   ; preds = %bb.q
  %.pre1034 = shl nsw i32 %i.al, 1
  %.pre1036 = sext i32 %.pre1034 to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.ch = shl nsw i32 %i.al, 2
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.at, i64 %i.ci
  %i.ck = shl nsw i32 %i.al, 1
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  tail call void %i.cg(ptr noundef nonnull %i.cj, i64 noundef %i.cl, i32 noundef %i.aj) #1, !inline_history !113
  %i.cm = load ptr, ptr %i.af, align 8, !tbaa !77
  %sext126.i380 = mul i64 %i.ak, 21474836480
  %i.cn = ashr exact i64 %sext126.i380, 32
  %i.co = getelementptr inbounds i8, ptr %i.at, i64 %i.cn
  tail call void %i.cm(ptr noundef nonnull %i.co, i64 noundef %i.cl, i32 noundef %i.aj) #1, !inline_history !113
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge781, %bb.r
  %.pre-phi1037 = phi i64 [ %.pre1036, %._crit_edge781 ], [ %i.cl, %bb.r ] ; 2 uses
  %i.cp = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.cq = shl nsw i32 %i.al, 3
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.at, i64 %i.cr
  tail call void %i.cp(ptr noundef nonnull %i.cs, i64 noundef %.pre-phi1037, i32 noundef %i.aj) #1, !inline_history !113
  %i.ct = load ptr, ptr %i.af, align 8, !tbaa !77
  %sext127.i379 = mul i64 %i.ak, 38654705664
  %i.cu = ashr exact i64 %sext127.i379, 32
  %i.cv = getelementptr inbounds i8, ptr %i.at, i64 %i.cu
  tail call void %i.ct(ptr noundef nonnull %i.cv, i64 noundef %.pre-phi1037, i32 noundef %i.aj) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit386

bb.t:                                             ; preds = %bb.d
  %i.cw = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !71
  %i.cz = load i64, ptr %i.ag, align 8, !tbaa !76 ; 4 uses
  %.neg341 = mul i64 %i.cz, -8
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %.neg341
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = load i8, ptr %i.ae, align 8, !tbaa !51
  %i.dd = zext i8 %i.dc to i32                    ; 4 uses
  %i.de = trunc i64 %i.cz to i32                  ; 4 uses
  %i.df = load i32, ptr %i.w, align 4, !tbaa !68
  %indvars.iv.tr1066 = trunc nuw nsw i64 %indvars.iv to i32
  %i.dg = shl nuw nsw i32 %indvars.iv.tr1066, 2
  %i.dh = ashr i32 %i.df, %i.dg
  %i.di = and i32 %i.dh, 11
  %or.cond9.i369 = icmp eq i32 %i.di, 3
  %or.cond136.i370 = select i1 %i.x, i1 %or.cond9.i369, i1 false
  br i1 %or.cond136.i370, label %bb.u, label %._crit_edge783

._crit_edge783:                                   ; preds = %bb.t
  %.pre1026 = shl nsw i32 %i.de, 1
  %.pre1028 = sext i32 %.pre1026 to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.dk = shl nsw i32 %i.de, 2
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.db, i64 %i.dl
  %i.dn = shl nsw i32 %i.de, 1
  %i.do = sext i32 %i.dn to i64                   ; 3 uses
  tail call void %i.dj(ptr noundef nonnull %i.dm, i64 noundef %i.do, i32 noundef %i.dd) #1, !inline_history !113
  %i.dp = load ptr, ptr %i.af, align 8, !tbaa !77
  %sext.i372 = mul i64 %i.cz, 21474836480
  %i.dq = ashr exact i64 %sext.i372, 32
  %i.dr = getelementptr inbounds i8, ptr %i.db, i64 %i.dq
  tail call void %i.dp(ptr noundef nonnull %i.dr, i64 noundef %i.do, i32 noundef %i.dd) #1, !inline_history !113
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge783, %bb.u
  %.pre-phi1029 = phi i64 [ %.pre1028, %._crit_edge783 ], [ %i.do, %bb.u ] ; 2 uses
  %i.ds = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.dt = shl nsw i32 %i.de, 3
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.db, i64 %i.du
  tail call void %i.ds(ptr noundef nonnull %i.dv, i64 noundef %.pre-phi1029, i32 noundef %i.dd) #1, !inline_history !113
  %i.dw = load ptr, ptr %i.af, align 8, !tbaa !77
  %sext123.i371 = mul i64 %i.cz, 38654705664
  %i.dx = ashr exact i64 %sext123.i371, 32
  %i.dy = getelementptr inbounds i8, ptr %i.db, i64 %i.dx
  tail call void %i.dw(ptr noundef nonnull %i.dy, i64 noundef %.pre-phi1029, i32 noundef %i.dd) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit386

vc1_p_v_intfr_loop_filter.exit386:                ; preds = %bb.i, %bb.l, %bb.p, %bb.s, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit606.loopexit, label %bb.d, !llvm.loop !114

.loopexit606.loopexit:                            ; preds = %vc1_p_v_intfr_loop_filter.exit386
  %.pre = load i32, ptr %i.a, align 4, !tbaa !9
  %.pre698.pre = load i32, ptr %i.c, align 8, !tbaa !37
  br label %.loopexit606

.loopexit606:                                     ; preds = %.loopexit606.loopexit, %bb.b, %bb.a
  %.pre698 = phi i32 [ %.pre698.pre, %.loopexit606.loopexit ], [ %i.d, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.dz = phi i32 [ %.pre, %.loopexit606.loopexit ], [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 5 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !65
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = icmp eq i32 %i.dz, %i.ec
  br i1 %i.ed, label %bb.w, label %.loopexit605

bb.w:                                             ; preds = %.loopexit606
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ef = load i32, ptr %i.ee, align 16, !tbaa !73 ; 2 uses
  %.not320.not = icmp sgt i32 %.pre698, %i.ef
  br i1 %.not320.not, label %bb.x, label %.loopexit605

bb.x:                                             ; preds = %bb.w
  %i.eg = add nsw i32 %i.ef, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 16, !tbaa !71
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 16, !tbaa !72
  %.neg321 = mul i64 %i.ek, -16
  %i.el = getelementptr inbounds i8, ptr %i.ei, i64 %.neg321
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.en = load ptr, ptr %i.em, align 16, !tbaa !87
  %i.eo = load i32, ptr %i.e, align 4, !tbaa !38  ; 2 uses
  %i.ep = sub nsw i32 %i.dz, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eq ; 2 uses
  %i.es = icmp ne i32 %.pre698, %i.eg             ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.eu = load ptr, ptr %i.et, align 16, !tbaa !57
  %i.ev = sub nsw i32 %i.h, %i.eo
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %i.eu, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !55
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %.not124.i356 = icmp eq i8 %i.ey, 0
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 16 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %vc1_p_v_intfr_loop_filter.exit365
  %indvars.iv621 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next622, %vc1_p_v_intfr_loop_filter.exit365 ] ; 7 uses
  %i.fc = icmp samesign ugt i64 %indvars.iv621, 3
  br i1 %i.fc, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fd = load i8, ptr %i.ez, align 8, !tbaa !51
  %i.fe = zext i8 %i.fd to i32                    ; 12 uses
  %i.ff = load i64, ptr %i.ej, align 16, !tbaa !89 ; 8 uses
  %i.fg = trunc i64 %i.ff to i32                  ; 14 uses
  %indvars.iv621.tr = trunc nuw nsw i64 %indvars.iv621 to i32
  %i.fh = shl nuw nsw i32 %indvars.iv621.tr, 2    ; 2 uses
  %i.fi = and i32 %i.fh, 8
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = mul nsw i64 %i.ff, %i.fj
  %i.fl = getelementptr inbounds i8, ptr %i.el, i64 %i.fk
  %i.fm = shl nuw nsw i64 %indvars.iv621, 3
  %i.fn = and i64 %i.fm, 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fn ; 12 uses
  %i.fp = load i32, ptr %i.er, align 4, !tbaa !68
  %i.fq = ashr i32 %i.fp, %i.fh
  %i.fr = icmp samesign ult i64 %indvars.iv621, 2 ; 2 uses
  %i.fs = and i32 %i.fq, 11
  %or.cond5.i361 = icmp eq i32 %i.fs, 3           ; 4 uses
  br i1 %.not124.i356, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.fr, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  br i1 %or.cond5.i361, label %bb.ac, label %._crit_edge785

._crit_edge785:                                   ; preds = %bb.ab
  %.pre1018 = shl nsw i32 %i.fg, 1
  %.pre1020 = sext i32 %.pre1018 to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load ptr, ptr %i.fa, align 8, !tbaa !77
  %i.fu = shl nsw i32 %i.fg, 3
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fo, i64 %i.fv
  %i.fx = shl nsw i32 %i.fg, 1
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  tail call void %i.ft(ptr noundef %i.fw, i64 noundef %i.fy, i32 noundef %i.fe) #1, !inline_history !113
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge785, %bb.ac
  %.pre-phi1021 = phi i64 [ %.pre1020, %._crit_edge785 ], [ %i.fy, %bb.ac ]
  %i.fz = load ptr, ptr %i.fa, align 8, !tbaa !77
  %i.ga = shl nsw i32 %i.fg, 4
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fo, i64 %i.gb
  tail call void %i.fz(ptr noundef %i.gc, i64 noundef %.pre-phi1021, i32 noundef %i.fe) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit365

bb.ae:                                            ; preds = %bb.aa
  br i1 %or.cond5.i361, label %bb.af, label %._crit_edge784

._crit_edge784:                                   ; preds = %bb.ae
  %.pre1022 = shl nsw i32 %i.fg, 1
  %.pre1024 = sext i32 %.pre1022 to i64
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gd = load ptr, ptr %i.fa, align 8, !tbaa !77
  %sext131.i358 = shl i64 %i.ff, 32
  %i.ge = ashr exact i64 %sext131.i358, 32
  %i.gf = getelementptr inbounds i8, ptr %i.fo, i64 %i.ge
  %i.gg = shl nsw i32 %i.fg, 1
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  tail call void %i.gd(ptr noundef %i.gf, i64 noundef %i.gh, i32 noundef %i.fe) #1, !inline_history !113
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge784, %bb.af
  %.pre-phi1025 = phi i64 [ %.pre1024, %._crit_edge784 ], [ %i.gh, %bb.af ]
  %i.gi = load ptr, ptr %i.fa, align 8, !tbaa !77
  %sext133.i = mul i64 %i.ff, 38654705664
  %i.gj = ashr exact i64 %sext133.i, 32
  %i.gk = getelementptr inbounds i8, ptr %i.fo, i64 %i.gj
  tail call void %i.gi(ptr noundef %i.gk, i64 noundef %.pre-phi1025, i32 noundef %i.fe) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit365

bb.ah:                                            ; preds = %bb.z
  br i1 %i.fr, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %or.cond135.i362 = select i1 %i.es, i1 %or.cond5.i361, i1 false
  br i1 %or.cond135.i362, label %bb.aj, label %._crit_edge787

._crit_edge787:                                   ; preds = %bb.ai
  %.pre1010 = shl nsw i32 %i.fg, 1
  %.pre1012 = sext i32 %.pre1010 to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gl = load ptr, ptr %i.fa, align 8, !tbaa !77
  %i.gm = shl nsw i32 %i.fg, 2
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %i.fo, i64 %i.gn
  %i.gp = shl nsw i32 %i.fg, 1
  %i.gq = sext i32 %i.gp to i64                   ; 3 uses
  tail call void %i.gl(ptr noundef %i.go, i64 noundef %i.gq, i32 noundef %i.fe) #1, !inline_history !113
  %i.gr = load ptr, ptr %i.fa, align 8, !tbaa !77
  %sext129.i364 = mul i64 %i.ff, 21474836480
  %i.gs = ashr exact i64 %sext129.i364, 32
  %i.gt = getelementptr inbounds i8, ptr %i.fo, i64 %i.gs
  tail call void %i.gr(ptr noundef %i.gt, i64 noundef %i.gq, i32 noundef %i.fe) #1, !inline_history !113
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge787, %bb.aj
  %.pre-phi1013 = phi i64 [ %.pre1012, %._crit_edge787 ], [ %i.gq, %bb.aj ] ; 2 uses
  %i.gu = load ptr, ptr %i.fa, align 8, !tbaa !77
  %i.gv = shl nsw i32 %i.fg, 3
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.fo, i64 %i.gw
  tail call void %i.gu(ptr noundef %i.gx, i64 noundef %.pre-phi1013, i32 noundef %i.fe) #1, !inline_history !113
  %i.gy = load ptr, ptr %i.fa, align 8, !tbaa !77
  %sext130.i363 = mul i64 %i.ff, 38654705664
  %i.gz = ashr exact i64 %sext130.i363, 32
  %i.ha = getelementptr inbounds i8, ptr %i.fo, i64 %i.gz
  tail call void %i.gy(ptr noundef %i.ha, i64 noundef %.pre-phi1013, i32 noundef %i.fe) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit365

bb.al:                                            ; preds = %bb.ah
  br i1 %or.cond5.i361, label %bb.am, label %._crit_edge786

._crit_edge786:                                   ; preds = %bb.al
  %.pre1014 = shl nsw i32 %i.fg, 1
  %.pre1016 = sext i32 %.pre1014 to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hb = load ptr, ptr %i.fa, align 8, !tbaa !77
  %i.hc = shl nsw i32 %i.fg, 2
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %i.fo, i64 %i.hd
  %i.hf = shl nsw i32 %i.fg, 1
  %i.hg = sext i32 %i.hf to i64                   ; 3 uses
  tail call void %i.hb(ptr noundef %i.he, i64 noundef %i.hg, i32 noundef %i.fe) #1, !inline_history !113
  %i.hh = load ptr, ptr %i.fa, align 8, !tbaa !77
  %sext126.i = mul i64 %i.ff, 21474836480
  %i.hi = ashr exact i64 %sext126.i, 32
  %i.hj = getelementptr inbounds i8, ptr %i.fo, i64 %i.hi
  tail call void %i.hh(ptr noundef %i.hj, i64 noundef %i.hg, i32 noundef %i.fe) #1, !inline_history !113
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge786, %bb.am
  %.pre-phi1017 = phi i64 [ %.pre1016, %._crit_edge786 ], [ %i.hg, %bb.am ] ; 2 uses
  %i.hk = load ptr, ptr %i.fa, align 8, !tbaa !77
  %i.hl = shl nsw i32 %i.fg, 3
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %i.fo, i64 %i.hm
  tail call void %i.hk(ptr noundef %i.hn, i64 noundef %.pre-phi1017, i32 noundef %i.fe) #1, !inline_history !113
  %i.ho = load ptr, ptr %i.fa, align 8, !tbaa !77
  %sext127.i = mul i64 %i.ff, 38654705664
  %i.hp = ashr exact i64 %sext127.i, 32
  %i.hq = getelementptr inbounds i8, ptr %i.fo, i64 %i.hp
  tail call void %i.ho(ptr noundef %i.hq, i64 noundef %.pre-phi1017, i32 noundef %i.fe) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit365

bb.ao:                                            ; preds = %bb.y
  %i.hr = getelementptr [8 x i8], ptr %i.eh, i64 %indvars.iv621
  %i.hs = getelementptr i8, ptr %i.hr, i64 -24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !71
  %i.hu = load i64, ptr %i.fb, align 8, !tbaa !76 ; 4 uses
  %.neg340 = mul i64 %i.hu, -8
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %.neg340 ; 4 uses
  %i.hw = load i8, ptr %i.ez, align 8, !tbaa !51
  %i.hx = zext i8 %i.hw to i32                    ; 4 uses
  %i.hy = trunc i64 %i.hu to i32                  ; 4 uses
  %i.hz = load i32, ptr %i.er, align 4, !tbaa !68
  %indvars.iv621.tr1068 = trunc nuw nsw i64 %indvars.iv621 to i32
  %i.ia = shl nuw nsw i32 %indvars.iv621.tr1068, 2
  %i.ib = ashr i32 %i.hz, %i.ia
  %i.ic = and i32 %i.ib, 11
  %or.cond9.i = icmp eq i32 %i.ic, 3
  %or.cond136.i = select i1 %i.es, i1 %or.cond9.i, i1 false
  br i1 %or.cond136.i, label %bb.ap, label %._crit_edge818

._crit_edge818:                                   ; preds = %bb.ao
  %.pre819 = shl nsw i32 %i.hy, 1
  %.pre820 = sext i32 %.pre819 to i64
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.id = load ptr, ptr %i.fa, align 8, !tbaa !77
  %i.ie = shl nsw i32 %i.hy, 2
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %i.hv, i64 %i.if
  %i.ih = shl nsw i32 %i.hy, 1
  %i.ii = sext i32 %i.ih to i64                   ; 3 uses
  tail call void %i.id(ptr noundef %i.ig, i64 noundef %i.ii, i32 noundef %i.hx) #1, !inline_history !113
  %i.ij = load ptr, ptr %i.fa, align 8, !tbaa !77
  %sext.i = mul i64 %i.hu, 21474836480
  %i.ik = ashr exact i64 %sext.i, 32
  %i.il = getelementptr inbounds i8, ptr %i.hv, i64 %i.ik
  tail call void %i.ij(ptr noundef %i.il, i64 noundef %i.ii, i32 noundef %i.hx) #1, !inline_history !113
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge818, %bb.ap
  %.pre-phi821 = phi i64 [ %.pre820, %._crit_edge818 ], [ %i.ii, %bb.ap ] ; 2 uses
  %i.im = load ptr, ptr %i.fa, align 8, !tbaa !77
  %i.in = shl nsw i32 %i.hy, 3
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.hv, i64 %i.io
  tail call void %i.im(ptr noundef %i.ip, i64 noundef %.pre-phi821, i32 noundef %i.hx) #1, !inline_history !113
  %i.iq = load ptr, ptr %i.fa, align 8, !tbaa !77
  %sext123.i = mul i64 %i.hu, 38654705664
  %i.ir = ashr exact i64 %sext123.i, 32
  %i.is = getelementptr inbounds i8, ptr %i.hv, i64 %i.ir
  tail call void %i.iq(ptr noundef %i.is, i64 noundef %.pre-phi821, i32 noundef %i.hx) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit365

vc1_p_v_intfr_loop_filter.exit365:                ; preds = %bb.ad, %bb.ag, %bb.ak, %bb.an, %bb.aq
  %indvars.iv.next622 = add nuw nsw i64 %indvars.iv621, 1 ; 2 uses
  %exitcond624.not = icmp eq i64 %indvars.iv.next622, 6
  br i1 %exitcond624.not, label %.loopexit605.loopexit, label %bb.y, !llvm.loop !115

.loopexit605.loopexit:                            ; preds = %vc1_p_v_intfr_loop_filter.exit365
  %.pre697 = load i32, ptr %i.c, align 8, !tbaa !37
  br label %.loopexit605

.loopexit605:                                     ; preds = %.loopexit605.loopexit, %bb.w, %.loopexit606
  %i.it = phi i32 [ %.pre697, %.loopexit605.loopexit ], [ %.pre698, %bb.w ], [ %.pre698, %.loopexit606 ] ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !79
  %i.iw = add nsw i32 %i.iv, -1
  %i.ix = icmp eq i32 %i.it, %i.iw
  br i1 %i.ix, label %bb.ar, label %.loopexit603

bb.ar:                                            ; preds = %.loopexit605
  %i.iy = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %.not322 = icmp eq i32 %i.iy, 0
  br i1 %.not322, label %.loopexit604, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.ja = load ptr, ptr %i.iz, align 16, !tbaa !71 ; 3 uses
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 -16 ; 7 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.jd = load ptr, ptr %i.jc, align 16, !tbaa !87
  %i.je = sext i32 %i.iy to i64
  %i.jf = getelementptr [4 x i8], ptr %i.jd, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 -4     ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ji = load i32, ptr %i.jh, align 16, !tbaa !73
  %i.jj = icmp ne i32 %i.it, %i.ji                ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.jl = load ptr, ptr %i.jk, align 16, !tbaa !57
  %i.jm = sext i32 %i.h to i64
  %i.jn = getelementptr i8, ptr %i.jl, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.jn, i64 -1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !55
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %.not124.i344 = icmp ne i8 %i.jp, 0             ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 12 uses
  %i.jt = load i8, ptr %i.jq, align 8, !tbaa !51
  %i.ju = zext i8 %i.jt to i32                    ; 5 uses
  %i.jv = load i64, ptr %i.jr, align 16, !tbaa !89 ; 3 uses
  %i.jw = trunc i64 %i.jv to i32                  ; 6 uses
  %i.jx = load i32, ptr %i.jg, align 4, !tbaa !68
  %i.jy = and i32 %i.jx, 11
  %or.cond5.i349.peel = icmp eq i32 %i.jy, 3      ; 2 uses
  br i1 %.not124.i344, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  br i1 %or.cond5.i349.peel, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !77
  %i.ka = shl nsw i32 %i.jw, 3
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %i.jb, i64 %i.kb
  %i.kd = shl nsw i32 %i.jw, 1
  %i.ke = sext i32 %i.kd to i64
  tail call void %i.jz(ptr noundef nonnull %i.kc, i64 noundef %i.ke, i32 noundef %i.ju) #1, !inline_history !113
  br label %bb.ax

bb.av:                                            ; preds = %bb.as
  %or.cond135.i350.peel = select i1 %i.jj, i1 %or.cond5.i349.peel, i1 false
  br i1 %or.cond135.i350.peel, label %bb.aw, label %._crit_edge788

._crit_edge788:                                   ; preds = %bb.av
  %.pre1006 = shl nsw i32 %i.jw, 1
  %.pre1008 = sext i32 %.pre1006 to i64
  br label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.kf = load ptr, ptr %i.js, align 8, !tbaa !77
  %i.kg = shl nsw i32 %i.jw, 2
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %i.jb, i64 %i.kh
  %i.kj = shl nsw i32 %i.jw, 1
  %i.kk = sext i32 %i.kj to i64                   ; 3 uses
  tail call void %i.kf(ptr noundef nonnull %i.ki, i64 noundef %i.kk, i32 noundef %i.ju) #1, !inline_history !113
  %i.kl = load ptr, ptr %i.js, align 8, !tbaa !77
  %sext129.i352.peel = mul i64 %i.jv, 21474836480
  %i.km = ashr exact i64 %sext129.i352.peel, 32
  %i.kn = getelementptr inbounds i8, ptr %i.jb, i64 %i.km
  tail call void %i.kl(ptr noundef nonnull %i.kn, i64 noundef %i.kk, i32 noundef %i.ju) #1, !inline_history !113
  br label %bb.az

bb.ax:                                            ; preds = %bb.at, %bb.au
  %i.ko = load i32, ptr %i.jg, align 4, !tbaa !68
  %i.kp = and i32 %i.ko, 176
  %or.cond.i347.peel629 = icmp eq i32 %i.kp, 48
  br i1 %or.cond.i347.peel629, label %bb.ay, label %.peel.next626

bb.ay:                                            ; preds = %bb.ax
  %i.kq = getelementptr inbounds i8, ptr %i.ja, i64 -8
  %i.kr = load i64, ptr %i.jr, align 16, !tbaa !89
  %i.ks = trunc i64 %i.kr to i32                  ; 2 uses
  %i.kt = load i8, ptr %i.jq, align 8, !tbaa !51
  %i.ku = zext i8 %i.kt to i32
  %i.kv = load ptr, ptr %i.js, align 8, !tbaa !77
  %i.kw = shl nsw i32 %i.ks, 3
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds i8, ptr %i.kq, i64 %i.kx
  %i.kz = shl nsw i32 %i.ks, 1
  %i.la = sext i32 %i.kz to i64
  tail call void %i.kv(ptr noundef nonnull %i.ky, i64 noundef %i.la, i32 noundef %i.ku) #1, !inline_history !113
  br label %.peel.next626

bb.az:                                            ; preds = %bb.aw, %._crit_edge788
  %.pre-phi1009 = phi i64 [ %.pre1008, %._crit_edge788 ], [ %i.kk, %bb.aw ] ; 2 uses
  %i.lb = load ptr, ptr %i.js, align 8, !tbaa !77
  %i.lc = shl nsw i32 %i.jw, 3
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %i.jb, i64 %i.ld
  tail call void %i.lb(ptr noundef nonnull %i.le, i64 noundef %.pre-phi1009, i32 noundef %i.ju) #1, !inline_history !113
  %i.lf = load ptr, ptr %i.js, align 8, !tbaa !77
  %sext130.i351.peel = mul i64 %i.jv, 38654705664
  %i.lg = ashr exact i64 %sext130.i351.peel, 32
  %i.lh = getelementptr inbounds i8, ptr %i.jb, i64 %i.lg
  tail call void %i.lf(ptr noundef nonnull %i.lh, i64 noundef %.pre-phi1009, i32 noundef %i.ju) #1, !inline_history !113
  %i.li = load i8, ptr %i.jq, align 8, !tbaa !51
  %i.lj = zext i8 %i.li to i32                    ; 4 uses
  %i.lk = load i64, ptr %i.jr, align 16, !tbaa !89 ; 3 uses
  %i.ll = trunc i64 %i.lk to i32                  ; 4 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ja, i64 -8 ; 4 uses
  %i.ln = load i32, ptr %i.jg, align 4, !tbaa !68
  %i.lo = and i32 %i.ln, 176
  %or.cond5.i349.peel630 = icmp eq i32 %i.lo, 48
  %or.cond135.i350.peel631 = select i1 %i.jj, i1 %or.cond5.i349.peel630, i1 false
  %.pre702 = load ptr, ptr %i.js, align 8, !tbaa !77 ; 2 uses
  br i1 %or.cond135.i350.peel631, label %bb.ba, label %._crit_edge789

._crit_edge789:                                   ; preds = %bb.az
  %.pre1002 = shl nsw i32 %i.ll, 1
  %.pre1004 = sext i32 %.pre1002 to i64
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lp = shl nsw i32 %i.ll, 2
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds i8, ptr %i.lm, i64 %i.lq
  %i.ls = shl nsw i32 %i.ll, 1
  %i.lt = sext i32 %i.ls to i64                   ; 3 uses
  tail call void %.pre702(ptr noundef nonnull %i.lr, i64 noundef %i.lt, i32 noundef %i.lj) #1, !inline_history !113
  %i.lu = load ptr, ptr %i.js, align 8, !tbaa !77
  %sext129.i352.peel632 = mul i64 %i.lk, 21474836480
  %i.lv = ashr exact i64 %sext129.i352.peel632, 32
  %i.lw = getelementptr inbounds i8, ptr %i.lm, i64 %i.lv
  tail call void %i.lu(ptr noundef nonnull %i.lw, i64 noundef %i.lt, i32 noundef %i.lj) #1, !inline_history !113
  %.pre701 = load ptr, ptr %i.js, align 8, !tbaa !77
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge789, %bb.ba
  %.pre-phi1005 = phi i64 [ %.pre1004, %._crit_edge789 ], [ %i.lt, %bb.ba ] ; 2 uses
  %i.lx = phi ptr [ %.pre702, %._crit_edge789 ], [ %.pre701, %bb.ba ]
  %i.ly = shl nsw i32 %i.ll, 3
  %i.lz = sext i32 %i.ly to i64
end_hunk_1
begin_hunk_2_@ff_vc1_p_intfr_loop_filter:bb.a
  %i.qy = and i32 %i.qx, 45056
  %or.cond3.i.1 = icmp eq i32 %i.qy, 12288
  %or.cond1087.1 = select i1 %.not124.i, i1 %or.cond3.i.1, i1 false
  br i1 %or.cond1087.1, label %bb.bp, label %vc1_p_v_intfr_loop_filter.exit.3

bb.bp:                                            ; preds = %vc1_p_v_intfr_loop_filter.exit
  %i.qz = load i64, ptr %i.ny, align 16, !tbaa !89 ; 3 uses
  %i.ra = shl nsw i64 %i.qz, 3
  %i.rb = getelementptr inbounds i8, ptr %i.nk, i64 %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = trunc i64 %i.qz to i32
  %i.re = load i8, ptr %i.nx, align 8, !tbaa !51
  %i.rf = zext i8 %i.re to i32
  %i.rg = load ptr, ptr %i.nz, align 8, !tbaa !77
  %sext131.i.1 = shl i64 %i.qz, 32
  %i.rh = ashr exact i64 %sext131.i.1, 32
  %i.ri = getelementptr inbounds i8, ptr %i.rc, i64 %i.rh
  %i.rj = shl nsw i32 %i.rd, 1
  %i.rk = sext i32 %i.rj to i64
  tail call void %i.rg(ptr noundef nonnull %i.ri, i64 noundef %i.rk, i32 noundef %i.rf) #1, !inline_history !113
  br label %vc1_p_v_intfr_loop_filter.exit.3

vc1_p_v_intfr_loop_filter.exit.3:                 ; preds = %bb.bp, %vc1_p_v_intfr_loop_filter.exit
  %.pre710 = load i32, ptr %i.c, align 8, !tbaa !37
  br label %.loopexit603

.loopexit603:                                     ; preds = %vc1_p_v_intfr_loop_filter.exit.3, %.loopexit604, %.loopexit605
  %i.rl = phi i32 [ %.pre710, %vc1_p_v_intfr_loop_filter.exit.3 ], [ %.pre711, %.loopexit604 ], [ %i.it, %.loopexit605 ]
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 16, !tbaa !73
  %i.ro = add nsw i32 %i.rn, 2
  %.not323 = icmp slt i32 %i.rl, %i.ro
  br i1 %.not323, label %.loopexit601, label %bb.bq

bb.bq:                                            ; preds = %.loopexit603
  %i.rp = load i32, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %i.rq = icmp sgt i32 %i.rp, 1
  br i1 %i.rq, label %bb.br, label %bb.ch

bb.br:                                            ; preds = %bb.bq
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 16, !tbaa !71
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 16, !tbaa !72
  %.neg324 = mul i64 %i.ru, -32
  %i.rv = getelementptr inbounds i8, ptr %i.rs, i64 %.neg324
  %i.rw = getelementptr inbounds i8, ptr %i.rv, i64 -32
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.ry = load ptr, ptr %i.rx, align 16, !tbaa !87
  %i.rz = load i32, ptr %i.e, align 4, !tbaa !38
  %i.sa = shl nsw i32 %i.rz, 1                    ; 2 uses
  %i.sb = sub nsw i32 %i.rp, %i.sa
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr [4 x i8], ptr %i.ry, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 -8     ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.sg = load ptr, ptr %i.sf, align 16, !tbaa !57
  %i.sh = sub nsw i32 %i.h, %i.sa
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr i8, ptr %i.sg, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.sj, i64 -2
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !55
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %.not97.i518 = icmp eq i8 %i.sl, 0
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 8 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %vc1_p_h_intfr_loop_filter.exit529
  %indvars.iv652 = phi i64 [ 0, %bb.br ], [ %indvars.iv.next653, %vc1_p_h_intfr_loop_filter.exit529 ] ; 7 uses
  %i.sq = icmp samesign ugt i64 %indvars.iv652, 3
  br i1 %i.sq, label %bb.ce, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sr = load i8, ptr %i.sm, align 8, !tbaa !51
  %i.ss = zext i8 %i.sr to i32                    ; 8 uses
  %i.st = load i64, ptr %i.rt, align 16, !tbaa !89 ; 5 uses
  %i.su = trunc i64 %i.st to i32                  ; 6 uses
  %indvars.iv652.tr = trunc nuw nsw i64 %indvars.iv652 to i32
  %i.sv = shl nuw nsw i32 %indvars.iv652.tr, 2    ; 2 uses
  %i.sw = and i32 %i.sv, 8
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = mul nsw i64 %i.st, %i.sx
  %i.sz = getelementptr inbounds i8, ptr %i.rw, i64 %i.sy
  %i.ta = shl nuw nsw i64 %indvars.iv652, 3
  %i.tb = and i64 %i.ta, 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tb ; 8 uses
  %i.td = load i32, ptr %i.se, align 4, !tbaa !68
  %i.te = ashr i32 %i.td, %i.sv
  %i.tf = and i32 %i.te, 14                       ; 2 uses
  br i1 %.not97.i518, label %bb.cb, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.tg = icmp samesign ult i64 %indvars.iv652, 2
  %or.cond.i523 = icmp eq i32 %i.tf, 6            ; 2 uses
  %.pre715 = load ptr, ptr %i.sn, align 16, !tbaa !82 ; 4 uses
  br i1 %i.tg, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  br i1 %or.cond.i523, label %bb.bw, label %._crit_edge795

._crit_edge795:                                   ; preds = %bb.bv
  %.pre973 = shl nsw i32 %i.su, 1
  %.pre975 = sext i32 %.pre973 to i64
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.ti = shl nsw i32 %i.su, 1
  %i.tj = sext i32 %i.ti to i64                   ; 2 uses
  tail call void %.pre715(ptr noundef nonnull %i.th, i64 noundef %i.tj, i32 noundef %i.ss) #1, !inline_history !116
  %.pre714 = load ptr, ptr %i.sn, align 16, !tbaa !82
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge795, %bb.bw
  %.pre-phi976 = phi i64 [ %.pre975, %._crit_edge795 ], [ %i.tj, %bb.bw ]
  %i.tk = phi ptr [ %.pre715, %._crit_edge795 ], [ %.pre714, %bb.bw ]
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  tail call void %i.tk(ptr noundef nonnull %i.tl, i64 noundef %.pre-phi976, i32 noundef %i.ss) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit529

bb.by:                                            ; preds = %bb.bu
  %sext102.i522 = mul i64 %i.st, 30064771072
  %i.tm = ashr exact i64 %sext102.i522, 32
  %i.tn = sub nsw i64 0, %i.tm                    ; 2 uses
  br i1 %or.cond.i523, label %bb.bz, label %._crit_edge794

._crit_edge794:                                   ; preds = %bb.by
  %.pre982 = shl nsw i32 %i.su, 1
  %.pre984 = sext i32 %.pre982 to i64
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.to = getelementptr inbounds i8, ptr %i.tc, i64 %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tq = shl nsw i32 %i.su, 1
  %i.tr = sext i32 %i.tq to i64                   ; 2 uses
  tail call void %.pre715(ptr noundef nonnull %i.tp, i64 noundef %i.tr, i32 noundef %i.ss) #1, !inline_history !116
  %.pre712 = load ptr, ptr %i.sn, align 16, !tbaa !82
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge794, %bb.bz
  %.pre-phi985 = phi i64 [ %.pre984, %._crit_edge794 ], [ %i.tr, %bb.bz ]
  %i.ts = phi ptr [ %.pre715, %._crit_edge794 ], [ %.pre712, %bb.bz ]
  %i.tt = getelementptr inbounds i8, ptr %i.tc, i64 %i.tn
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  tail call void %i.ts(ptr noundef nonnull %i.tu, i64 noundef %.pre-phi985, i32 noundef %i.ss) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit529

bb.cb:                                            ; preds = %bb.bt
  %or.cond9.i525 = icmp eq i32 %i.tf, 6
  %.pre717 = load ptr, ptr %i.so, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond9.i525, label %bb.cc, label %._crit_edge796

._crit_edge796:                                   ; preds = %bb.cb
  %.pre966 = shl nsw i32 %i.su, 1
  %.pre968 = sext i32 %.pre966 to i64
  %.pre970 = shl i64 %i.st, 32
  %.pre971 = ashr exact i64 %.pre970, 32
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.tw = shl nsw i32 %i.su, 1
  %i.tx = sext i32 %i.tw to i64                   ; 3 uses
  tail call void %.pre717(ptr noundef nonnull %i.tv, i64 noundef %i.tx, i32 noundef %i.ss) #1, !inline_history !116
  %i.ty = load ptr, ptr %i.so, align 16, !tbaa !83
  %sext98.i528 = shl i64 %i.st, 32
  %i.tz = ashr exact i64 %sext98.i528, 32         ; 2 uses
  %i.ua = getelementptr inbounds i8, ptr %i.tc, i64 %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  tail call void %i.ty(ptr noundef nonnull %i.ub, i64 noundef %i.tx, i32 noundef %i.ss) #1, !inline_history !116
  %.pre716 = load ptr, ptr %i.so, align 16, !tbaa !83
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge796, %bb.cc
  %.pre-phi972 = phi i64 [ %.pre971, %._crit_edge796 ], [ %i.tz, %bb.cc ]
  %.pre-phi969 = phi i64 [ %.pre968, %._crit_edge796 ], [ %i.tx, %bb.cc ] ; 2 uses
  %i.uc = phi ptr [ %.pre717, %._crit_edge796 ], [ %.pre716, %bb.cc ]
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  tail call void %i.uc(ptr noundef nonnull %i.ud, i64 noundef %.pre-phi969, i32 noundef %i.ss) #1, !inline_history !116
  %i.ue = load ptr, ptr %i.so, align 16, !tbaa !83
  %i.uf = getelementptr inbounds i8, ptr %i.tc, i64 %.pre-phi972
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  tail call void %i.ue(ptr noundef nonnull %i.ug, i64 noundef %.pre-phi969, i32 noundef %i.ss) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit529

bb.ce:                                            ; preds = %bb.bs
  %i.uh = getelementptr [8 x i8], ptr %i.rr, i64 %indvars.iv652
  %i.ui = getelementptr i8, ptr %i.uh, i64 -24
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !71
  %i.uk = load i64, ptr %i.sp, align 8, !tbaa !76 ; 4 uses
  %.neg339 = mul i64 %i.uk, -16
  %i.ul = getelementptr inbounds i8, ptr %i.uj, i64 %.neg339 ; 3 uses
  %i.um = getelementptr inbounds i8, ptr %i.ul, i64 -16 ; 2 uses
  %i.un = load i8, ptr %i.sm, align 8, !tbaa !51
  %i.uo = zext i8 %i.un to i32                    ; 4 uses
  %i.up = trunc i64 %i.uk to i32                  ; 2 uses
  %i.uq = load i32, ptr %i.se, align 4, !tbaa !68
  %indvars.iv652.tr1070 = trunc nuw nsw i64 %indvars.iv652 to i32
  %i.ur = shl nuw nsw i32 %indvars.iv652.tr1070, 2
  %i.us = ashr i32 %i.uq, %i.ur
  %i.ut = and i32 %i.us, 14
  %or.cond11.i515 = icmp eq i32 %i.ut, 6
  %.pre719 = load ptr, ptr %i.so, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond11.i515, label %bb.cf, label %._crit_edge801

._crit_edge801:                                   ; preds = %bb.ce
  %.pre932 = shl nsw i32 %i.up, 1
  %.pre934 = sext i32 %.pre932 to i64
  %.pre936 = shl i64 %i.uk, 32
  %.pre937 = ashr exact i64 %.pre936, 32
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.uu = getelementptr inbounds i8, ptr %i.ul, i64 -12
  %i.uv = shl nsw i32 %i.up, 1
  %i.uw = sext i32 %i.uv to i64                   ; 3 uses
  tail call void %.pre719(ptr noundef nonnull %i.uu, i64 noundef %i.uw, i32 noundef %i.uo) #1, !inline_history !116
  %i.ux = load ptr, ptr %i.so, align 16, !tbaa !83
  %sext.i517 = shl i64 %i.uk, 32
  %i.uy = ashr exact i64 %sext.i517, 32           ; 2 uses
  %i.uz = getelementptr inbounds i8, ptr %i.um, i64 %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  tail call void %i.ux(ptr noundef nonnull %i.va, i64 noundef %i.uw, i32 noundef %i.uo) #1, !inline_history !116
  %.pre718 = load ptr, ptr %i.so, align 16, !tbaa !83
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge801, %bb.cf
  %.pre-phi938 = phi i64 [ %.pre937, %._crit_edge801 ], [ %i.uy, %bb.cf ]
  %.pre-phi935 = phi i64 [ %.pre934, %._crit_edge801 ], [ %i.uw, %bb.cf ] ; 2 uses
  %i.vb = phi ptr [ %.pre719, %._crit_edge801 ], [ %.pre718, %bb.cf ]
  %i.vc = getelementptr inbounds i8, ptr %i.ul, i64 -8
  tail call void %i.vb(ptr noundef nonnull %i.vc, i64 noundef %.pre-phi935, i32 noundef %i.uo) #1, !inline_history !116
  %i.vd = load ptr, ptr %i.so, align 16, !tbaa !83
  %i.ve = getelementptr inbounds i8, ptr %i.um, i64 %.pre-phi938
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  tail call void %i.vd(ptr noundef nonnull %i.vf, i64 noundef %.pre-phi935, i32 noundef %i.uo) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit529

vc1_p_h_intfr_loop_filter.exit529:                ; preds = %bb.bx, %bb.ca, %bb.cd, %bb.cg
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1 ; 2 uses
  %exitcond655.not = icmp eq i64 %indvars.iv.next653, 6
  br i1 %exitcond655.not, label %thread-pre-split, label %bb.bs, !llvm.loop !117

thread-pre-split:                                 ; preds = %vc1_p_h_intfr_loop_filter.exit529
  %.pr = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %thread-pre-split, %bb.bq
  %i.vg = phi i32 [ %.pr, %thread-pre-split ], [ %i.rp, %bb.bq ] ; 4 uses
  %i.vh = load i32, ptr %i.ea, align 4, !tbaa !65
  %i.vi = add nsw i32 %i.vh, -1
  %i.vj = icmp eq i32 %i.vg, %i.vi
  br i1 %i.vj, label %bb.ci, label %.loopexit601

bb.ci:                                            ; preds = %bb.ch
  %i.vk = icmp sgt i32 %i.vg, 0
  %.pre730 = load i32, ptr %i.e, align 4, !tbaa !38 ; 2 uses
  br i1 %i.vk, label %bb.cj, label %bb.cz

bb.cj:                                            ; preds = %bb.ci
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 16, !tbaa !71
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.vo = load i64, ptr %i.vn, align 16, !tbaa !72
  %.neg325 = mul i64 %i.vo, -32
  %i.vp = getelementptr inbounds i8, ptr %i.vm, i64 %.neg325
  %i.vq = getelementptr inbounds i8, ptr %i.vp, i64 -16
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.vs = load ptr, ptr %i.vr, align 16, !tbaa !87
  %i.vt = shl nsw i32 %.pre730, 1
  %i.vu = xor i32 %i.vt, -1                       ; 2 uses
  %i.vv = add i32 %i.vg, %i.vu
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.vw ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.vz = load ptr, ptr %i.vy, align 16, !tbaa !57
  %i.wa = add i32 %i.h, %i.vu
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds i8, ptr %i.vz, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !55
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %.not97.i501 = icmp eq i8 %i.wd, 0
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 8 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %vc1_p_h_intfr_loop_filter.exit512
  %indvars.iv656 = phi i64 [ 0, %bb.cj ], [ %indvars.iv.next657, %vc1_p_h_intfr_loop_filter.exit512 ] ; 7 uses
  %i.wi = icmp samesign ugt i64 %indvars.iv656, 3
  br i1 %i.wi, label %bb.cw, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.wj = load i8, ptr %i.we, align 8, !tbaa !51
  %i.wk = zext i8 %i.wj to i32                    ; 8 uses
  %i.wl = load i64, ptr %i.vn, align 16, !tbaa !89 ; 5 uses
  %i.wm = trunc i64 %i.wl to i32                  ; 6 uses
  %indvars.iv656.tr = trunc nuw nsw i64 %indvars.iv656 to i32
  %i.wn = shl nuw nsw i32 %indvars.iv656.tr, 2    ; 2 uses
  %i.wo = and i32 %i.wn, 8
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = mul nsw i64 %i.wl, %i.wp
  %i.wr = getelementptr inbounds i8, ptr %i.vq, i64 %i.wq
  %i.ws = shl nuw nsw i64 %indvars.iv656, 3
  %i.wt = and i64 %i.ws, 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wt ; 8 uses
  %i.wv = load i32, ptr %i.vx, align 4, !tbaa !68
  %i.ww = ashr i32 %i.wv, %i.wn
  %i.wx = and i32 %i.ww, 14                       ; 2 uses
  br i1 %.not97.i501, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.wy = icmp samesign ult i64 %indvars.iv656, 2
  %or.cond.i506 = icmp eq i32 %i.wx, 6            ; 2 uses
  %.pre723 = load ptr, ptr %i.wf, align 16, !tbaa !82 ; 4 uses
  br i1 %i.wy, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  br i1 %or.cond.i506, label %bb.co, label %._crit_edge798

._crit_edge798:                                   ; preds = %bb.cn
  %.pre953 = shl nsw i32 %i.wm, 1
  %.pre955 = sext i32 %.pre953 to i64
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.xa = shl nsw i32 %i.wm, 1
  %i.xb = sext i32 %i.xa to i64                   ; 2 uses
  tail call void %.pre723(ptr noundef nonnull %i.wz, i64 noundef %i.xb, i32 noundef %i.wk) #1, !inline_history !116
  %.pre722 = load ptr, ptr %i.wf, align 16, !tbaa !82
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge798, %bb.co
  %.pre-phi956 = phi i64 [ %.pre955, %._crit_edge798 ], [ %i.xb, %bb.co ]
  %i.xc = phi ptr [ %.pre723, %._crit_edge798 ], [ %.pre722, %bb.co ]
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  tail call void %i.xc(ptr noundef nonnull %i.xd, i64 noundef %.pre-phi956, i32 noundef %i.wk) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit512

bb.cq:                                            ; preds = %bb.cm
  %sext102.i505 = mul i64 %i.wl, 30064771072
  %i.xe = ashr exact i64 %sext102.i505, 32
  %i.xf = sub nsw i64 0, %i.xe                    ; 2 uses
  br i1 %or.cond.i506, label %bb.cr, label %._crit_edge797

._crit_edge797:                                   ; preds = %bb.cq
  %.pre962 = shl nsw i32 %i.wm, 1
  %.pre964 = sext i32 %.pre962 to i64
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.xg = getelementptr inbounds i8, ptr %i.wu, i64 %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %i.xi = shl nsw i32 %i.wm, 1
  %i.xj = sext i32 %i.xi to i64                   ; 2 uses
  tail call void %.pre723(ptr noundef nonnull %i.xh, i64 noundef %i.xj, i32 noundef %i.wk) #1, !inline_history !116
  %.pre720 = load ptr, ptr %i.wf, align 16, !tbaa !82
  br label %bb.cs

bb.cs:                                            ; preds = %._crit_edge797, %bb.cr
  %.pre-phi965 = phi i64 [ %.pre964, %._crit_edge797 ], [ %i.xj, %bb.cr ]
  %i.xk = phi ptr [ %.pre723, %._crit_edge797 ], [ %.pre720, %bb.cr ]
  %i.xl = getelementptr inbounds i8, ptr %i.wu, i64 %i.xf
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  tail call void %i.xk(ptr noundef nonnull %i.xm, i64 noundef %.pre-phi965, i32 noundef %i.wk) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit512

bb.ct:                                            ; preds = %bb.cl
  %or.cond9.i508 = icmp eq i32 %i.wx, 6
  %.pre725 = load ptr, ptr %i.wg, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond9.i508, label %bb.cu, label %._crit_edge799

._crit_edge799:                                   ; preds = %bb.ct
  %.pre946 = shl nsw i32 %i.wm, 1
  %.pre948 = sext i32 %.pre946 to i64
  %.pre950 = shl i64 %i.wl, 32
  %.pre951 = ashr exact i64 %.pre950, 32
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.xo = shl nsw i32 %i.wm, 1
  %i.xp = sext i32 %i.xo to i64                   ; 3 uses
  tail call void %.pre725(ptr noundef nonnull %i.xn, i64 noundef %i.xp, i32 noundef %i.wk) #1, !inline_history !116
  %i.xq = load ptr, ptr %i.wg, align 16, !tbaa !83
  %sext98.i511 = shl i64 %i.wl, 32
  %i.xr = ashr exact i64 %sext98.i511, 32         ; 2 uses
  %i.xs = getelementptr inbounds i8, ptr %i.wu, i64 %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  tail call void %i.xq(ptr noundef nonnull %i.xt, i64 noundef %i.xp, i32 noundef %i.wk) #1, !inline_history !116
  %.pre724 = load ptr, ptr %i.wg, align 16, !tbaa !83
  br label %bb.cv

bb.cv:                                            ; preds = %._crit_edge799, %bb.cu
  %.pre-phi952 = phi i64 [ %.pre951, %._crit_edge799 ], [ %i.xr, %bb.cu ]
  %.pre-phi949 = phi i64 [ %.pre948, %._crit_edge799 ], [ %i.xp, %bb.cu ] ; 2 uses
  %i.xu = phi ptr [ %.pre725, %._crit_edge799 ], [ %.pre724, %bb.cu ]
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  tail call void %i.xu(ptr noundef nonnull %i.xv, i64 noundef %.pre-phi949, i32 noundef %i.wk) #1, !inline_history !116
  %i.xw = load ptr, ptr %i.wg, align 16, !tbaa !83
  %i.xx = getelementptr inbounds i8, ptr %i.wu, i64 %.pre-phi952
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  tail call void %i.xw(ptr noundef nonnull %i.xy, i64 noundef %.pre-phi949, i32 noundef %i.wk) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit512

bb.cw:                                            ; preds = %bb.ck
  %i.xz = getelementptr [8 x i8], ptr %i.vl, i64 %indvars.iv656
  %i.ya = getelementptr i8, ptr %i.xz, i64 -24
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !71
  %i.yc = load i64, ptr %i.wh, align 8, !tbaa !76 ; 4 uses
  %.neg338 = mul i64 %i.yc, -16
  %i.yd = getelementptr inbounds i8, ptr %i.yb, i64 %.neg338 ; 3 uses
  %i.ye = getelementptr inbounds i8, ptr %i.yd, i64 -8 ; 2 uses
  %i.yf = load i8, ptr %i.we, align 8, !tbaa !51
  %i.yg = zext i8 %i.yf to i32                    ; 4 uses
  %i.yh = trunc i64 %i.yc to i32                  ; 2 uses
  %i.yi = load i32, ptr %i.vx, align 4, !tbaa !68
  %indvars.iv656.tr1072 = trunc nuw nsw i64 %indvars.iv656 to i32
  %i.yj = shl nuw nsw i32 %indvars.iv656.tr1072, 2
  %i.yk = ashr i32 %i.yi, %i.yj
  %i.yl = and i32 %i.yk, 14
  %or.cond11.i498 = icmp eq i32 %i.yl, 6
  %.pre727 = load ptr, ptr %i.wg, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond11.i498, label %bb.cx, label %._crit_edge800

._crit_edge800:                                   ; preds = %bb.cw
  %.pre939 = shl nsw i32 %i.yh, 1
  %.pre941 = sext i32 %.pre939 to i64
  %.pre943 = shl i64 %i.yc, 32
  %.pre944 = ashr exact i64 %.pre943, 32
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ym = getelementptr inbounds i8, ptr %i.yd, i64 -4
  %i.yn = shl nsw i32 %i.yh, 1
  %i.yo = sext i32 %i.yn to i64                   ; 3 uses
  tail call void %.pre727(ptr noundef nonnull %i.ym, i64 noundef %i.yo, i32 noundef %i.yg) #1, !inline_history !116
  %i.yp = load ptr, ptr %i.wg, align 16, !tbaa !83
  %sext.i500 = shl i64 %i.yc, 32
  %i.yq = ashr exact i64 %sext.i500, 32           ; 2 uses
  %i.yr = getelementptr inbounds i8, ptr %i.ye, i64 %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  tail call void %i.yp(ptr noundef nonnull %i.ys, i64 noundef %i.yo, i32 noundef %i.yg) #1, !inline_history !116
  %.pre726 = load ptr, ptr %i.wg, align 16, !tbaa !83
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge800, %bb.cx
  %.pre-phi945 = phi i64 [ %.pre944, %._crit_edge800 ], [ %i.yq, %bb.cx ]
  %.pre-phi942 = phi i64 [ %.pre941, %._crit_edge800 ], [ %i.yo, %bb.cx ] ; 2 uses
  %i.yt = phi ptr [ %.pre727, %._crit_edge800 ], [ %.pre726, %bb.cx ]
  tail call void %i.yt(ptr noundef nonnull %i.yd, i64 noundef %.pre-phi942, i32 noundef %i.yg) #1, !inline_history !116
  %i.yu = load ptr, ptr %i.wg, align 16, !tbaa !83
  %i.yv = getelementptr inbounds i8, ptr %i.ye, i64 %.pre-phi945
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  tail call void %i.yu(ptr noundef nonnull %i.yw, i64 noundef %.pre-phi942, i32 noundef %i.yg) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit512

vc1_p_h_intfr_loop_filter.exit512:                ; preds = %bb.cp, %bb.cs, %bb.cv, %bb.cy
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %exitcond659.not = icmp eq i64 %indvars.iv.next657, 6
  br i1 %exitcond659.not, label %.loopexit602.loopexit, label %bb.ck, !llvm.loop !118

.loopexit602.loopexit:                            ; preds = %vc1_p_h_intfr_loop_filter.exit512
  %.pre728 = load i32, ptr %i.a, align 4, !tbaa !9
  %.pre729 = load i32, ptr %i.e, align 4, !tbaa !38
  br label %bb.cz

bb.cz:                                            ; preds = %bb.ci, %.loopexit602.loopexit
  %i.yx = phi i32 [ %.pre729, %.loopexit602.loopexit ], [ %.pre730, %bb.ci ]
  %i.yy = phi i32 [ %.pre728, %.loopexit602.loopexit ], [ %i.vg, %bb.ci ]
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.za = load ptr, ptr %i.yz, align 16, !tbaa !71
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.zc = load i64, ptr %i.zb, align 16, !tbaa !72 ; 4 uses
  %.neg326 = mul i64 %i.zc, -32
  %i.zd = getelementptr inbounds i8, ptr %i.za, i64 %.neg326 ; 10 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.zf = load ptr, ptr %i.ze, align 16, !tbaa !87
  %i.zg = shl nsw i32 %i.yx, 1                    ; 2 uses
  %i.zh = sub nsw i32 %i.yy, %i.zg
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.zi ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.zl = load ptr, ptr %i.zk, align 16, !tbaa !57
  %i.zm = sub nsw i32 %i.h, %i.zg
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr inbounds i8, ptr %i.zl, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !55
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 4 uses
  %.not97.i484 = icmp eq i8 %i.zp, 0              ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 5 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 12 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.zu = load i8, ptr %i.zq, align 8, !tbaa !51
  %i.zv = zext i8 %i.zu to i32                    ; 6 uses
  %i.zw = trunc i64 %i.zc to i32                  ; 4 uses
  %i.zx = load i32, ptr %i.zj, align 4, !tbaa !68
  %i.zy = and i32 %i.zx, 14
  %or.cond9.i491.peel = icmp eq i32 %i.zy, 6      ; 2 uses
  br i1 %.not97.i484, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %or.cond9.i491.peel, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.zz = load ptr, ptr %i.zr, align 16, !tbaa !82
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  %i.aab = shl nsw i32 %i.zw, 1
  %i.aac = sext i32 %i.aab to i64
  tail call void %i.zz(ptr noundef nonnull %i.aaa, i64 noundef %i.aac, i32 noundef %i.zv) #1, !inline_history !116
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.aad = load ptr, ptr %i.zr, align 16, !tbaa !82
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.aaf = shl nsw i32 %i.zw, 1
  %i.aag = sext i32 %i.aaf to i64
  tail call void %i.aad(ptr noundef nonnull %i.aae, i64 noundef %i.aag, i32 noundef %i.zv) #1, !inline_history !116
  br label %.peel.next665.peel

bb.dd:                                            ; preds = %bb.cz
  br i1 %or.cond9.i491.peel, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aah = load ptr, ptr %i.zs, align 16, !tbaa !83
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  %i.aaj = shl nsw i32 %i.zw, 1
  %i.aak = sext i32 %i.aaj to i64                 ; 2 uses
  tail call void %i.aah(ptr noundef nonnull %i.aai, i64 noundef %i.aak, i32 noundef %i.zv) #1, !inline_history !116
  %i.aal = load ptr, ptr %i.zs, align 16, !tbaa !83
  %sext98.i494.peel = shl i64 %i.zc, 32
  %i.aam = ashr exact i64 %sext98.i494.peel, 32
  %i.aan = getelementptr inbounds i8, ptr %i.zd, i64 %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 4
  tail call void %i.aal(ptr noundef nonnull %i.aao, i64 noundef %i.aak, i32 noundef %i.zv) #1, !inline_history !116
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %i.aap = load ptr, ptr %i.zs, align 16, !tbaa !83
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.aar = shl nsw i32 %i.zw, 1
  %i.aas = sext i32 %i.aar to i64                 ; 2 uses
  tail call void %i.aap(ptr noundef nonnull %i.aaq, i64 noundef %i.aas, i32 noundef %i.zv) #1, !inline_history !116
  %i.aat = load ptr, ptr %i.zs, align 16, !tbaa !83
  %sext101.i493.peel = shl i64 %i.zc, 32
  %i.aau = ashr exact i64 %sext101.i493.peel, 32
  %i.aav = getelementptr inbounds i8, ptr %i.zd, i64 %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  tail call void %i.aat(ptr noundef nonnull %i.aaw, i64 noundef %i.aas, i32 noundef %i.zv) #1, !inline_history !116
  br label %.peel.next665.peel

.peel.next665.peel:                               ; preds = %bb.df, %bb.dc
  %i.aax = load i8, ptr %i.zq, align 8, !tbaa !51
  %i.aay = zext i8 %i.aax to i32                  ; 3 uses
  %i.aaz = load i64, ptr %i.zb, align 16, !tbaa !89 ; 2 uses
  %i.aba = trunc i64 %i.aaz to i32                ; 2 uses
  %i.abb = load i32, ptr %i.zj, align 4, !tbaa !68
  %i.abc = lshr i32 %i.abb, 4
  %i.abd = and i32 %i.abc, 14                     ; 2 uses
  br i1 %.not97.i484, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %.peel.next665.peel
  %or.cond.i489.peel = icmp eq i32 %i.abd, 6
  br i1 %or.cond.i489.peel, label %bb.dh, label %.peel.next665.preheader.peel.newph

bb.dh:                                            ; preds = %bb.dg
  %i.abe = load ptr, ptr %i.zr, align 16, !tbaa !82
  %i.abf = getelementptr inbounds nuw i8, ptr %i.zd, i64 12
  %i.abg = shl nsw i32 %i.aba, 1
  %i.abh = sext i32 %i.abg to i64
  tail call void %i.abe(ptr noundef nonnull %i.abf, i64 noundef %i.abh, i32 noundef %i.aay) #1, !inline_history !116
  br label %.peel.next665.preheader.peel.newph

bb.di:                                            ; preds = %.peel.next665.peel
  %or.cond9.i491.peel1088 = icmp eq i32 %i.abd, 6
  br i1 %or.cond9.i491.peel1088, label %bb.dj, label %.peel.next665.preheader.peel.newph

bb.dj:                                            ; preds = %bb.di
  %i.abi = load ptr, ptr %i.zs, align 16, !tbaa !83
  %i.abj = getelementptr inbounds nuw i8, ptr %i.zd, i64 12
  %i.abk = shl nsw i32 %i.aba, 1
  %i.abl = sext i32 %i.abk to i64                 ; 2 uses
  tail call void %i.abi(ptr noundef nonnull %i.abj, i64 noundef %i.abl, i32 noundef %i.aay) #1, !inline_history !116
  %i.abm = load ptr, ptr %i.zs, align 16, !tbaa !83
  %sext98.i494.peel1089 = shl i64 %i.aaz, 32
  %i.abn = ashr exact i64 %sext98.i494.peel1089, 32
  %i.abo = getelementptr i8, ptr %i.zd, i64 %i.abn
  %i.abp = getelementptr i8, ptr %i.abo, i64 12
  tail call void %i.abm(ptr noundef nonnull %i.abp, i64 noundef %i.abl, i32 noundef %i.aay) #1, !inline_history !116
  br label %.peel.next665.preheader.peel.newph

.peel.next665.preheader.peel.newph:               ; preds = %bb.dg, %bb.dh, %bb.dj, %bb.di
  br label %.peel.next665

.peel.next665:                                    ; preds = %.peel.next665.preheader.peel.newph, %vc1_p_h_intfr_loop_filter.exit495
  %indvars.iv660 = phi i64 [ %indvars.iv.next661, %vc1_p_h_intfr_loop_filter.exit495 ], [ 2, %.peel.next665.preheader.peel.newph ] ; 8 uses
  %i.abq = icmp samesign ugt i64 %indvars.iv660, 3
  br i1 %i.abq, label %bb.dt, label %bb.dk

bb.dk:                                            ; preds = %.peel.next665
  %i.abr = load i8, ptr %i.zq, align 8, !tbaa !51
  %i.abs = zext i8 %i.abr to i32                  ; 6 uses
  %i.abt = load i64, ptr %i.zb, align 16, !tbaa !89 ; 6 uses
  %i.abu = trunc i64 %i.abt to i32                ; 4 uses
  %indvars.iv660.tr = trunc nuw nsw i64 %indvars.iv660 to i32
  %i.abv = shl nuw nsw i32 %indvars.iv660.tr, 2   ; 2 uses
  %i.abw = and i32 %i.abv, 8
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = mul nsw i64 %i.abt, %i.abx
  %i.abz = getelementptr inbounds i8, ptr %i.zd, i64 %i.aby
  %i.aca = shl nuw nsw i64 %indvars.iv660, 3
  %i.acb = and i64 %i.aca, 8
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.acb ; 6 uses
  %i.acd = load i32, ptr %i.zj, align 4, !tbaa !68
  %i.ace = ashr i32 %i.acd, %i.abv
  %i.acf = and i32 %i.ace, 14                     ; 2 uses
  br i1 %.not97.i484, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %or.cond.i489 = icmp eq i32 %i.acf, 6
  br i1 %or.cond.i489, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.acg = load ptr, ptr %i.zr, align 16, !tbaa !82
  %sext102.i488 = mul i64 %i.abt, 30064771072
  %i.ach = ashr exact i64 %sext102.i488, 32
  %i.aci = sub nsw i64 0, %i.ach
  %i.acj = getelementptr inbounds i8, ptr %i.acc, i64 %i.aci
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  %i.acl = shl nsw i32 %i.abu, 1
  %i.acm = sext i32 %i.acl to i64
  tail call void %i.acg(ptr noundef nonnull %i.ack, i64 noundef %i.acm, i32 noundef %i.abs) #1, !inline_history !116
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.acn = icmp eq i64 %indvars.iv660, 2
  br i1 %i.acn, label %bb.do, label %vc1_p_h_intfr_loop_filter.exit495

bb.do:                                            ; preds = %bb.dn
  %i.aco = load ptr, ptr %i.zr, align 16, !tbaa !82
  %sext103.i487 = mul i64 %i.abt, 30064771072
  %i.acp = ashr exact i64 %sext103.i487, 32
  %i.acq = sub nsw i64 0, %i.acp
  %i.acr = getelementptr inbounds i8, ptr %i.acc, i64 %i.acq
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.act = shl nsw i32 %i.abu, 1
  %i.acu = sext i32 %i.act to i64
  tail call void %i.aco(ptr noundef nonnull %i.acs, i64 noundef %i.acu, i32 noundef %i.abs) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit495

bb.dp:                                            ; preds = %bb.dk
  %or.cond9.i491 = icmp eq i32 %i.acf, 6
  br i1 %or.cond9.i491, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.acv = load ptr, ptr %i.zs, align 16, !tbaa !83
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %i.acx = shl nsw i32 %i.abu, 1
  %i.acy = sext i32 %i.acx to i64                 ; 2 uses
  tail call void %i.acv(ptr noundef nonnull %i.acw, i64 noundef %i.acy, i32 noundef %i.abs) #1, !inline_history !116
  %i.acz = load ptr, ptr %i.zs, align 16, !tbaa !83
  %sext98.i494 = shl i64 %i.abt, 32
  %i.ada = ashr exact i64 %sext98.i494, 32
  %i.adb = getelementptr inbounds i8, ptr %i.acc, i64 %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  tail call void %i.acz(ptr noundef nonnull %i.adc, i64 noundef %i.acy, i32 noundef %i.abs) #1, !inline_history !116
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.add = and i64 %indvars.iv660, 1
  %.not100.i492 = icmp eq i64 %i.add, 0
  br i1 %.not100.i492, label %bb.ds, label %vc1_p_h_intfr_loop_filter.exit495

bb.ds:                                            ; preds = %bb.dr
  %i.ade = load ptr, ptr %i.zs, align 16, !tbaa !83
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  %i.adg = shl nsw i32 %i.abu, 1
  %i.adh = sext i32 %i.adg to i64                 ; 2 uses
  tail call void %i.ade(ptr noundef nonnull %i.adf, i64 noundef %i.adh, i32 noundef %i.abs) #1, !inline_history !116
  %i.adi = load ptr, ptr %i.zs, align 16, !tbaa !83
  %sext101.i493 = shl i64 %i.abt, 32
  %i.adj = ashr exact i64 %sext101.i493, 32
  %i.adk = getelementptr inbounds i8, ptr %i.acc, i64 %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  tail call void %i.adi(ptr noundef nonnull %i.adl, i64 noundef %i.adh, i32 noundef %i.abs) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit495

bb.dt:                                            ; preds = %.peel.next665
  %i.adm = load i32, ptr %i.zj, align 4, !tbaa !68
  %indvars.iv660.tr1074 = trunc nuw nsw i64 %indvars.iv660 to i32
  %i.adn = shl nuw nsw i32 %indvars.iv660.tr1074, 2
  %i.ado = ashr i32 %i.adm, %i.adn
  %i.adp = and i32 %i.ado, 14
  %or.cond11.i481 = icmp eq i32 %i.adp, 6
  br i1 %or.cond11.i481, label %bb.du, label %vc1_p_h_intfr_loop_filter.exit495

bb.du:                                            ; preds = %bb.dt
  %i.adq = load i64, ptr %i.zt, align 8, !tbaa !89 ; 3 uses
  %i.adr = trunc i64 %i.adq to i32
  %i.ads = load i8, ptr %i.zq, align 8, !tbaa !51
  %i.adt = zext i8 %i.ads to i32                  ; 2 uses
  %i.adu = getelementptr [8 x i8], ptr %i.yz, i64 %indvars.iv660
  %i.adv = getelementptr i8, ptr %i.adu, i64 -24
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !71
  %.neg337 = mul i64 %i.adq, -16
  %i.adx = getelementptr inbounds i8, ptr %i.adw, i64 %.neg337 ; 2 uses
  %i.ady = load ptr, ptr %i.zs, align 16, !tbaa !83
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 4
  %i.aea = shl nsw i32 %i.adr, 1
  %i.aeb = sext i32 %i.aea to i64                 ; 2 uses
  tail call void %i.ady(ptr noundef nonnull %i.adz, i64 noundef %i.aeb, i32 noundef %i.adt) #1, !inline_history !116
  %i.aec = load ptr, ptr %i.zs, align 16, !tbaa !83
  %sext.i483 = shl i64 %i.adq, 32
  %i.aed = ashr exact i64 %sext.i483, 32
  %i.aee = getelementptr inbounds i8, ptr %i.adx, i64 %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  tail call void %i.aec(ptr noundef nonnull %i.aef, i64 noundef %i.aeb, i32 noundef %i.adt) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit495

vc1_p_h_intfr_loop_filter.exit495:                ; preds = %bb.dt, %bb.du, %bb.dn, %bb.do, %bb.dr, %bb.ds
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next661, 6
  br i1 %exitcond663.not, label %.loopexit601, label %.peel.next665, !llvm.loop !119

.loopexit601:                                     ; preds = %vc1_p_h_intfr_loop_filter.exit495, %bb.ch, %.loopexit603
  %i.aeg = load i32, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  %i.aeh = load i32, ptr %i.iu, align 4, !tbaa !79
  %i.aei = add nsw i32 %i.aeh, -1
  %i.aej = icmp eq i32 %i.aeg, %i.aei
  br i1 %i.aej, label %bb.dv, label %.loopexit

bb.dv:                                            ; preds = %.loopexit601
  %i.aek = load i32, ptr %i.rm, align 16, !tbaa !73
  %.not328.not = icmp sgt i32 %i.aeg, %i.aek
  %.pre757 = load i32, ptr %i.a, align 4, !tbaa !9 ; 4 uses
  br i1 %.not328.not, label %bb.dw, label %.loopexit599

bb.dw:                                            ; preds = %bb.dv
  %i.ael = icmp sgt i32 %.pre757, 1
  br i1 %i.ael, label %bb.dx, label %bb.en

bb.dx:                                            ; preds = %bb.dw
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.aen = load ptr, ptr %i.aem, align 16, !tbaa !71
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.aep = load i64, ptr %i.aeo, align 16, !tbaa !72
  %.neg329 = mul i64 %i.aep, -16
  %i.aeq = getelementptr inbounds i8, ptr %i.aen, i64 %.neg329
  %i.aer = getelementptr inbounds i8, ptr %i.aeq, i64 -32
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.aet = load ptr, ptr %i.aes, align 16, !tbaa !87
  %i.aeu = load i32, ptr %i.e, align 4, !tbaa !38 ; 2 uses
  %i.aev = sub nsw i32 %.pre757, %i.aeu
  %i.aew = sext i32 %i.aev to i64
  %i.aex = getelementptr [4 x i8], ptr %i.aet, i64 %i.aew
  %i.aey = getelementptr i8, ptr %i.aex, i64 -8   ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.afa = load ptr, ptr %i.aez, align 16, !tbaa !57
  %i.afb = sub nsw i32 %i.h, %i.aeu
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr i8, ptr %i.afa, i64 %i.afc
  %i.afe = getelementptr i8, ptr %i.afd, i64 -2
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !55
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %.not97.i467 = icmp eq i8 %i.aff, 0
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 8 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %vc1_p_h_intfr_loop_filter.exit478
  %indvars.iv667 = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next668, %vc1_p_h_intfr_loop_filter.exit478 ] ; 7 uses
  %i.afk = icmp samesign ugt i64 %indvars.iv667, 3
  br i1 %i.afk, label %bb.ek, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.afl = load i8, ptr %i.afg, align 8, !tbaa !51
  %i.afm = zext i8 %i.afl to i32                  ; 8 uses
  %i.afn = load i64, ptr %i.aeo, align 16, !tbaa !89 ; 5 uses
  %i.afo = trunc i64 %i.afn to i32                ; 6 uses
  %indvars.iv667.tr = trunc nuw nsw i64 %indvars.iv667 to i32
  %i.afp = shl nuw nsw i32 %indvars.iv667.tr, 2   ; 2 uses
  %i.afq = and i32 %i.afp, 8
  %i.afr = zext nneg i32 %i.afq to i64
  %i.afs = mul nsw i64 %i.afn, %i.afr
  %i.aft = getelementptr inbounds i8, ptr %i.aer, i64 %i.afs
  %i.afu = shl nuw nsw i64 %indvars.iv667, 3
  %i.afv = and i64 %i.afu, 8
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afv ; 8 uses
  %i.afx = load i32, ptr %i.aey, align 4, !tbaa !68
  %i.afy = ashr i32 %i.afx, %i.afp
  %i.afz = and i32 %i.afy, 14                     ; 2 uses
  br i1 %.not97.i467, label %bb.eh, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aga = icmp samesign ult i64 %indvars.iv667, 2
  %or.cond.i472 = icmp eq i32 %i.afz, 6           ; 2 uses
  %.pre737 = load ptr, ptr %i.afh, align 16, !tbaa !82 ; 4 uses
  br i1 %i.aga, label %bb.eb, label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  br i1 %or.cond.i472, label %bb.ec, label %._crit_edge803

._crit_edge803:                                   ; preds = %bb.eb
  %.pre919 = shl nsw i32 %i.afo, 1
  %.pre921 = sext i32 %.pre919 to i64
  br label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afw, i64 4
  %i.agc = shl nsw i32 %i.afo, 1
  %i.agd = sext i32 %i.agc to i64                 ; 2 uses
  tail call void %.pre737(ptr noundef nonnull %i.agb, i64 noundef %i.agd, i32 noundef %i.afm) #1, !inline_history !116
  %.pre736 = load ptr, ptr %i.afh, align 16, !tbaa !82
  br label %bb.ed

bb.ed:                                            ; preds = %._crit_edge803, %bb.ec
  %.pre-phi922 = phi i64 [ %.pre921, %._crit_edge803 ], [ %i.agd, %bb.ec ]
  %i.age = phi ptr [ %.pre737, %._crit_edge803 ], [ %.pre736, %bb.ec ]
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  tail call void %i.age(ptr noundef nonnull %i.agf, i64 noundef %.pre-phi922, i32 noundef %i.afm) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit478

bb.ee:                                            ; preds = %bb.ea
  %sext102.i471 = mul i64 %i.afn, 30064771072
  %i.agg = ashr exact i64 %sext102.i471, 32
  %i.agh = sub nsw i64 0, %i.agg                  ; 2 uses
  br i1 %or.cond.i472, label %bb.ef, label %._crit_edge802

._crit_edge802:                                   ; preds = %bb.ee
  %.pre928 = shl nsw i32 %i.afo, 1
  %.pre930 = sext i32 %.pre928 to i64
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.agi = getelementptr inbounds i8, ptr %i.afw, i64 %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  %i.agk = shl nsw i32 %i.afo, 1
  %i.agl = sext i32 %i.agk to i64                 ; 2 uses
  tail call void %.pre737(ptr noundef nonnull %i.agj, i64 noundef %i.agl, i32 noundef %i.afm) #1, !inline_history !116
  %.pre734 = load ptr, ptr %i.afh, align 16, !tbaa !82
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge802, %bb.ef
  %.pre-phi931 = phi i64 [ %.pre930, %._crit_edge802 ], [ %i.agl, %bb.ef ]
  %i.agm = phi ptr [ %.pre737, %._crit_edge802 ], [ %.pre734, %bb.ef ]
  %i.agn = getelementptr inbounds i8, ptr %i.afw, i64 %i.agh
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  tail call void %i.agm(ptr noundef nonnull %i.ago, i64 noundef %.pre-phi931, i32 noundef %i.afm) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit478

bb.eh:                                            ; preds = %bb.dz
  %or.cond9.i474 = icmp eq i32 %i.afz, 6
  %.pre739 = load ptr, ptr %i.afi, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond9.i474, label %bb.ei, label %._crit_edge804

._crit_edge804:                                   ; preds = %bb.eh
  %.pre912 = shl nsw i32 %i.afo, 1
  %.pre914 = sext i32 %.pre912 to i64
  %.pre916 = shl i64 %i.afn, 32
  %.pre917 = ashr exact i64 %.pre916, 32
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.agp = getelementptr inbounds nuw i8, ptr %i.afw, i64 4
  %i.agq = shl nsw i32 %i.afo, 1
  %i.agr = sext i32 %i.agq to i64                 ; 3 uses
  tail call void %.pre739(ptr noundef nonnull %i.agp, i64 noundef %i.agr, i32 noundef %i.afm) #1, !inline_history !116
  %i.ags = load ptr, ptr %i.afi, align 16, !tbaa !83
  %sext98.i477 = shl i64 %i.afn, 32
  %i.agt = ashr exact i64 %sext98.i477, 32        ; 2 uses
  %i.agu = getelementptr inbounds i8, ptr %i.afw, i64 %i.agt
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  tail call void %i.ags(ptr noundef nonnull %i.agv, i64 noundef %i.agr, i32 noundef %i.afm) #1, !inline_history !116
  %.pre738 = load ptr, ptr %i.afi, align 16, !tbaa !83
  br label %bb.ej

bb.ej:                                            ; preds = %._crit_edge804, %bb.ei
  %.pre-phi918 = phi i64 [ %.pre917, %._crit_edge804 ], [ %i.agt, %bb.ei ]
  %.pre-phi915 = phi i64 [ %.pre914, %._crit_edge804 ], [ %i.agr, %bb.ei ] ; 2 uses
  %i.agw = phi ptr [ %.pre739, %._crit_edge804 ], [ %.pre738, %bb.ei ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  tail call void %i.agw(ptr noundef nonnull %i.agx, i64 noundef %.pre-phi915, i32 noundef %i.afm) #1, !inline_history !116
  %i.agy = load ptr, ptr %i.afi, align 16, !tbaa !83
  %i.agz = getelementptr inbounds i8, ptr %i.afw, i64 %.pre-phi918
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  tail call void %i.agy(ptr noundef nonnull %i.aha, i64 noundef %.pre-phi915, i32 noundef %i.afm) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit478

bb.ek:                                            ; preds = %bb.dy
  %i.ahb = getelementptr [8 x i8], ptr %i.aem, i64 %indvars.iv667
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 -24
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !71
  %i.ahe = load i64, ptr %i.afj, align 8, !tbaa !76 ; 4 uses
  %.neg336 = mul i64 %i.ahe, -8
  %i.ahf = getelementptr inbounds i8, ptr %i.ahd, i64 %.neg336 ; 3 uses
  %i.ahg = getelementptr inbounds i8, ptr %i.ahf, i64 -16 ; 2 uses
  %i.ahh = load i8, ptr %i.afg, align 8, !tbaa !51
  %i.ahi = zext i8 %i.ahh to i32                  ; 4 uses
  %i.ahj = trunc i64 %i.ahe to i32                ; 2 uses
  %i.ahk = load i32, ptr %i.aey, align 4, !tbaa !68
  %indvars.iv667.tr1076 = trunc nuw nsw i64 %indvars.iv667 to i32
  %i.ahl = shl nuw nsw i32 %indvars.iv667.tr1076, 2
  %i.ahm = ashr i32 %i.ahk, %i.ahl
  %i.ahn = and i32 %i.ahm, 14
  %or.cond11.i464 = icmp eq i32 %i.ahn, 6
  %.pre741 = load ptr, ptr %i.afi, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond11.i464, label %bb.el, label %._crit_edge817

._crit_edge817:                                   ; preds = %bb.ek
  %.pre822 = shl nsw i32 %i.ahj, 1
  %.pre824 = sext i32 %.pre822 to i64
  %.pre826 = shl i64 %i.ahe, 32
  %.pre827 = ashr exact i64 %.pre826, 32
  br label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.aho = getelementptr inbounds i8, ptr %i.ahf, i64 -12
  %i.ahp = shl nsw i32 %i.ahj, 1
  %i.ahq = sext i32 %i.ahp to i64                 ; 3 uses
  tail call void %.pre741(ptr noundef nonnull %i.aho, i64 noundef %i.ahq, i32 noundef %i.ahi) #1, !inline_history !116
  %i.ahr = load ptr, ptr %i.afi, align 16, !tbaa !83
  %sext.i466 = shl i64 %i.ahe, 32
  %i.ahs = ashr exact i64 %sext.i466, 32          ; 2 uses
  %i.aht = getelementptr inbounds i8, ptr %i.ahg, i64 %i.ahs
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 4
  tail call void %i.ahr(ptr noundef nonnull %i.ahu, i64 noundef %i.ahq, i32 noundef %i.ahi) #1, !inline_history !116
  %.pre740 = load ptr, ptr %i.afi, align 16, !tbaa !83
  br label %bb.em

bb.em:                                            ; preds = %._crit_edge817, %bb.el
  %.pre-phi828 = phi i64 [ %.pre827, %._crit_edge817 ], [ %i.ahs, %bb.el ]
  %.pre-phi825 = phi i64 [ %.pre824, %._crit_edge817 ], [ %i.ahq, %bb.el ] ; 2 uses
  %i.ahv = phi ptr [ %.pre741, %._crit_edge817 ], [ %.pre740, %bb.el ]
  %i.ahw = getelementptr inbounds i8, ptr %i.ahf, i64 -8
  tail call void %i.ahv(ptr noundef nonnull %i.ahw, i64 noundef %.pre-phi825, i32 noundef %i.ahi) #1, !inline_history !116
  %i.ahx = load ptr, ptr %i.afi, align 16, !tbaa !83
  %i.ahy = getelementptr inbounds i8, ptr %i.ahg, i64 %.pre-phi828
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  tail call void %i.ahx(ptr noundef nonnull %i.ahz, i64 noundef %.pre-phi825, i32 noundef %i.ahi) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit478

vc1_p_h_intfr_loop_filter.exit478:                ; preds = %bb.ed, %bb.eg, %bb.ej, %bb.em
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond670.not = icmp eq i64 %indvars.iv.next668, 6
  br i1 %exitcond670.not, label %thread-pre-split569, label %bb.dy, !llvm.loop !121

thread-pre-split569:                              ; preds = %vc1_p_h_intfr_loop_filter.exit478
  %.pr570 = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.en

bb.en:                                            ; preds = %thread-pre-split569, %bb.dw
  %i.aia = phi i32 [ %.pr570, %thread-pre-split569 ], [ %.pre757, %bb.dw ] ; 5 uses
  %i.aib = load i32, ptr %i.ea, align 4, !tbaa !65
  %i.aic = add nsw i32 %i.aib, -1
  %i.aid = icmp eq i32 %i.aia, %i.aic
  br i1 %i.aid, label %bb.eo, label %.loopexit599

bb.eo:                                            ; preds = %bb.en
  %i.aie = icmp sgt i32 %i.aia, 0
  %.pre752 = load i32, ptr %i.e, align 4, !tbaa !38 ; 2 uses
  br i1 %i.aie, label %bb.ep, label %bb.ff

bb.ep:                                            ; preds = %bb.eo
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.aig = load ptr, ptr %i.aif, align 16, !tbaa !71
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.aii = load i64, ptr %i.aih, align 16, !tbaa !72
  %.neg330 = mul i64 %i.aii, -16
  %i.aij = getelementptr inbounds i8, ptr %i.aig, i64 %.neg330
  %i.aik = getelementptr inbounds i8, ptr %i.aij, i64 -16
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.aim = load ptr, ptr %i.ail, align 16, !tbaa !87
  %i.ain = xor i32 %.pre752, -1                   ; 2 uses
  %i.aio = add i32 %i.aia, %i.ain
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds [4 x i8], ptr %i.aim, i64 %i.aip ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.ais = load ptr, ptr %i.air, align 16, !tbaa !57
  %i.ait = add i32 %i.h, %i.ain
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds i8, ptr %i.ais, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !55
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %.not97.i450 = icmp eq i8 %i.aiw, 0
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 8 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %vc1_p_h_intfr_loop_filter.exit461
  %indvars.iv671 = phi i64 [ 0, %bb.ep ], [ %indvars.iv.next672, %vc1_p_h_intfr_loop_filter.exit461 ] ; 7 uses
  %i.ajb = icmp samesign ugt i64 %indvars.iv671, 3
  br i1 %i.ajb, label %bb.fc, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ajc = load i8, ptr %i.aix, align 8, !tbaa !51
  %i.ajd = zext i8 %i.ajc to i32                  ; 8 uses
  %i.aje = load i64, ptr %i.aih, align 16, !tbaa !89 ; 5 uses
  %i.ajf = trunc i64 %i.aje to i32                ; 6 uses
  %indvars.iv671.tr = trunc nuw nsw i64 %indvars.iv671 to i32
  %i.ajg = shl nuw nsw i32 %indvars.iv671.tr, 2   ; 2 uses
  %i.ajh = and i32 %i.ajg, 8
  %i.aji = zext nneg i32 %i.ajh to i64
  %i.ajj = mul nsw i64 %i.aje, %i.aji
  %i.ajk = getelementptr inbounds i8, ptr %i.aik, i64 %i.ajj
  %i.ajl = shl nuw nsw i64 %indvars.iv671, 3
  %i.ajm = and i64 %i.ajl, 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %i.ajm ; 8 uses
  %i.ajo = load i32, ptr %i.aiq, align 4, !tbaa !68
  %i.ajp = ashr i32 %i.ajo, %i.ajg
  %i.ajq = and i32 %i.ajp, 14                     ; 2 uses
  br i1 %.not97.i450, label %bb.ez, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ajr = icmp samesign ult i64 %indvars.iv671, 2
  %or.cond.i455 = icmp eq i32 %i.ajq, 6           ; 2 uses
  %.pre745 = load ptr, ptr %i.aiy, align 16, !tbaa !82 ; 4 uses
  br i1 %i.ajr, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  br i1 %or.cond.i455, label %bb.eu, label %._crit_edge806

._crit_edge806:                                   ; preds = %bb.et
  %.pre899 = shl nsw i32 %i.ajf, 1
  %.pre901 = sext i32 %.pre899 to i64
  br label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajn, i64 4
  %i.ajt = shl nsw i32 %i.ajf, 1
  %i.aju = sext i32 %i.ajt to i64                 ; 2 uses
  tail call void %.pre745(ptr noundef nonnull %i.ajs, i64 noundef %i.aju, i32 noundef %i.ajd) #1, !inline_history !116
  %.pre744 = load ptr, ptr %i.aiy, align 16, !tbaa !82
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge806, %bb.eu
  %.pre-phi902 = phi i64 [ %.pre901, %._crit_edge806 ], [ %i.aju, %bb.eu ]
  %i.ajv = phi ptr [ %.pre745, %._crit_edge806 ], [ %.pre744, %bb.eu ]
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  tail call void %i.ajv(ptr noundef nonnull %i.ajw, i64 noundef %.pre-phi902, i32 noundef %i.ajd) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit461

bb.ew:                                            ; preds = %bb.es
  %sext102.i454 = mul i64 %i.aje, 30064771072
  %i.ajx = ashr exact i64 %sext102.i454, 32
  %i.ajy = sub nsw i64 0, %i.ajx                  ; 2 uses
  br i1 %or.cond.i455, label %bb.ex, label %._crit_edge805

._crit_edge805:                                   ; preds = %bb.ew
  %.pre908 = shl nsw i32 %i.ajf, 1
  %.pre910 = sext i32 %.pre908 to i64
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ajz = getelementptr inbounds i8, ptr %i.ajn, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 4
  %i.akb = shl nsw i32 %i.ajf, 1
  %i.akc = sext i32 %i.akb to i64                 ; 2 uses
  tail call void %.pre745(ptr noundef nonnull %i.aka, i64 noundef %i.akc, i32 noundef %i.ajd) #1, !inline_history !116
  %.pre742 = load ptr, ptr %i.aiy, align 16, !tbaa !82
  br label %bb.ey

bb.ey:                                            ; preds = %._crit_edge805, %bb.ex
  %.pre-phi911 = phi i64 [ %.pre910, %._crit_edge805 ], [ %i.akc, %bb.ex ]
  %i.akd = phi ptr [ %.pre745, %._crit_edge805 ], [ %.pre742, %bb.ex ]
  %i.ake = getelementptr inbounds i8, ptr %i.ajn, i64 %i.ajy
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  tail call void %i.akd(ptr noundef nonnull %i.akf, i64 noundef %.pre-phi911, i32 noundef %i.ajd) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit461

bb.ez:                                            ; preds = %bb.er
  %or.cond9.i457 = icmp eq i32 %i.ajq, 6
  %.pre747 = load ptr, ptr %i.aiz, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond9.i457, label %bb.fa, label %._crit_edge807

._crit_edge807:                                   ; preds = %bb.ez
  %.pre892 = shl nsw i32 %i.ajf, 1
  %.pre894 = sext i32 %.pre892 to i64
  %.pre896 = shl i64 %i.aje, 32
  %.pre897 = ashr exact i64 %.pre896, 32
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajn, i64 4
  %i.akh = shl nsw i32 %i.ajf, 1
  %i.aki = sext i32 %i.akh to i64                 ; 3 uses
  tail call void %.pre747(ptr noundef nonnull %i.akg, i64 noundef %i.aki, i32 noundef %i.ajd) #1, !inline_history !116
  %i.akj = load ptr, ptr %i.aiz, align 16, !tbaa !83
  %sext98.i460 = shl i64 %i.aje, 32
  %i.akk = ashr exact i64 %sext98.i460, 32        ; 2 uses
  %i.akl = getelementptr inbounds i8, ptr %i.ajn, i64 %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 4
  tail call void %i.akj(ptr noundef nonnull %i.akm, i64 noundef %i.aki, i32 noundef %i.ajd) #1, !inline_history !116
  %.pre746 = load ptr, ptr %i.aiz, align 16, !tbaa !83
  br label %bb.fb

bb.fb:                                            ; preds = %._crit_edge807, %bb.fa
  %.pre-phi898 = phi i64 [ %.pre897, %._crit_edge807 ], [ %i.akk, %bb.fa ]
  %.pre-phi895 = phi i64 [ %.pre894, %._crit_edge807 ], [ %i.aki, %bb.fa ] ; 2 uses
  %i.akn = phi ptr [ %.pre747, %._crit_edge807 ], [ %.pre746, %bb.fa ]
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  tail call void %i.akn(ptr noundef nonnull %i.ako, i64 noundef %.pre-phi895, i32 noundef %i.ajd) #1, !inline_history !116
  %i.akp = load ptr, ptr %i.aiz, align 16, !tbaa !83
  %i.akq = getelementptr inbounds i8, ptr %i.ajn, i64 %.pre-phi898
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  tail call void %i.akp(ptr noundef nonnull %i.akr, i64 noundef %.pre-phi895, i32 noundef %i.ajd) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit461

bb.fc:                                            ; preds = %bb.eq
  %i.aks = getelementptr [8 x i8], ptr %i.aif, i64 %indvars.iv671
  %i.akt = getelementptr i8, ptr %i.aks, i64 -24
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !71
  %i.akv = load i64, ptr %i.aja, align 8, !tbaa !76 ; 4 uses
  %.neg335 = mul i64 %i.akv, -8
  %i.akw = getelementptr inbounds i8, ptr %i.aku, i64 %.neg335 ; 3 uses
  %i.akx = getelementptr inbounds i8, ptr %i.akw, i64 -8 ; 2 uses
  %i.aky = load i8, ptr %i.aix, align 8, !tbaa !51
  %i.akz = zext i8 %i.aky to i32                  ; 4 uses
  %i.ala = trunc i64 %i.akv to i32                ; 2 uses
  %i.alb = load i32, ptr %i.aiq, align 4, !tbaa !68
  %indvars.iv671.tr1078 = trunc nuw nsw i64 %indvars.iv671 to i32
  %i.alc = shl nuw nsw i32 %indvars.iv671.tr1078, 2
  %i.ald = ashr i32 %i.alb, %i.alc
  %i.ale = and i32 %i.ald, 14
  %or.cond11.i447 = icmp eq i32 %i.ale, 6
  %.pre749 = load ptr, ptr %i.aiz, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond11.i447, label %bb.fd, label %._crit_edge816

._crit_edge816:                                   ; preds = %bb.fc
  %.pre829 = shl nsw i32 %i.ala, 1
  %.pre831 = sext i32 %.pre829 to i64
  %.pre833 = shl i64 %i.akv, 32
  %.pre834 = ashr exact i64 %.pre833, 32
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.alf = getelementptr inbounds i8, ptr %i.akw, i64 -4
  %i.alg = shl nsw i32 %i.ala, 1
  %i.alh = sext i32 %i.alg to i64                 ; 3 uses
  tail call void %.pre749(ptr noundef nonnull %i.alf, i64 noundef %i.alh, i32 noundef %i.akz) #1, !inline_history !116
  %i.ali = load ptr, ptr %i.aiz, align 16, !tbaa !83
  %sext.i449 = shl i64 %i.akv, 32
  %i.alj = ashr exact i64 %sext.i449, 32          ; 2 uses
  %i.alk = getelementptr inbounds i8, ptr %i.akx, i64 %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 4
  tail call void %i.ali(ptr noundef nonnull %i.all, i64 noundef %i.alh, i32 noundef %i.akz) #1, !inline_history !116
  %.pre748 = load ptr, ptr %i.aiz, align 16, !tbaa !83
  br label %bb.fe

bb.fe:                                            ; preds = %._crit_edge816, %bb.fd
  %.pre-phi835 = phi i64 [ %.pre834, %._crit_edge816 ], [ %i.alj, %bb.fd ]
  %.pre-phi832 = phi i64 [ %.pre831, %._crit_edge816 ], [ %i.alh, %bb.fd ] ; 2 uses
  %i.alm = phi ptr [ %.pre749, %._crit_edge816 ], [ %.pre748, %bb.fd ]
  tail call void %i.alm(ptr noundef nonnull %i.akw, i64 noundef %.pre-phi832, i32 noundef %i.akz) #1, !inline_history !116
  %i.aln = load ptr, ptr %i.aiz, align 16, !tbaa !83
  %i.alo = getelementptr inbounds i8, ptr %i.akx, i64 %.pre-phi835
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  tail call void %i.aln(ptr noundef nonnull %i.alp, i64 noundef %.pre-phi832, i32 noundef %i.akz) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit461

vc1_p_h_intfr_loop_filter.exit461:                ; preds = %bb.ev, %bb.ey, %bb.fb, %bb.fe
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond674.not = icmp eq i64 %indvars.iv.next672, 6
  br i1 %exitcond674.not, label %.loopexit600.loopexit, label %bb.eq, !llvm.loop !122

.loopexit600.loopexit:                            ; preds = %vc1_p_h_intfr_loop_filter.exit461
  %.pre750 = load i32, ptr %i.a, align 4, !tbaa !9
  %.pre751 = load i32, ptr %i.e, align 4, !tbaa !38
  br label %bb.ff

bb.ff:                                            ; preds = %bb.eo, %.loopexit600.loopexit
  %i.alq = phi i32 [ %.pre751, %.loopexit600.loopexit ], [ %.pre752, %bb.eo ] ; 2 uses
  %i.alr = phi i32 [ %.pre750, %.loopexit600.loopexit ], [ %i.aia, %bb.eo ]
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.alt = load ptr, ptr %i.als, align 16, !tbaa !71
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.alv = load i64, ptr %i.alu, align 16, !tbaa !72 ; 4 uses
  %.neg331 = mul i64 %i.alv, -16
  %i.alw = getelementptr inbounds i8, ptr %i.alt, i64 %.neg331 ; 10 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.aly = load ptr, ptr %i.alx, align 16, !tbaa !87
  %i.alz = sub nsw i32 %i.alr, %i.alq
  %i.ama = sext i32 %i.alz to i64
  %i.amb = getelementptr inbounds [4 x i8], ptr %i.aly, i64 %i.ama ; 4 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.amd = load ptr, ptr %i.amc, align 16, !tbaa !57
  %i.ame = sub nsw i32 %i.h, %i.alq
  %i.amf = sext i32 %i.ame to i64
  %i.amg = getelementptr inbounds i8, ptr %i.amd, i64 %i.amf
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !55
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 4 uses
  %.not97.i433 = icmp eq i8 %i.amh, 0             ; 3 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 5 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 12 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.amm = load i8, ptr %i.ami, align 8, !tbaa !51
  %i.amn = zext i8 %i.amm to i32                  ; 6 uses
  %i.amo = trunc i64 %i.alv to i32                ; 4 uses
  %i.amp = load i32, ptr %i.amb, align 4, !tbaa !68
  %i.amq = and i32 %i.amp, 14
  %or.cond9.i440.peel = icmp eq i32 %i.amq, 6     ; 2 uses
  br i1 %.not97.i433, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  br i1 %or.cond9.i440.peel, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.amr = load ptr, ptr %i.amj, align 16, !tbaa !82
  %i.ams = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.amt = shl nsw i32 %i.amo, 1
  %i.amu = sext i32 %i.amt to i64
  tail call void %i.amr(ptr noundef nonnull %i.ams, i64 noundef %i.amu, i32 noundef %i.amn) #1, !inline_history !116
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh
  %i.amv = load ptr, ptr %i.amj, align 16, !tbaa !82
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.amx = shl nsw i32 %i.amo, 1
  %i.amy = sext i32 %i.amx to i64
  tail call void %i.amv(ptr noundef nonnull %i.amw, i64 noundef %i.amy, i32 noundef %i.amn) #1, !inline_history !116
  br label %.peel.next680.peel

bb.fj:                                            ; preds = %bb.ff
  br i1 %or.cond9.i440.peel, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.amz = load ptr, ptr %i.amk, align 16, !tbaa !83
  %i.ana = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.anb = shl nsw i32 %i.amo, 1
  %i.anc = sext i32 %i.anb to i64                 ; 2 uses
  tail call void %i.amz(ptr noundef nonnull %i.ana, i64 noundef %i.anc, i32 noundef %i.amn) #1, !inline_history !116
  %i.and = load ptr, ptr %i.amk, align 16, !tbaa !83
  %sext98.i443.peel = shl i64 %i.alv, 32
  %i.ane = ashr exact i64 %sext98.i443.peel, 32
  %i.anf = getelementptr inbounds i8, ptr %i.alw, i64 %i.ane
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 4
  tail call void %i.and(ptr noundef nonnull %i.ang, i64 noundef %i.anc, i32 noundef %i.amn) #1, !inline_history !116
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.anh = load ptr, ptr %i.amk, align 16, !tbaa !83
  %i.ani = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.anj = shl nsw i32 %i.amo, 1
  %i.ank = sext i32 %i.anj to i64                 ; 2 uses
  tail call void %i.anh(ptr noundef nonnull %i.ani, i64 noundef %i.ank, i32 noundef %i.amn) #1, !inline_history !116
  %i.anl = load ptr, ptr %i.amk, align 16, !tbaa !83
  %sext101.i442.peel = shl i64 %i.alv, 32
  %i.anm = ashr exact i64 %sext101.i442.peel, 32
  %i.ann = getelementptr inbounds i8, ptr %i.alw, i64 %i.anm
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  tail call void %i.anl(ptr noundef nonnull %i.ano, i64 noundef %i.ank, i32 noundef %i.amn) #1, !inline_history !116
  br label %.peel.next680.peel

.peel.next680.peel:                               ; preds = %bb.fl, %bb.fi
  %i.anp = load i8, ptr %i.ami, align 8, !tbaa !51
  %i.anq = zext i8 %i.anp to i32                  ; 3 uses
  %i.anr = load i64, ptr %i.alu, align 16, !tbaa !89 ; 2 uses
  %i.ans = trunc i64 %i.anr to i32                ; 2 uses
  %i.ant = load i32, ptr %i.amb, align 4, !tbaa !68
  %i.anu = lshr i32 %i.ant, 4
  %i.anv = and i32 %i.anu, 14                     ; 2 uses
  br i1 %.not97.i433, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %.peel.next680.peel
  %or.cond.i438.peel = icmp eq i32 %i.anv, 6
  br i1 %or.cond.i438.peel, label %bb.fn, label %.peel.next680.preheader.peel.newph

bb.fn:                                            ; preds = %bb.fm
  %i.anw = load ptr, ptr %i.amj, align 16, !tbaa !82
  %i.anx = getelementptr inbounds nuw i8, ptr %i.alw, i64 12
  %i.any = shl nsw i32 %i.ans, 1
  %i.anz = sext i32 %i.any to i64
  tail call void %i.anw(ptr noundef nonnull %i.anx, i64 noundef %i.anz, i32 noundef %i.anq) #1, !inline_history !116
  br label %.peel.next680.preheader.peel.newph

bb.fo:                                            ; preds = %.peel.next680.peel
  %or.cond9.i440.peel1092 = icmp eq i32 %i.anv, 6
  br i1 %or.cond9.i440.peel1092, label %bb.fp, label %.peel.next680.preheader.peel.newph

bb.fp:                                            ; preds = %bb.fo
  %i.aoa = load ptr, ptr %i.amk, align 16, !tbaa !83
  %i.aob = getelementptr inbounds nuw i8, ptr %i.alw, i64 12
  %i.aoc = shl nsw i32 %i.ans, 1
  %i.aod = sext i32 %i.aoc to i64                 ; 2 uses
  tail call void %i.aoa(ptr noundef nonnull %i.aob, i64 noundef %i.aod, i32 noundef %i.anq) #1, !inline_history !116
  %i.aoe = load ptr, ptr %i.amk, align 16, !tbaa !83
  %sext98.i443.peel1093 = shl i64 %i.anr, 32
  %i.aof = ashr exact i64 %sext98.i443.peel1093, 32
  %i.aog = getelementptr i8, ptr %i.alw, i64 %i.aof
  %i.aoh = getelementptr i8, ptr %i.aog, i64 12
  tail call void %i.aoe(ptr noundef nonnull %i.aoh, i64 noundef %i.aod, i32 noundef %i.anq) #1, !inline_history !116
  br label %.peel.next680.preheader.peel.newph

.peel.next680.preheader.peel.newph:               ; preds = %bb.fm, %bb.fn, %bb.fp, %bb.fo
  br label %.peel.next680

.peel.next680:                                    ; preds = %.peel.next680.preheader.peel.newph, %vc1_p_h_intfr_loop_filter.exit444
  %indvars.iv675 = phi i64 [ %indvars.iv.next676, %vc1_p_h_intfr_loop_filter.exit444 ], [ 2, %.peel.next680.preheader.peel.newph ] ; 8 uses
  %i.aoi = icmp samesign ugt i64 %indvars.iv675, 3
  br i1 %i.aoi, label %bb.fz, label %bb.fq

bb.fq:                                            ; preds = %.peel.next680
  %i.aoj = load i8, ptr %i.ami, align 8, !tbaa !51
  %i.aok = zext i8 %i.aoj to i32                  ; 6 uses
  %i.aol = load i64, ptr %i.alu, align 16, !tbaa !89 ; 6 uses
  %i.aom = trunc i64 %i.aol to i32                ; 4 uses
  %indvars.iv675.tr = trunc nuw nsw i64 %indvars.iv675 to i32
  %i.aon = shl nuw nsw i32 %indvars.iv675.tr, 2   ; 2 uses
  %i.aoo = and i32 %i.aon, 8
  %i.aop = zext nneg i32 %i.aoo to i64
  %i.aoq = mul nsw i64 %i.aol, %i.aop
  %i.aor = getelementptr inbounds i8, ptr %i.alw, i64 %i.aoq
  %i.aos = shl nuw nsw i64 %indvars.iv675, 3
  %i.aot = and i64 %i.aos, 8
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aot ; 6 uses
  %i.aov = load i32, ptr %i.amb, align 4, !tbaa !68
  %i.aow = ashr i32 %i.aov, %i.aon
  %i.aox = and i32 %i.aow, 14                     ; 2 uses
  br i1 %.not97.i433, label %bb.fv, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %or.cond.i438 = icmp eq i32 %i.aox, 6
  br i1 %or.cond.i438, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aoy = load ptr, ptr %i.amj, align 16, !tbaa !82
  %sext102.i437 = mul i64 %i.aol, 30064771072
  %i.aoz = ashr exact i64 %sext102.i437, 32
  %i.apa = sub nsw i64 0, %i.aoz
  %i.apb = getelementptr inbounds i8, ptr %i.aou, i64 %i.apa
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 4
  %i.apd = shl nsw i32 %i.aom, 1
  %i.ape = sext i32 %i.apd to i64
  tail call void %i.aoy(ptr noundef nonnull %i.apc, i64 noundef %i.ape, i32 noundef %i.aok) #1, !inline_history !116
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.apf = icmp eq i64 %indvars.iv675, 2
  br i1 %i.apf, label %bb.fu, label %vc1_p_h_intfr_loop_filter.exit444

bb.fu:                                            ; preds = %bb.ft
  %i.apg = load ptr, ptr %i.amj, align 16, !tbaa !82
  %sext103.i436 = mul i64 %i.aol, 30064771072
  %i.aph = ashr exact i64 %sext103.i436, 32
  %i.api = sub nsw i64 0, %i.aph
  %i.apj = getelementptr inbounds i8, ptr %i.aou, i64 %i.api
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 8
  %i.apl = shl nsw i32 %i.aom, 1
  %i.apm = sext i32 %i.apl to i64
  tail call void %i.apg(ptr noundef nonnull %i.apk, i64 noundef %i.apm, i32 noundef %i.aok) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit444

bb.fv:                                            ; preds = %bb.fq
  %or.cond9.i440 = icmp eq i32 %i.aox, 6
  br i1 %or.cond9.i440, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.apn = load ptr, ptr %i.amk, align 16, !tbaa !83
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aou, i64 4
  %i.app = shl nsw i32 %i.aom, 1
  %i.apq = sext i32 %i.app to i64                 ; 2 uses
  tail call void %i.apn(ptr noundef nonnull %i.apo, i64 noundef %i.apq, i32 noundef %i.aok) #1, !inline_history !116
  %i.apr = load ptr, ptr %i.amk, align 16, !tbaa !83
  %sext98.i443 = shl i64 %i.aol, 32
  %i.aps = ashr exact i64 %sext98.i443, 32
  %i.apt = getelementptr inbounds i8, ptr %i.aou, i64 %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 4
  tail call void %i.apr(ptr noundef nonnull %i.apu, i64 noundef %i.apq, i32 noundef %i.aok) #1, !inline_history !116
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.apv = and i64 %indvars.iv675, 1
  %.not100.i441 = icmp eq i64 %i.apv, 0
  br i1 %.not100.i441, label %bb.fy, label %vc1_p_h_intfr_loop_filter.exit444

bb.fy:                                            ; preds = %bb.fx
  %i.apw = load ptr, ptr %i.amk, align 16, !tbaa !83
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  %i.apy = shl nsw i32 %i.aom, 1
  %i.apz = sext i32 %i.apy to i64                 ; 2 uses
  tail call void %i.apw(ptr noundef nonnull %i.apx, i64 noundef %i.apz, i32 noundef %i.aok) #1, !inline_history !116
  %i.aqa = load ptr, ptr %i.amk, align 16, !tbaa !83
  %sext101.i442 = shl i64 %i.aol, 32
  %i.aqb = ashr exact i64 %sext101.i442, 32
  %i.aqc = getelementptr inbounds i8, ptr %i.aou, i64 %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  tail call void %i.aqa(ptr noundef nonnull %i.aqd, i64 noundef %i.apz, i32 noundef %i.aok) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit444

bb.fz:                                            ; preds = %.peel.next680
  %i.aqe = load i32, ptr %i.amb, align 4, !tbaa !68
  %indvars.iv675.tr1080 = trunc nuw nsw i64 %indvars.iv675 to i32
  %i.aqf = shl nuw nsw i32 %indvars.iv675.tr1080, 2
  %i.aqg = ashr i32 %i.aqe, %i.aqf
  %i.aqh = and i32 %i.aqg, 14
  %or.cond11.i430 = icmp eq i32 %i.aqh, 6
  br i1 %or.cond11.i430, label %bb.ga, label %vc1_p_h_intfr_loop_filter.exit444

bb.ga:                                            ; preds = %bb.fz
  %i.aqi = load i64, ptr %i.aml, align 8, !tbaa !89 ; 3 uses
  %i.aqj = trunc i64 %i.aqi to i32
  %i.aqk = load i8, ptr %i.ami, align 8, !tbaa !51
  %i.aql = zext i8 %i.aqk to i32                  ; 2 uses
  %i.aqm = getelementptr [8 x i8], ptr %i.als, i64 %indvars.iv675
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 -24
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !71
  %.neg334 = mul i64 %i.aqi, -8
  %i.aqp = getelementptr inbounds i8, ptr %i.aqo, i64 %.neg334 ; 2 uses
  %i.aqq = load ptr, ptr %i.amk, align 16, !tbaa !83
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4
  %i.aqs = shl nsw i32 %i.aqj, 1
  %i.aqt = sext i32 %i.aqs to i64                 ; 2 uses
  tail call void %i.aqq(ptr noundef nonnull %i.aqr, i64 noundef %i.aqt, i32 noundef %i.aql) #1, !inline_history !116
  %i.aqu = load ptr, ptr %i.amk, align 16, !tbaa !83
  %sext.i432 = shl i64 %i.aqi, 32
  %i.aqv = ashr exact i64 %sext.i432, 32
  %i.aqw = getelementptr inbounds i8, ptr %i.aqp, i64 %i.aqv
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 4
  tail call void %i.aqu(ptr noundef nonnull %i.aqx, i64 noundef %i.aqt, i32 noundef %i.aql) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit444

vc1_p_h_intfr_loop_filter.exit444:                ; preds = %bb.fz, %bb.ga, %bb.ft, %bb.fu, %bb.fx, %bb.fy
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next676, 6
  br i1 %exitcond678.not, label %.loopexit599.loopexit, label %.peel.next680, !llvm.loop !123

.loopexit599.loopexit:                            ; preds = %vc1_p_h_intfr_loop_filter.exit444
  %.pre756 = load i32, ptr %i.a, align 4, !tbaa !9
  br label %.loopexit599

.loopexit599:                                     ; preds = %.loopexit599.loopexit, %bb.en, %bb.dv
  %i.aqy = phi i32 [ %.pre756, %.loopexit599.loopexit ], [ %i.aia, %bb.en ], [ %.pre757, %bb.dv ] ; 3 uses
  %i.aqz = icmp sgt i32 %i.aqy, 1
  br i1 %i.aqz, label %bb.gb, label %bb.gr

bb.gb:                                            ; preds = %.loopexit599
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.arb = load ptr, ptr %i.ara, align 16, !tbaa !71
  %i.arc = getelementptr inbounds i8, ptr %i.arb, i64 -32
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.are = load ptr, ptr %i.ard, align 16, !tbaa !87
  %i.arf = zext nneg i32 %i.aqy to i64
  %i.arg = getelementptr [4 x i8], ptr %i.are, i64 %i.arf
  %i.arh = getelementptr i8, ptr %i.arg, i64 -8   ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.arj = load ptr, ptr %i.ari, align 16, !tbaa !57
  %i.ark = sext i32 %i.h to i64
  %i.arl = getelementptr i8, ptr %i.arj, i64 %i.ark
  %i.arm = getelementptr i8, ptr %i.arl, i64 -2
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !55
  %i.aro = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.not97.i416 = icmp eq i8 %i.arn, 0
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 3 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 8 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %vc1_p_h_intfr_loop_filter.exit427
  %indvars.iv682 = phi i64 [ 0, %bb.gb ], [ %indvars.iv.next683, %vc1_p_h_intfr_loop_filter.exit427 ] ; 7 uses
  %i.art = icmp samesign ugt i64 %indvars.iv682, 3
  br i1 %i.art, label %bb.go, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aru = load i8, ptr %i.aro, align 8, !tbaa !51
  %i.arv = zext i8 %i.aru to i32                  ; 8 uses
  %i.arw = load i64, ptr %i.arp, align 16, !tbaa !89 ; 5 uses
  %i.arx = trunc i64 %i.arw to i32                ; 6 uses
  %indvars.iv682.tr = trunc nuw nsw i64 %indvars.iv682 to i32
  %i.ary = shl nuw nsw i32 %indvars.iv682.tr, 2   ; 2 uses
  %i.arz = and i32 %i.ary, 8
  %i.asa = zext nneg i32 %i.arz to i64
  %i.asb = mul nsw i64 %i.arw, %i.asa
  %i.asc = getelementptr inbounds i8, ptr %i.arc, i64 %i.asb
  %i.asd = shl nuw nsw i64 %indvars.iv682, 3
  %i.ase = and i64 %i.asd, 8
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asc, i64 %i.ase ; 8 uses
  %i.asg = load i32, ptr %i.arh, align 4, !tbaa !68
  %i.ash = ashr i32 %i.asg, %i.ary
  %i.asi = and i32 %i.ash, 14                     ; 2 uses
  br i1 %.not97.i416, label %bb.gl, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.asj = icmp samesign ult i64 %indvars.iv682, 2
  %or.cond.i421 = icmp eq i32 %i.asi, 6           ; 2 uses
  %.pre761 = load ptr, ptr %i.arq, align 16, !tbaa !82 ; 4 uses
  br i1 %i.asj, label %bb.gf, label %bb.gi

bb.gf:                                            ; preds = %bb.ge
  br i1 %or.cond.i421, label %bb.gg, label %._crit_edge809

._crit_edge809:                                   ; preds = %bb.gf
  %.pre879 = shl nsw i32 %i.arx, 1
  %.pre881 = sext i32 %.pre879 to i64
  br label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asf, i64 4
  %i.asl = shl nsw i32 %i.arx, 1
  %i.asm = sext i32 %i.asl to i64                 ; 2 uses
  tail call void %.pre761(ptr noundef nonnull %i.ask, i64 noundef %i.asm, i32 noundef %i.arv) #1, !inline_history !116
  %.pre760 = load ptr, ptr %i.arq, align 16, !tbaa !82
  br label %bb.gh

bb.gh:                                            ; preds = %._crit_edge809, %bb.gg
  %.pre-phi882 = phi i64 [ %.pre881, %._crit_edge809 ], [ %i.asm, %bb.gg ]
  %i.asn = phi ptr [ %.pre761, %._crit_edge809 ], [ %.pre760, %bb.gg ]
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asf, i64 8
  tail call void %i.asn(ptr noundef nonnull %i.aso, i64 noundef %.pre-phi882, i32 noundef %i.arv) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit427

bb.gi:                                            ; preds = %bb.ge
  %sext102.i420 = mul i64 %i.arw, 30064771072
  %i.asp = ashr exact i64 %sext102.i420, 32
  %i.asq = sub nsw i64 0, %i.asp                  ; 2 uses
  br i1 %or.cond.i421, label %bb.gj, label %._crit_edge808

._crit_edge808:                                   ; preds = %bb.gi
  %.pre888 = shl nsw i32 %i.arx, 1
  %.pre890 = sext i32 %.pre888 to i64
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.asr = getelementptr inbounds i8, ptr %i.asf, i64 %i.asq
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 4
  %i.ast = shl nsw i32 %i.arx, 1
  %i.asu = sext i32 %i.ast to i64                 ; 2 uses
  tail call void %.pre761(ptr noundef nonnull %i.ass, i64 noundef %i.asu, i32 noundef %i.arv) #1, !inline_history !116
  %.pre758 = load ptr, ptr %i.arq, align 16, !tbaa !82
  br label %bb.gk

bb.gk:                                            ; preds = %._crit_edge808, %bb.gj
  %.pre-phi891 = phi i64 [ %.pre890, %._crit_edge808 ], [ %i.asu, %bb.gj ]
  %i.asv = phi ptr [ %.pre761, %._crit_edge808 ], [ %.pre758, %bb.gj ]
  %i.asw = getelementptr inbounds i8, ptr %i.asf, i64 %i.asq
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  tail call void %i.asv(ptr noundef nonnull %i.asx, i64 noundef %.pre-phi891, i32 noundef %i.arv) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit427

bb.gl:                                            ; preds = %bb.gd
  %or.cond9.i423 = icmp eq i32 %i.asi, 6
  %.pre763 = load ptr, ptr %i.arr, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond9.i423, label %bb.gm, label %._crit_edge810

._crit_edge810:                                   ; preds = %bb.gl
  %.pre872 = shl nsw i32 %i.arx, 1
  %.pre874 = sext i32 %.pre872 to i64
  %.pre876 = shl i64 %i.arw, 32
  %.pre877 = ashr exact i64 %.pre876, 32
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asf, i64 4
  %i.asz = shl nsw i32 %i.arx, 1
  %i.ata = sext i32 %i.asz to i64                 ; 3 uses
  tail call void %.pre763(ptr noundef nonnull %i.asy, i64 noundef %i.ata, i32 noundef %i.arv) #1, !inline_history !116
  %i.atb = load ptr, ptr %i.arr, align 16, !tbaa !83
  %sext98.i426 = shl i64 %i.arw, 32
  %i.atc = ashr exact i64 %sext98.i426, 32        ; 2 uses
  %i.atd = getelementptr inbounds i8, ptr %i.asf, i64 %i.atc
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 4
  tail call void %i.atb(ptr noundef nonnull %i.ate, i64 noundef %i.ata, i32 noundef %i.arv) #1, !inline_history !116
  %.pre762 = load ptr, ptr %i.arr, align 16, !tbaa !83
  br label %bb.gn

bb.gn:                                            ; preds = %._crit_edge810, %bb.gm
  %.pre-phi878 = phi i64 [ %.pre877, %._crit_edge810 ], [ %i.atc, %bb.gm ]
  %.pre-phi875 = phi i64 [ %.pre874, %._crit_edge810 ], [ %i.ata, %bb.gm ] ; 2 uses
  %i.atf = phi ptr [ %.pre763, %._crit_edge810 ], [ %.pre762, %bb.gm ]
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asf, i64 8
  tail call void %i.atf(ptr noundef nonnull %i.atg, i64 noundef %.pre-phi875, i32 noundef %i.arv) #1, !inline_history !116
  %i.ath = load ptr, ptr %i.arr, align 16, !tbaa !83
  %i.ati = getelementptr inbounds i8, ptr %i.asf, i64 %.pre-phi878
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  tail call void %i.ath(ptr noundef nonnull %i.atj, i64 noundef %.pre-phi875, i32 noundef %i.arv) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit427

bb.go:                                            ; preds = %bb.gc
  %i.atk = getelementptr [8 x i8], ptr %i.ara, i64 %indvars.iv682
  %i.atl = getelementptr i8, ptr %i.atk, i64 -24
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !71 ; 3 uses
  %i.atn = getelementptr inbounds i8, ptr %i.atm, i64 -16 ; 2 uses
  %i.ato = load i8, ptr %i.aro, align 8, !tbaa !51
  %i.atp = zext i8 %i.ato to i32                  ; 4 uses
  %i.atq = load i64, ptr %i.ars, align 8, !tbaa !89 ; 3 uses
  %i.atr = trunc i64 %i.atq to i32                ; 2 uses
  %i.ats = load i32, ptr %i.arh, align 4, !tbaa !68
  %indvars.iv682.tr1082 = trunc nuw nsw i64 %indvars.iv682 to i32
  %i.att = shl nuw nsw i32 %indvars.iv682.tr1082, 2
  %i.atu = ashr i32 %i.ats, %i.att
  %i.atv = and i32 %i.atu, 14
  %or.cond11.i413 = icmp eq i32 %i.atv, 6
  %.pre765 = load ptr, ptr %i.arr, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond11.i413, label %bb.gp, label %._crit_edge815

._crit_edge815:                                   ; preds = %bb.go
  %.pre836 = shl nsw i32 %i.atr, 1
  %.pre838 = sext i32 %.pre836 to i64
  %.pre840 = shl i64 %i.atq, 32
  %.pre841 = ashr exact i64 %.pre840, 32
  br label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.atw = getelementptr inbounds i8, ptr %i.atm, i64 -12
  %i.atx = shl nsw i32 %i.atr, 1
  %i.aty = sext i32 %i.atx to i64                 ; 3 uses
  tail call void %.pre765(ptr noundef nonnull %i.atw, i64 noundef %i.aty, i32 noundef %i.atp) #1, !inline_history !116
  %i.atz = load ptr, ptr %i.arr, align 16, !tbaa !83
  %sext.i415 = shl i64 %i.atq, 32
  %i.aua = ashr exact i64 %sext.i415, 32          ; 2 uses
  %i.aub = getelementptr inbounds i8, ptr %i.atn, i64 %i.aua
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 4
  tail call void %i.atz(ptr noundef nonnull %i.auc, i64 noundef %i.aty, i32 noundef %i.atp) #1, !inline_history !116
  %.pre764 = load ptr, ptr %i.arr, align 16, !tbaa !83
  br label %bb.gq

bb.gq:                                            ; preds = %._crit_edge815, %bb.gp
  %.pre-phi842 = phi i64 [ %.pre841, %._crit_edge815 ], [ %i.aua, %bb.gp ]
  %.pre-phi839 = phi i64 [ %.pre838, %._crit_edge815 ], [ %i.aty, %bb.gp ] ; 2 uses
  %i.aud = phi ptr [ %.pre765, %._crit_edge815 ], [ %.pre764, %bb.gp ]
  %i.aue = getelementptr inbounds i8, ptr %i.atm, i64 -8
  tail call void %i.aud(ptr noundef nonnull %i.aue, i64 noundef %.pre-phi839, i32 noundef %i.atp) #1, !inline_history !116
  %i.auf = load ptr, ptr %i.arr, align 16, !tbaa !83
  %i.aug = getelementptr inbounds i8, ptr %i.atn, i64 %.pre-phi842
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 8
  tail call void %i.auf(ptr noundef nonnull %i.auh, i64 noundef %.pre-phi839, i32 noundef %i.atp) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit427

vc1_p_h_intfr_loop_filter.exit427:                ; preds = %bb.gh, %bb.gk, %bb.gn, %bb.gq
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next683, 6
  br i1 %exitcond685.not, label %thread-pre-split586, label %bb.gc, !llvm.loop !124

thread-pre-split586:                              ; preds = %vc1_p_h_intfr_loop_filter.exit427
  %.pr587 = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.gr

bb.gr:                                            ; preds = %thread-pre-split586, %.loopexit599
  %i.aui = phi i32 [ %.pr587, %thread-pre-split586 ], [ %i.aqy, %.loopexit599 ] ; 4 uses
  %i.auj = load i32, ptr %i.ea, align 4, !tbaa !65
  %i.auk = add nsw i32 %i.auj, -1
  %i.aul = icmp eq i32 %i.aui, %i.auk
  br i1 %i.aul, label %bb.gs, label %.loopexit

bb.gs:                                            ; preds = %bb.gr
  %i.aum = icmp sgt i32 %i.aui, 0
  br i1 %i.aum, label %bb.gt, label %..loopexit598_crit_edge

..loopexit598_crit_edge:                          ; preds = %bb.gs
  %.pre850 = sext i32 %i.h to i64
  br label %bb.hj

bb.gt:                                            ; preds = %bb.gs
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.auo = load ptr, ptr %i.aun, align 16, !tbaa !71
  %i.aup = getelementptr inbounds i8, ptr %i.auo, i64 -16
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.aur = load ptr, ptr %i.auq, align 16, !tbaa !87
  %i.aus = zext nneg i32 %i.aui to i64
  %i.aut = getelementptr [4 x i8], ptr %i.aur, i64 %i.aus
  %i.auu = getelementptr i8, ptr %i.aut, i64 -4   ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.auw = load ptr, ptr %i.auv, align 16, !tbaa !57
  %i.aux = sext i32 %i.h to i64                   ; 2 uses
  %i.auy = getelementptr i8, ptr %i.auw, i64 %i.aux
  %i.auz = getelementptr i8, ptr %i.auy, i64 -1
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !55
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.not97.i399 = icmp eq i8 %i.ava, 0
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 3 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 8 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %vc1_p_h_intfr_loop_filter.exit410
  %indvars.iv686 = phi i64 [ 0, %bb.gt ], [ %indvars.iv.next687, %vc1_p_h_intfr_loop_filter.exit410 ] ; 7 uses
  %i.avg = icmp samesign ugt i64 %indvars.iv686, 3
  br i1 %i.avg, label %bb.hg, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.avh = load i8, ptr %i.avb, align 8, !tbaa !51
  %i.avi = zext i8 %i.avh to i32                  ; 8 uses
  %i.avj = load i64, ptr %i.avc, align 16, !tbaa !89 ; 5 uses
  %i.avk = trunc i64 %i.avj to i32                ; 6 uses
  %indvars.iv686.tr = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.avl = shl nuw nsw i32 %indvars.iv686.tr, 2   ; 2 uses
  %i.avm = and i32 %i.avl, 8
  %i.avn = zext nneg i32 %i.avm to i64
  %i.avo = mul nsw i64 %i.avj, %i.avn
  %i.avp = getelementptr inbounds i8, ptr %i.aup, i64 %i.avo
  %i.avq = shl nuw nsw i64 %indvars.iv686, 3
  %i.avr = and i64 %i.avq, 8
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avp, i64 %i.avr ; 8 uses
  %i.avt = load i32, ptr %i.auu, align 4, !tbaa !68
  %i.avu = ashr i32 %i.avt, %i.avl
  %i.avv = and i32 %i.avu, 14                     ; 2 uses
  br i1 %.not97.i399, label %bb.hd, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.avw = icmp samesign ult i64 %indvars.iv686, 2
  %or.cond.i404 = icmp eq i32 %i.avv, 6           ; 2 uses
  %.pre769 = load ptr, ptr %i.avd, align 16, !tbaa !82 ; 4 uses
  br i1 %i.avw, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  br i1 %or.cond.i404, label %bb.gy, label %._crit_edge812

._crit_edge812:                                   ; preds = %bb.gx
  %.pre859 = shl nsw i32 %i.avk, 1
  %.pre861 = sext i32 %.pre859 to i64
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avs, i64 4
  %i.avy = shl nsw i32 %i.avk, 1
  %i.avz = sext i32 %i.avy to i64                 ; 2 uses
  tail call void %.pre769(ptr noundef nonnull %i.avx, i64 noundef %i.avz, i32 noundef %i.avi) #1, !inline_history !116
  %.pre768 = load ptr, ptr %i.avd, align 16, !tbaa !82
  br label %bb.gz

bb.gz:                                            ; preds = %._crit_edge812, %bb.gy
  %.pre-phi862 = phi i64 [ %.pre861, %._crit_edge812 ], [ %i.avz, %bb.gy ]
  %i.awa = phi ptr [ %.pre769, %._crit_edge812 ], [ %.pre768, %bb.gy ]
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avs, i64 8
  tail call void %i.awa(ptr noundef nonnull %i.awb, i64 noundef %.pre-phi862, i32 noundef %i.avi) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit410

bb.ha:                                            ; preds = %bb.gw
  %sext102.i403 = mul i64 %i.avj, 30064771072
  %i.awc = ashr exact i64 %sext102.i403, 32
  %i.awd = sub nsw i64 0, %i.awc                  ; 2 uses
  br i1 %or.cond.i404, label %bb.hb, label %._crit_edge811

._crit_edge811:                                   ; preds = %bb.ha
  %.pre868 = shl nsw i32 %i.avk, 1
  %.pre870 = sext i32 %.pre868 to i64
  br label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.awe = getelementptr inbounds i8, ptr %i.avs, i64 %i.awd
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 4
  %i.awg = shl nsw i32 %i.avk, 1
  %i.awh = sext i32 %i.awg to i64                 ; 2 uses
  tail call void %.pre769(ptr noundef nonnull %i.awf, i64 noundef %i.awh, i32 noundef %i.avi) #1, !inline_history !116
  %.pre766 = load ptr, ptr %i.avd, align 16, !tbaa !82
  br label %bb.hc

bb.hc:                                            ; preds = %._crit_edge811, %bb.hb
  %.pre-phi871 = phi i64 [ %.pre870, %._crit_edge811 ], [ %i.awh, %bb.hb ]
  %i.awi = phi ptr [ %.pre769, %._crit_edge811 ], [ %.pre766, %bb.hb ]
  %i.awj = getelementptr inbounds i8, ptr %i.avs, i64 %i.awd
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 8
  tail call void %i.awi(ptr noundef nonnull %i.awk, i64 noundef %.pre-phi871, i32 noundef %i.avi) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit410

bb.hd:                                            ; preds = %bb.gv
  %or.cond9.i406 = icmp eq i32 %i.avv, 6
  %.pre771 = load ptr, ptr %i.ave, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond9.i406, label %bb.he, label %._crit_edge813

._crit_edge813:                                   ; preds = %bb.hd
  %.pre852 = shl nsw i32 %i.avk, 1
  %.pre854 = sext i32 %.pre852 to i64
  %.pre856 = shl i64 %i.avj, 32
  %.pre857 = ashr exact i64 %.pre856, 32
  br label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avs, i64 4
  %i.awm = shl nsw i32 %i.avk, 1
  %i.awn = sext i32 %i.awm to i64                 ; 3 uses
  tail call void %.pre771(ptr noundef nonnull %i.awl, i64 noundef %i.awn, i32 noundef %i.avi) #1, !inline_history !116
  %i.awo = load ptr, ptr %i.ave, align 16, !tbaa !83
  %sext98.i409 = shl i64 %i.avj, 32
  %i.awp = ashr exact i64 %sext98.i409, 32        ; 2 uses
  %i.awq = getelementptr inbounds i8, ptr %i.avs, i64 %i.awp
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 4
  tail call void %i.awo(ptr noundef nonnull %i.awr, i64 noundef %i.awn, i32 noundef %i.avi) #1, !inline_history !116
  %.pre770 = load ptr, ptr %i.ave, align 16, !tbaa !83
  br label %bb.hf

bb.hf:                                            ; preds = %._crit_edge813, %bb.he
  %.pre-phi858 = phi i64 [ %.pre857, %._crit_edge813 ], [ %i.awp, %bb.he ]
  %.pre-phi855 = phi i64 [ %.pre854, %._crit_edge813 ], [ %i.awn, %bb.he ] ; 2 uses
  %i.aws = phi ptr [ %.pre771, %._crit_edge813 ], [ %.pre770, %bb.he ]
  %i.awt = getelementptr inbounds nuw i8, ptr %i.avs, i64 8
  tail call void %i.aws(ptr noundef nonnull %i.awt, i64 noundef %.pre-phi855, i32 noundef %i.avi) #1, !inline_history !116
  %i.awu = load ptr, ptr %i.ave, align 16, !tbaa !83
  %i.awv = getelementptr inbounds i8, ptr %i.avs, i64 %.pre-phi858
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 8
  tail call void %i.awu(ptr noundef nonnull %i.aww, i64 noundef %.pre-phi855, i32 noundef %i.avi) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit410

bb.hg:                                            ; preds = %bb.gu
  %i.awx = getelementptr [8 x i8], ptr %i.aun, i64 %indvars.iv686
  %i.awy = getelementptr i8, ptr %i.awx, i64 -24
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !71 ; 3 uses
  %i.axa = getelementptr inbounds i8, ptr %i.awz, i64 -8 ; 2 uses
  %i.axb = load i8, ptr %i.avb, align 8, !tbaa !51
  %i.axc = zext i8 %i.axb to i32                  ; 4 uses
  %i.axd = load i64, ptr %i.avf, align 8, !tbaa !89 ; 3 uses
  %i.axe = trunc i64 %i.axd to i32                ; 2 uses
  %i.axf = load i32, ptr %i.auu, align 4, !tbaa !68
  %indvars.iv686.tr1084 = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.axg = shl nuw nsw i32 %indvars.iv686.tr1084, 2
  %i.axh = ashr i32 %i.axf, %i.axg
  %i.axi = and i32 %i.axh, 14
  %or.cond11.i397 = icmp eq i32 %i.axi, 6
  %.pre773 = load ptr, ptr %i.ave, align 16, !tbaa !83 ; 2 uses
  br i1 %or.cond11.i397, label %bb.hh, label %._crit_edge814

._crit_edge814:                                   ; preds = %bb.hg
  %.pre843 = shl nsw i32 %i.axe, 1
  %.pre845 = sext i32 %.pre843 to i64
  %.pre847 = shl i64 %i.axd, 32
  %.pre848 = ashr exact i64 %.pre847, 32
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.axj = getelementptr inbounds i8, ptr %i.awz, i64 -4
  %i.axk = shl nsw i32 %i.axe, 1
  %i.axl = sext i32 %i.axk to i64                 ; 3 uses
  tail call void %.pre773(ptr noundef nonnull %i.axj, i64 noundef %i.axl, i32 noundef %i.axc) #1, !inline_history !116
  %i.axm = load ptr, ptr %i.ave, align 16, !tbaa !83
  %sext.i398 = shl i64 %i.axd, 32
  %i.axn = ashr exact i64 %sext.i398, 32          ; 2 uses
  %i.axo = getelementptr inbounds i8, ptr %i.axa, i64 %i.axn
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 4
  tail call void %i.axm(ptr noundef nonnull %i.axp, i64 noundef %i.axl, i32 noundef %i.axc) #1, !inline_history !116
  %.pre772 = load ptr, ptr %i.ave, align 16, !tbaa !83
  br label %bb.hi

bb.hi:                                            ; preds = %._crit_edge814, %bb.hh
  %.pre-phi849 = phi i64 [ %.pre848, %._crit_edge814 ], [ %i.axn, %bb.hh ]
  %.pre-phi846 = phi i64 [ %.pre845, %._crit_edge814 ], [ %i.axl, %bb.hh ] ; 2 uses
  %i.axq = phi ptr [ %.pre773, %._crit_edge814 ], [ %.pre772, %bb.hh ]
  tail call void %i.axq(ptr noundef nonnull %i.awz, i64 noundef %.pre-phi846, i32 noundef %i.axc) #1, !inline_history !116
  %i.axr = load ptr, ptr %i.ave, align 16, !tbaa !83
  %i.axs = getelementptr inbounds i8, ptr %i.axa, i64 %.pre-phi849
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  tail call void %i.axr(ptr noundef nonnull %i.axt, i64 noundef %.pre-phi846, i32 noundef %i.axc) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit410

vc1_p_h_intfr_loop_filter.exit410:                ; preds = %bb.gz, %bb.hc, %bb.hf, %bb.hi
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %exitcond689.not = icmp eq i64 %indvars.iv.next687, 6
  br i1 %exitcond689.not, label %.loopexit598.loopexit, label %bb.gu, !llvm.loop !125

.loopexit598.loopexit:                            ; preds = %vc1_p_h_intfr_loop_filter.exit410
  %.pre774 = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.hj

bb.hj:                                            ; preds = %.loopexit598.loopexit, %..loopexit598_crit_edge
  %.pre-phi851 = phi i64 [ %.pre850, %..loopexit598_crit_edge ], [ %i.aux, %.loopexit598.loopexit ]
  %i.axu = phi i32 [ %i.aui, %..loopexit598_crit_edge ], [ %.pre774, %.loopexit598.loopexit ]
  %i.axv = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.axw = load ptr, ptr %i.axv, align 16, !tbaa !71 ; 10 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.axy = load ptr, ptr %i.axx, align 16, !tbaa !87
  %i.axz = sext i32 %i.axu to i64
  %i.aya = getelementptr inbounds [4 x i8], ptr %i.axy, i64 %i.axz ; 4 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.ayc = load ptr, ptr %i.ayb, align 16, !tbaa !57
  %i.ayd = getelementptr inbounds i8, ptr %i.ayc, i64 %.pre-phi851
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !55
  %i.ayf = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 4 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %.not97.i = icmp eq i8 %i.aye, 0                ; 3 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 5 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 12 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ayk = load i8, ptr %i.ayf, align 8, !tbaa !51
  %i.ayl = zext i8 %i.ayk to i32                  ; 6 uses
  %i.aym = load i64, ptr %i.ayg, align 16, !tbaa !89 ; 3 uses
  %i.ayn = trunc i64 %i.aym to i32                ; 4 uses
  %i.ayo = load i32, ptr %i.aya, align 4, !tbaa !68
  %i.ayp = and i32 %i.ayo, 14
  %or.cond9.i394.peel = icmp eq i32 %i.ayp, 6     ; 2 uses
  br i1 %.not97.i, label %bb.hn, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  br i1 %or.cond9.i394.peel, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.ayq = load ptr, ptr %i.ayh, align 16, !tbaa !82
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axw, i64 4
  %i.ays = shl nsw i32 %i.ayn, 1
  %i.ayt = sext i32 %i.ays to i64
  tail call void %i.ayq(ptr noundef nonnull %i.ayr, i64 noundef %i.ayt, i32 noundef %i.ayl) #1, !inline_history !116
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hk, %bb.hl
  %i.ayu = load ptr, ptr %i.ayh, align 16, !tbaa !82
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.axw, i64 8
  %i.ayw = shl nsw i32 %i.ayn, 1
  %i.ayx = sext i32 %i.ayw to i64
  tail call void %i.ayu(ptr noundef nonnull %i.ayv, i64 noundef %i.ayx, i32 noundef %i.ayl) #1, !inline_history !116
  br label %.peel.next695.peel

bb.hn:                                            ; preds = %bb.hj
  br i1 %or.cond9.i394.peel, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.ayy = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.axw, i64 4
  %i.aza = shl nsw i32 %i.ayn, 1
  %i.azb = sext i32 %i.aza to i64                 ; 2 uses
  tail call void %i.ayy(ptr noundef nonnull %i.ayz, i64 noundef %i.azb, i32 noundef %i.ayl) #1, !inline_history !116
  %i.azc = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %sext98.i.peel = shl i64 %i.aym, 32
  %i.azd = ashr exact i64 %sext98.i.peel, 32
  %i.aze = getelementptr inbounds i8, ptr %i.axw, i64 %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 4
  tail call void %i.azc(ptr noundef nonnull %i.azf, i64 noundef %i.azb, i32 noundef %i.ayl) #1, !inline_history !116
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  %i.azg = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %i.azh = getelementptr inbounds nuw i8, ptr %i.axw, i64 8
  %i.azi = shl nsw i32 %i.ayn, 1
  %i.azj = sext i32 %i.azi to i64                 ; 2 uses
  tail call void %i.azg(ptr noundef nonnull %i.azh, i64 noundef %i.azj, i32 noundef %i.ayl) #1, !inline_history !116
  %i.azk = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %sext101.i.peel = shl i64 %i.aym, 32
  %i.azl = ashr exact i64 %sext101.i.peel, 32
  %i.azm = getelementptr inbounds i8, ptr %i.axw, i64 %i.azl
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 8
  tail call void %i.azk(ptr noundef nonnull %i.azn, i64 noundef %i.azj, i32 noundef %i.ayl) #1, !inline_history !116
  br label %.peel.next695.peel

.peel.next695.peel:                               ; preds = %bb.hp, %bb.hm
  %i.azo = load i8, ptr %i.ayf, align 8, !tbaa !51
  %i.azp = zext i8 %i.azo to i32                  ; 3 uses
  %i.azq = load i64, ptr %i.ayg, align 16, !tbaa !89 ; 2 uses
  %i.azr = trunc i64 %i.azq to i32                ; 2 uses
  %i.azs = load i32, ptr %i.aya, align 4, !tbaa !68
  %i.azt = lshr i32 %i.azs, 4
  %i.azu = and i32 %i.azt, 14                     ; 2 uses
  br i1 %.not97.i, label %bb.hs, label %bb.hq

bb.hq:                                            ; preds = %.peel.next695.peel
  %or.cond.i392.peel = icmp eq i32 %i.azu, 6
  br i1 %or.cond.i392.peel, label %bb.hr, label %.peel.next695.preheader.peel.newph

bb.hr:                                            ; preds = %bb.hq
  %i.azv = load ptr, ptr %i.ayh, align 16, !tbaa !82
  %i.azw = getelementptr inbounds nuw i8, ptr %i.axw, i64 12
  %i.azx = shl nsw i32 %i.azr, 1
  %i.azy = sext i32 %i.azx to i64
  tail call void %i.azv(ptr noundef nonnull %i.azw, i64 noundef %i.azy, i32 noundef %i.azp) #1, !inline_history !116
  br label %.peel.next695.preheader.peel.newph

bb.hs:                                            ; preds = %.peel.next695.peel
  %or.cond9.i394.peel1096 = icmp eq i32 %i.azu, 6
  br i1 %or.cond9.i394.peel1096, label %bb.ht, label %.peel.next695.preheader.peel.newph

bb.ht:                                            ; preds = %bb.hs
  %i.azz = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %i.baa = getelementptr inbounds nuw i8, ptr %i.axw, i64 12
  %i.bab = shl nsw i32 %i.azr, 1
  %i.bac = sext i32 %i.bab to i64                 ; 2 uses
  tail call void %i.azz(ptr noundef nonnull %i.baa, i64 noundef %i.bac, i32 noundef %i.azp) #1, !inline_history !116
  %i.bad = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %sext98.i.peel1097 = shl i64 %i.azq, 32
  %i.bae = ashr exact i64 %sext98.i.peel1097, 32
  %i.baf = getelementptr i8, ptr %i.axw, i64 %i.bae
  %i.bag = getelementptr i8, ptr %i.baf, i64 12
  tail call void %i.bad(ptr noundef nonnull %i.bag, i64 noundef %i.bac, i32 noundef %i.azp) #1, !inline_history !116
  br label %.peel.next695.preheader.peel.newph

.peel.next695.preheader.peel.newph:               ; preds = %bb.hq, %bb.hr, %bb.ht, %bb.hs
  br label %.peel.next695

.peel.next695:                                    ; preds = %.peel.next695.preheader.peel.newph, %vc1_p_h_intfr_loop_filter.exit
  %indvars.iv690 = phi i64 [ %indvars.iv.next691, %vc1_p_h_intfr_loop_filter.exit ], [ 2, %.peel.next695.preheader.peel.newph ] ; 8 uses
  %i.bah = icmp samesign ugt i64 %indvars.iv690, 3
  br i1 %i.bah, label %bb.id, label %bb.hu

bb.hu:                                            ; preds = %.peel.next695
  %i.bai = load i8, ptr %i.ayf, align 8, !tbaa !51
  %i.baj = zext i8 %i.bai to i32                  ; 6 uses
  %i.bak = load i64, ptr %i.ayg, align 16, !tbaa !89 ; 6 uses
  %i.bal = trunc i64 %i.bak to i32                ; 4 uses
  %indvars.iv690.tr = trunc nuw nsw i64 %indvars.iv690 to i32
  %i.bam = shl nuw nsw i32 %indvars.iv690.tr, 2   ; 2 uses
  %i.ban = and i32 %i.bam, 8
  %i.bao = zext nneg i32 %i.ban to i64
  %i.bap = mul nsw i64 %i.bak, %i.bao
  %i.baq = getelementptr inbounds i8, ptr %i.axw, i64 %i.bap
  %i.bar = shl nuw nsw i64 %indvars.iv690, 3
  %i.bas = and i64 %i.bar, 8
  %i.bat = getelementptr inbounds nuw i8, ptr %i.baq, i64 %i.bas ; 6 uses
  %i.bau = load i32, ptr %i.aya, align 4, !tbaa !68
  %i.bav = ashr i32 %i.bau, %i.bam
  %i.baw = and i32 %i.bav, 14                     ; 2 uses
  br i1 %.not97.i, label %bb.hz, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %or.cond.i392 = icmp eq i32 %i.baw, 6
  br i1 %or.cond.i392, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.bax = load ptr, ptr %i.ayh, align 16, !tbaa !82
  %sext102.i = mul i64 %i.bak, 30064771072
  %i.bay = ashr exact i64 %sext102.i, 32
  %i.baz = sub nsw i64 0, %i.bay
  %i.bba = getelementptr inbounds i8, ptr %i.bat, i64 %i.baz
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 4
  %i.bbc = shl nsw i32 %i.bal, 1
  %i.bbd = sext i32 %i.bbc to i64
  tail call void %i.bax(ptr noundef nonnull %i.bbb, i64 noundef %i.bbd, i32 noundef %i.baj) #1, !inline_history !116
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.bbe = icmp eq i64 %indvars.iv690, 2
  br i1 %i.bbe, label %bb.hy, label %vc1_p_h_intfr_loop_filter.exit

bb.hy:                                            ; preds = %bb.hx
  %i.bbf = load ptr, ptr %i.ayh, align 16, !tbaa !82
  %sext103.i = mul i64 %i.bak, 30064771072
  %i.bbg = ashr exact i64 %sext103.i, 32
  %i.bbh = sub nsw i64 0, %i.bbg
  %i.bbi = getelementptr inbounds i8, ptr %i.bat, i64 %i.bbh
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 8
  %i.bbk = shl nsw i32 %i.bal, 1
  %i.bbl = sext i32 %i.bbk to i64
  tail call void %i.bbf(ptr noundef nonnull %i.bbj, i64 noundef %i.bbl, i32 noundef %i.baj) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit

bb.hz:                                            ; preds = %bb.hu
  %or.cond9.i394 = icmp eq i32 %i.baw, 6
  br i1 %or.cond9.i394, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.bbm = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbo = shl nsw i32 %i.bal, 1
  %i.bbp = sext i32 %i.bbo to i64                 ; 2 uses
  tail call void %i.bbm(ptr noundef nonnull %i.bbn, i64 noundef %i.bbp, i32 noundef %i.baj) #1, !inline_history !116
  %i.bbq = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %sext98.i = shl i64 %i.bak, 32
  %i.bbr = ashr exact i64 %sext98.i, 32
  %i.bbs = getelementptr inbounds i8, ptr %i.bat, i64 %i.bbr
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 4
  tail call void %i.bbq(ptr noundef nonnull %i.bbt, i64 noundef %i.bbp, i32 noundef %i.baj) #1, !inline_history !116
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.bbu = and i64 %indvars.iv690, 1
  %.not100.i = icmp eq i64 %i.bbu, 0
  br i1 %.not100.i, label %bb.ic, label %vc1_p_h_intfr_loop_filter.exit

bb.ic:                                            ; preds = %bb.ib
  %i.bbv = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  %i.bbx = shl nsw i32 %i.bal, 1
  %i.bby = sext i32 %i.bbx to i64                 ; 2 uses
  tail call void %i.bbv(ptr noundef nonnull %i.bbw, i64 noundef %i.bby, i32 noundef %i.baj) #1, !inline_history !116
  %i.bbz = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %sext101.i = shl i64 %i.bak, 32
  %i.bca = ashr exact i64 %sext101.i, 32
  %i.bcb = getelementptr inbounds i8, ptr %i.bat, i64 %i.bca
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 8
  tail call void %i.bbz(ptr noundef nonnull %i.bcc, i64 noundef %i.bby, i32 noundef %i.baj) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit

bb.id:                                            ; preds = %.peel.next695
  %i.bcd = load i32, ptr %i.aya, align 4, !tbaa !68
  %indvars.iv690.tr1086 = trunc nuw nsw i64 %indvars.iv690 to i32
  %i.bce = shl nuw nsw i32 %indvars.iv690.tr1086, 2
  %i.bcf = ashr i32 %i.bcd, %i.bce
  %i.bcg = and i32 %i.bcf, 14
  %or.cond11.i = icmp eq i32 %i.bcg, 6
  br i1 %or.cond11.i, label %bb.ie, label %vc1_p_h_intfr_loop_filter.exit

bb.ie:                                            ; preds = %bb.id
  %i.bch = load i64, ptr %i.ayj, align 8, !tbaa !89 ; 2 uses
  %i.bci = trunc i64 %i.bch to i32
  %i.bcj = load i8, ptr %i.ayf, align 8, !tbaa !51
  %i.bck = zext i8 %i.bcj to i32                  ; 2 uses
  %i.bcl = getelementptr [8 x i8], ptr %i.axv, i64 %indvars.iv690
  %i.bcm = getelementptr i8, ptr %i.bcl, i64 -24
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !71 ; 2 uses
  %i.bco = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcn, i64 4
  %i.bcq = shl nsw i32 %i.bci, 1
  %i.bcr = sext i32 %i.bcq to i64                 ; 2 uses
  tail call void %i.bco(ptr noundef nonnull %i.bcp, i64 noundef %i.bcr, i32 noundef %i.bck) #1, !inline_history !116
  %i.bcs = load ptr, ptr %i.ayi, align 16, !tbaa !83
  %sext.i389 = shl i64 %i.bch, 32
  %i.bct = ashr exact i64 %sext.i389, 32
  %i.bcu = getelementptr inbounds i8, ptr %i.bcn, i64 %i.bct
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 4
  tail call void %i.bcs(ptr noundef nonnull %i.bcv, i64 noundef %i.bcr, i32 noundef %i.bck) #1, !inline_history !116
  br label %vc1_p_h_intfr_loop_filter.exit

vc1_p_h_intfr_loop_filter.exit:                   ; preds = %bb.id, %bb.ie, %bb.hx, %bb.hy, %bb.ib, %bb.ic
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1 ; 2 uses
  %exitcond693.not = icmp eq i64 %indvars.iv.next691, 6
  br i1 %exitcond693.not, label %.loopexit, label %.peel.next695, !llvm.loop !126

.loopexit:                                        ; preds = %vc1_p_h_intfr_loop_filter.exit, %bb.gr, %.loopexit601
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vc1_b_intfi_loop_filter(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3780 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit192

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !72
  %.neg = mul i64 %i.f, -16
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %.neg
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !87
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5304
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %vc1_b_v_intfi_loop_filter.exit146
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %vc1_b_v_intfi_loop_filter.exit146 ] ; 6 uses
  %i.x = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.x, label %.thread321, label %bb.d

.thread321:                                       ; preds = %bb.c
  %i.y = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !76
  %.neg130 = mul i64 %i.ab, -8
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %.neg130
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !68
  %indvars.iv.tr323 = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = shl nuw nsw i32 %indvars.iv.tr323, 2    ; 2 uses
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !68
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = shl nuw nsw i32 %indvars.iv.tr, 2       ; 3 uses
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = load i64, ptr %i.e, align 16, !tbaa !89 ; 2 uses
  %i.al = and i32 %i.ai, 8
  %i.am = zext nneg i32 %i.al to i64
  %i.an = mul nsw i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.g, i64 %i.an
  %i.ap = shl nuw nsw i64 %indvars.iv, 3
  %i.aq = and i64 %i.ap, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  br label %bb.e

bb.e:                                             ; preds = %.thread321, %bb.d
  %i.as = phi i64 [ %i.ak, %bb.d ], [ %i.ag, %.thread321 ] ; 2 uses
  %i.at = phi i32 [ %i.aj, %bb.d ], [ %i.af, %.thread321 ] ; 2 uses
  %i.au = phi i32 [ %i.ai, %bb.d ], [ %i.ae, %.thread321 ]
  %.0.i139 = phi ptr [ %i.ar, %bb.d ], [ %i.ac, %.thread321 ] ; 3 uses
  %.in = load i8, ptr %i.t, align 8, !tbaa !51
  %i.av = zext i8 %.in to i32                     ; 3 uses
  %i.aw = trunc i64 %i.as to i32                  ; 3 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.ay = shl nsw i32 %i.aw, 3
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %.0.i139, i64 %i.az
  %sext.i145 = shl i64 %i.as, 32
  %i.bb = ashr exact i64 %sext.i145, 32           ; 3 uses
  tail call void %i.ax(ptr noundef %i.ba, i64 noundef %i.bb, i32 noundef %i.av) #1, !inline_history !127
  %i.bc = load i32, ptr %i.s, align 4, !tbaa !68
  %i.bd = ashr i32 %i.bc, %i.au
  %i.be = and i32 %i.bd, 11
  %or.cond3.i140 = icmp eq i32 %i.be, 3
  br i1 %or.cond3.i140, label %bb.f, label %vc1_b_v_intfi_loop_filter.exit146

bb.f:                                             ; preds = %bb.e
  %i.bf = lshr i32 %i.at, 2
  %i.bg = or i32 %i.bf, %i.at                     ; 2 uses
  %i.bh = and i32 %i.bg, 1
  %.not.i141 = icmp eq i32 %i.bh, 0
  br i1 %.not.i141, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.bj = shl nsw i32 %i.aw, 2
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %.0.i139, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  tail call void %i.bi(ptr noundef nonnull %i.bm, i64 noundef %i.bb, i32 noundef %i.av) #1, !inline_history !127
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = and i32 %i.bg, 2
  %.not42.i143 = icmp eq i32 %i.bn, 0
  br i1 %.not42.i143, label %vc1_b_v_intfi_loop_filter.exit146, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.bp = shl nsw i32 %i.aw, 2
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.0.i139, i64 %i.bq
  tail call void %i.bo(ptr noundef %i.br, i64 noundef %i.bb, i32 noundef %i.av) #1, !inline_history !127
  br label %vc1_b_v_intfi_loop_filter.exit146

vc1_b_v_intfi_loop_filter.exit146:                ; preds = %bb.e, %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit192, label %bb.c, !llvm.loop !128

.loopexit192:                                     ; preds = %vc1_b_v_intfi_loop_filter.exit146, %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !79
  %i.bw = add nsw i32 %i.bv, -1
  %i.bx = icmp eq i32 %i.bt, %i.bw
  br i1 %i.bx, label %.thread.peel, label %.loopexit191

.thread.peel:                                     ; preds = %.loopexit192
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !71 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !84
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ce ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !87
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ce ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 12 uses
  %i.co = load i8, ptr %i.cj, align 8, !tbaa !51
  %i.cp = zext i8 %i.co to i32                    ; 3 uses
  %i.cq = load i32, ptr %i.cf, align 4, !tbaa !68 ; 2 uses
  %i.cr = load i64, ptr %i.cl, align 16, !tbaa !89 ; 4 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 3 uses
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !77
  %i.cu = shl nsw i32 %i.cs, 3
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.bz, i64 %i.cv
  %sext.i.peel = shl i64 %i.cr, 32
  %i.cx = ashr exact i64 %sext.i.peel, 32
  tail call void %i.ct(ptr noundef %i.cw, i64 noundef %i.cx, i32 noundef %i.cp) #1, !inline_history !127
  %i.cy = load i32, ptr %i.ci, align 4, !tbaa !68
  %i.cz = and i32 %i.cy, 11
  %or.cond3.i.peel = icmp eq i32 %i.cz, 3
  br i1 %or.cond3.i.peel, label %bb.j, label %.thread.peel207

bb.j:                                             ; preds = %.thread.peel
  %i.da = lshr i32 %i.cq, 2
  %i.db = or i32 %i.da, %i.cq                     ; 2 uses
  %i.dc = and i32 %i.db, 1
  %.not.i.peel = icmp eq i32 %i.dc, 0
  br i1 %.not.i.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load ptr, ptr %i.cn, align 8, !tbaa !94
  %i.de = shl nsw i32 %i.cs, 2
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.bz, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %sext41.i.peel = shl i64 %i.cr, 32
  %i.di = ashr exact i64 %sext41.i.peel, 32
  tail call void %i.dd(ptr noundef nonnull %i.dh, i64 noundef %i.di, i32 noundef %i.cp) #1, !inline_history !127
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dj = and i32 %i.db, 2
  %.not42.i.peel = icmp eq i32 %i.dj, 0
  br i1 %.not42.i.peel, label %.thread.peel207, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %i.cn, align 8, !tbaa !94
  %i.dl = shl nsw i32 %i.cs, 2
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.bz, i64 %i.dm
  %sext43.i.peel = shl i64 %i.cr, 32
  %i.do = ashr exact i64 %sext43.i.peel, 32
  tail call void %i.dk(ptr noundef %i.dn, i64 noundef %i.do, i32 noundef %i.cp) #1, !inline_history !127
  br label %.thread.peel207

.thread.peel207:                                  ; preds = %.thread.peel, %bb.l, %bb.m
  %i.dp = load i8, ptr %i.cj, align 8, !tbaa !51
  %i.dq = zext i8 %i.dp to i32                    ; 3 uses
  %i.dr = load i32, ptr %i.cf, align 4, !tbaa !68 ; 2 uses
  %i.ds = load i64, ptr %i.cl, align 16, !tbaa !89 ; 4 uses
  %i.dt = trunc i64 %i.ds to i32                  ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.dv = load ptr, ptr %i.cm, align 8, !tbaa !77
  %i.dw = shl nsw i32 %i.dt, 3
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 %i.dx
  %sext.i.peel206 = shl i64 %i.ds, 32
  %i.dz = ashr exact i64 %sext.i.peel206, 32
  tail call void %i.dv(ptr noundef nonnull %i.dy, i64 noundef %i.dz, i32 noundef %i.dq) #1, !inline_history !127
  %i.ea = load i32, ptr %i.ci, align 4, !tbaa !68
  %i.eb = and i32 %i.ea, 176
  %or.cond3.i.peel209 = icmp eq i32 %i.eb, 48
  br i1 %or.cond3.i.peel209, label %bb.n, label %.peel.next204

bb.n:                                             ; preds = %.thread.peel207
  %i.ec = lshr i32 %i.dr, 4
  %i.ed = lshr i32 %i.dr, 6
  %i.ee = or i32 %i.ed, %i.ec                     ; 2 uses
  %i.ef = and i32 %i.ee, 1
  %.not.i.peel210 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.peel210, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eg = load ptr, ptr %i.cn, align 8, !tbaa !94
  %i.eh = shl nsw i32 %i.dt, 2
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.du, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %sext41.i.peel211 = shl i64 %i.ds, 32
  %i.el = ashr exact i64 %sext41.i.peel211, 32
  tail call void %i.eg(ptr noundef nonnull %i.ek, i64 noundef %i.el, i32 noundef %i.dq) #1, !inline_history !127
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.em = and i32 %i.ee, 2
  %.not42.i.peel212 = icmp eq i32 %i.em, 0
  br i1 %.not42.i.peel212, label %.peel.next204, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = load ptr, ptr %i.cn, align 8, !tbaa !94
  %i.eo = shl nsw i32 %i.dt, 2
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.du, i64 %i.ep
  %sext43.i.peel213 = shl i64 %i.ds, 32
  %i.er = ashr exact i64 %sext43.i.peel213, 32
end_hunk_2
begin_hunk_3_@ff_vc1_b_intfi_loop_filter:bb.a
  %i.ll = lshr i32 %i.la, 9
  %i.lm = or i32 %i.ll, %i.lk                     ; 2 uses
  %i.ln = and i32 %i.lm, 1
  %.not38.i179.peel241 = icmp eq i32 %i.ln, 0
  br i1 %.not38.i179.peel241, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lo = load ptr, ptr %i.ji, align 16, !tbaa !83
  %i.lp = shl nsw i32 %i.lc, 2
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds i8, ptr %i.le, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  tail call void %i.lo(ptr noundef nonnull %i.ls, i64 noundef %i.lh, i32 noundef %i.kz) #1, !inline_history !129
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.lt = and i32 %i.lm, 4
  %.not40.i181.peel242 = icmp eq i32 %i.lt, 0
  br i1 %.not40.i181.peel242, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lu = load ptr, ptr %i.ji, align 16, !tbaa !83
  %i.lv = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  tail call void %i.lu(ptr noundef nonnull %i.lv, i64 noundef %i.lh, i32 noundef %i.kz) #1, !inline_history !129
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.as
  %i.lw = load i8, ptr %i.jf, align 8, !tbaa !51
  %i.lx = zext i8 %i.lw to i32                    ; 3 uses
  %i.ly = load i32, ptr %i.jb, align 4, !tbaa !68 ; 2 uses
  %i.lz = load i64, ptr %i.io, align 16, !tbaa !89 ; 3 uses
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = shl nsw i64 %i.lz, 3
  %i.mc = getelementptr inbounds i8, ptr %i.ir, i64 %i.mb ; 3 uses
  %i.md = load ptr, ptr %i.jh, align 16, !tbaa !82
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %sext.i183.peel250 = shl i64 %i.lz, 32
  %i.mf = ashr exact i64 %sext.i183.peel250, 32   ; 3 uses
  tail call void %i.md(ptr noundef nonnull %i.me, i64 noundef %i.mf, i32 noundef %i.lx) #1, !inline_history !129
  %i.mg = load i32, ptr %i.je, align 4, !tbaa !68
  %i.mh = and i32 %i.mg, 57344
  %or.cond.i178.peel251 = icmp eq i32 %i.mh, 24576
  br i1 %or.cond.i178.peel251, label %bb.ay, label %.peel.next246

bb.ay:                                            ; preds = %bb.ax
  %i.mi = lshr i32 %i.ly, 12
  %i.mj = lshr i32 %i.ly, 13
  %i.mk = or i32 %i.mj, %i.mi                     ; 2 uses
  %i.ml = and i32 %i.mk, 1
  %.not38.i179.peel252 = icmp eq i32 %i.ml, 0
  br i1 %.not38.i179.peel252, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mm = load ptr, ptr %i.ji, align 16, !tbaa !83
  %i.mn = shl nsw i32 %i.ma, 2
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr i8, ptr %i.mc, i64 %i.mo
  %i.mq = getelementptr i8, ptr %i.mp, i64 12
  tail call void %i.mm(ptr noundef nonnull %i.mq, i64 noundef %i.mf, i32 noundef %i.lx) #1, !inline_history !129
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.mr = and i32 %i.mk, 4
  %.not40.i181.peel253 = icmp eq i32 %i.mr, 0
  br i1 %.not40.i181.peel253, label %.peel.next246, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ms = load ptr, ptr %i.ji, align 16, !tbaa !83
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  tail call void %i.ms(ptr noundef nonnull %i.mt, i64 noundef %i.mf, i32 noundef %i.lx) #1, !inline_history !129
  br label %.peel.next246

.peel.next246:                                    ; preds = %bb.bb, %bb.ba, %bb.ax
  %i.mu = getelementptr i8, ptr %0, i64 3176
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !71
  %i.mw = load i64, ptr %i.jg, align 8, !tbaa !76 ; 3 uses
  %.neg136 = mul i64 %i.mw, -8
  %i.mx = getelementptr inbounds i8, ptr %i.mv, i64 %.neg136 ; 3 uses
  %i.my = load i8, ptr %i.jf, align 8, !tbaa !51
  %i.mz = zext i8 %i.my to i32                    ; 3 uses
  %i.na = load i32, ptr %i.jb, align 4, !tbaa !68 ; 2 uses
  %i.nb = trunc i64 %i.mw to i32
  %i.nc = load ptr, ptr %i.jh, align 16, !tbaa !82
  %sext.i183 = shl i64 %i.mw, 32
  %i.nd = ashr exact i64 %sext.i183, 32           ; 3 uses
  tail call void %i.nc(ptr noundef nonnull %i.mx, i64 noundef %i.nd, i32 noundef %i.mz) #1, !inline_history !129
  %i.ne = load i32, ptr %i.je, align 4, !tbaa !68
  %i.nf = and i32 %i.ne, 917504
  %or.cond.i178 = icmp eq i32 %i.nf, 393216
  br i1 %or.cond.i178, label %bb.bc, label %vc1_b_h_intfi_loop_filter.exit184

bb.bc:                                            ; preds = %.peel.next246
  %i.ng = lshr i32 %i.na, 16
  %i.nh = lshr i32 %i.na, 17
  %i.ni = or i32 %i.nh, %i.ng                     ; 2 uses
  %i.nj = and i32 %i.ni, 1
  %.not38.i179 = icmp eq i32 %i.nj, 0
  br i1 %.not38.i179, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nk = load ptr, ptr %i.ji, align 16, !tbaa !83
  %i.nl = shl nsw i32 %i.nb, 2
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr i8, ptr %i.mx, i64 %i.nm
  %i.no = getelementptr i8, ptr %i.nn, i64 -4
  tail call void %i.nk(ptr noundef nonnull %i.no, i64 noundef %i.nd, i32 noundef %i.mz) #1, !inline_history !129
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.np = and i32 %i.ni, 4
  %.not40.i181 = icmp eq i32 %i.np, 0
  br i1 %.not40.i181, label %vc1_b_h_intfi_loop_filter.exit184, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.nq = load ptr, ptr %i.ji, align 16, !tbaa !83
  %i.nr = getelementptr inbounds i8, ptr %i.mx, i64 -4
  tail call void %i.nq(ptr noundef nonnull %i.nr, i64 noundef %i.nd, i32 noundef %i.mz) #1, !inline_history !129
  br label %vc1_b_h_intfi_loop_filter.exit184

vc1_b_h_intfi_loop_filter.exit184:                ; preds = %.peel.next246, %bb.be, %bb.bf
  %i.ns = getelementptr i8, ptr %0, i64 3184
  %i.nt = load ptr, ptr %i.ns, align 16, !tbaa !71
  %i.nu = load i64, ptr %i.jg, align 8, !tbaa !76 ; 3 uses
  %.neg136.1 = mul i64 %i.nu, -8
  %i.nv = getelementptr inbounds i8, ptr %i.nt, i64 %.neg136.1 ; 3 uses
  %i.nw = load i8, ptr %i.jf, align 8, !tbaa !51
  %i.nx = zext i8 %i.nw to i32                    ; 3 uses
  %i.ny = load i32, ptr %i.jb, align 4, !tbaa !68 ; 2 uses
  %i.nz = trunc i64 %i.nu to i32
  %i.oa = load ptr, ptr %i.jh, align 16, !tbaa !82
  %sext.i183.1 = shl i64 %i.nu, 32
  %i.ob = ashr exact i64 %sext.i183.1, 32         ; 3 uses
  tail call void %i.oa(ptr noundef nonnull %i.nv, i64 noundef %i.ob, i32 noundef %i.nx) #1, !inline_history !129
  %i.oc = load i32, ptr %i.je, align 4, !tbaa !68
  %i.od = and i32 %i.oc, 14680064
  %or.cond.i178.1 = icmp eq i32 %i.od, 6291456
  br i1 %or.cond.i178.1, label %bb.bg, label %vc1_b_h_intfi_loop_filter.exit184.1

bb.bg:                                            ; preds = %vc1_b_h_intfi_loop_filter.exit184
  %i.oe = lshr i32 %i.ny, 20
  %i.of = lshr i32 %i.ny, 21
  %i.og = or i32 %i.of, %i.oe                     ; 2 uses
  %i.oh = and i32 %i.og, 1
  %.not38.i179.1 = icmp eq i32 %i.oh, 0
  br i1 %.not38.i179.1, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.oi = load ptr, ptr %i.ji, align 16, !tbaa !83
  %i.oj = shl nsw i32 %i.nz, 2
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr i8, ptr %i.nv, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.ol, i64 -4
  tail call void %i.oi(ptr noundef nonnull %i.om, i64 noundef %i.ob, i32 noundef %i.nx) #1, !inline_history !129
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.on = and i32 %i.og, 4
  %.not40.i181.1 = icmp eq i32 %i.on, 0
  br i1 %.not40.i181.1, label %vc1_b_h_intfi_loop_filter.exit184.1, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oo = load ptr, ptr %i.ji, align 16, !tbaa !83
  %i.op = getelementptr inbounds i8, ptr %i.nv, i64 -4
  tail call void %i.oo(ptr noundef nonnull %i.op, i64 noundef %i.ob, i32 noundef %i.nx) #1, !inline_history !129
  br label %vc1_b_h_intfi_loop_filter.exit184.1

vc1_b_h_intfi_loop_filter.exit184.1:              ; preds = %bb.bj, %bb.bi, %vc1_b_h_intfi_loop_filter.exit184
  %.pre309 = load i32, ptr %i.iu, align 4, !tbaa !9
  br label %.loopexit190

.loopexit190:                                     ; preds = %vc1_b_h_intfi_loop_filter.exit184.1, %bb.ah
  %i.oq = phi i32 [ %.pre309, %vc1_b_h_intfi_loop_filter.exit184.1 ], [ 0, %bb.ah ]
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.os = load i32, ptr %i.or, align 4, !tbaa !65
  %i.ot = add nsw i32 %i.os, -1
  %i.ou = icmp eq i32 %i.oq, %i.ot
  br i1 %i.ou, label %bb.bk, label %.loopexit188

bb.bk:                                            ; preds = %.loopexit190
  %i.ov = getelementptr inbounds nuw i8, ptr %i.jb, i64 4 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 5312
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %vc1_b_h_intfi_loop_filter.exit173
  %indvars.iv258 = phi i64 [ 0, %bb.bk ], [ %indvars.iv.next259, %vc1_b_h_intfi_loop_filter.exit173 ] ; 7 uses
  %i.pb = icmp samesign ugt i64 %indvars.iv258, 3
  br i1 %i.pb, label %.thread327, label %bb.bm

.thread327:                                       ; preds = %bb.bl
  %i.pc = getelementptr [8 x i8], ptr %i.im, i64 %indvars.iv258
  %i.pd = getelementptr i8, ptr %i.pc, i64 -24
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !71
  %i.pf = load i64, ptr %i.oy, align 8, !tbaa !76
  %.neg135 = mul i64 %i.pf, -8
  %i.pg = getelementptr inbounds i8, ptr %i.pe, i64 %.neg135
  %i.ph = load i32, ptr %i.ov, align 4, !tbaa !68
  %indvars.iv258.tr329 = trunc nuw nsw i64 %indvars.iv258 to i32
  %i.pi = shl nuw nsw i32 %indvars.iv258.tr329, 2 ; 2 uses
  %i.pj = lshr i32 %i.ph, %i.pi
  %i.pk = load i64, ptr %i.oy, align 8, !tbaa !89
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.pl = load i32, ptr %i.ov, align 4, !tbaa !68
  %indvars.iv258.tr = trunc nuw nsw i64 %indvars.iv258 to i32
  %i.pm = shl nuw nsw i32 %indvars.iv258.tr, 2    ; 3 uses
  %i.pn = lshr i32 %i.pl, %i.pm
  %i.po = load i64, ptr %i.io, align 16, !tbaa !89 ; 2 uses
  %i.pp = and i32 %i.pm, 8
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = mul nsw i64 %i.po, %i.pq
  %i.ps = getelementptr inbounds i8, ptr %i.iq, i64 %i.pr
  %i.pt = shl nuw nsw i64 %indvars.iv258, 3
  %i.pu = and i64 %i.pt, 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pu
  br label %bb.bn

bb.bn:                                            ; preds = %.thread327, %bb.bm
  %i.pw = phi i64 [ %i.po, %bb.bm ], [ %i.pk, %.thread327 ] ; 4 uses
  %i.px = phi i32 [ %i.pn, %bb.bm ], [ %i.pj, %.thread327 ] ; 2 uses
  %i.py = phi i32 [ %i.pm, %bb.bm ], [ %i.pi, %.thread327 ]
  %.0.i164 = phi ptr [ %i.pv, %bb.bm ], [ %i.pg, %.thread327 ] ; 3 uses
  %.in336 = load i8, ptr %i.ox, align 8, !tbaa !51
  %i.pz = zext i8 %.in336 to i32                  ; 3 uses
  %i.qa = trunc i64 %i.pw to i32
  %i.qb = and i64 %indvars.iv258, 5
  %.not37.i166 = icmp eq i64 %i.qb, 0
  br i1 %.not37.i166, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.qc = load ptr, ptr %i.oz, align 16, !tbaa !82
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i164, i64 8
  %sext.i172 = shl i64 %i.pw, 32
  %i.qe = ashr exact i64 %sext.i172, 32
  tail call void %i.qc(ptr noundef nonnull %i.qd, i64 noundef %i.qe, i32 noundef %i.pz) #1, !inline_history !129
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.qf = load i32, ptr %i.ow, align 4, !tbaa !68
  %i.qg = ashr i32 %i.qf, %i.py
  %i.qh = and i32 %i.qg, 14
  %or.cond.i167 = icmp eq i32 %i.qh, 6
  br i1 %or.cond.i167, label %bb.bq, label %vc1_b_h_intfi_loop_filter.exit173

bb.bq:                                            ; preds = %bb.bp
  %i.qi = lshr i32 %i.px, 1
  %i.qj = or i32 %i.qi, %i.px                     ; 2 uses
  %i.qk = and i32 %i.qj, 1
  %.not38.i168 = icmp eq i32 %i.qk, 0
  br i1 %.not38.i168, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ql = load ptr, ptr %i.pa, align 16, !tbaa !83
  %i.qm = shl nsw i32 %i.qa, 2
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds i8, ptr %.0.i164, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %sext39.i169 = shl i64 %i.pw, 32
  %i.qq = ashr exact i64 %sext39.i169, 32
  tail call void %i.ql(ptr noundef nonnull %i.qp, i64 noundef %i.qq, i32 noundef %i.pz) #1, !inline_history !129
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.qr = and i32 %i.qj, 4
  %.not40.i170 = icmp eq i32 %i.qr, 0
  br i1 %.not40.i170, label %vc1_b_h_intfi_loop_filter.exit173, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qs = load ptr, ptr %i.pa, align 16, !tbaa !83
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i164, i64 4
  %sext41.i171 = shl i64 %i.pw, 32
  %i.qu = ashr exact i64 %sext41.i171, 32
  tail call void %i.qs(ptr noundef nonnull %i.qt, i64 noundef %i.qu, i32 noundef %i.pz) #1, !inline_history !129
  br label %vc1_b_h_intfi_loop_filter.exit173

vc1_b_h_intfi_loop_filter.exit173:                ; preds = %bb.bp, %bb.bs, %bb.bt
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next259, 6
  br i1 %exitcond261.not, label %.loopexit188, label %bb.bl, !llvm.loop !130

.loopexit188:                                     ; preds = %vc1_b_h_intfi_loop_filter.exit173, %.loopexit190, %.loopexit191
  %i.qv = load i32, ptr %i.bs, align 8, !tbaa !37
  %i.qw = load i32, ptr %i.bu, align 4, !tbaa !79
  %i.qx = add nsw i32 %i.qw, -1
  %i.qy = icmp eq i32 %i.qv, %i.qx
  br i1 %i.qy, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %.loopexit188
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 16, !tbaa !71 ; 6 uses
  %i.rb = getelementptr inbounds i8, ptr %i.ra, i64 -16 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 10160
  %i.rd = load ptr, ptr %i.rc, align 16, !tbaa !84
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !9  ; 2 uses
  %i.rg = add nsw i32 %i.rf, -1
  %i.rh = sext i32 %i.rg to i64                   ; 2 uses
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rh ; 7 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.rk = load ptr, ptr %i.rj, align 16, !tbaa !87
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.rk, i64 %i.rh ; 7 uses
  %.not137 = icmp eq i32 %i.rf, 0
  br i1 %.not137, label %.loopexit187, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 6 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 6 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 12 uses
  %i.rr = load i8, ptr %i.rm, align 8, !tbaa !51
  %i.rs = zext i8 %i.rr to i32                    ; 3 uses
  %i.rt = load i32, ptr %i.ri, align 4, !tbaa !68 ; 2 uses
  %i.ru = load i64, ptr %i.ro, align 16, !tbaa !89 ; 2 uses
  %i.rv = trunc i64 %i.ru to i32
  %i.rw = load ptr, ptr %i.rp, align 16, !tbaa !82
  %i.rx = getelementptr inbounds i8, ptr %i.ra, i64 -8 ; 2 uses
  %sext.i161.peel = shl i64 %i.ru, 32
  %i.ry = ashr exact i64 %sext.i161.peel, 32      ; 3 uses
  tail call void %i.rw(ptr noundef nonnull %i.rx, i64 noundef %i.ry, i32 noundef %i.rs) #1, !inline_history !129
  %i.rz = load i32, ptr %i.rl, align 4, !tbaa !68
  %i.sa = and i32 %i.rz, 14
  %or.cond.i156.peel = icmp eq i32 %i.sa, 6
  br i1 %or.cond.i156.peel, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.sb = lshr i32 %i.rt, 1
  %i.sc = or i32 %i.sb, %i.rt                     ; 2 uses
  %i.sd = and i32 %i.sc, 1
  %.not38.i157.peel = icmp eq i32 %i.sd, 0
  br i1 %.not38.i157.peel, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.se = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.sf = shl nsw i32 %i.rv, 2
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds i8, ptr %i.rb, i64 %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  tail call void %i.se(ptr noundef nonnull %i.si, i64 noundef %i.ry, i32 noundef %i.rs) #1, !inline_history !129
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.sj = and i32 %i.sc, 4
  %.not40.i159.peel = icmp eq i32 %i.sj, 0
  br i1 %.not40.i159.peel, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sk = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.sl = getelementptr inbounds i8, ptr %i.ra, i64 -12
  tail call void %i.sk(ptr noundef nonnull %i.sl, i64 noundef %i.ry, i32 noundef %i.rs) #1, !inline_history !129
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bv
  %i.sm = load i8, ptr %i.rm, align 8, !tbaa !51
  %i.sn = zext i8 %i.sm to i32                    ; 3 uses
  %i.so = load i32, ptr %i.ri, align 4, !tbaa !68 ; 2 uses
  %i.sp = load i64, ptr %i.ro, align 16, !tbaa !89 ; 2 uses
  %i.sq = trunc i64 %i.sp to i32
  %i.sr = load ptr, ptr %i.rp, align 16, !tbaa !82
  %sext.i161.peel271 = shl i64 %i.sp, 32
  %i.ss = ashr exact i64 %sext.i161.peel271, 32   ; 3 uses
  tail call void %i.sr(ptr noundef nonnull %i.ra, i64 noundef %i.ss, i32 noundef %i.sn) #1, !inline_history !129
  %i.st = load i32, ptr %i.rl, align 4, !tbaa !68
  %i.su = and i32 %i.st, 224
  %or.cond.i156.peel272 = icmp eq i32 %i.su, 96
  br i1 %or.cond.i156.peel272, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  %i.sv = lshr i32 %i.so, 4
  %i.sw = lshr i32 %i.so, 5
  %i.sx = or i32 %i.sw, %i.sv                     ; 2 uses
  %i.sy = and i32 %i.sx, 1
  %.not38.i157.peel273 = icmp eq i32 %i.sy, 0
  br i1 %.not38.i157.peel273, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sz = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.ta = shl nsw i32 %i.sq, 2
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds i8, ptr %i.rx, i64 %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  tail call void %i.sz(ptr noundef nonnull %i.td, i64 noundef %i.ss, i32 noundef %i.sn) #1, !inline_history !129
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.te = and i32 %i.sx, 4
  %.not40.i159.peel274 = icmp eq i32 %i.te, 0
  br i1 %.not40.i159.peel274, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tf = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.tg = getelementptr inbounds i8, ptr %i.ra, i64 -4
  tail call void %i.tf(ptr noundef nonnull %i.tg, i64 noundef %i.ss, i32 noundef %i.sn) #1, !inline_history !129
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.ca
  %i.th = load i8, ptr %i.rm, align 8, !tbaa !51
  %i.ti = zext i8 %i.th to i32                    ; 3 uses
end_hunk_3
begin_hunk_4_@ff_vc1_b_intfi_loop_filter:bb.a
  %i.ts = and i32 %i.tr, 3584
  %or.cond.i156.peel282 = icmp eq i32 %i.ts, 1536
  br i1 %or.cond.i156.peel282, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.tt = lshr i32 %i.tj, 8
  %i.tu = lshr i32 %i.tj, 9
  %i.tv = or i32 %i.tu, %i.tt                     ; 2 uses
  %i.tw = and i32 %i.tv, 1
  %.not38.i157.peel283 = icmp eq i32 %i.tw, 0
  br i1 %.not38.i157.peel283, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.tx = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.ty = shl nsw i32 %i.tl, 2
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds i8, ptr %i.tn, i64 %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  tail call void %i.tx(ptr noundef nonnull %i.ub, i64 noundef %i.tq, i32 noundef %i.ti) #1, !inline_history !129
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.uc = and i32 %i.tv, 4
  %.not40.i159.peel284 = icmp eq i32 %i.uc, 0
  br i1 %.not40.i159.peel284, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ud = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  tail call void %i.ud(ptr noundef nonnull %i.ue, i64 noundef %i.tq, i32 noundef %i.ti) #1, !inline_history !129
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.cf
  %i.uf = load i8, ptr %i.rm, align 8, !tbaa !51
  %i.ug = zext i8 %i.uf to i32                    ; 3 uses
  %i.uh = load i32, ptr %i.ri, align 4, !tbaa !68 ; 2 uses
  %i.ui = load i64, ptr %i.ro, align 16, !tbaa !89 ; 3 uses
  %i.uj = trunc i64 %i.ui to i32
  %i.uk = shl nsw i64 %i.ui, 3
  %i.ul = getelementptr inbounds i8, ptr %i.rb, i64 %i.uk ; 3 uses
  %i.um = load ptr, ptr %i.rp, align 16, !tbaa !82
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %sext.i161.peel291 = shl i64 %i.ui, 32
  %i.uo = ashr exact i64 %sext.i161.peel291, 32   ; 3 uses
  tail call void %i.um(ptr noundef nonnull %i.un, i64 noundef %i.uo, i32 noundef %i.ug) #1, !inline_history !129
  %i.up = load i32, ptr %i.rl, align 4, !tbaa !68
  %i.uq = and i32 %i.up, 57344
  %or.cond.i156.peel292 = icmp eq i32 %i.uq, 24576
  br i1 %or.cond.i156.peel292, label %bb.cl, label %.peel.next288

bb.cl:                                            ; preds = %bb.ck
  %i.ur = lshr i32 %i.uh, 12
  %i.us = lshr i32 %i.uh, 13
  %i.ut = or i32 %i.us, %i.ur                     ; 2 uses
  %i.uu = and i32 %i.ut, 1
  %.not38.i157.peel293 = icmp eq i32 %i.uu, 0
  br i1 %.not38.i157.peel293, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uv = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.uw = shl nsw i32 %i.uj, 2
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr i8, ptr %i.ul, i64 %i.ux
  %i.uz = getelementptr i8, ptr %i.uy, i64 12
  tail call void %i.uv(ptr noundef nonnull %i.uz, i64 noundef %i.uo, i32 noundef %i.ug) #1, !inline_history !129
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.va = and i32 %i.ut, 4
  %.not40.i159.peel294 = icmp eq i32 %i.va, 0
  br i1 %.not40.i159.peel294, label %.peel.next288, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vb = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  tail call void %i.vb(ptr noundef nonnull %i.vc, i64 noundef %i.uo, i32 noundef %i.ug) #1, !inline_history !129
  br label %.peel.next288

.peel.next288:                                    ; preds = %bb.co, %bb.cn, %bb.ck
  %i.vd = getelementptr i8, ptr %0, i64 3176
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !71 ; 3 uses
  %i.vf = load i8, ptr %i.rm, align 8, !tbaa !51
  %i.vg = zext i8 %i.vf to i32                    ; 3 uses
  %i.vh = load i32, ptr %i.ri, align 4, !tbaa !68 ; 2 uses
  %i.vi = load i64, ptr %i.rn, align 8, !tbaa !89 ; 2 uses
  %i.vj = trunc i64 %i.vi to i32
  %i.vk = load ptr, ptr %i.rp, align 16, !tbaa !82
  %sext.i161 = shl i64 %i.vi, 32
  %i.vl = ashr exact i64 %sext.i161, 32           ; 3 uses
  tail call void %i.vk(ptr noundef nonnull %i.ve, i64 noundef %i.vl, i32 noundef %i.vg) #1, !inline_history !129
  %i.vm = load i32, ptr %i.rl, align 4, !tbaa !68
  %i.vn = and i32 %i.vm, 917504
  %or.cond.i156 = icmp eq i32 %i.vn, 393216
  br i1 %or.cond.i156, label %bb.cp, label %vc1_b_h_intfi_loop_filter.exit162

bb.cp:                                            ; preds = %.peel.next288
  %i.vo = lshr i32 %i.vh, 16
  %i.vp = lshr i32 %i.vh, 17
  %i.vq = or i32 %i.vp, %i.vo                     ; 2 uses
  %i.vr = and i32 %i.vq, 1
  %.not38.i157 = icmp eq i32 %i.vr, 0
  br i1 %.not38.i157, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.vs = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.vt = shl nsw i32 %i.vj, 2
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr i8, ptr %i.ve, i64 %i.vu
  %i.vw = getelementptr i8, ptr %i.vv, i64 -4
  tail call void %i.vs(ptr noundef nonnull %i.vw, i64 noundef %i.vl, i32 noundef %i.vg) #1, !inline_history !129
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.vx = and i32 %i.vq, 4
  %.not40.i159 = icmp eq i32 %i.vx, 0
  br i1 %.not40.i159, label %vc1_b_h_intfi_loop_filter.exit162, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vy = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.vz = getelementptr inbounds i8, ptr %i.ve, i64 -4
  tail call void %i.vy(ptr noundef nonnull %i.vz, i64 noundef %i.vl, i32 noundef %i.vg) #1, !inline_history !129
  br label %vc1_b_h_intfi_loop_filter.exit162

vc1_b_h_intfi_loop_filter.exit162:                ; preds = %.peel.next288, %bb.cr, %bb.cs
  %i.wa = getelementptr i8, ptr %0, i64 3184
  %i.wb = load ptr, ptr %i.wa, align 16, !tbaa !71 ; 3 uses
  %i.wc = load i8, ptr %i.rm, align 8, !tbaa !51
  %i.wd = zext i8 %i.wc to i32                    ; 3 uses
  %i.we = load i32, ptr %i.ri, align 4, !tbaa !68 ; 2 uses
  %i.wf = load i64, ptr %i.rn, align 8, !tbaa !89 ; 2 uses
  %i.wg = trunc i64 %i.wf to i32
  %i.wh = load ptr, ptr %i.rp, align 16, !tbaa !82
  %sext.i161.1 = shl i64 %i.wf, 32
  %i.wi = ashr exact i64 %sext.i161.1, 32         ; 3 uses
  tail call void %i.wh(ptr noundef nonnull %i.wb, i64 noundef %i.wi, i32 noundef %i.wd) #1, !inline_history !129
  %i.wj = load i32, ptr %i.rl, align 4, !tbaa !68
  %i.wk = and i32 %i.wj, 14680064
  %or.cond.i156.1 = icmp eq i32 %i.wk, 6291456
  br i1 %or.cond.i156.1, label %bb.ct, label %vc1_b_h_intfi_loop_filter.exit162.1

bb.ct:                                            ; preds = %vc1_b_h_intfi_loop_filter.exit162
  %i.wl = lshr i32 %i.we, 20
  %i.wm = lshr i32 %i.we, 21
  %i.wn = or i32 %i.wm, %i.wl                     ; 2 uses
  %i.wo = and i32 %i.wn, 1
  %.not38.i157.1 = icmp eq i32 %i.wo, 0
  br i1 %.not38.i157.1, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.wp = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.wq = shl nsw i32 %i.wg, 2
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr i8, ptr %i.wb, i64 %i.wr
  %i.wt = getelementptr i8, ptr %i.ws, i64 -4
  tail call void %i.wp(ptr noundef nonnull %i.wt, i64 noundef %i.wi, i32 noundef %i.wd) #1, !inline_history !129
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.wu = and i32 %i.wn, 4
  %.not40.i159.1 = icmp eq i32 %i.wu, 0
  br i1 %.not40.i159.1, label %vc1_b_h_intfi_loop_filter.exit162.1, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.wv = load ptr, ptr %i.rq, align 16, !tbaa !83
  %i.ww = getelementptr inbounds i8, ptr %i.wb, i64 -4
  tail call void %i.wv(ptr noundef nonnull %i.ww, i64 noundef %i.wi, i32 noundef %i.wd) #1, !inline_history !129
  br label %vc1_b_h_intfi_loop_filter.exit162.1

vc1_b_h_intfi_loop_filter.exit162.1:              ; preds = %bb.cw, %bb.cv, %vc1_b_h_intfi_loop_filter.exit162
  %.pre315 = load i32, ptr %i.re, align 4, !tbaa !9
  br label %.loopexit187

.loopexit187:                                     ; preds = %vc1_b_h_intfi_loop_filter.exit162.1, %bb.bu
  %i.wx = phi i32 [ %.pre315, %vc1_b_h_intfi_loop_filter.exit162.1 ], [ 0, %bb.bu ]
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !65
  %i.xa = add nsw i32 %i.wz, -1
  %i.xb = icmp eq i32 %i.wx, %i.xa
  br i1 %i.xb, label %bb.cx, label %.loopexit

bb.cx:                                            ; preds = %.loopexit187
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ri, i64 4 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 5312
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %vc1_b_h_intfi_loop_filter.exit
  %indvars.iv299 = phi i64 [ 0, %bb.cx ], [ %indvars.iv.next300, %vc1_b_h_intfi_loop_filter.exit ] ; 7 uses
  %i.xj = icmp samesign ugt i64 %indvars.iv299, 3
  br i1 %i.xj, label %.thread330, label %bb.cz

.thread330:                                       ; preds = %bb.cy
  %i.xk = getelementptr [8 x i8], ptr %i.qz, i64 %indvars.iv299
  %i.xl = getelementptr i8, ptr %i.xk, i64 -24
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !71
  %i.xn = load i32, ptr %i.xc, align 4, !tbaa !68
  %indvars.iv299.tr332 = trunc nuw nsw i64 %indvars.iv299 to i32
  %i.xo = shl nuw nsw i32 %indvars.iv299.tr332, 2 ; 2 uses
  %i.xp = lshr i32 %i.xn, %i.xo
  %i.xq = load i64, ptr %i.xf, align 8, !tbaa !89
  br label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.xr = load i32, ptr %i.xc, align 4, !tbaa !68
  %indvars.iv299.tr = trunc nuw nsw i64 %indvars.iv299 to i32
  %i.xs = shl nuw nsw i32 %indvars.iv299.tr, 2    ; 3 uses
  %i.xt = lshr i32 %i.xr, %i.xs
  %i.xu = load i64, ptr %i.xg, align 16, !tbaa !89 ; 2 uses
  %i.xv = and i32 %i.xs, 8
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = mul nsw i64 %i.xu, %i.xw
  %i.xy = getelementptr inbounds i8, ptr %i.ra, i64 %i.xx
  %i.xz = shl nuw nsw i64 %indvars.iv299, 3
  %i.ya = and i64 %i.xz, 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.ya
  br label %bb.da

bb.da:                                            ; preds = %.thread330, %bb.cz
  %i.yc = phi i64 [ %i.xu, %bb.cz ], [ %i.xq, %.thread330 ] ; 4 uses
  %i.yd = phi i32 [ %i.xt, %bb.cz ], [ %i.xp, %.thread330 ] ; 2 uses
  %i.ye = phi i32 [ %i.xs, %bb.cz ], [ %i.xo, %.thread330 ]
  %.0.i148 = phi ptr [ %i.yb, %bb.cz ], [ %i.xm, %.thread330 ] ; 3 uses
  %.in338 = load i8, ptr %i.xe, align 8, !tbaa !51
  %i.yf = zext i8 %.in338 to i32                  ; 3 uses
  %i.yg = trunc i64 %i.yc to i32
  %i.yh = and i64 %indvars.iv299, 5
  %.not37.i = icmp eq i64 %i.yh, 0
  br i1 %.not37.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yi = load ptr, ptr %i.xh, align 16, !tbaa !82
  %i.yj = getelementptr inbounds nuw i8, ptr %.0.i148, i64 8
  %sext.i151 = shl i64 %i.yc, 32
  %i.yk = ashr exact i64 %sext.i151, 32
  tail call void %i.yi(ptr noundef nonnull %i.yj, i64 noundef %i.yk, i32 noundef %i.yf) #1, !inline_history !129
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.yl = load i32, ptr %i.xd, align 4, !tbaa !68
  %i.ym = ashr i32 %i.yl, %i.ye
  %i.yn = and i32 %i.ym, 14
  %or.cond.i = icmp eq i32 %i.yn, 6
  br i1 %or.cond.i, label %bb.dd, label %vc1_b_h_intfi_loop_filter.exit

bb.dd:                                            ; preds = %bb.dc
  %i.yo = lshr i32 %i.yd, 1
  %i.yp = or i32 %i.yo, %i.yd                     ; 2 uses
  %i.yq = and i32 %i.yp, 1
  %.not38.i = icmp eq i32 %i.yq, 0
  br i1 %.not38.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.yr = load ptr, ptr %i.xi, align 16, !tbaa !83
  %i.ys = shl nsw i32 %i.yg, 2
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds i8, ptr %.0.i148, i64 %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %sext39.i = shl i64 %i.yc, 32
  %i.yw = ashr exact i64 %sext39.i, 32
  tail call void %i.yr(ptr noundef nonnull %i.yv, i64 noundef %i.yw, i32 noundef %i.yf) #1, !inline_history !129
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.yx = and i32 %i.yp, 4
  %.not40.i = icmp eq i32 %i.yx, 0
  br i1 %.not40.i, label %vc1_b_h_intfi_loop_filter.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.yy = load ptr, ptr %i.xi, align 16, !tbaa !83
  %i.yz = getelementptr inbounds nuw i8, ptr %.0.i148, i64 4
  %sext41.i150 = shl i64 %i.yc, 32
  %i.za = ashr exact i64 %sext41.i150, 32
  tail call void %i.yy(ptr noundef nonnull %i.yz, i64 noundef %i.za, i32 noundef %i.yf) #1, !inline_history !129
  br label %vc1_b_h_intfi_loop_filter.exit

vc1_b_h_intfi_loop_filter.exit:                   ; preds = %bb.dc, %bb.df, %bb.dg
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next300, 6
  br i1 %exitcond302.not, label %.loopexit, label %bb.cy, !llvm.loop !131

.loopexit:                                        ; preds = %vc1_b_h_intfi_loop_filter.exit, %.loopexit187, %.loopexit188
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 3108}
!10 = !{!"MpegEncContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !13, i64 72, !13, i64 208, !15, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !16, i64 416, !16, i64 424, !17, i64 432, !18, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !19, i64 768, !19, i64 888, !19, i64 1008, !22, i64 1128, !14, i64 1136, !14, i64 1144, !14, i64 1152, !14, i64 1160, !14, i64 1168, !22, i64 1176, !22, i64 1184, !22, i64 1192, !6, i64 1200, !14, i64 1208, !14, i64 1216, !14, i64 1224, !14, i64 1232, !23, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !24, i64 1288, !25, i64 1320, !26, i64 1384, !27, i64 1768, !28, i64 1888, !29, i64 2656, !30, i64 2672, !22, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !21, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !16, i64 3744, !16, i64 3752, !31, i64 3760, !31, i64 3762, !31, i64 3764, !31, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !12, i64 3888, !12, i64 3896, !6, i64 3904, !6, i64 3908, !32, i64 3912}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"ScanTable", !14, i64 0, !7, i64 8, !7, i64 72}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"p1 _ZTS15AVRefStructPool", !12, i64 0}
!18 = !{!"BufferPoolContext", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!19 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !20, i64 48, !14, i64 56, !7, i64 64, !21, i64 80, !14, i64 88, !7, i64 96, !6, i64 112}
!20 = !{!"p1 _ZTS10MPVPicture", !12, i64 0}
!21 = !{!"p1 int", !12, i64 0}
!22 = !{!"p1 short", !12, i64 0}
!23 = !{!"ScratchpadContext", !14, i64 0, !14, i64 8, !7, i64 16, !6, i64 24}
!24 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!25 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!26 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!27 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!28 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!29 = !{!"VideoDSPContext", !12, i64 0, !12, i64 8}
!30 = !{!"H263DSPContext", !12, i64 0, !12, i64 8}
!31 = !{!"short", !7, i64 0}
!32 = !{!"ERContext", !15, i64 0, !12, i64 8, !21, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !16, i64 40, !16, i64 48, !7, i64 56, !6, i64 60, !14, i64 64, !14, i64 72, !7, i64 80, !14, i64 104, !14, i64 112, !7, i64 120, !33, i64 184, !33, i64 256, !33, i64 328, !7, i64 400, !7, i64 416, !31, i64 432, !31, i64 434, !6, i64 436, !6, i64 440, !12, i64 448, !12, i64 456}
!33 = !{!"ERPicture", !34, i64 0, !35, i64 8, !36, i64 16, !7, i64 24, !7, i64 40, !21, i64 56, !6, i64 64}
!34 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!35 = !{!"p1 _ZTS11ThreadFrame", !12, i64 0}
!36 = !{!"p1 _ZTS14ThreadProgress", !12, i64 0}
!37 = !{!10, !6, i64 3112}
!38 = !{!10, !6, i64 396}
!39 = !{!40, !22, i64 10120}
!40 = !{!"VC1Context", !10, i64 0, !41, i64 4384, !42, i64 4408, !25, i64 5128, !46, i64 5192, !6, i64 5952, !6, i64 5956, !6, i64 5960, !6, i64 5964, !6, i64 5968, !6, i64 5972, !6, i64 5976, !6, i64 5980, !6, i64 5984, !6, i64 5988, !6, i64 5992, !6, i64 5996, !6, i64 6000, !6, i64 6004, !6, i64 6008, !6, i64 6012, !6, i64 6016, !6, i64 6020, !6, i64 6024, !6, i64 6028, !6, i64 6032, !6, i64 6036, !6, i64 6040, !6, i64 6044, !6, i64 6048, !6, i64 6052, !6, i64 6056, !6, i64 6060, !6, i64 6064, !6, i64 6068, !6, i64 6072, !6, i64 6076, !6, i64 6080, !6, i64 6084, !6, i64 6088, !6, i64 6092, !6, i64 6096, !7, i64 6100, !7, i64 6101, !6, i64 6104, !6, i64 6108, !6, i64 6112, !6, i64 6116, !7, i64 6120, !7, i64 6121, !7, i64 6122, !6, i64 6380, !6, i64 6384, !14, i64 6392, !14, i64 6400, !7, i64 6408, !7, i64 6409, !7, i64 6410, !7, i64 6411, !6, i64 6412, !6, i64 6416, !6, i64 6420, !6, i64 6424, !6, i64 6428, !6, i64 6432, !7, i64 6436, !21, i64 6440, !21, i64 6448, !6, i64 6456, !6, i64 6460, !6, i64 6464, !6, i64 6468, !6, i64 6472, !14, i64 6480, !14, i64 6488, !7, i64 6496, !7, i64 6497, !31, i64 6498, !7, i64 6500, !7, i64 6501, !6, i64 6504, !7, i64 6508, !7, i64 6509, !43, i64 6512, !6, i64 6520, !6, i64 6524, !14, i64 6528, !14, i64 6536, !14, i64 6544, !6, i64 6552, !6, i64 6556, !6, i64 6560, !6, i64 6564, !7, i64 6568, !7, i64 7080, !7, i64 7592, !7, i64 8104, !7, i64 8616, !7, i64 9128, !14, i64 9640, !14, i64 9648, !6, i64 9656, !21, i64 9664, !6, i64 9672, !6, i64 9676, !6, i64 9680, !6, i64 9684, !6, i64 9688, !6, i64 9692, !7, i64 9696, !7, i64 9697, !6, i64 9700, !7, i64 9704, !7, i64 9705, !7, i64 9706, !7, i64 9707, !7, i64 9708, !7, i64 9709, !7, i64 9710, !6, i64 9712, !7, i64 9716, !7, i64 9717, !14, i64 9720, !6, i64 9728, !14, i64 9736, !6, i64 9744, !7, i64 9748, !7, i64 9749, !7, i64 9750, !7, i64 9751, !7, i64 9752, !7, i64 9753, !6, i64 9756, !6, i64 9760, !7, i64 9764, !7, i64 9765, !43, i64 9768, !43, i64 9776, !43, i64 9784, !43, i64 9792, !7, i64 9800, !7, i64 9801, !14, i64 9808, !6, i64 9816, !7, i64 9820, !14, i64 9888, !14, i64 9896, !14, i64 9904, !7, i64 9912, !14, i64 9928, !7, i64 9936, !6, i64 9952, !6, i64 9956, !6, i64 9960, !6, i64 9964, !6, i64 9968, !6, i64 9972, !6, i64 9976, !6, i64 9980, !7, i64 9984, !6, i64 9992, !6, i64 9996, !6, i64 10000, !6, i64 10004, !6, i64 10008, !6, i64 10012, !6, i64 10016, !6, i64 10020, !6, i64 10024, !6, i64 10028, !6, i64 10032, !6, i64 10036, !6, i64 10040, !6, i64 10044, !34, i64 10048, !6, i64 10056, !6, i64 10060, !6, i64 10064, !6, i64 10068, !7, i64 10072, !6, i64 10104, !6, i64 10108, !6, i64 10112, !22, i64 10120, !6, i64 10128, !6, i64 10132, !6, i64 10136, !6, i64 10140, !6, i64 10144, !21, i64 10152, !21, i64 10160, !14, i64 10168, !14, i64 10176, !22, i64 10184, !22, i64 10192, !7, i64 10200, !7, i64 10201, !7, i64 10202, !6, i64 10204, !6, i64 10208, !6, i64 10212, !7, i64 10224}
!41 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!42 = !{!"IntraX8Context", !7, i64 0, !43, i64 32, !7, i64 40, !6, i64 64, !14, i64 72, !7, i64 80, !27, i64 272, !15, i64 392, !22, i64 400, !44, i64 408, !24, i64 528, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572, !34, i64 576, !45, i64 584, !6, i64 592, !6, i64 596, !6, i64 600, !7, i64 608, !7, i64 632, !6, i64 676, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716}
!43 = !{!"p1 _ZTS7VLCElem", !12, i64 0}
!44 = !{!"IntraX8DSPContext", !12, i64 0, !12, i64 8, !7, i64 16, !12, i64 112}
!45 = !{!"p1 _ZTS13GetBitContext", !12, i64 0}
!46 = !{!"VC1DSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !7, i64 144, !7, i64 400, !7, i64 656, !7, i64 680, !12, i64 704, !12, i64 712, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752}
!47 = !{!40, !6, i64 10140}
!48 = !{!40, !6, i64 10144}
!49 = !{!40, !6, i64 10136}
!50 = !{!40, !6, i64 10132}
!51 = !{!40, !7, i64 6120}
!52 = !{!40, !6, i64 6044}
!53 = !{!40, !7, i64 9748}
!54 = !{!40, !14, i64 9736}
!55 = !{!7, !7, i64 0}
!56 = !{!40, !6, i64 9700}
!57 = !{!40, !14, i64 9808}
!58 = !{!40, !12, i64 5280}
!59 = distinct !{null}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!10, !6, i64 3780}
!63 = !{!40, !12, i64 5272}
!64 = distinct !{null}
!65 = !{!10, !6, i64 388}
!66 = distinct !{!66, !61}
!67 = !{!40, !14, i64 6488}
!68 = !{!6, !6, i64 0}
!69 = distinct !{!69, !61}
!70 = distinct !{!70, !61}
!71 = !{!14, !14, i64 0}
!72 = !{!10, !16, i64 416}
!73 = !{!10, !6, i64 496}
!74 = !{!40, !12, i64 5320}
!75 = distinct !{null}
!76 = !{!10, !16, i64 424}
!77 = !{!40, !12, i64 5304}
!78 = !{!40, !6, i64 10204}
!79 = !{!10, !6, i64 500}
!80 = !{!40, !12, i64 5328}
!81 = distinct !{null}
!82 = !{!40, !12, i64 5312}
!83 = !{!40, !12, i64 5296}
!84 = !{!40, !21, i64 10160}
!85 = !{!40, !14, i64 10176}
!86 = !{!40, !22, i64 10192}
!87 = !{!40, !21, i64 6448}
!88 = !{!40, !6, i64 9996}
!89 = !{!16, !16, i64 0}
!90 = !{!22, !22, i64 0}
!91 = !{!10, !6, i64 400}
!92 = !{!40, !6, i64 9992}
!93 = !{!31, !31, i64 0}
!94 = !{!40, !12, i64 5288}
!95 = distinct !{null}
!96 = !{!12, !12, i64 0}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = distinct !{null}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
end_hunk_4
