Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfTileOffsets?download=true
inline.NumInlined: 917
inline.NumDeleted: 495
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7Imf_3_411TileOffsetsC2ENS_9LevelModeEiiPKiS3_:bb.a
bb.p:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !36 ; 2 uses
  %.pre11.i = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bg ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0.i.i
  %.idx.i8.i = shl nuw nsw i64 %i.bj, 3           ; 2 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 %.idx.i8.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bw, i8 0, i64 %.idx.i8.i, i1 false), !tbaa !40
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i, %.pre11.i
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bz = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bw, %bb.p ]
  %.sroa.2.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.pre.i, %bb.p ]
  %i.ca = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !40, !noalias !76
  %i.cc = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 3 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !40, !noalias !76
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %.pre11.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !62

_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.p
  %.sroa.436.0.i.i.i.i.i.i.i = phi ptr [ %i.bw, %bb.p ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !37
  store ptr %i.by, ptr %i.bb, align 8, !tbaa !37
  %i.cd = load ptr, ptr %i.bk, align 8, !tbaa !37
  store ptr %i.bx, ptr %i.bk, align 8, !tbaa !37
  %.not.i9.i = icmp eq ptr %.pre11.i, null
  br i1 %.not.i9.i, label %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %.pre11.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre11.i, i64 noundef %i.cg) #19
  br label %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit

bb.r:                                             ; preds = %bb.j
  %i.ch = icmp ugt i64 %i.bh, %i.ba
  br i1 %i.ch, label %bb.s, label %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.ci, ptr %i.bb, align 8, !tbaa !36
  br label %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit

_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit: ; preds = %bb.s, %bb.r, %bb.q, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i, %.lr.ph.preheader.i.i
  %i.cj = add i32 %.035161, 1                     ; 2 uses
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.i ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !30 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24
  %i.cu = icmp ugt i64 %i.ct, %i.ck
  br i1 %i.cu, label %bb.j, label %._crit_edge163, !llvm.loop !63

.loopexit:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.t:                                             ; preds = %bb.a
  %i.cv = mul nsw i32 %3, %2                      ; 2 uses
  %.not267 = icmp eq i32 %i.cv, 0
  br i1 %.not267, label %_ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE6resizeEm.exit72, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = sext i32 %i.cv to i64
  invoke void @_ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cw)
          to label %._ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE6resizeEm.exit72_crit_edge unwind label %bb.d

._ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE6resizeEm.exit72_crit_edge: ; preds = %bb.u
  %.pre = load i32, ptr %i.b, align 8, !tbaa !75
  br label %_ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE6resizeEm.exit72

_ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE6resizeEm.exit72: ; preds = %bb.t, %._ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE6resizeEm.exit72_crit_edge
  %i.cx = phi i32 [ %.pre, %._ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE6resizeEm.exit72_crit_edge ], [ %3, %bb.t ] ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.preheader.lr.ph, label %.loopexit130

.preheader.lr.ph:                                 ; preds = %_ZNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEE6resizeEm.exit72
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.preheader, label %.loopexit130

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge159
  %i.db = phi i32 [ %i.dg, %._crit_edge159 ], [ %i.cx, %.preheader.lr.ph ]
  %i.dc = phi i32 [ %i.dh, %._crit_edge159 ], [ %i.cz, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %._crit_edge159 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %.preheader
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv196
  %.pre204 = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.df = trunc nuw nsw i64 %indvars.iv196 to i32
  br label %bb.v

._crit_edge159.loopexit:                          ; preds = %._crit_edge
  %.pre205 = load i32, ptr %i.b, align 8, !tbaa !75
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %._crit_edge159.loopexit, %.preheader
  %i.dg = phi i32 [ %.pre205, %._crit_edge159.loopexit ], [ %i.db, %.preheader ] ; 2 uses
  %i.dh = phi i32 [ %i.gl, %._crit_edge159.loopexit ], [ %i.dc, %.preheader ]
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.di = sext i32 %i.dg to i64
  %i.dj = icmp slt i64 %indvars.iv.next197, %i.di
  br i1 %i.dj, label %.preheader, label %.loopexit130, !llvm.loop !64

bb.v:                                             ; preds = %.lr.ph158, %._crit_edge
  %i.dk = phi ptr [ %.pre204, %.lr.ph158 ], [ %i.gk, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.dl = phi i32 [ %i.dc, %.lr.ph158 ], [ %i.gl, %._crit_edge ]
  %i.dm = mul nuw nsw i32 %i.dl, %i.df
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32
  %i.do = add nsw i32 %i.dm, %i.dn
  %i.dp = sext i32 %i.do to i64                   ; 3 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dp ; 7 uses
  %i.dr = load i32, ptr %i.de, align 4, !tbaa !24 ; 2 uses
  %i.ds = sext i32 %i.dr to i64                   ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 6 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !29 ; 5 uses
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !30 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = sdiv exact i64 %i.dy, 24                ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.ds
  br i1 %i.ea, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.eb = sub nuw nsw i64 %i.ds, %i.dz            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !41
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = sub i64 %i.ee, %i.dw
  %i.eg = sdiv exact i64 %i.ef, 24
  %.not.i87 = icmp ult i64 %i.eg, %i.eb
  br i1 %.not.i87, label %bb.x, label %.lr.ph.preheader.i.i89

.lr.ph.preheader.i.i89:                           ; preds = %bb.w
  %.idx.i.i90 = mul i64 %i.eb, 24
  %i.eh = add i64 %.idx.i.i90, -24                ; 2 uses
  %i.ei = urem i64 %i.eh, 24
  %i.ej = sub nuw i64 %i.eh, %i.ei
  %i.ek = add i64 %i.ej, 24                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.du, i8 0, i64 %i.ek, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.du, i64 %i.ek
  store ptr %scevgep.i.i, ptr %i.dt, align 8, !tbaa !29
  br label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81

bb.x:                                             ; preds = %bb.w
  %i.el = icmp slt i32 %i.dr, 0
  br i1 %i.el, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNKSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.dq) #20
          to label %.noexc101 unwind label %.loopexit.split-lp137

.noexc101:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.em = sub i64 %i.ee, %i.dx
  %i.en = sdiv exact i64 %i.em, 24                ; 2 uses
  %.not.i.i92 = icmp ult i64 %i.en, 384307168202282325
  %i.eo = shl nuw nsw i64 %i.en, 1
  %.sroa.speculated.i.i93 = tail call i64 @llvm.umax.i64(i64 %i.eo, i64 %i.ds)
  %.0.i.i94 = select i1 %.not.i.i92, i64 %.sroa.speculated.i.i93, i64 768614336404564650 ; 3 uses
  %i.ep = icmp ugt i64 %.0.i.i94, 768614336404564650
  br i1 %i.ep, label %bb.aa, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6vectorImNS1_ImEEEEEEEEDaRT_m.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #20
          to label %.noexc102 unwind label %.loopexit.split-lp137

.noexc102:                                        ; preds = %bb.aa
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6vectorImNS1_ImEEEEEEEEDaRT_m.exit.i.i: ; preds = %bb.z
  %i.eq = mul nuw i64 %.0.i.i94, 24
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #21
          to label %bb.ab unwind label %.loopexit136 ; 2 uses

bb.ab:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6vectorImNS1_ImEEEEEEEEDaRT_m.exit.i.i
  %.pre.i95 = load ptr, ptr %i.dt, align 8, !tbaa !29 ; 3 uses
  %.pre14.i = load ptr, ptr %i.dq, align 8, !tbaa !30 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.dy ; 4 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %.0.i.i94
  %.idx.i8.i97 = mul nuw nsw i64 %i.eb, 24
  %i.eu = add nsw i64 %.idx.i8.i97, -24           ; 2 uses
  %i.ev = urem i64 %i.eu, 24
  %i.ew = sub nuw nsw i64 %i.eu, %i.ev
  %i.ex = add nsw i64 %i.ew, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.es, i8 0, i64 %i.ex, i1 false)
  %scevgep.i9.i = getelementptr i8, ptr %i.es, i64 %i.ex
  %.not12.i.i.i = icmp eq ptr %.pre.i95, %.pre14.i
  br i1 %.not12.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %bb.ab, %.lr.ph.i.i.i98
  %i.ey = phi ptr [ %i.ez, %.lr.ph.i.i.i98 ], [ %i.es, %bb.ab ] ; 2 uses
  %.sroa.18.013.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i98 ], [ %.pre.i95, %bb.ab ] ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -24 ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %.sroa.18.013.i.i.i, i64 -24 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 -8
  %i.fc = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !37
  store <2 x ptr> %i.fc, ptr %i.ez, align 8, !tbaa !37
  %i.fd = getelementptr inbounds i8, ptr %.sroa.18.013.i.i.i, i64 -8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !37
  store ptr %i.fe, ptr %i.fb, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i8 0, i64 24, i1 false)
  %.not.i.i.i99 = icmp eq ptr %i.fa, %.pre14.i
  br i1 %.not.i.i.i99, label %.loopexit.loopexit.i, label %.lr.ph.i.i.i98, !llvm.loop !0

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i.i98
  %.pre15.i = load ptr, ptr %i.dq, align 8, !tbaa !41
  %.pre16.i = load ptr, ptr %i.dt, align 8, !tbaa !41
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.ab
  %i.ff = phi ptr [ %.pre.i95, %bb.ab ], [ %.pre16.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.fg = phi ptr [ %.pre14.i, %bb.ab ], [ %.pre15.i, %.loopexit.loopexit.i ] ; 5 uses
  %.sroa.2.0.copyload.i.i.i = phi ptr [ %i.es, %bb.ab ], [ %i.ez, %.loopexit.loopexit.i ]
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.dq, align 8, !tbaa !41
  store ptr %scevgep.i9.i, ptr %i.dt, align 8, !tbaa !41
  %i.fh = load ptr, ptr %i.ec, align 8, !tbaa !41
  store ptr %i.et, ptr %i.ec, align 8, !tbaa !41
  %.not2.i.i.i.i.i = icmp eq ptr %i.fg, %i.ff
  br i1 %.not2.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_6vectorImNS_9allocatorImEEEERNS2_IS4_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i.i
  %i.fi = phi ptr [ %i.fj, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i.i ], [ %i.ff, %.loopexit.i ] ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -24 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i100 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i100, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 -16
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !36
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !37
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fk to i64
  %i.fq = sub i64 %i.fo, %i.fp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fq) #19
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.fg, %i.fj
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_6vectorImNS_9allocatorImEEEERNS2_IS4_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i

_ZNSt3__114__split_bufferINS_6vectorImNS_9allocatorImEEEERNS2_IS4_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i.i, %.loopexit.i
  %.not.i10.i = icmp eq ptr %i.fg, null
  br i1 %.not.i10.i, label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3__114__split_bufferINS_6vectorImNS_9allocatorImEEEERNS2_IS4_EEE5clearB8ne180100Ev.exit.i.i
  %i.fr = ptrtoint ptr %i.fh to i64
  %i.fs = ptrtoint ptr %i.fg to i64
  %i.ft = sub i64 %i.fr, %i.fs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.ft) #19
  br label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81

bb.ae:                                            ; preds = %bb.v
  %i.fu = icmp ugt i64 %i.dz, %i.ds
  br i1 %i.fu, label %bb.af, label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81

bb.af:                                            ; preds = %bb.ae
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.ds ; 3 uses
  %.not6.i.i.i73 = icmp eq ptr %i.fv, %i.du
  br i1 %.not6.i.i.i73, label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE17__destruct_at_endB8ne180100EPS3_.exit.i79, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %bb.af, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i77
  %.07.i.i.i75 = phi ptr [ %i.fw, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i77 ], [ %i.du, %bb.af ] ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %.07.i.i.i75, i64 -24 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i.i.i.i.i76 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i.i76, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i77, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i74
  %i.fy = getelementptr inbounds i8, ptr %.07.i.i.i75, i64 -16
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !36
  %i.fz = getelementptr inbounds i8, ptr %.07.i.i.i75, i64 -8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !37
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fx to i64
  %i.gd = sub i64 %i.gb, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gd) #19
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i77

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i77: ; preds = %bb.ag, %.lr.ph.i.i.i74
  %.not.i.i.i78 = icmp eq ptr %i.fv, %i.fw
  br i1 %.not.i.i.i78, label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE17__destruct_at_endB8ne180100EPS3_.exit.i79, label %.lr.ph.i.i.i74

_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE17__destruct_at_endB8ne180100EPS3_.exit.i79: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i77, %bb.af
  store ptr %i.fv, ptr %i.dt, align 8, !tbaa !29
  br label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81

_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81: ; preds = %.lr.ph.preheader.i.i89, %_ZNSt3__114__split_bufferINS_6vectorImNS_9allocatorImEEEERNS2_IS4_EEE5clearB8ne180100Ev.exit.i.i, %bb.ad, %bb.ae, %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE17__destruct_at_endB8ne180100EPS3_.exit.i79
  %i.ge = load ptr, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.dp ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !29
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %i.gh, %i.gi
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  br label %bb.ah

._crit_edge:                                      ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit83, %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81
  %i.gk = phi ptr [ %i.ge, %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE6resizeEm.exit81 ], [ %i.ib, %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit83 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gl = load i32, ptr %i.a, align 4, !tbaa !21  ; 3 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next, %i.gm
  br i1 %i.gn, label %bb.v, label %._crit_edge159.loopexit, !llvm.loop !65

.loopexit136:                                     ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6vectorImNS1_ImEEEEEEEEDaRT_m.exit.i.i
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp137:                            ; preds = %bb.y, %bb.aa
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ah:                                            ; preds = %.lr.ph, %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit83
  %i.go = phi ptr [ %i.gi, %.lr.ph ], [ %i.if, %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit83 ]
  %.0156 = phi i64 [ 0, %.lr.ph ], [ %i.ia, %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit83 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %.0156 ; 6 uses
  %i.gq = load i32, ptr %i.gj, align 4, !tbaa !24 ; 2 uses
  %i.gr = sext i32 %i.gq to i64                   ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 5 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !36 ; 3 uses
  %i.gu = load ptr, ptr %i.gp, align 8, !tbaa !35 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64               ; 2 uses
  %i.gw = ptrtoint ptr %i.gu to i64               ; 2 uses
  %i.gx = sub i64 %i.gv, %i.gw                    ; 2 uses
  %i.gy = ashr exact i64 %i.gx, 3                 ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %i.gr
  br i1 %i.gz, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.ha = sub nuw nsw i64 %i.gr, %i.gy            ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !37
  %i.hd = ptrtoint ptr %i.hc to i64               ; 2 uses
  %i.he = sub i64 %i.hd, %i.gv
  %i.hf = ashr exact i64 %i.he, 3
  %.not.i104 = icmp ult i64 %i.hf, %i.ha
  br i1 %.not.i104, label %bb.aj, label %.lr.ph.preheader.i.i106

.lr.ph.preheader.i.i106:                          ; preds = %bb.ai
  %.idx.i.i107 = shl i64 %i.ha, 3                 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gt, i64 %.idx.i.i107
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gt, i8 0, i64 %.idx.i.i107, i1 false), !tbaa !40
  store ptr %i.hg, ptr %i.gs, align 8, !tbaa !36
  br label %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit83

bb.aj:                                            ; preds = %bb.ai
  %i.hh = icmp slt i32 %i.gq, 0
  br i1 %i.hh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.gp) #20
          to label %.noexc126 unwind label %.loopexit.split-lp132

.noexc126:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.hi = sub i64 %i.hd, %i.gw                    ; 2 uses
  %.not.i.i111 = icmp ult i64 %i.hi, 9223372036854775800
  %i.hj = ashr exact i64 %i.hi, 2
  %.sroa.speculated.i.i112 = tail call i64 @llvm.umax.i64(i64 %i.hj, i64 %i.gr)
  %.0.i.i113 = select i1 %.not.i.i111, i64 %.sroa.speculated.i.i112, i64 2305843009213693951 ; 3 uses
  %i.hk = icmp ugt i64 %.0.i.i113, 2305843009213693951
  br i1 %i.hk, label %bb.am, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i114

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #20
          to label %.noexc127 unwind label %.loopexit.split-lp132

.noexc127:                                        ; preds = %bb.am
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i114: ; preds = %bb.al
  %i.hl = shl nuw i64 %.0.i.i113, 3
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #21
          to label %bb.an unwind label %.loopexit131 ; 2 uses

end_hunk_0
begin_hunk_1_@_ZNK7Imf_3_411TileOffsets12getTileOrderEPiS1_S1_S1_:bb.a
._crit_edge113:                                   ; preds = %._crit_edge
  %.not.i = icmp eq i64 %.1.lcssa, 0
  br i1 %.not.i, label %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge113
  %i.bo = icmp ugt i64 %.1.lcssa, 768614336404564650
  br i1 %i.bo, label %.noexc.i, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i

.noexc.i:                                         ; preds = %bb.b
  tail call fastcc void @_ZNKSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev() #20
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i: ; preds = %bb.b
  %i.bp = mul nuw i64 %.1.lcssa, 24               ; 2 uses
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #21 ; 4 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.1.lcssa
  %i.bs = add i64 %i.bp, -24                      ; 2 uses
  %i.bt = urem i64 %i.bs, 24
  %i.bu = sub nuw i64 %i.bs, %i.bt
  %i.bv = add nuw i64 %i.bu, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i8 0, i64 %i.bv, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.bq, i64 %i.bv
  %i.bw = ptrtoint ptr %i.br to i64
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %.pre167 = load ptr, ptr %i.c, align 8, !tbaa !23 ; 3 uses
  %.pre168 = ptrtoint ptr %.pre to i64
  %.pre169 = ptrtoint ptr %.pre167 to i64
  %.pre171 = sub i64 %.pre168, %.pre169
  %.pre173 = sdiv exact i64 %.pre171, 24
  %i.bx = icmp eq ptr %.pre, %.pre167
  br label %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit

common.resume:                                    ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %.pn

_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit: ; preds = %bb.a, %._crit_edge113, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i
  %.not.i182 = phi i1 [ true, %._crit_edge113 ], [ false, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i ], [ true, %bb.a ] ; 4 uses
  %.071.lcssa181 = phi i64 [ 0, %._crit_edge113 ], [ %.1.lcssa, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i ], [ 0, %bb.a ] ; 18 uses
  %.pre-phi174 = phi i64 [ %i.j, %._crit_edge113 ], [ %.pre173, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i ], [ 0, %bb.a ]
  %i.by = phi ptr [ %i.f, %._crit_edge113 ], [ %.pre167, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i ], [ %i.f, %bb.a ]
  %.not138 = phi i1 [ false, %._crit_edge113 ], [ %i.bx, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i ], [ true, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %._crit_edge113 ], [ %i.bq, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i ], [ null, %bb.a ] ; 29 uses
  %.sroa.19.0 = phi ptr [ null, %._crit_edge113 ], [ %scevgep.i.i, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i ], [ null, %bb.a ] ; 3 uses
  %.sroa.24.0 = phi i64 [ 0, %._crit_edge113 ], [ %i.bw, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7Imf_3_412_GLOBAL__N_17tileposEEEEEDaRT_m.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  br i1 %.not138, label %._crit_edge126, label %.preheader106

._crit_edge:                                      ; preds = %.lr.ph, %.preheader107
  %.1.lcssa = phi i64 [ %.071112, %.preheader107 ], [ %i.cj, %.lr.ph ] ; 6 uses
  %indvars.iv.next150 = add i64 %indvars.iv149, 1 ; 2 uses
  %i.bz = and i64 %indvars.iv.next150, 4294967295
  %i.ca = icmp ugt i64 %i.j, %i.bz
  br i1 %i.ca, label %.preheader107, label %._crit_edge113, !llvm.loop !104

.lr.ph:                                           ; preds = %.lr.ph.preheader228, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader228 ] ; 2 uses
  %.1110 = phi i64 [ %i.cj, %.lr.ph ], [ %.1110.ph, %.lr.ph.preheader228 ]
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !35
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3
  %i.cj = add i64 %i.ci, %.1110                   ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ck = and i64 %indvars.iv.next, 4294967295
  %i.cl = icmp ugt i64 %i.r, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !105

.preheader106:                                    ; preds = %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit, %._crit_edge122
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge122 ], [ 0, %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit ] ; 3 uses
  %.076124 = phi i64 [ %.177.lcssa, %._crit_edge122 ], [ 0, %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv161 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !30 ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24
  %.not139 = icmp eq ptr %i.co, %i.cp
  br i1 %.not139, label %._crit_edge122, label %.preheader105.preheader

.preheader105.preheader:                          ; preds = %.preheader106
  %i.cu = trunc nuw i64 %indvars.iv161 to i32
  br label %.preheader105

._crit_edge126:                                   ; preds = %._crit_edge122, %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit
  %i.cv = ptrtoint ptr %.sroa.19.0 to i64
  %i.cw = ptrtoint ptr %.sroa.0.0 to i64          ; 3 uses
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24
  %i.cz = icmp eq ptr %.sroa.19.0, %.sroa.0.0
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = xor i64 %i.db, 126
  %i.dd = select i1 %i.cz, i64 0, i64 %i.dc
  tail call fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposELb0EEEvT1_S9_T0_NS_15iterator_traitsIS9_E15difference_typeEb(ptr noundef %.sroa.0.0, ptr noundef %.sroa.19.0, i64 noundef %i.dd, i1 noundef zeroext true)
  br i1 %.not.i182, label %._crit_edge130, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %._crit_edge126
  %xtraiter = and i64 %.071.lcssa181, 1
  %i.de = icmp eq i64 %.071.lcssa181, 1
  br i1 %i.de, label %.lr.ph129.epil.preheader, label %.lr.ph129.preheader.new

.lr.ph129.preheader.new:                          ; preds = %.lr.ph129.preheader
  %unroll_iter = and i64 %.071.lcssa181, 1152921504606846974
  br label %.lr.ph129

.preheader105:                                    ; preds = %.preheader105.preheader, %._crit_edge118
  %indvars.iv157 = phi i64 [ 0, %.preheader105.preheader ], [ %indvars.iv.next158, %._crit_edge118 ] ; 3 uses
  %.177120 = phi i64 [ %.076124, %.preheader105.preheader ], [ %.2.lcssa, %._crit_edge118 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %indvars.iv157 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !36 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !35 ; 3 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %.not140 = icmp eq ptr %i.dh, %i.di
  br i1 %.not140, label %._crit_edge118, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.preheader105
  %i.dn = trunc nuw i64 %indvars.iv157 to i32
  br label %.lr.ph117

._crit_edge122:                                   ; preds = %._crit_edge118, %.preheader106
  %.177.lcssa = phi i64 [ %.076124, %.preheader106 ], [ %.2.lcssa, %._crit_edge118 ]
  %indvars.iv.next162 = add i64 %indvars.iv161, 1 ; 2 uses
  %i.do = and i64 %indvars.iv.next162, 4294967295
  %i.dp = icmp ugt i64 %.pre-phi174, %i.do
  br i1 %i.dp, label %.preheader106, label %._crit_edge126, !llvm.loop !106

._crit_edge118:                                   ; preds = %.lr.ph117, %.preheader105
  %.2.lcssa = phi i64 [ %.177120, %.preheader105 ], [ %i.dz, %.lr.ph117 ] ; 2 uses
  %indvars.iv.next158 = add i64 %indvars.iv157, 1 ; 2 uses
  %i.dq = and i64 %indvars.iv.next158, 4294967295
  %i.dr = icmp ugt i64 %i.ct, %i.dq
  br i1 %i.dr, label %.preheader105, label %._crit_edge122, !llvm.loop !107

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv153 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next154, %.lr.ph117 ] ; 3 uses
  %.2115 = phi i64 [ %.177120, %.lr.ph117.preheader ], [ %i.dz, %.lr.ph117 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv153
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !40
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.2115 ; 4 uses
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = trunc nuw i64 %indvars.iv153 to i32
  store i32 %i.dw, ptr %i.dv, align 8, !tbaa !118
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %i.dn, ptr %i.dx, align 4, !tbaa !119
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i32 %i.cu, ptr %i.dy, align 8, !tbaa !120
  %i.dz = add i64 %.2115, 1                       ; 2 uses
  %indvars.iv.next154 = add i64 %indvars.iv153, 1 ; 2 uses
  %i.ea = and i64 %indvars.iv.next154, 4294967295
  %i.eb = icmp ugt i64 %i.dm, %i.ea
  br i1 %i.eb, label %.lr.ph117, label %._crit_edge118, !llvm.loop !108

._crit_edge130.loopexit.unr-lcssa:                ; preds = %.lr.ph129
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge130, label %.lr.ph129.epil.preheader

.lr.ph129.epil.preheader:                         ; preds = %._crit_edge130.loopexit.unr-lcssa, %.lr.ph129.preheader
  %.068127.epil.init = phi i64 [ 0, %.lr.ph129.preheader ], [ %i.io, %._crit_edge130.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod232 = trunc i64 %.071.lcssa181 to i1
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.068127.epil.init ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !118
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068127.epil.init
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !119
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068127.epil.init
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !24
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %.lr.ph129.epil.preheader, %._crit_edge130.loopexit.unr-lcssa, %._crit_edge126
  %i.ej = load i32, ptr %0, align 8, !tbaa !20
  switch i32 %i.ej, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader101
    i32 2, label %.preheader103
    i32 3, label %bb.d
  ]

.preheader103:                                    ; preds = %._crit_edge130
  br i1 %.not.i182, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader103
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %min.iters.check199 = icmp ult i64 %.071.lcssa181, 5
  br i1 %min.iters.check199, label %scalar.ph198.preheader, label %vector.memcheck

scalar.ph198.preheader:                           ; preds = %vector.body209, %vector.memcheck, %.lr.ph132
  %.0131.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph132 ], [ %n.vec208, %vector.body209 ] ; 7 uses
  %i.el = sub nsw i64 %.071.lcssa181, %.0131.ph
  %.neg = add nsw i64 %.0131.ph, 1
  %xtraiter233 = and i64 %i.el, 1
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %scalar.ph198.prol.loopexit, label %scalar.ph198.prol

scalar.ph198.prol:                                ; preds = %scalar.ph198.preheader
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0131.ph
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !120 ; 2 uses
  %i.ep = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.eq = srem i32 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0131.ph
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !24
  %i.es = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.et = sdiv i32 %i.eo, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0131.ph
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !24
  %i.ev = add nuw nsw i64 %.0131.ph, 1
  br label %scalar.ph198.prol.loopexit

scalar.ph198.prol.loopexit:                       ; preds = %scalar.ph198.prol, %scalar.ph198.preheader
  %.0131.unr = phi i64 [ %.0131.ph, %scalar.ph198.preheader ], [ %i.ev, %scalar.ph198.prol ]
  %i.ew = icmp eq i64 %.071.lcssa181, %.neg
  br i1 %i.ew, label %.loopexit.thread, label %scalar.ph198

vector.memcheck:                                  ; preds = %.lr.ph132
  %i.ex = shl nuw nsw i64 %.071.lcssa181, 2       ; 2 uses
  %i.ey = getelementptr i8, ptr %3, i64 %i.ex     ; 2 uses
  %i.ez = getelementptr i8, ptr %4, i64 %i.ex     ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %3, %i.ez
  %bound1 = icmp ult ptr %4, %i.ey
  %found.conflict = and i1 %bound0, %bound1
  %bound0200 = icmp ult ptr %3, %i.fa
  %bound1201 = icmp ult ptr %i.ek, %i.ey
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx = or i1 %found.conflict, %found.conflict202
  %bound0203 = icmp ult ptr %4, %i.fa
  %bound1204 = icmp ult ptr %i.ek, %i.ez
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx, %found.conflict205
  br i1 %conflict.rdx206, label %scalar.ph198.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck
  %i.fb = and i64 %.071.lcssa181, 3               ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = select i1 %i.fc, i64 4, i64 %i.fb
  %n.vec208 = sub nsw i64 %.071.lcssa181, %i.fd   ; 2 uses
  %i.fe = load i32, ptr %i.ek, align 4, !tbaa !21, !alias.scope !121 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 7 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index210
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index210
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index210
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index210
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  %i.fn = load i32, ptr %i.fj, align 8, !tbaa !120
  %i.fo = load i32, ptr %i.fk, align 8, !tbaa !120
  %i.fp = load i32, ptr %i.fl, align 8, !tbaa !120
  %i.fq = load i32, ptr %i.fm, align 8, !tbaa !120
  %i.fr = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fo, i64 1
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 2
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 3 ; 2 uses
  %i.fv = srem <4 x i32> %i.fu, %broadcast.splat
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index210
  store <4 x i32> %i.fv, ptr %i.fw, align 4, !tbaa !24, !alias.scope !122, !noalias !123
  %i.fx = sdiv <4 x i32> %i.fu, %broadcast.splat212
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index210
  store <4 x i32> %i.fx, ptr %i.fy, align 4, !tbaa !24, !alias.scope !124, !noalias !121
  %index.next213 = add nuw i64 %index210, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.fz, label %scalar.ph198.preheader, label %vector.body209, !llvm.loop !113

.preheader101:                                    ; preds = %._crit_edge130
  br i1 %.not.i182, label %.loopexit, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.preheader101
  %min.iters.check218 = icmp ult i64 %.071.lcssa181, 9
  %i.ga = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ga, -32
  %or.cond = or i1 %min.iters.check218, %diff.check
  br i1 %or.cond, label %.lr.ph134.preheader226, label %vector.ph219

.lr.ph134.preheader226:                           ; preds = %vector.body221, %.lr.ph134.preheader
  %.066133.ph = phi i64 [ 0, %.lr.ph134.preheader ], [ %n.vec220, %vector.body221 ] ; 7 uses
  %i.gb = sub nsw i64 %.071.lcssa181, %.066133.ph
  %.neg237 = add nsw i64 %.066133.ph, 1
  %xtraiter235 = and i64 %i.gb, 1
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph134.prol.loopexit, label %.lr.ph134.prol

.lr.ph134.prol:                                   ; preds = %.lr.ph134.preheader226
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.066133.ph
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !120 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066133.ph
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !24
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066133.ph
  store i32 %i.ge, ptr %i.gg, align 4, !tbaa !24
  %i.gh = add nuw nsw i64 %.066133.ph, 1
  br label %.lr.ph134.prol.loopexit

.lr.ph134.prol.loopexit:                          ; preds = %.lr.ph134.prol, %.lr.ph134.preheader226
  %.066133.unr = phi i64 [ %.066133.ph, %.lr.ph134.preheader226 ], [ %i.gh, %.lr.ph134.prol ]
  %i.gi = icmp eq i64 %.071.lcssa181, %.neg237
  br i1 %i.gi, label %.loopexit.thread, label %.lr.ph134

vector.ph219:                                     ; preds = %.lr.ph134.preheader
  %i.gj = and i64 %.071.lcssa181, 7               ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  %i.gl = select i1 %i.gk, i64 8, i64 %i.gj
  %n.vec220 = sub nsw i64 %.071.lcssa181, %i.gl   ; 2 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next223, %vector.body221 ] ; 11 uses
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index222
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index222
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index222
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index222
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index222
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index222
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index222
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index222
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 88
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 112
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 136
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 160
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 184
  %i.hc = load i32, ptr %i.gu, align 8, !tbaa !120
  %i.hd = load i32, ptr %i.gv, align 8, !tbaa !120
  %i.he = load i32, ptr %i.gw, align 8, !tbaa !120
  %i.hf = load i32, ptr %i.gx, align 8, !tbaa !120
  %i.hg = insertelement <4 x i32> poison, i32 %i.hc, i64 0
  %i.hh = insertelement <4 x i32> %i.hg, i32 %i.hd, i64 1
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.he, i64 2
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hf, i64 3 ; 2 uses
  %i.hk = load i32, ptr %i.gy, align 8, !tbaa !120
  %i.hl = load i32, ptr %i.gz, align 8, !tbaa !120
  %i.hm = load i32, ptr %i.ha, align 8, !tbaa !120
  %i.hn = load i32, ptr %i.hb, align 8, !tbaa !120
  %i.ho = insertelement <4 x i32> poison, i32 %i.hk, i64 0
  %i.hp = insertelement <4 x i32> %i.ho, i32 %i.hl, i64 1
  %i.hq = insertelement <4 x i32> %i.hp, i32 %i.hm, i64 2
  %i.hr = insertelement <4 x i32> %i.hq, i32 %i.hn, i64 3 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index222 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <4 x i32> %i.hj, ptr %i.hs, align 4, !tbaa !24
  store <4 x i32> %i.hr, ptr %i.ht, align 4, !tbaa !24
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index222 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <4 x i32> %i.hj, ptr %i.hu, align 4, !tbaa !24
  store <4 x i32> %i.hr, ptr %i.hv, align 4, !tbaa !24
  %index.next223 = add nuw i64 %index222, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next223, %n.vec220
  br i1 %i.hw, label %.lr.ph134.preheader226, label %vector.body221, !llvm.loop !114

.preheader:                                       ; preds = %._crit_edge130
  br i1 %.not.i182, label %.loopexit, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %.preheader
  %i.hx = shl nuw nsw i64 %.071.lcssa181, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.hx, i1 false), !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.hx, i1 false), !tbaa !24
  br label %.loopexit

bb.c:                                             ; preds = %bb.e
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph129:                                        ; preds = %.lr.ph129, %.lr.ph129.preheader.new
  %.068127 = phi i64 [ 0, %.lr.ph129.preheader.new ], [ %i.io, %.lr.ph129 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph129.preheader.new ], [ %niter.next.1, %.lr.ph129 ]
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.068127 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !118
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068127
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !24
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !119
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068127
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !24
  %i.ig = or disjoint i64 %.068127, 1             ; 3 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !118
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ig
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !24
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.im = load i32, ptr %i.il, align 4, !tbaa !119
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ig
  store i32 %i.im, ptr %i.in, align 4, !tbaa !24
  %i.io = add nuw i64 %.068127, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge130.loopexit.unr-lcssa, label %.lr.ph129, !llvm.loop !115

.lr.ph134:                                        ; preds = %.lr.ph134.prol.loopexit, %.lr.ph134
  %.066133 = phi i64 [ %i.ja, %.lr.ph134 ], [ %.066133.unr, %.lr.ph134.prol.loopexit ] ; 5 uses
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.066133
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !120 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066133
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !24
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066133
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !24
  %i.iu = add nuw i64 %.066133, 1                 ; 3 uses
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !120 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.iu
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !24
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.iu
  store i32 %i.ix, ptr %i.iz, align 4, !tbaa !24
  %i.ja = add nuw i64 %.066133, 2                 ; 2 uses
  %exitcond166.not.1 = icmp eq i64 %i.ja, %.071.lcssa181
  br i1 %exitcond166.not.1, label %.loopexit.thread, label %.lr.ph134, !llvm.loop !116

scalar.ph198:                                     ; preds = %scalar.ph198.prol.loopexit, %scalar.ph198
  %.0131 = phi i64 [ %i.ju, %scalar.ph198 ], [ %.0131.unr, %scalar.ph198.prol.loopexit ] ; 5 uses
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0131
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !120 ; 2 uses
  %i.je = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.jf = srem i32 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0131
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !24
  %i.jh = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.ji = sdiv i32 %i.jd, %i.jh
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0131
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !24
  %i.jk = add nuw i64 %.0131, 1                   ; 3 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !120 ; 2 uses
  %i.jo = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.jp = srem i32 %i.jn, %i.jo
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jk
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !24
  %i.jr = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.js = sdiv i32 %i.jn, %i.jr
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jk
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !24
  %i.ju = add nuw i64 %.0131, 2                   ; 2 uses
  %exitcond165.not.1 = icmp eq i64 %i.ju, %.071.lcssa181
  br i1 %exitcond165.not.1, label %.loopexit.thread, label %scalar.ph198, !llvm.loop !117

bb.d:                                             ; preds = %._crit_edge130
  %i.jv = tail call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_48LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.jv, ptr noundef nonnull @.str.5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.jv, ptr nonnull @_ZTIN7Iex_3_48LogicExcE, ptr nonnull @_ZN7Iex_3_48LogicExcD1Ev) #20
          to label %bb.i unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.jw = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.jv) #22
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph136.preheader, %.preheader103, %.preheader101, %.preheader, %._crit_edge130
  %.not.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %scalar.ph198.prol.loopexit, %scalar.ph198, %.lr.ph134.prol.loopexit, %.lr.ph134, %.loopexit
  %i.jx = sub i64 %.sroa.24.0, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.jx) #19
  br label %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.g:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.c ], [ %i.jw, %bb.f ]
  %.not.i.i96 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i96, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jy = sub i64 %.sroa.24.0, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.jy) #19
  br label %common.resume

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN7Iex_3_48LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Iex_3_48LogicExcD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7Imf_3_411TileOffsets7isEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
end_hunk_1
