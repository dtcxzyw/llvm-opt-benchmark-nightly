Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.1?download=true
inline.NumInlined: 278
inline.NumDeleted: 106
begin_hunk_0_@_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink42maybe_clone_an_option_into_selectedcontent:bb.a
  %i.gn = icmp eq i64 %i.gl, 0
  br i1 %i.gn, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ca, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit.i
  %.sroa.0.019.i = phi ptr [ %i.go, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit.i ], [ %i.gj, %bb.ca ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 8 ; 2 uses
  %i.gp = load ptr, ptr %.sroa.0.019.i, align 8, !nonnull !4, !noundef !4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = invoke noundef nonnull ptr @_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node18clone_with_subtree(ptr noundef nonnull align 8 %i.gq)
          to label %bb.cc unwind label %bb.cb     ; 4 uses

bb.cb:                                            ; preds = %.lr.ph.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i14

.body.i14:                                        ; preds = %bb.cf, %bb.ce, %bb.cb
  %eh.lpad-body.i15 = phi { ptr, i32 } [ %i.gs, %bb.cb ], [ %i.gy, %bb.cf ], [ %i.gy, %bb.ce ]
  %i.gt = load i64, ptr %i.gd, align 8, !noundef !4
  %i.gu = add i64 %i.gt, -1
  store i64 %i.gu, ptr %i.gd, align 8
  br label %bb.cu

bb.cc:                                            ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.gr, ptr %i.a, align 8, !noalias !495
  %i.gv = load i64, ptr %i.gc, align 8, !alias.scope !495, !noundef !4 ; 3 uses
  %i.gw = load i64, ptr %i.c, align 8, !range !10, !alias.scope !495, !noundef !4
  %i.gx = icmp eq i64 %i.gv, %i.gw
  br i1 %i.gx, label %bb.cd, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit.i

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8grow_oneB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit.i unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load i64, ptr %i.gr, align 8, !noalias !496, !noundef !4
  %i.ha = add i64 %i.gz, -1                       ; 2 uses
  store i64 %i.ha, ptr %i.gr, align 8, !noalias !496
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.cf, label %.body.i14

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
          to label %.body.i14 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit.i: ; preds = %bb.cd, %bb.cc
  %i.hd = load ptr, ptr %i.gb, align 8, !alias.scope !495, !nonnull !4, !noundef !4
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.gv
  store ptr %i.gr, ptr %i.he, align 8
  %i.hf = add i64 %i.gv, 1
  store i64 %i.hf, ptr %i.gc, align 8, !alias.scope !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hg = icmp eq ptr %i.go, %i.gm
  br i1 %i.hg, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.ch:                                            ; preds = %bb.cu, %bb.ct, %bb.cq
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

._crit_edge.loopexit.i:                           ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit.i
  %.pre.i16 = load i64, ptr %i.gd, align 8
  %.pre21.i = load ptr, ptr %i.d, align 8
  %i.hi = add i64 %.pre.i16, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ca
  %i.hj = phi ptr [ %.pre21.i, %._crit_edge.loopexit.i ], [ %.sroa.0.0.i.i, %bb.ca ] ; 2 uses
  %i.hk = phi i64 [ %i.hi, %._crit_edge.loopexit.i ], [ %i.ge, %bb.ca ]
  store i64 %i.hk, ptr %i.gd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 104 ; 6 uses
  %i.hm = load i64, ptr %i.hl, align 8, !noundef !4
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %bb.ci, label %bb.cm, !prof !9

bb.ci:                                            ; preds = %._crit_edge.i
  store i64 -1, ptr %i.hl, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 112 ; 5 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %.body9.i unwind label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %bb.co unwind label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cm:                                            ; preds = %._crit_edge.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
          to label %bb.cr unwind label %bb.cq

bb.cn:                                            ; preds = %bb.ck
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i

.body9.i:                                         ; preds = %bb.cn, %bb.cj
  %eh.lpad-body10.i = phi { ptr, i32 } [ %i.hr, %bb.cn ], [ %i.hp, %bb.cj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.hs = load i64, ptr %i.hl, align 8, !noundef !4
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hl, align 8
  br label %bb.cs

bb.co:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hu = load i64, ptr %i.hl, align 8, !noundef !4
  %i.hv = add i64 %i.hu, 1
  store i64 %i.hv, ptr %i.hl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.hw = load ptr, ptr %i.d, align 8, !alias.scope !499, !nonnull !4, !noundef !4 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !499, !noundef !4
  %i.hy = add i64 %i.hx, -1                       ; 2 uses
  store i64 %i.hy, ptr %i.hw, align 8, !noalias !499
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.cp, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node36clone_an_option_into_selectedcontent.exit

bb.cp:                                            ; preds = %bb.co
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
  br label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node36clone_an_option_into_selectedcontent.exit

bb.cq:                                            ; preds = %bb.cm
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1o_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.cs unwind label %bb.ch

bb.cr:                                            ; preds = %bb.cm
  unreachable

bb.cs:                                            ; preds = %bb.cu, %bb.cq, %.body9.i
  %.pn17.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.cu ], [ %i.ia, %bb.cq ], [ %eh.lpad-body10.i, %.body9.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.ib = load ptr, ptr %i.d, align 8, !alias.scope !502, !nonnull !4, !noundef !4 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !502, !noundef !4
  %i.id = add i64 %i.ic, -1                       ; 2 uses
  store i64 %i.id, ptr %i.ib, align 8, !noalias !502
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.ct, label %common.resume

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
          to label %common.resume unwind label %bb.ch

bb.cu:                                            ; preds = %.body.i14, %bb.bz
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body.i15, %.body.i14 ], [ %i.gg, %bb.bz ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1o_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.cs unwind label %bb.ch

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node36clone_an_option_into_selectedcontent.exit: ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.cv:                                            ; preds = %bb.cw
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cw:                                            ; preds = %.thread31
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #18
          to label %common.resume unwind label %bb.cv
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink6append(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 12 uses
  %i.b = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !519, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775807
  br i1 %i.h, label %bb.e, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #22
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.k, %bb.e
  %i.i = phi i64 [ %i.v, %bb.e ], [ %.pre, %bb.k ]
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.f, align 8
  %.pre29 = load i64, ptr %2, align 8, !range !7
  %i.k = trunc nuw i64 %.pre29 to i1
  br i1 %i.k, label %bb.q, label %.thread

.body:                                            ; preds = %bb.u, %bb.c
  %.sroa.04.1 = phi i1 [ true, %bb.c ], [ %i.bk, %bb.u ]
  %.sroa.03.1 = phi i1 [ true, %bb.c ], [ %.sroa.03.2, %bb.u ]
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.w, label %bb.x

.body.thread33:                                   ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load i64, ptr %i.f, align 8, !noundef !4
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.f, align 8
  %i.r = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.thread25, label %.thread44

.body.thread:                                     ; preds = %bb.s
  %i.t = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.thread25, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.e:                                             ; preds = %bb.b
  %i.v = add nuw nsw i64 %i.g, 1                  ; 2 uses
  store i64 %i.v, ptr %i.f, align 8, !noalias !519
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ac = icmp eq ptr %i.aa, inttoptr (i64 15 to ptr)
  br i1 %i.ac, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ult ptr %i.aa, inttoptr (i64 9 to ptr)
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = and i64 %i.ab, 1
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.af
  %i.ah = trunc i64 %i.ab to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %.sroa.01.0.i.i = select i1 %i.ah, i64 %i.ak, i64 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i32, ptr %i.am, align 8, !noundef !4
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.01.0.i.i
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.4.0.i = phi i64 [ %i.ao, %bb.h ], [ %i.ab, %bb.i ], [ 0, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.ap, %bb.h ], [ %i.aq, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %i.ar = getelementptr [8 x i8], ptr %i.z, i64 %i.x
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %.val9 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  %i.at = invoke fastcc noundef zeroext i1 @_RNvCs1mImOlsSUsK_17markup5ever_rcdom23append_to_existing_text(ptr nonnull %.val9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.4.0.i)
          to label %bb.k unwind label %.body.thread33

bb.k:                                             ; preds = %bb.j
  %.pre = load i64, ptr %i.f, align 8             ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.au = add i64 %.pre, -1
  store i64 %i.au, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.av = load i64, ptr %2, align 8, !range !7, !alias.scope !520, !noundef !4
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.ax = load ptr, ptr %i.d, align 8, !alias.scope !523, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !523, !noundef !4
  %i.az = add i64 %i.ay, -1                       ; 2 uses
  store i64 %i.az, ptr %i.ax, align 8, !noalias !523
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit

bb.o:                                             ; preds = %bb.l
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.u
  ret void

bb.p:                                             ; preds = %bb.y, %.thread44
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %bb.d
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8, !noalias !524
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bc, align 8, !noalias !524
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.bd, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !524
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !524
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !524
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !525
  %i.be = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !525 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.r, label %bb.v, !prof !5

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.s, !noalias !524

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %.body.thread unwind label %bb.t, !noalias !524

bb.t:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !524
  unreachable

.thread:                                          ; preds = %bb.a, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !noundef !4
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.thread
  %i.bk = phi i1 [ true, %bb.v ], [ false, %.thread ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.be, %bb.v ], [ %i.bj, %.thread ]
  %.sroa.03.2 = xor i1 %i.bk, true
  invoke fastcc void @_RNvCs1mImOlsSUsK_17markup5ever_rcdom6append(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.sroa.02.0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit unwind label %.body

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.be, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !524
  br label %bb.u

bb.w:                                             ; preds = %.body
  br i1 %.sroa.04.1, label %.thread25, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.x:                                             ; preds = %.body
  br i1 %.sroa.03.1, label %.thread44, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit: ; preds = %.body.thread, %.thread25, %bb.y, %.thread44, %bb.x, %bb.w
  %.pn18 = phi { ptr, i32 } [ %.pn2028, %.thread25 ], [ %.pn3847, %.thread44 ], [ %i.l, %bb.x ], [ %i.l, %bb.w ], [ %.pn2028, %bb.y ], [ %i.bg, %.body.thread ]
  resume { ptr, i32 } %.pn18

.thread25:                                        ; preds = %.body.thread33, %.body.thread, %bb.w
  %.pn2028 = phi { ptr, i32 } [ %i.l, %bb.w ], [ %i.bg, %.body.thread ], [ %i.o, %.body.thread33 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !528, !nonnull !4, !noundef !4 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !528, !noundef !4
  %i.bo = add i64 %i.bn, -1                       ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !noalias !528
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.y:                                             ; preds = %.thread25
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit unwind label %bb.p

.thread44:                                        ; preds = %.body.thread33, %bb.x
  %.pn3847 = phi { ptr, i32 } [ %i.l, %bb.x ], [ %i.o, %.body.thread33 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bq) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink9create_pi(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 12 uses
  %.sroa.4 = alloca [23 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !533
  store i64 1, ptr %i.a, align 8, !noalias !533
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !533
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 5, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, i64 23, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !533
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !533
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !533
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !534
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !534 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.c, !noalias !533

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %bb.e unwind label %bb.d, !noalias !533

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !533
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink9elem_name(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noundef !4
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtBW_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink20add_attrs_if_missings_0INtB7_5FnMutTRNtB1I_9AttributeEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !12, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  store i64 1, ptr %i.a, align 8, !noalias !539
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !539
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !539
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !539
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !539
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !540
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !540 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.c, !noalias !539
end_hunk_0
