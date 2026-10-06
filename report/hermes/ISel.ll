Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ISel?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1496
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6hermes3hbc7HBCISel18resolveRelocationsEv:bb.a
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.bz = select i1 %.not.i.i, ptr %i.bx, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ca = icmp eq ptr %i.bw, inttoptr (i64 -16 to ptr)
  %i.cb = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.ca, i1 %i.cb, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.bx, ptr %.02945.i.i
  %i.cc = add i32 %.046.i.i, 1
  %i.cd = add i32 %.046.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.cd, %i.br                ; 2 uses
  %i.ce = zext i32 %.027.i.i to i64
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.ce ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !100 ; 2 uses
  %i.ch = icmp eq ptr %i.ab, %i.cg
  br i1 %i.ch, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i, !prof !102, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %bb.k, %.sink.split.i.i.i, %bb.i, %bb.j
  %.sink.i.i = phi ptr [ %i.bz, %bb.j ], [ null, %.sink.split.i.i.i ], [ %i.bt, %bb.i ], [ %i.cf, %bb.k ]
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, %bb.h
  %i.ci = phi ptr [ %.sink.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %.sink.i.i.i, %bb.h ] ; 5 uses
  %i.cj = phi i32 [ %.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %i.bb, %bb.h ]
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.i, align 8, !tbaa !103
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !100
  %i.cm = icmp eq ptr %i.cl, inttoptr (i64 -8 to ptr)
  br i1 %i.cm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load i32, ptr %i.j, align 4, !tbaa !104
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr %i.j, align 4, !tbaa !104
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i: ; preds = %bb.m, %bb.l
  store ptr %i.ab, ptr %i.ci, align 8, !tbaa !100
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 0, ptr %i.cp, align 8, !tbaa !106
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr null, ptr %i.cq, align 8, !tbaa !107
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit: ; preds = %bb.f, %bb.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i
  %.0.i = phi ptr [ %i.ci, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i ], [ %i.am, %bb.d ], [ %i.ay, %bb.f ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !106
  %i.ct = sub i32 %i.cs, %i.y                     ; 3 uses
  %i.cu = add i32 %i.ct, 128
  %or.cond = icmp ult i32 %i.cu, 256
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit
  %i.cv = add nsw i32 %.044329, 3
  %i.cw = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.cx = add i32 %i.y, 1                         ; 2 uses
  tail call void @_ZN6hermes3hbc25BytecodeFunctionGenerator10shrinkJumpEj(ptr noundef nonnull align 8 dereferenceable(200) %i.cw, i32 noundef %i.cx) #20
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !108
  tail call void @_ZN6hermes3hbc25BytecodeFunctionGenerator16updateJumpTargetEjii(ptr noundef nonnull align 8 dereferenceable(200) %i.cy, i32 noundef %i.cx, i32 noundef %i.ct, i32 noundef 1) #20
  store i32 0, ptr %i.w, align 4, !tbaa !96
  br label %bb.cb

bb.o:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.da = add i32 %i.y, 1
  tail call void @_ZN6hermes3hbc25BytecodeFunctionGenerator16updateJumpTargetEjii(ptr noundef nonnull align 8 dereferenceable(200) %i.cz, i32 noundef %i.da, i32 noundef %i.ct, i32 noundef 4) #20
  br label %bb.cb

bb.p:                                             ; preds = %.lr.ph
  %i.db = icmp eq ptr %i.v, null
  %i.dc = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.dd = select i1 %i.db, ptr null, ptr %i.dc    ; 7 uses
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.df = load i32, ptr %i.h, align 8, !tbaa !98  ; 7 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i59, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = lshr i32 %i.di, 4
  %i.dk = lshr i32 %i.di, 9
  %i.dl = xor i32 %i.dj, %i.dk
  %i.dm = add i32 %i.df, -1                       ; 2 uses
  %.02744.i.i.i49 = and i32 %i.dm, %i.dl          ; 2 uses
  %i.dn = zext nneg i32 %.02744.i.i.i49 to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.dn ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !100 ; 2 uses
  %i.dq = icmp eq ptr %i.dd, %i.dp
  br i1 %i.dq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit70, label %.lr.ph.i.i.i50, !prof !101

.lr.ph.i.i.i50:                                   ; preds = %bb.q, %bb.s
  %i.dr = phi ptr [ %i.eb, %bb.s ], [ %i.dp, %bb.q ] ; 2 uses
  %i.ds = phi ptr [ %i.ea, %bb.s ], [ %i.do, %bb.q ] ; 2 uses
  %.02747.i.i.i51 = phi i32 [ %.027.i.i.i56, %bb.s ], [ %.02744.i.i.i49, %bb.q ]
  %.046.i.i.i52 = phi i32 [ %i.dx, %bb.s ], [ 1, %bb.q ] ; 2 uses
  %.02945.i.i.i53 = phi ptr [ %spec.select.i.i.i55, %bb.s ], [ null, %bb.q ] ; 4 uses
  %i.dt = icmp eq ptr %i.dr, inttoptr (i64 -8 to ptr)
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !88

bb.r:                                             ; preds = %.lr.ph.i.i.i50
  %.not.i.i.i58 = icmp eq ptr %.02945.i.i.i53, null
  %i.du = select i1 %.not.i.i.i58, ptr %i.ds, ptr %.02945.i.i.i53
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i59

bb.s:                                             ; preds = %.lr.ph.i.i.i50
  %i.dv = icmp eq ptr %i.dr, inttoptr (i64 -16 to ptr)
  %i.dw = icmp eq ptr %.02945.i.i.i53, null
  %or.cond.not.i.i.i54 = select i1 %i.dv, i1 %i.dw, i1 false
  %spec.select.i.i.i55 = select i1 %or.cond.not.i.i.i54, ptr %i.ds, ptr %.02945.i.i.i53
  %i.dx = add i32 %.046.i.i.i52, 1
  %i.dy = add i32 %.046.i.i.i52, %.02747.i.i.i51
  %.027.i.i.i56 = and i32 %i.dy, %i.dm            ; 2 uses
  %i.dz = zext i32 %.027.i.i.i56 to i64
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.dz ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !100 ; 2 uses
  %i.ec = icmp eq ptr %i.dd, %i.eb
  br i1 %i.ec, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit70, label %.lr.ph.i.i.i50, !prof !102, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i59: ; preds = %bb.r, %bb.p
  %.sink.i.i.i60 = phi ptr [ %i.du, %bb.r ], [ null, %bb.p ]
  %i.ed = load i32, ptr %i.i, align 8, !tbaa !103 ; 3 uses
  %i.ee = shl i32 %i.ed, 2
  %i.ef = add i32 %i.ee, 4
  %i.eg = mul i32 %i.df, 3
  %.not.i.i4.i61 = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i.i4.i61, label %bb.u, label %bb.t, !prof !88

bb.t:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i59
  %i.eh = shl i32 %i.df, 1
  br label %.sink.split.i.i.i62

bb.u:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i59
  %i.ei = load i32, ptr %i.j, align 4, !tbaa !104
  %.neg.i.i.i67 = xor i32 %i.ed, -1
  %.neg12.i.i.i68 = add i32 %i.df, %.neg.i.i.i67
  %i.ej = sub i32 %.neg12.i.i.i68, %i.ei
  %i.ek = lshr i32 %i.df, 3
  %.not10.i.i.i69 = icmp ugt i32 %i.ej, %i.ek
  br i1 %.not10.i.i.i69, label %bb.y, label %.sink.split.i.i.i62, !prof !88

.sink.split.i.i.i62:                              ; preds = %bb.u, %bb.t
  %.sink.i.i5.i63 = phi i32 [ %i.eh, %bb.t ], [ %i.df, %bb.u ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i32 noundef %.sink.i.i5.i63)
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.em = load i32, ptr %i.h, align 8, !tbaa !98  ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit184, label %bb.v

bb.v:                                             ; preds = %.sink.split.i.i.i62
  %i.eo = ptrtoint ptr %i.dd to i64
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  %i.eq = lshr i32 %i.ep, 4
  %i.er = lshr i32 %i.ep, 9
  %i.es = xor i32 %i.eq, %i.er
  %i.et = add i32 %i.em, -1                       ; 2 uses
  %.02744.i.i173 = and i32 %i.et, %i.es           ; 2 uses
  %i.eu = zext nneg i32 %.02744.i.i173 to i64
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.eu ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !100 ; 2 uses
  %i.ex = icmp eq ptr %i.dd, %i.ew
  br i1 %i.ex, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit184, label %.lr.ph.i.i174, !prof !101

.lr.ph.i.i174:                                    ; preds = %bb.v, %bb.x
  %i.ey = phi ptr [ %i.fi, %bb.x ], [ %i.ew, %bb.v ] ; 2 uses
  %i.ez = phi ptr [ %i.fh, %bb.x ], [ %i.ev, %bb.v ] ; 2 uses
  %.02747.i.i175 = phi i32 [ %.027.i.i180, %bb.x ], [ %.02744.i.i173, %bb.v ]
  %.046.i.i176 = phi i32 [ %i.fe, %bb.x ], [ 1, %bb.v ] ; 2 uses
  %.02945.i.i177 = phi ptr [ %spec.select.i.i179, %bb.x ], [ null, %bb.v ] ; 4 uses
  %i.fa = icmp eq ptr %i.ey, inttoptr (i64 -8 to ptr)
  br i1 %i.fa, label %bb.w, label %bb.x, !prof !88

bb.w:                                             ; preds = %.lr.ph.i.i174
  %.not.i.i183 = icmp eq ptr %.02945.i.i177, null
  %i.fb = select i1 %.not.i.i183, ptr %i.ez, ptr %.02945.i.i177
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit184

bb.x:                                             ; preds = %.lr.ph.i.i174
  %i.fc = icmp eq ptr %i.ey, inttoptr (i64 -16 to ptr)
  %i.fd = icmp eq ptr %.02945.i.i177, null
  %or.cond.not.i.i178 = select i1 %i.fc, i1 %i.fd, i1 false
  %spec.select.i.i179 = select i1 %or.cond.not.i.i178, ptr %i.ez, ptr %.02945.i.i177
  %i.fe = add i32 %.046.i.i176, 1
  %i.ff = add i32 %.046.i.i176, %.02747.i.i175
  %.027.i.i180 = and i32 %i.ff, %i.et             ; 2 uses
  %i.fg = zext i32 %.027.i.i180 to i64
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.fg ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !100 ; 2 uses
  %i.fj = icmp eq ptr %i.dd, %i.fi
  br i1 %i.fj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit184, label %.lr.ph.i.i174, !prof !102, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit184: ; preds = %bb.x, %.sink.split.i.i.i62, %bb.v, %bb.w
  %.sink.i.i181 = phi ptr [ %i.fb, %bb.w ], [ null, %.sink.split.i.i.i62 ], [ %i.ev, %bb.v ], [ %i.fh, %bb.x ]
  %.pre.i.i64 = load i32, ptr %i.i, align 8, !tbaa !103
  br label %bb.y

bb.y:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit184, %bb.u
  %i.fk = phi ptr [ %.sink.i.i181, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit184 ], [ %.sink.i.i.i60, %bb.u ] ; 4 uses
  %i.fl = phi i32 [ %.pre.i.i64, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit184 ], [ %i.ed, %bb.u ]
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.i, align 8, !tbaa !103
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !100
  %i.fo = icmp eq ptr %i.fn, inttoptr (i64 -8 to ptr)
  br i1 %i.fo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i66, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = load i32, ptr %i.j, align 4, !tbaa !104
  %i.fq = add i32 %i.fp, -1
  store i32 %i.fq, ptr %i.j, align 4, !tbaa !104
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i66

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i66: ; preds = %bb.z, %bb.y
  store ptr %i.dd, ptr %i.fk, align 8, !tbaa !100
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr null, ptr %i.fr, align 8, !tbaa !107
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit70

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit70: ; preds = %bb.s, %bb.q, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i66
  %.0.i57 = phi ptr [ %i.fk, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i66 ], [ %i.do, %bb.q ], [ %i.ea, %bb.s ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i57, i64 8
  store i32 %i.y, ptr %i.fs, align 8, !tbaa !106
  br label %bb.cb

bb.aa:                                            ; preds = %.lr.ph
  %i.ft = icmp eq ptr %i.v, null
  %i.fu = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.fv = select i1 %i.ft, ptr null, ptr %i.fu    ; 7 uses
  %i.fw = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.fx = load i32, ptr %i.h, align 8, !tbaa !98  ; 7 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i81, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = trunc i64 %i.fz to i32                  ; 2 uses
  %i.gb = lshr i32 %i.ga, 4
  %i.gc = lshr i32 %i.ga, 9
  %i.gd = xor i32 %i.gb, %i.gc
  %i.ge = add i32 %i.fx, -1                       ; 2 uses
  %.02744.i.i.i71 = and i32 %i.ge, %i.gd          ; 2 uses
  %i.gf = zext nneg i32 %.02744.i.i.i71 to i64
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.gf ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !100 ; 2 uses
  %i.gi = icmp eq ptr %i.fv, %i.gh
  br i1 %i.gi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit92, label %.lr.ph.i.i.i72, !prof !101

.lr.ph.i.i.i72:                                   ; preds = %bb.ab, %bb.ad
  %i.gj = phi ptr [ %i.gt, %bb.ad ], [ %i.gh, %bb.ab ] ; 2 uses
  %i.gk = phi ptr [ %i.gs, %bb.ad ], [ %i.gg, %bb.ab ] ; 2 uses
  %.02747.i.i.i73 = phi i32 [ %.027.i.i.i78, %bb.ad ], [ %.02744.i.i.i71, %bb.ab ]
  %.046.i.i.i74 = phi i32 [ %i.gp, %bb.ad ], [ 1, %bb.ab ] ; 2 uses
  %.02945.i.i.i75 = phi ptr [ %spec.select.i.i.i77, %bb.ad ], [ null, %bb.ab ] ; 4 uses
  %i.gl = icmp eq ptr %i.gj, inttoptr (i64 -8 to ptr)
  br i1 %i.gl, label %bb.ac, label %bb.ad, !prof !88

bb.ac:                                            ; preds = %.lr.ph.i.i.i72
  %.not.i.i.i80 = icmp eq ptr %.02945.i.i.i75, null
  %i.gm = select i1 %.not.i.i.i80, ptr %i.gk, ptr %.02945.i.i.i75
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i81

bb.ad:                                            ; preds = %.lr.ph.i.i.i72
  %i.gn = icmp eq ptr %i.gj, inttoptr (i64 -16 to ptr)
  %i.go = icmp eq ptr %.02945.i.i.i75, null
  %or.cond.not.i.i.i76 = select i1 %i.gn, i1 %i.go, i1 false
  %spec.select.i.i.i77 = select i1 %or.cond.not.i.i.i76, ptr %i.gk, ptr %.02945.i.i.i75
  %i.gp = add i32 %.046.i.i.i74, 1
  %i.gq = add i32 %.046.i.i.i74, %.02747.i.i.i73
  %.027.i.i.i78 = and i32 %i.gq, %i.ge            ; 2 uses
  %i.gr = zext i32 %.027.i.i.i78 to i64
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.gr ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !100 ; 2 uses
  %i.gu = icmp eq ptr %i.fv, %i.gt
  br i1 %i.gu, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit92, label %.lr.ph.i.i.i72, !prof !102, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i81: ; preds = %bb.ac, %bb.aa
  %.sink.i.i.i82 = phi ptr [ %i.gm, %bb.ac ], [ null, %bb.aa ]
  %i.gv = load i32, ptr %i.i, align 8, !tbaa !103 ; 3 uses
  %i.gw = shl i32 %i.gv, 2
  %i.gx = add i32 %i.gw, 4
  %i.gy = mul i32 %i.fx, 3
  %.not.i.i4.i83 = icmp ult i32 %i.gx, %i.gy
  br i1 %.not.i.i4.i83, label %bb.af, label %bb.ae, !prof !88

bb.ae:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i81
  %i.gz = shl i32 %i.fx, 1
  br label %.sink.split.i.i.i84

bb.af:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i81
  %i.ha = load i32, ptr %i.j, align 4, !tbaa !104
  %.neg.i.i.i89 = xor i32 %i.gv, -1
  %.neg12.i.i.i90 = add i32 %i.fx, %.neg.i.i.i89
  %i.hb = sub i32 %.neg12.i.i.i90, %i.ha
  %i.hc = lshr i32 %i.fx, 3
  %.not10.i.i.i91 = icmp ugt i32 %i.hb, %i.hc
  br i1 %.not10.i.i.i91, label %bb.aj, label %.sink.split.i.i.i84, !prof !88

.sink.split.i.i.i84:                              ; preds = %bb.af, %bb.ae
  %.sink.i.i5.i85 = phi i32 [ %i.gz, %bb.ae ], [ %i.fx, %bb.af ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i32 noundef %.sink.i.i5.i85)
  %i.hd = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.he = load i32, ptr %i.h, align 8, !tbaa !98  ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit196, label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i.i.i84
  %i.hg = ptrtoint ptr %i.fv to i64
  %i.hh = trunc i64 %i.hg to i32                  ; 2 uses
  %i.hi = lshr i32 %i.hh, 4
  %i.hj = lshr i32 %i.hh, 9
  %i.hk = xor i32 %i.hi, %i.hj
  %i.hl = add i32 %i.he, -1                       ; 2 uses
  %.02744.i.i185 = and i32 %i.hl, %i.hk           ; 2 uses
  %i.hm = zext nneg i32 %.02744.i.i185 to i64
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.hm ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !100 ; 2 uses
  %i.hp = icmp eq ptr %i.fv, %i.ho
  br i1 %i.hp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit196, label %.lr.ph.i.i186, !prof !101

.lr.ph.i.i186:                                    ; preds = %bb.ag, %bb.ai
  %i.hq = phi ptr [ %i.ia, %bb.ai ], [ %i.ho, %bb.ag ] ; 2 uses
  %i.hr = phi ptr [ %i.hz, %bb.ai ], [ %i.hn, %bb.ag ] ; 2 uses
  %.02747.i.i187 = phi i32 [ %.027.i.i192, %bb.ai ], [ %.02744.i.i185, %bb.ag ]
  %.046.i.i188 = phi i32 [ %i.hw, %bb.ai ], [ 1, %bb.ag ] ; 2 uses
  %.02945.i.i189 = phi ptr [ %spec.select.i.i191, %bb.ai ], [ null, %bb.ag ] ; 4 uses
  %i.hs = icmp eq ptr %i.hq, inttoptr (i64 -8 to ptr)
  br i1 %i.hs, label %bb.ah, label %bb.ai, !prof !88

bb.ah:                                            ; preds = %.lr.ph.i.i186
  %.not.i.i195 = icmp eq ptr %.02945.i.i189, null
  %i.ht = select i1 %.not.i.i195, ptr %i.hr, ptr %.02945.i.i189
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit196

bb.ai:                                            ; preds = %.lr.ph.i.i186
  %i.hu = icmp eq ptr %i.hq, inttoptr (i64 -16 to ptr)
  %i.hv = icmp eq ptr %.02945.i.i189, null
  %or.cond.not.i.i190 = select i1 %i.hu, i1 %i.hv, i1 false
  %spec.select.i.i191 = select i1 %or.cond.not.i.i190, ptr %i.hr, ptr %.02945.i.i189
  %i.hw = add i32 %.046.i.i188, 1
  %i.hx = add i32 %.046.i.i188, %.02747.i.i187
  %.027.i.i192 = and i32 %i.hx, %i.hl             ; 2 uses
  %i.hy = zext i32 %.027.i.i192 to i64
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.hy ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !100 ; 2 uses
  %i.ib = icmp eq ptr %i.fv, %i.ia
  br i1 %i.ib, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit196, label %.lr.ph.i.i186, !prof !102, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit196: ; preds = %bb.ai, %.sink.split.i.i.i84, %bb.ag, %bb.ah
  %.sink.i.i193 = phi ptr [ %i.ht, %bb.ah ], [ null, %.sink.split.i.i.i84 ], [ %i.hn, %bb.ag ], [ %i.hz, %bb.ai ]
  %.pre.i.i86 = load i32, ptr %i.i, align 8, !tbaa !103
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit196, %bb.af
  %i.ic = phi ptr [ %.sink.i.i193, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit196 ], [ %.sink.i.i.i82, %bb.af ] ; 5 uses
  %i.id = phi i32 [ %.pre.i.i86, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit196 ], [ %i.gv, %bb.af ]
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.i, align 8, !tbaa !103
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !100
  %i.ig = icmp eq ptr %i.if, inttoptr (i64 -8 to ptr)
  br i1 %i.ig, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i88, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ih = load i32, ptr %i.j, align 4, !tbaa !104
  %i.ii = add i32 %i.ih, -1
  store i32 %i.ii, ptr %i.j, align 4, !tbaa !104
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i88

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i88: ; preds = %bb.ak, %bb.aj
  store ptr %i.fv, ptr %i.ic, align 8, !tbaa !100
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i32 0, ptr %i.ij, align 8, !tbaa !106
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store ptr null, ptr %i.ik, align 8, !tbaa !107
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit92

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit92: ; preds = %bb.ad, %bb.ab, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i88
  %.0.i79 = phi ptr [ %i.ic, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i88 ], [ %i.gg, %bb.ab ], [ %i.gs, %bb.ad ]
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i79, i64 8
  %i.im = load i32, ptr %i.il, align 8, !tbaa !106
  %i.in = sub i32 %i.im, %i.y
  %i.io = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.ip = add i32 %i.y, 1
  tail call void @_ZN6hermes3hbc25BytecodeFunctionGenerator16updateJumpTargetEjii(ptr noundef nonnull align 8 dereferenceable(200) %i.io, i32 noundef %i.ip, i32 noundef %i.in, i32 noundef 1) #20
  br label %bb.cb

bb.al:                                            ; preds = %.lr.ph
  %i.iq = icmp eq ptr %i.v, null
  %i.ir = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.is = select i1 %i.iq, ptr null, ptr %i.ir    ; 7 uses
  %i.it = load ptr, ptr %i.l, align 8, !tbaa !109 ; 6 uses
  %i.iu = load i32, ptr %i.m, align 8, !tbaa !110 ; 8 uses
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = trunc i64 %i.iw to i32                  ; 2 uses
  %i.iy = lshr i32 %i.ix, 4
  %i.iz = lshr i32 %i.ix, 9
  %i.ja = xor i32 %i.iy, %i.iz
  %i.jb = add i32 %i.iu, -1                       ; 2 uses
  %.02744.i.i.i93 = and i32 %i.jb, %i.ja          ; 2 uses
  %i.jc = zext nneg i32 %.02744.i.i.i93 to i64
  %i.jd = getelementptr inbounds nuw [104 x i8], ptr %i.it, i64 %i.jc ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !112 ; 2 uses
  %i.jf = icmp eq ptr %i.is, %i.je
  br i1 %i.jf, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16FindAndConstructEOS4_.exit, label %.lr.ph.i.i.i94, !prof !101

.lr.ph.i.i.i94:                                   ; preds = %bb.am, %bb.ao
  %i.jg = phi ptr [ %i.jq, %bb.ao ], [ %i.je, %bb.am ] ; 2 uses
  %i.jh = phi ptr [ %i.jp, %bb.ao ], [ %i.jd, %bb.am ] ; 2 uses
  %.02747.i.i.i95 = phi i32 [ %.027.i.i.i100, %bb.ao ], [ %.02744.i.i.i93, %bb.am ]
  %.046.i.i.i96 = phi i32 [ %i.jm, %bb.ao ], [ 1, %bb.am ] ; 2 uses
  %.02945.i.i.i97 = phi ptr [ %spec.select.i.i.i99, %bb.ao ], [ null, %bb.am ] ; 4 uses
end_hunk_0
