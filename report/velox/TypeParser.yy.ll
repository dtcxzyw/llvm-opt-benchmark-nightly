Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TypeParser.yy?download=true
inline.NumInlined: 1053
inline.NumDeleted: 332
begin_hunk_0_@_ZN8facebook5velox9functions9prestosql6Parser5parseEv:bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -64
  %i.n = load i8, ptr %i.m, align 16, !tbaa !138  ; 2 uses
  %i.o = icmp eq i8 %i.n, 32
  br i1 %i.o, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit271, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 46 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  br label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %_ZN8facebook5velox9functions9prestosql6Parser5stackINS3_17stack_symbol_typeESt6vectorIS5_SaIS5_EEE5clearEv.exit
  %lpad.loopexit.split-lp936 = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %lpad.loopexit.split-lp936, 0
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %i.ay = phi i8 [ %i.n, %.lr.ph.lr.ph ], [ %.be, %.lr.ph.backedge ]
  %.067443 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.067443.be, %.lr.ph.backedge ] ; 42 uses
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser7yypact_E, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !136 ; 2 uses
  %i.bc = sext i8 %i.bb to i32
  %i.bd = icmp eq i8 %i.bb, -27
  br i1 %i.bd, label %bb.t, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr %3, align 16, !tbaa !135  ; 2 uses
  %i.bf = icmp eq i32 %i.be, -2
  br i1 %i.bf, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.bh = invoke noundef i32 @_ZN8facebook5velox9functions9prestosql7Scanner3lexEPNS2_6Parser10value_typeE(ptr noundef nonnull align 8 dereferenceable(760) %i.bg, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.g       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %_ZN8facebook5velox9functions9prestosql6Parser12yytranslate_Ei.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = icmp samesign ult i32 %i.bh, 276
  br i1 %i.bj, label %bb.f, label %_ZN8facebook5velox9functions9prestosql6Parser12yytranslate_Ei.exit

bb.f:                                             ; preds = %bb.e
  %i.bk = zext nneg i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZZN8facebook5velox9functions9prestosql6Parser12yytranslate_EiE15translate_table, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !136
  %i.bn = sext i8 %i.bm to i32
  br label %_ZN8facebook5velox9functions9prestosql6Parser12yytranslate_Ei.exit

_ZN8facebook5velox9functions9prestosql6Parser12yytranslate_Ei.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ 0, %bb.d ], [ %i.bn, %bb.f ], [ 2, %bb.e ] ; 2 uses
  store i32 %.0.i, ptr %3, align 16, !tbaa !135
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null                          ; 2 uses
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0      ; 2 uses
  %i.bq = extractvalue { ptr, i32 } %i.bo, 1
  %i.br = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE) #28
  %i.bs = icmp eq i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bt = call ptr @__cxa_begin_catch(ptr %i.bp) #28
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser5errorERKNS3_12syntax_errorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257 unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.hj

bb.k:                                             ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.k ], [ %i.bu, %bb.j ]
  %.049 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit

bb.m:                                             ; preds = %_ZN8facebook5velox9functions9prestosql6Parser12yytranslate_Ei.exit, %bb.b
  %i.bw = phi i32 [ %.0.i, %_ZN8facebook5velox9functions9prestosql6Parser12yytranslate_Ei.exit ], [ %i.be, %bb.b ] ; 3 uses
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 2, ptr %3, align 16, !tbaa !135
  br label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257

bb.o:                                             ; preds = %bb.m
  %i.by = add nsw i32 %i.bw, %i.bc                ; 2 uses
  %or.cond = icmp ugt i32 %i.by, 97
  br i1 %or.cond, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser8yycheck_E, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !136
  %i.cc = sext i8 %i.cb to i32
  %.not = icmp eq i32 %i.bw, %i.cc
  br i1 %.not, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser8yytable_E, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !136 ; 3 uses
  %i.cf = icmp slt i8 %i.ce, 1
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = sext i8 %i.ce to i32
  %i.ch = sub nsw i32 0, %i.cg
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.067443, i32 1)
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser7yypush_EPKcaONS3_11symbol_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull poison, i8 noundef signext %i.ce, ptr noundef nonnull align 16 dereferenceable(64) %3)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.backedge:                                        ; preds = %bb.s, %_ZN8facebook5velox9functions9prestosql6Parser7yypush_EPKcONS3_17stack_symbol_typeE.exit
  %.067.be = phi i32 [ %spec.select, %bb.s ], [ %.269733, %_ZN8facebook5velox9functions9prestosql6Parser7yypush_EPKcONS3_17stack_symbol_typeE.exit ]
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !130 ; 2 uses
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cj, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -64
  %i.cp = load i8, ptr %i.co, align 16, !tbaa !138 ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 32
  br i1 %i.cq, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit271, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.backedge, %_ZN8facebook5velox9functions9prestosql6Parser7yypush_EPKcONS3_17stack_symbol_typeE.exit268
  %.be = phi i8 [ %i.cp, %.backedge ], [ %i.aat, %_ZN8facebook5velox9functions9prestosql6Parser7yypush_EPKcONS3_17stack_symbol_typeE.exit268 ]
  %.067443.be = phi i32 [ %.067.be, %.backedge ], [ 3, %_ZN8facebook5velox9functions9prestosql6Parser7yypush_EPKcONS3_17stack_symbol_typeE.exit268 ]
  br label %.lr.ph

bb.t:                                             ; preds = %bb.o, %bb.p, %.lr.ph
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !130 ; 2 uses
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cs, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -64
  %i.cy = load i8, ptr %i.cx, align 16, !tbaa !138
  %i.cz = sext i8 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser9yydefact_E, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !136 ; 2 uses
  %i.dc = sext i8 %i.db to i32
  %i.dd = icmp eq i8 %i.db, 0
  br i1 %i.dd, label %bb.go, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.079 = phi i32 [ %i.dc, %bb.t ], [ %i.ch, %bb.r ] ; 2 uses
  %i.de = sext i32 %.079 to i64                   ; 2 uses
  %i.df = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser5yyr2_E, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !136 ; 2 uses
  %i.dh = sext i8 %i.dg to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeC1Ev(ptr noundef nonnull align 16 dereferenceable(64) %4)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !129 ; 6 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 5 uses
  %i.dn = xor i8 %i.dg, -1
  %i.do = sext i8 %i.dn to i64
  %i.dp = getelementptr i8, ptr %i.dj, i64 %i.dm  ; 56 uses
  %i.dq = getelementptr [64 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load i8, ptr %i.dq, align 16, !tbaa !138 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser5yyr1_E, i64 %i.de
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !136 ; 2 uses
  %i.du = sext i8 %i.dt to i64
  %i.dv = add nsw i64 %i.du, -21                  ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser8yypgoto_E, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !136
  %i.dy = sext i8 %i.dx to i32
  %i.dz = sext i8 %i.dr to i32
  %i.ea = add nsw i32 %i.dy, %i.dz                ; 2 uses
  %or.cond.i = icmp ult i32 %i.ea, 98
  br i1 %or.cond.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser8yycheck_E, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !136
  %i.ee = icmp eq i8 %i.ed, %i.dr
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser8yytable_E, i64 %i.eb
  br label %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.eg = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser10yydefgoto_E, i64 %i.dv
  br label %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit

_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit: ; preds = %bb.x, %bb.y
  %.0.in.i = phi ptr [ %i.ef, %bb.x ], [ %i.eg, %bb.y ]
  %.0.i117 = load i8, ptr %.0.in.i, align 1, !tbaa !136
  store i8 %.0.i117, ptr %4, align 16, !tbaa !138
  switch i8 %i.dt, label %bb.ai [
    i8 36, label %bb.ab
    i8 19, label %bb.ac
    i8 20, label %bb.ac
    i8 37, label %bb.ad
    i8 23, label %bb.ae
    i8 24, label %bb.ae
    i8 25, label %bb.ae
    i8 28, label %bb.ae
    i8 29, label %bb.ae
    i8 30, label %bb.ae
    i8 31, label %bb.ae
    i8 32, label %bb.ae
    i8 33, label %bb.ae
    i8 34, label %bb.ae
    i8 43, label %bb.ae
    i8 15, label %bb.af
    i8 16, label %bb.af
    i8 17, label %bb.af
    i8 18, label %bb.af
    i8 27, label %bb.af
    i8 38, label %bb.af
    i8 39, label %bb.af
    i8 40, label %bb.af
    i8 41, label %bb.af
    i8 42, label %bb.af
    i8 35, label %bb.ag
    i8 26, label %bb.ah
  ]

bb.z:                                             ; preds = %bb.u
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  br label %bb.gn

bb.aa:                                            ; preds = %_ZN8facebook5velox9functions9prestosql6Parser5stackINS3_17stack_symbol_typeESt6vectorIS5_SaIS5_EEE4pushEOS5_.exit.i, %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.gm, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.ej, %bb.aa ], [ %i.xr, %bb.gm ]
  %i.ek = extractvalue { ptr, i32 } %eh.lpad-body, 0
  br label %.loopexit294

bb.ab:                                            ; preds = %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  br label %bb.ai

bb.ac:                                            ; preds = %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit
  store i64 0, ptr %i.q, align 16, !tbaa !148
  br label %bb.ai

bb.ad:                                            ; preds = %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit
  store ptr %i.r, ptr %i.q, align 16, !tbaa !163
  store i64 0, ptr %i.s, align 8, !tbaa !167
  store i8 0, ptr %i.r, align 16, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %bb.ai

bb.ae:                                            ; preds = %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.q, i8 0, i64 16, i1 false)
  br label %bb.ai

bb.af:                                            ; preds = %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit
  store ptr %i.r, ptr %i.q, align 16, !tbaa !163
  store i64 0, ptr %i.s, align 8, !tbaa !167
  store i8 0, ptr %i.r, align 16, !tbaa !136
  br label %bb.ai

bb.ag:                                            ; preds = %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.q, i8 0, i64 24, i1 false)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.q, i8 0, i64 24, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %_ZN8facebook5velox9functions9prestosql6Parser17yy_lr_goto_state_Eai.exit, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab
  switch i32 %.079, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit [
    i32 2, label %bb.aj
    i32 3, label %.lr.ph.i.i
    i32 4, label %bb.ao
    i32 5, label %bb.ap
    i32 6, label %bb.as
    i32 7, label %bb.av
    i32 8, label %bb.aw
    i32 9, label %bb.ax
    i32 10, label %bb.ay
    i32 11, label %bb.az
    i32 12, label %bb.ba
    i32 13, label %bb.bb
    i32 14, label %bb.bc
    i32 15, label %bb.bd
    i32 16, label %bb.be
    i32 17, label %bb.bg
    i32 18, label %.invoke
    i32 19, label %.invoke834
    i32 20, label %bb.bi
    i32 21, label %bb.bj
    i32 22, label %bb.bk
    i32 23, label %bb.bl
    i32 24, label %.invoke
    i32 25, label %bb.bm
    i32 26, label %bb.bp
    i32 27, label %bb.bs
    i32 28, label %bb.bv
    i32 29, label %bb.cb
    i32 30, label %bb.ck
    i32 31, label %bb.ct
    i32 32, label %bb.cw
    i32 33, label %bb.cz
    i32 34, label %bb.da
    i32 35, label %bb.dc
    i32 36, label %bb.df
    i32 37, label %bb.dh
    i32 38, label %bb.dn
    i32 39, label %bb.dq
    i32 40, label %bb.dt
    i32 41, label %.invoke
    i32 42, label %bb.dx
    i32 43, label %bb.ec
    i32 44, label %bb.eh
    i32 45, label %bb.es
    i32 46, label %bb.fd
    i32 47, label %bb.fm
    i32 48, label %.invoke
    i32 49, label %bb.ga
    i32 0, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.el = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.em = getelementptr i8, ptr %i.dp, i64 -48
  %i.en = getelementptr i8, ptr %i.dp, i64 -40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !151 ; 2 uses
  %i.ep = load <2 x ptr>, ptr %i.em, align 8, !tbaa !152
  store <2 x ptr> %i.ep, ptr %5, align 16, !tbaa !152
  %.not.i.i.i118 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i118, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 3 uses
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !159
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !159
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.am:                                            ; preds = %bb.ak
  %i.eu = atomicrmw volatile add ptr %i.eq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.al, %bb.am
  call void @_ZN8facebook5velox9functions9prestosql7Scanner7setTypeESt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(760) %i.el, ptr noundef nonnull align 8 %5)
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  br label %.lr.ph.i.i

bb.an:                                            ; preds = %.invoke834, %.invoke833, %.invoke, %bb.fo, %bb.fm, %bb.dt, %bb.df, %bb.dd, %bb.dc, %bb.da, %bb.bh, %bb.bg, %bb.be
  %i.ev = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null
  br label %bb.gd

bb.ao:                                            ; preds = %bb.ai
  %i.ew = getelementptr i8, ptr %i.dp, i64 -48
  %i.ex = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.ap:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ey = getelementptr i8, ptr %i.dp, i64 -48
  invoke void @_ZN8facebook5velox9functions9prestosql19inferTypeWithSpacesERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i1 noundef zeroext true)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ez = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28 ; 0 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN8facebook5velox4TypeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.lr.ph.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.fa = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.gd

bb.as:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.fb = getelementptr i8, ptr %i.dp, i64 -48
  invoke void @_ZN8facebook5velox9functions9prestosql14typeFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i1 noundef zeroext true)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 0 uses
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.lr.ph.i.i

bb.au:                                            ; preds = %bb.as
  %i.fd = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.gd

bb.av:                                            ; preds = %bb.ai
  %i.fe = getelementptr i8, ptr %i.dp, i64 -48
  %i.ff = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.aw:                                            ; preds = %bb.ai
  %i.fg = getelementptr i8, ptr %i.dp, i64 -48
  %i.fh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.ax:                                            ; preds = %bb.ai
  %i.fi = getelementptr i8, ptr %i.dp, i64 -48
  %i.fj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.ay:                                            ; preds = %bb.ai
  %i.fk = getelementptr i8, ptr %i.dp, i64 -48
  %i.fl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.az:                                            ; preds = %bb.ai
  %i.fm = getelementptr i8, ptr %i.dp, i64 -48
  %i.fn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.ba:                                            ; preds = %bb.ai
  %i.fo = getelementptr i8, ptr %i.dp, i64 -48
  %i.fp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.bb:                                            ; preds = %bb.ai
  %i.fq = getelementptr i8, ptr %i.dp, i64 -48
  %i.fr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.bc:                                            ; preds = %bb.ai
  %i.fs = getelementptr i8, ptr %i.dp, i64 -48
  %i.ft = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.bd:                                            ; preds = %bb.ai
  %i.fu = getelementptr i8, ptr %i.dp, i64 -48
  %i.fv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.be:                                            ; preds = %bb.ai
  %i.fw = getelementptr i8, ptr %i.dp, i64 -112
  %i.fx = getelementptr i8, ptr %i.dp, i64 -48
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.fx)
          to label %bb.bf unwind label %bb.an

bb.bf:                                            ; preds = %bb.be
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = getelementptr i8, ptr %i.fz, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 -112
  %i.gf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ge) #28 ; 0 uses
  br label %.lr.ph.i.i

bb.bg:                                            ; preds = %bb.ai
  %i.gg = getelementptr i8, ptr %i.dp, i64 -112
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.gg)
          to label %bb.bh unwind label %bb.an

bb.bh:                                            ; preds = %bb.bg
  %i.gh = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = getelementptr i8, ptr %i.gi, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 -48
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.gn)
          to label %.lr.ph.i.i unwind label %bb.an

bb.bi:                                            ; preds = %bb.ai
  br label %.invoke834

bb.bj:                                            ; preds = %bb.ai
  br label %.invoke834

bb.bk:                                            ; preds = %bb.ai
  br label %.invoke834

bb.bl:                                            ; preds = %bb.ai
  br label %.invoke834

.invoke834:                                       ; preds = %bb.ai, %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %i.go = phi ptr [ @.str.5, %bb.bl ], [ @.str.4, %bb.bk ], [ @.str.3, %bb.bj ], [ @.str.2, %bb.bi ], [ @.str.1, %bb.ai ]
  %i.gp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull %i.go)
          to label %.lr.ph.i.i unwind label %bb.an ; 0 uses

bb.bm:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.gq = getelementptr i8, ptr %i.dp, i64 -240
  invoke void @_ZN8facebook5velox9functions9prestosql14typeFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.gq, i1 noundef zeroext true)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %8) #28 ; 0 uses
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.lr.ph.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.gs = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.gd

bb.bp:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.gt = getelementptr i8, ptr %i.dp, i64 -48
  invoke void @_ZN8facebook5velox9functions9prestosql14typeFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i1 noundef zeroext true)
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions9prestosql6Parser5parseEv:bb.a
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = ptrtoint ptr %i.vf to i64
  %i.vi = sub i64 %i.vg, %i.vh
  %i.vj = getelementptr i8, ptr %i.vf, i64 %i.vi
  %i.vk = getelementptr i8, ptr %i.vj, i64 -48
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %i.vk)
          to label %bb.fr unwind label %bb.fv

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @.str.14)
          to label %bb.fs unwind label %bb.fw

bb.fs:                                            ; preds = %bb.fr
  %i.vl = load ptr, ptr %46, align 8, !tbaa !166  ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.u
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.fs
  %i.vn = load i64, ptr %i.u, align 8, !tbaa !136
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  %i.vp = load ptr, ptr %45, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef %i.vp, ptr noundef nonnull align 1 dereferenceable(1) %48)
          to label %bb.ft unwind label %bb.fx

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.vq = load ptr, ptr %0, align 8, !tbaa !118
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 24
  %i.vs = load ptr, ptr %i.vr, align 8
  invoke void %i.vs(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %bb.fu unwind label %bb.fy

bb.fu:                                            ; preds = %bb.ft
  %i.vt = load ptr, ptr %47, align 8, !tbaa !166  ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.v
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.fu
  %i.vv = load i64, ptr %i.v, align 8, !tbaa !136
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  %i.vx = load ptr, ptr %45, align 8, !tbaa !166  ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.w
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.vz = load i64, ptr %i.w, align 8, !tbaa !136
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br label %bb.fz

bb.fv:                                            ; preds = %bb.fq
  %i.wb = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

bb.fw:                                            ; preds = %bb.fr
  %i.wc = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null                          ; 2 uses
  %i.wd = load ptr, ptr %46, align 8, !tbaa !166  ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.u
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.fw
  %i.wf = load i64, ptr %i.u, align 8, !tbaa !136
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236, %bb.fv
  %.pn86 = phi { ptr, i32 } [ %i.wb, %bb.fv ], [ %i.wc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236 ], [ %i.wc, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.fx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.wh = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.fy:                                            ; preds = %bb.ft
  %i.wi = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null                          ; 2 uses
  %i.wj = load ptr, ptr %47, align 8, !tbaa !166  ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.v
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.fy
  %i.wl = load i64, ptr %i.v, align 8, !tbaa !136
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.fx
  %.pn88 = phi { ptr, i32 } [ %i.wh, %bb.fx ], [ %i.wi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %i.wi, %bb.fy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  %i.wn = load ptr, ptr %45, align 8, !tbaa !166  ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.w
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.wp = load i64, ptr %i.w, align 8, !tbaa !136
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %.pn88.pn = phi { ptr, i32 } [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %.pn88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br label %bb.gd

bb.fz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %bb.fp, %bb.fn
  %i.wr = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.ws = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.wt = ptrtoint ptr %i.wr to i64
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = sub i64 %i.wt, %i.wu
  %i.ww = getelementptr i8, ptr %i.ws, i64 %i.wv
  br label %.invoke

.invoke:                                          ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.fz
  %.sink = phi ptr [ %i.dp, %bb.ai ], [ %i.dp, %bb.ai ], [ %i.dp, %bb.ai ], [ %i.ww, %bb.fz ], [ %i.dp, %bb.ai ]
  %i.wx = getelementptr i8, ptr %.sink, i64 -48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.wx)
          to label %.lr.ph.i.i unwind label %bb.an

bb.ga:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  %i.wy = getelementptr i8, ptr %i.dp, i64 -304
  %i.wz = getelementptr i8, ptr %i.dp, i64 -432
  %i.xa = getelementptr i8, ptr %i.dp, i64 -112
  invoke void @_ZN8facebook5velox9functions9prestosql11getEnumTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %49, ptr noundef nonnull align 8 dereferenceable(32) %i.wy, ptr noundef nonnull align 8 dereferenceable(32) %i.wz, ptr noundef nonnull align 8 dereferenceable(32) %i.xa)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.xb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %49) #28 ; 0 uses
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %.lr.ph.i.i

bb.gc:                                            ; preds = %bb.ga
  %i.xc = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %bb.dw, %bb.ds, %bb.dp, %bb.dm, %bb.cy, %bb.cv, %bb.cs, %bb.cj, %bb.ca, %bb.bu, %bb.br, %bb.bo, %bb.au, %bb.ar, %bb.an
  %.pn109 = phi { ptr, i32 } [ %i.fa, %bb.ar ], [ %i.fd, %bb.au ], [ %i.ev, %bb.an ], [ %i.gs, %bb.bo ], [ %i.gv, %bb.br ], [ %i.hd, %bb.bu ], [ %i.ho, %bb.ca ], [ %i.ik, %bb.cj ], [ %i.jo, %bb.cs ], [ %i.ke, %bb.cv ], [ %i.ki, %bb.cy ], [ %i.mo, %bb.dm ], [ %i.ms, %bb.dp ], [ %i.mv, %bb.ds ], [ %i.nt, %bb.dw ], [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %.pn100.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.pn95.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn91.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %.pn88.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.xc, %bb.gc ] ; 2 uses
  %.16 = extractvalue { ptr, i32 } %.pn109, 1
  %.17 = extractvalue { ptr, i32 } %.pn109, 0     ; 2 uses
  %i.xd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox9functions9prestosql6Parser12syntax_errorE) #28
  %i.xe = icmp eq i32 %.16, %i.xd
  br i1 %i.xe, label %bb.ge, label %.loopexit294

bb.ge:                                            ; preds = %bb.gd
  %i.xf = call ptr @__cxa_begin_catch(ptr %.17) #28
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser5errorERKNS3_12syntax_errorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.xf)
          to label %bb.gf unwind label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.i255 unwind label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  %i.xg = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.gi unwind label %bb.hj

bb.gh:                                            ; preds = %bb.gf
  %i.xh = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gg, %bb.gh
  %.pn111 = phi { ptr, i32 } [ %i.xh, %bb.gh ], [ %i.xg, %bb.gg ]
  %.18 = extractvalue { ptr, i32 } %.pn111, 0
  br label %.loopexit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ai
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %.invoke834, %.invoke833, %.invoke, %bb.bh, %bb.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %bb.dv, %bb.dr, %bb.do, %bb.dl, %bb.de, %bb.db, %bb.cx, %bb.cu, %bb.cr, %bb.ci, %bb.bz, %bb.bt, %bb.bq, %bb.bn, %bb.bf, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.aq, %bb.ao, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %.269732 = phi i32 [ %.067443, %bb.az ], [ %.067443, %.invoke ], [ 0, %bb.ai ], [ %.067443, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit ], [ %.067443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %.067443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.067443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %.067443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.067443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %.067443, %bb.ao ], [ %.067443, %bb.dv ], [ %.067443, %bb.dr ], [ %.067443, %bb.do ], [ %.067443, %bb.dl ], [ %.067443, %.invoke833 ], [ %.067443, %bb.de ], [ %.067443, %bb.db ], [ %.067443, %bb.at ], [ %.067443, %bb.cx ], [ %.067443, %bb.cu ], [ %.067443, %bb.cr ], [ %.067443, %bb.ci ], [ %.067443, %bb.bz ], [ %.067443, %bb.bt ], [ %.067443, %bb.bq ], [ %.067443, %bb.bn ], [ %.067443, %bb.aq ], [ %.067443, %.invoke834 ], [ %.067443, %bb.av ], [ %.067443, %bb.aw ], [ %.067443, %bb.ax ], [ %.067443, %bb.ay ], [ %.067443, %bb.gb ], [ %.067443, %bb.bh ], [ %.067443, %bb.bf ], [ %.067443, %bb.bd ], [ %.067443, %bb.bc ], [ %.067443, %bb.bb ], [ %.067443, %bb.ba ], [ %.067443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.xi = zext nneg i32 %i.dh to i64
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph.i.i
  %.02.i.i = phi i64 [ %i.xi, %.lr.ph.i.i ], [ %i.xl, %bb.gj ] ; 2 uses
  %i.xj = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.xk = getelementptr inbounds i8, ptr %i.xj, i64 -64 ; 2 uses
  store ptr %i.xk, ptr %i.d, align 8, !tbaa !130
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %i.xk) #28
  %i.xl = add nsw i64 %.02.i.i, -1
  %i.xm = icmp samesign ugt i64 %.02.i.i, 1
  br i1 %i.xm, label %bb.gj, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit, !llvm.loop !3

_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit: ; preds = %bb.gj, %bb.ai
  %.269733 = phi i32 [ %.067443, %bb.ai ], [ %.269732, %bb.gj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeC1Ev(ptr noundef nonnull align 16 dereferenceable(64) %2)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit
  %i.xn = load ptr, ptr %i.d, align 8, !tbaa !130 ; 3 uses
  %i.xo = load ptr, ptr %i.av, align 8, !tbaa !132
  %.not.i.i.i.i247 = icmp eq ptr %i.xn, %i.xo
  br i1 %.not.i.i.i.i247, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %.noexc
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeC1EOS4_(ptr noundef nonnull align 16 dereferenceable(64) %i.xn, ptr noundef nonnull align 16 dereferenceable(64) %2)
          to label %.noexc.i.i unwind label %bb.gm

.noexc.i.i:                                       ; preds = %bb.gk
  %i.xp = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  store ptr %i.xq, ptr %i.d, align 8, !tbaa !130
  br label %_ZN8facebook5velox9functions9prestosql6Parser5stackINS3_17stack_symbol_typeESt6vectorIS5_SaIS5_EEE4pushEOS5_.exit.i

bb.gl:                                            ; preds = %.noexc
  invoke void @_ZNSt6vectorIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.xn, ptr noundef nonnull align 16 dereferenceable(64) %2)
          to label %_ZN8facebook5velox9functions9prestosql6Parser5stackINS3_17stack_symbol_typeESt6vectorIS5_SaIS5_EEE4pushEOS5_.exit.i unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.xr = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.body

_ZN8facebook5velox9functions9prestosql6Parser5stackINS3_17stack_symbol_typeESt6vectorIS5_SaIS5_EEE4pushEOS5_.exit.i: ; preds = %bb.gl, %.noexc.i.i
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.xs = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.xt = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = ptrtoint ptr %i.xt to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = getelementptr i8, ptr %i.xt, i64 %i.xw
  %i.xy = getelementptr i8, ptr %i.xx, i64 -64
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE4moveERS6_(ptr noundef nonnull align 16 dereferenceable(64) %i.xy, ptr noundef nonnull align 16 dereferenceable(64) %4)
          to label %_ZN8facebook5velox9functions9prestosql6Parser7yypush_EPKcONS3_17stack_symbol_typeE.exit unwind label %bb.aa

_ZN8facebook5velox9functions9prestosql6Parser7yypush_EPKcONS3_17stack_symbol_typeE.exit: ; preds = %_ZN8facebook5velox9functions9prestosql6Parser5stackINS3_17stack_symbol_typeESt6vectorIS5_SaIS5_EEE4pushEOS5_.exit.i
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.backedge

.loopexit294:                                     ; preds = %bb.gd, %bb.gi, %.body
  %.19 = phi ptr [ %i.ek, %.body ], [ %.18, %bb.gi ], [ %.17, %bb.gd ]
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %4) #28
  br label %bb.gn

bb.gn:                                            ; preds = %.loopexit294, %bb.z
  %.20 = phi ptr [ %.19, %.loopexit294 ], [ %i.ei, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit

bb.go:                                            ; preds = %bb.t
  switch i32 %.067443, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257 [
    i32 0, label %bb.gp
    i32 3, label %bb.gx
  ]

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser7contextC1ERKS3_RKNS3_11symbol_typeE(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(64) %3)
          to label %bb.gq unwind label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  %i.xz = load ptr, ptr %0, align 8, !tbaa !118
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 32
  %i.yb = load ptr, ptr %i.ya, align 8
  invoke void %i.yb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %50)
          to label %bb.gr unwind label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  %i.yc = load ptr, ptr %0, align 8, !tbaa !118
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 24
  %i.ye = load ptr, ptr %i.yd, align 8
  invoke void %i.ye(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.gs unwind label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  %i.yf = load ptr, ptr %51, align 8, !tbaa !166  ; 2 uses
  %i.yg = icmp eq ptr %i.yf, %i.aw
  br i1 %i.yg, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.gs
  %i.yh = load i64, ptr %i.aw, align 8, !tbaa !136
  %i.yi = add i64 %i.yh, 1
  call void @_ZdlPvm(ptr noundef %i.yf, i64 noundef %i.yi) #30
  br label %.thread

.thread:                                          ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  br label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257

bb.gt:                                            ; preds = %bb.gp
  %i.yj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gw

bb.gu:                                            ; preds = %bb.gq
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.gv:                                            ; preds = %bb.gr
  %i.yl = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ym = load ptr, ptr %51, align 8, !tbaa !166  ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.aw
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.gv
  %i.yo = load i64, ptr %i.aw, align 8, !tbaa !136
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.gu
  %.pn113 = phi { ptr, i32 } [ %i.yk, %bb.gu ], [ %i.yl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %i.yl, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  br label %bb.gw

bb.gw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.gt
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.yj, %bb.gt ]
  %.22 = extractvalue { ptr, i32 } %.pn113.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  br label %.loopexit

bb.gx:                                            ; preds = %bb.go
  %i.yq = load i32, ptr %3, align 16, !tbaa !135
  switch i32 %i.yq, label %bb.gy [
    i32 0, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit271
    i32 -2, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257
  ]

bb.gy:                                            ; preds = %bb.gx
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_7by_kindEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %3) #28
  br label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257

.lr.ph.i.i255:                                    ; preds = %bb.gf
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.yr = zext nneg i32 %i.dh to i64
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %.lr.ph.i.i255
  %.02.i.i256 = phi i64 [ %i.yr, %.lr.ph.i.i255 ], [ %i.yu, %bb.gz ] ; 2 uses
  %i.ys = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.yt = getelementptr inbounds i8, ptr %i.ys, i64 -64 ; 2 uses
  store ptr %i.yt, ptr %i.d, align 8, !tbaa !130
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %i.yt) #28
  %i.yu = add nsw i64 %.02.i.i256, -1
  %i.yv = icmp samesign ugt i64 %.02.i.i256, 1
  br i1 %i.yv, label %bb.gz, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257, !llvm.loop !3

_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257: ; preds = %bb.gz, %bb.gx, %bb.go, %.thread, %bb.i, %bb.gy, %bb.n
  %i.yw = load ptr, ptr %i.d, align 8, !tbaa !130 ; 2 uses
  %i.yx = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = ptrtoint ptr %i.yx to i64
  %i.za = sub i64 %i.yy, %i.yz                    ; 2 uses
  %i.zb = getelementptr i8, ptr %i.yx, i64 %i.za
  %i.zc = getelementptr i8, ptr %i.zb, i64 -64
  %i.zd = load i8, ptr %i.zc, align 16, !tbaa !138 ; 2 uses
  %i.ze = sext i8 %i.zd to i64
  %i.zf = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser7yypact_E, i64 %i.ze
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !136
  %i.zh = icmp sgt i8 %i.zg, -2
  %i.zi = icmp eq i8 %i.zd, 0
  %or.cond835932 = and i1 %i.zh, %i.zi
  br i1 %or.cond835932, label %._crit_edge934, label %.lr.ph933

.lr.ph933:                                        ; preds = %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257, %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit260
  %i.zj = phi i64 [ %i.zr, %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit260 ], [ %i.za, %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257 ]
  %i.zk = phi ptr [ %i.zn, %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit260 ], [ %i.yw, %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit257 ]
  %i.zl = icmp eq i64 %i.zj, 64
  br i1 %i.zl, label %._crit_edge458, label %_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit260

_ZN8facebook5velox9functions9prestosql6Parser6yypop_Ei.exit260: ; preds = %.lr.ph933
  %i.zm = getelementptr inbounds i8, ptr %i.zk, i64 -64 ; 2 uses
  store ptr %i.zm, ptr %i.d, align 8, !tbaa !130
  call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %i.zm) #28
  %i.zn = load ptr, ptr %i.d, align 8, !tbaa !130 ; 2 uses
  %i.zo = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = ptrtoint ptr %i.zo to i64
  %i.zr = sub i64 %i.zp, %i.zq                    ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zo, i64 %i.zr
  %i.zt = getelementptr i8, ptr %i.zs, i64 -64
  %i.zu = load i8, ptr %i.zt, align 16, !tbaa !138 ; 2 uses
  %i.zv = sext i8 %i.zu to i64
  %i.zw = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser7yypact_E, i64 %i.zv
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !136
end_hunk_1
