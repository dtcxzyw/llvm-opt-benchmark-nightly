inline.NumInlined: 234
inline.NumDeleted: 59
begin_hunk_0_@_getcode:bb.a
  %i.bt = add nsw i32 %i.br, -48
  %i.bu = or disjoint i32 %i.bt, %i.bm
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph.i
  %i.bv = add i8 %i.bq, -65
  %or.cond7.i = icmp ult i8 %i.bv, 6
  br i1 %or.cond7.i, label %bb.y, label %parse_hex_code.exit

bb.y:                                             ; preds = %bb.x
  %i.bw = add i32 %i.bm, -55
  %i.bx = add i32 %i.bw, %i.br
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.127.i = phi i32 [ %i.bu, %bb.w ], [ %i.bx, %bb.y ] ; 3 uses
  %i.by = getelementptr i8, ptr %.03037.i, i64 1
  %.not.i59 = icmp eq i32 %i.bl, 0
  br i1 %.not.i59, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !93

._crit_edge.i:                                    ; preds = %bb.z
  %i.bz = icmp sgt i32 %.127.i, 1114111
  %..026.i = select i1 %i.bz, i32 -1, i32 %.127.i
  br label %parse_hex_code.exit

parse_hex_code.exit:                              ; preds = %bb.x, %bb.u, %bb.v, %._crit_edge.i
  %.3.i = phi i32 [ -1, %bb.v ], [ -1, %bb.u ], [ %..026.i, %._crit_edge.i ], [ -1, %bb.x ] ; 2 uses
  %i.ca = tail call fastcc i32 @find_prefix_id(i32 noundef %.3.i)
  %.not = icmp eq i32 %i.ca, %.037115.lcssa.wide.ph
  br i1 %.not, label %_lookup_dawg_packed.exit.thread.sink.split, label %_lookup_dawg_packed.exit.thread

.preheader131.i:                                  ; preds = %bb.h, %_dawg_match_edge.exit.thread.i
  %.024149.i = phi i32 [ %i.eh, %_dawg_match_edge.exit.thread.i ], [ 0, %bb.h ] ; 3 uses
  %.035148.i = phi i32 [ %spec.select.i, %_dawg_match_edge.exit.thread.i ], [ 0, %bb.h ]
  %.040147.i = phi i32 [ %i.cw, %_dawg_match_edge.exit.thread.i ], [ 0, %bb.h ]
  br label %bb.aa

.preheader.i:                                     ; preds = %_dawg_match_edge.exit.thread.i, %bb.h
  %.040.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.cw, %_dawg_match_edge.exit.thread.i ]
  %.035.lcssa.i = phi i32 [ 0, %bb.h ], [ %spec.select.i, %_dawg_match_edge.exit.thread.i ] ; 2 uses
  br label %bb.ah

bb.aa:                                            ; preds = %bb.aa, %.preheader131.i
  %.014.i.i.i = phi i32 [ %i.ch, %bb.aa ], [ %.040147.i, %.preheader131.i ] ; 2 uses
  %.013.i.i.i = phi i32 [ %i.cg, %bb.aa ], [ 0, %.preheader131.i ]
  %.012.i.i.i = phi i32 [ %i.ci, %bb.aa ], [ 0, %.preheader131.i ] ; 2 uses
  %i.cb = zext i32 %.014.i.i.i to i64
  %i.cc = getelementptr i8, ptr @packed_name_dawg, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !22  ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl i32 %i.ce, %.012.i.i.i
  %i.cg = or i32 %i.cf, %.013.i.i.i               ; 2 uses
  %i.ch = add i32 %.014.i.i.i, 1                  ; 3 uses
  %i.ci = add i32 %.012.i.i.i, 7
  %.not.i.i.i = icmp slt i8 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.aa, label %_dawg_decode_node.exit.preheader.i

_dawg_decode_node.exit.preheader.i:               ; preds = %bb.aa
  %i.cj = add nuw i32 %.024149.i, 1
  br label %_dawg_decode_node.exit.i

_dawg_decode_node.exit.i:                         ; preds = %bb.ag, %_dawg_decode_node.exit.preheader.i
  %.136.i = phi i32 [ %i.ef, %bb.ag ], [ %.035148.i, %_dawg_decode_node.exit.preheader.i ] ; 2 uses
  %.032.i = phi i32 [ %i.eg, %bb.ag ], [ %i.ch, %_dawg_decode_node.exit.preheader.i ]
  %.030.i = phi i32 [ %i.cw, %bb.ag ], [ %i.ch, %_dawg_decode_node.exit.preheader.i ]
  %.028.i = phi i1 [ false, %bb.ag ], [ true, %_dawg_decode_node.exit.preheader.i ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_dawg_decode_node.exit.i
  %.014.i.i48.i = phi i32 [ %.032.i, %_dawg_decode_node.exit.i ], [ %i.cr, %bb.ab ] ; 3 uses
  %.013.i.i49.i = phi i32 [ 0, %_dawg_decode_node.exit.i ], [ %i.cq, %bb.ab ]
  %.012.i.i50.i = phi i32 [ 0, %_dawg_decode_node.exit.i ], [ %i.cs, %bb.ab ] ; 2 uses
  %i.ck = zext i32 %.014.i.i48.i to i64
  %i.cl = getelementptr i8, ptr @packed_name_dawg, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !22  ; 2 uses
  %i.cn = and i8 %i.cm, 127
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = shl i32 %i.co, %.012.i.i50.i
  %i.cq = or i32 %i.cp, %.013.i.i49.i             ; 6 uses
  %i.cr = add i32 %.014.i.i48.i, 1                ; 3 uses
  %i.cs = add i32 %.012.i.i50.i, 7
  %.not.i.i51.i = icmp slt i8 %i.cm, 0
  br i1 %.not.i.i51.i, label %bb.ab, label %_dawg_decode_varint_unsigned.exit.i.i

_dawg_decode_varint_unsigned.exit.i.i:            ; preds = %bb.ab
  %i.ct = icmp eq i32 %i.cq, 0
  %or.cond.i.i = and i1 %.028.i, %i.ct
  br i1 %or.cond.i.i, label %_lookup_dawg_packed.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_dawg_decode_varint_unsigned.exit.i.i
  %i.cu = and i32 %i.cq, 2
  %.not.i.i = icmp eq i32 %i.cu, 0
  %i.cv = lshr i32 %i.cq, 2
  %i.cw = add i32 %i.cv, %.030.i                  ; 4 uses
  br i1 %.not.i.i, label %_dawg_decode_edge.exit.i, label %.preheader.i.thread.i

.preheader.i.thread.i:                            ; preds = %bb.ac
  %i.cx = and i32 %i.cq, 1
  br label %.lr.ph.preheader.i.i

_dawg_decode_edge.exit.i:                         ; preds = %bb.ac
  %i.cy = add i32 %.014.i.i48.i, 2                ; 2 uses
  %i.cz = zext i32 %i.cr to i64
  %i.da = getelementptr i8, ptr @packed_name_dawg, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !22  ; 3 uses
  %i.dc = zext i8 %i.db to i32                    ; 3 uses
  %i.dd = and i32 %i.cq, 1                        ; 2 uses
  %i.de = icmp ugt i8 %i.db, 1
  %i.df = add i32 %.024149.i, %i.dc               ; 3 uses
  %i.dg = icmp ugt i32 %i.df, %1
  %or.cond.i52.i = and i1 %i.de, %i.dg
  br i1 %or.cond.i52.i, label %_dawg_match_edge.exit.thread86.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_dawg_decode_edge.exit.i
  %.not23.i.i = icmp eq i8 %i.db, 0
  br i1 %.not23.i.i, label %_dawg_match_edge.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i, %.preheader.i.thread.i
  %storemerge.i171178.i = phi i32 [ 1, %.preheader.i.thread.i ], [ %i.dc, %.preheader.i.i ] ; 2 uses
  %.012.i173177.i = phi i32 [ %i.cr, %.preheader.i.thread.i ], [ %i.cy, %.preheader.i.i ] ; 2 uses
  %i.dh = phi i32 [ %i.cx, %.preheader.i.thread.i ], [ %i.dd, %.preheader.i.i ]
  %i.di = phi i32 [ %i.cj, %.preheader.i.thread.i ], [ %i.df, %.preheader.i.i ]
  %wide.trip.count.i.i = zext nneg i32 %storemerge.i171178.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ad ] ; 3 uses
  %i.dj = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.dk = add i32 %.012.i173177.i, %i.dj
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr @packed_name_dawg, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !22
  %i.do = add i32 %.024149.i, %i.dj
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr i8, ptr %0, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !22
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr i8, ptr @_Py_ctype_toupper, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !22
  %.not.i53.i = icmp eq i8 %i.dn, %i.du
  br i1 %.not.i53.i, label %bb.ad, label %_dawg_match_edge.exit.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_dawg_match_edge.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !94

_dawg_match_edge.exit.i:                          ; preds = %.lr.ph.i.i
  %.not17.i.not.i = icmp eq i64 %indvars.iv.i.i, 0
  %.not47.i = icmp eq i32 %i.dh, 0
  %or.cond.i61 = select i1 %.not17.i.not.i, i1 %.not47.i, i1 false
  br i1 %or.cond.i61, label %bb.ae, label %_lookup_dawg_packed.exit.thread

_dawg_match_edge.exit.thread86.i:                 ; preds = %_dawg_decode_edge.exit.i
  %.not47.old.i = icmp eq i32 %i.dd, 0
  br i1 %.not47.old.i, label %bb.ae, label %_lookup_dawg_packed.exit.thread

bb.ae:                                            ; preds = %_dawg_match_edge.exit.thread86.i, %_dawg_match_edge.exit.i
  %.012.i172.i = phi i32 [ %.012.i173177.i, %_dawg_match_edge.exit.i ], [ %i.cy, %_dawg_match_edge.exit.thread86.i ]
  %storemerge.i170.i = phi i32 [ %storemerge.i171178.i, %_dawg_match_edge.exit.i ], [ %i.dc, %_dawg_match_edge.exit.thread86.i ]
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.014.i.i54.i = phi i32 [ %i.cw, %bb.ae ], [ %i.ec, %bb.af ] ; 2 uses
  %.013.i.i55.i = phi i32 [ 0, %bb.ae ], [ %i.eb, %bb.af ]
  %.012.i.i56.i = phi i32 [ 0, %bb.ae ], [ %i.ed, %bb.af ] ; 2 uses
  %i.dv = zext i32 %.014.i.i54.i to i64
  %i.dw = getelementptr i8, ptr @packed_name_dawg, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !22  ; 2 uses
  %i.dy = and i8 %i.dx, 127
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = shl i32 %i.dz, %.012.i.i56.i
  %i.eb = or i32 %i.ea, %.013.i.i55.i             ; 2 uses
  %i.ec = add i32 %.014.i.i54.i, 1
  %i.ed = add i32 %.012.i.i56.i, 7
  %.not.i.i57.i = icmp slt i8 %i.dx, 0
  br i1 %.not.i.i57.i, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = lshr i32 %i.eb, 1
  %i.ef = add i32 %i.ee, %.136.i
  %i.eg = add i32 %storemerge.i170.i, %.012.i172.i
  br label %_dawg_decode_node.exit.i

_dawg_match_edge.exit.thread.i:                   ; preds = %.preheader.i.i, %bb.ad
  %i.eh = phi i32 [ %i.di, %bb.ad ], [ %i.df, %.preheader.i.i ] ; 2 uses
  %i.ei = and i32 %i.cg, 1
  %spec.select.i = add i32 %.136.i, %i.ei         ; 2 uses
  %i.ej = icmp ult i32 %i.eh, %1
  br i1 %i.ej, label %.preheader131.i, label %.preheader.i, !llvm.loop !95

bb.ah:                                            ; preds = %bb.ah, %.preheader.i
  %.014.i.i59.i = phi i32 [ %i.eq, %bb.ah ], [ %.040.lcssa.i, %.preheader.i ] ; 2 uses
  %.013.i.i60.i = phi i32 [ %i.ep, %bb.ah ], [ 0, %.preheader.i ]
  %.012.i.i61.i = phi i32 [ %i.er, %bb.ah ], [ 0, %.preheader.i ] ; 2 uses
  %i.ek = zext i32 %.014.i.i59.i to i64
  %i.el = getelementptr i8, ptr @packed_name_dawg, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !22  ; 2 uses
  %i.en = zext i8 %i.em to i32
  %i.eo = shl i32 %i.en, %.012.i.i61.i
  %.fr96 = freeze i32 %i.eo
  %i.ep = or i32 %.fr96, %.013.i.i60.i            ; 2 uses
  %i.eq = add i32 %.014.i.i59.i, 1
  %i.er = add i32 %.012.i.i61.i, 7
  %.not.i.i62.i = icmp slt i8 %i.em, 0
  br i1 %.not.i.i62.i, label %bb.ah, label %_dawg_node_is_final.exit.i

_dawg_node_is_final.exit.i:                       ; preds = %bb.ah
  %i.es = trunc i32 %i.ep to i1
  %i.et = icmp sgt i32 %.035.lcssa.i, -1
  %or.cond96.not = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond96.not, label %bb.ai, label %_lookup_dawg_packed.exit.thread

bb.ai:                                            ; preds = %_dawg_node_is_final.exit.i
  %i.eu = zext nneg i32 %.035.lcssa.i to i64
  %i.ev = getelementptr [4 x i8], ptr @dawg_pos_to_codepoint, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !6
  br label %_lookup_dawg_packed.exit.thread.sink.split

_lookup_dawg_packed.exit.thread.sink.split:       ; preds = %parse_hex_code.exit, %bb.ai, %bb.t
  %.sink = phi i32 [ %i.be, %bb.t ], [ %i.ew, %bb.ai ], [ %.3.i, %parse_hex_code.exit ]
  store i32 %.sink, ptr %2, align 4, !tbaa !6
  br label %_lookup_dawg_packed.exit.thread

_lookup_dawg_packed.exit.thread:                  ; preds = %_dawg_match_edge.exit.i, %_dawg_match_edge.exit.thread86.i, %_dawg_decode_varint_unsigned.exit.i.i, %_lookup_dawg_packed.exit.thread.sink.split, %_dawg_node_is_final.exit.i, %bb.s, %find_syllable.exit58, %parse_hex_code.exit
  %.3 = phi i32 [ 0, %_dawg_node_is_final.exit.i ], [ 0, %parse_hex_code.exit ], [ 0, %bb.s ], [ 0, %find_syllable.exit58 ], [ 1, %_lookup_dawg_packed.exit.thread.sink.split ], [ 0, %_dawg_decode_varint_unsigned.exit.i.i ], [ 0, %_dawg_match_edge.exit.thread86.i ], [ 0, %_dawg_match_edge.exit.i ]
  ret i32 %.3
}

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromOrdinal(i32 noundef) local_unnamed_addr #1

declare i32 @PyOS_mystrnicmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyUnicode_CompareWithASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @nfc_nfkc(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i64], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @nfd_nfkd(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit150, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i32 %i.d, 2
  %i.f = and i32 %i.e, 7                          ; 6 uses
  %i.g = and i32 %i.d, 32
  %.not.i152 = icmp eq i32 %i.g, 0
  br i1 %.not.i152, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.d, 64
  %.not.i.i = icmp eq i32 %i.h, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.b, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.b, i64 56
  %.val4.i = load ptr, ptr %i.i, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 21 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !32  ; 10 uses
  %i.k = icmp ugt i64 %.val, 2305843009213693951
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.l = shl nuw nsw i64 %.val, 2
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #10 ; 7 uses
  %.not145 = icmp eq ptr %i.m, null
  br i1 %.not145, label %.thread, label %.preheader211

.preheader211:                                    ; preds = %bb.e
  %.not258 = icmp eq i64 %.val, 0
  br i1 %.not258, label %.outer._crit_edge, label %.preheader.lr.ph.lr.ph.lr.ph

.preheader.lr.ph.lr.ph.lr.ph:                     ; preds = %.preheader211
  %cond = icmp eq i32 %i.f, 2                     ; 2 uses
  %cond307 = icmp eq i32 %i.f, 2
  br label %.preheader.lr.ph

.thread:                                          ; preds = %_PyUnicode_DATA.exit, %bb.e
  %i.n = tail call ptr @PyErr_NoMemory() #10      ; 0 uses
  %i.o = load i32, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not.i149 = icmp sgt i32 %i.o, -1
  br i1 %.not.i149, label %bb.f, label %Py_DECREF.exit150

bb.f:                                             ; preds = %.thread
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.b, align 8, !tbaa !22
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %Py_DECREF.exit150

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit150

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.backedge, %.preheader.lr.ph.lr.ph.lr.ph
  %.1.ph251 = phi i64 [ 0, %.preheader.lr.ph.lr.ph.lr.ph ], [ %.1.ph251.be, %.preheader.lr.ph.backedge ]
  %.1119.ph250 = phi i32 [ 0, %.preheader.lr.ph.lr.ph.lr.ph ], [ %.1119.ph250.be, %.preheader.lr.ph.backedge ] ; 4 uses
  %.1125.ph249 = phi i64 [ 0, %.preheader.lr.ph.lr.ph.lr.ph ], [ %.1125.ph249.be, %.preheader.lr.ph.backedge ]
  %i.r = icmp sgt i32 %.1119.ph250, 0
  %wide.trip.count = zext nneg i32 %.1119.ph250 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.backedge
  %.1234 = phi i64 [ %.1.ph251, %.preheader.lr.ph ], [ %.1.be, %.backedge ] ; 13 uses
  %.1125233 = phi i64 [ %.1125.ph249, %.preheader.lr.ph ], [ %.1125.be, %.backedge ] ; 8 uses
  br i1 %i.r, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !96

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76
  %i.u = icmp eq i64 %i.t, %.1234
  br i1 %i.u, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph
  %i.v = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.w = add nsw i32 %.1119.ph250, -1             ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.a, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !76
  store i64 %i.z, ptr %i.v, align 8, !tbaa !76
  %i.aa = add i64 %.1234, 1                       ; 2 uses
  %i.ab = icmp slt i64 %i.aa, %.val
  br i1 %i.ab, label %.preheader.lr.ph.backedge, label %.outer._crit_edge

._crit_edge:                                      ; preds = %bb.h, %.preheader
  switch i32 %i.f, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %._crit_edge
  %i.ac = getelementptr i8, ptr %.0.i, i64 %.1234
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !22
  %i.ae = zext i8 %i.ad to i32
  br label %PyUnicode_READ.exit

bb.k:                                             ; preds = %._crit_edge
  %i.af = getelementptr [2 x i8], ptr %.0.i, i64 %.1234
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !35
  %i.ah = zext i16 %i.ag to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ai = getelementptr [4 x i8], ptr %.0.i, i64 %.1234
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.j, %bb.k, %bb.l
  %.0.i153 = phi i32 [ %i.ae, %bb.j ], [ %i.ah, %bb.k ], [ %i.aj, %bb.l ] ; 7 uses
  %i.ak = add i32 %.0.i153, -4352
  %or.cond = icmp ult i32 %i.ak, 19
  br i1 %or.cond, label %bb.m, label %PyUnicode_READ.exit155.thread

bb.m:                                             ; preds = %PyUnicode_READ.exit
  %i.al = add i64 %.1234, 1                       ; 7 uses
  %i.am = icmp slt i64 %i.al, %.val
  br i1 %i.am, label %bb.n, label %PyUnicode_READ.exit155.thread

bb.n:                                             ; preds = %bb.m
  switch i32 %i.f, label %bb.p [
    i32 1, label %PyUnicode_READ.exit155.thread
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr [2 x i8], ptr %.0.i, i64 %i.al
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !35
  %i.ap = zext i16 %i.ao to i32
  br label %PyUnicode_READ.exit155

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr [4 x i8], ptr %.0.i, i64 %i.al
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6
  br label %PyUnicode_READ.exit155

PyUnicode_READ.exit155:                           ; preds = %bb.o, %bb.p
  %.0.i154 = phi i32 [ %i.ar, %bb.p ], [ %i.ap, %bb.o ]
  %i.as = icmp ugt i32 %.0.i154, 4448
  br i1 %i.as, label %bb.q, label %PyUnicode_READ.exit155.thread

bb.q:                                             ; preds = %PyUnicode_READ.exit155
  br i1 %cond, label %PyUnicode_READ.exit157, label %PyUnicode_READ.exit157.thread

PyUnicode_READ.exit157:                           ; preds = %bb.q
  %i.at = getelementptr [2 x i8], ptr %.0.i, i64 %i.al
end_hunk_0
begin_hunk_1_@nfd_nfkd:bb.a

bb.y:                                             ; preds = %bb.w
  %i.eq = getelementptr i8, ptr %i.ej, i64 56
  %.val4.i195 = load ptr, ptr %i.eq, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit196

_PyUnicode_DATA.exit196:                          ; preds = %bb.x, %bb.y
  %.0.i194 = phi ptr [ %.0.i.i193, %bb.x ], [ %.val4.i195, %bb.y ] ; 16 uses
  switch i32 %i.en, label %PyUnicode_READ.exit198 [
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %_PyUnicode_DATA.exit196
  %i.er = load i8, ptr %.0.i194, align 1, !tbaa !22
  %i.es = zext i8 %i.er to i32
  br label %PyUnicode_READ.exit198.thread

bb.aa:                                            ; preds = %_PyUnicode_DATA.exit196
  %i.et = load i16, ptr %.0.i194, align 2, !tbaa !35
  %i.eu = zext i16 %i.et to i32
  br label %PyUnicode_READ.exit198.thread

PyUnicode_READ.exit198:                           ; preds = %_PyUnicode_DATA.exit196
  %i.ev = load i32, ptr %.0.i194, align 4, !tbaa !6 ; 2 uses
  %i.ew = icmp ugt i32 %i.ev, 1114111
  br i1 %i.ew, label %_getrecord_ex.exit, label %PyUnicode_READ.exit198.thread

PyUnicode_READ.exit198.thread:                    ; preds = %bb.aa, %bb.z, %PyUnicode_READ.exit198
  %.0.i197240 = phi i32 [ %i.ev, %PyUnicode_READ.exit198 ], [ %i.eu, %bb.aa ], [ %i.es, %bb.z ] ; 2 uses
  %i.ex = lshr i32 %.0.i197240, 7
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr [2 x i8], ptr @index1, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !35
  %i.fb = zext i16 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 7
  %i.fd = and i32 %.0.i197240, 127
  %i.fe = or disjoint i32 %i.fc, %i.fd
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr [2 x i8], ptr @index2, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !35
  %i.fi = zext i16 %i.fh to i64
  br label %_getrecord_ex.exit

_getrecord_ex.exit:                               ; preds = %PyUnicode_READ.exit198, %PyUnicode_READ.exit198.thread
  %.0.i199 = phi i64 [ %i.fi, %PyUnicode_READ.exit198.thread ], [ 0, %PyUnicode_READ.exit198 ]
  %i.fj = getelementptr i8, ptr %i.ej, i64 16     ; 2 uses
  %.val182302 = load i64, ptr %i.fj, align 8, !tbaa !32 ; 2 uses
  %i.fk = icmp sgt i64 %.val182302, 1
  br i1 %i.fk, label %.lr.ph306.preheader, label %.loopexit

.lr.ph306.preheader:                              ; preds = %_getrecord_ex.exit
  %i.fl = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i199
  %i.fm = getelementptr i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !66
  br label %.lr.ph306

.lr.ph306:                                        ; preds = %.lr.ph306.preheader, %bb.al
  %.val182308 = phi i64 [ %.val182, %bb.al ], [ %.val182302, %.lr.ph306.preheader ]
  %.1126304 = phi i64 [ %i.iz, %bb.al ], [ 1, %.lr.ph306.preheader ] ; 8 uses
  %.0146303 = phi i8 [ %.1147, %bb.al ], [ %i.fn, %.lr.ph306.preheader ] ; 2 uses
  switch i32 %i.en, label %PyUnicode_READ.exit201 [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %.lr.ph306
  %i.fo = getelementptr i8, ptr %.0.i194, i64 %.1126304
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !22
  %i.fq = zext i8 %i.fp to i32
  br label %PyUnicode_READ.exit201.thread

bb.ac:                                            ; preds = %.lr.ph306
  %i.fr = getelementptr [2 x i8], ptr %.0.i194, i64 %.1126304
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !35
  %i.ft = zext i16 %i.fs to i32
  br label %PyUnicode_READ.exit201.thread

PyUnicode_READ.exit201:                           ; preds = %.lr.ph306
  %i.fu = getelementptr [4 x i8], ptr %.0.i194, i64 %.1126304
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !6  ; 2 uses
  %i.fw = icmp ugt i32 %i.fv, 1114111
  br i1 %i.fw, label %_getrecord_ex.exit203, label %PyUnicode_READ.exit201.thread

PyUnicode_READ.exit201.thread:                    ; preds = %bb.ac, %bb.ab, %PyUnicode_READ.exit201
  %.0.i200242 = phi i32 [ %i.fv, %PyUnicode_READ.exit201 ], [ %i.ft, %bb.ac ], [ %i.fq, %bb.ab ] ; 2 uses
  %i.fx = lshr i32 %.0.i200242, 7
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr [2 x i8], ptr @index1, i64 %i.fy
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !35
  %i.gb = zext i16 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 7
  %i.gd = and i32 %.0.i200242, 127
  %i.ge = or disjoint i32 %i.gc, %i.gd
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr [2 x i8], ptr @index2, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !35
  %i.gi = zext i16 %i.gh to i64
  br label %_getrecord_ex.exit203

_getrecord_ex.exit203:                            ; preds = %PyUnicode_READ.exit201, %PyUnicode_READ.exit201.thread
  %.0.i202 = phi i64 [ %i.gi, %PyUnicode_READ.exit201.thread ], [ 0, %PyUnicode_READ.exit201 ]
  %i.gj = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i202
  %i.gk = getelementptr i8, ptr %i.gj, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !66  ; 4 uses
  %i.gm = icmp ne i8 %.0146303, 0
  %i.gn = icmp ne i8 %i.gl, 0
  %or.cond7.not278 = select i1 %i.gm, i1 %i.gn, i1 false
  %.not169 = icmp ugt i8 %.0146303, %i.gl
  %or.cond179 = select i1 %or.cond7.not278, i1 %.not169, i1 false
  br i1 %or.cond179, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %_getrecord_ex.exit203
  %i.go = add nsw i64 %.1126304, -1
  br label %bb.ae

bb.ae:                                            ; preds = %_getrecord_ex.exit212, %bb.ad
  %.4131 = phi i64 [ %i.go, %bb.ad ], [ %i.ha, %_getrecord_ex.exit212 ] ; 6 uses
  switch i32 %i.en, label %PyUnicode_READ.exit205 [
    i32 1, label %PyUnicode_READ.exit205.thread
    i32 2, label %PyUnicode_READ.exit205.thread246
  ]

PyUnicode_READ.exit205.thread:                    ; preds = %bb.ae
  %i.gp = getelementptr i8, ptr %.0.i194, i64 %.4131
  %i.gq = getelementptr i8, ptr %i.gp, i64 1      ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !22
  %i.gs = getelementptr i8, ptr %.0.i194, i64 %.4131 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !22
  store i8 %i.gt, ptr %i.gq, align 1, !tbaa !22
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !22
  br label %PyUnicode_WRITE.exit208

PyUnicode_READ.exit205.thread246:                 ; preds = %bb.ae
  %i.gu = getelementptr [2 x i8], ptr %.0.i194, i64 %.4131 ; 2 uses
  %i.gv = load <2 x i16>, ptr %i.gu, align 2, !tbaa !35
  %i.gw = shufflevector <2 x i16> %i.gv, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.gw, ptr %i.gu, align 2, !tbaa !35
  br label %PyUnicode_WRITE.exit208

PyUnicode_READ.exit205:                           ; preds = %bb.ae
  %i.gx = getelementptr [4 x i8], ptr %.0.i194, i64 %.4131 ; 2 uses
  %i.gy = load <2 x i32>, ptr %i.gx, align 4, !tbaa !6
  %i.gz = shufflevector <2 x i32> %i.gy, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gz, ptr %i.gx, align 4, !tbaa !6
  br label %PyUnicode_WRITE.exit208

PyUnicode_WRITE.exit208:                          ; preds = %PyUnicode_READ.exit205.thread, %PyUnicode_READ.exit205.thread246, %PyUnicode_READ.exit205
  %i.ha = add nsw i64 %.4131, -1                  ; 4 uses
  %i.hb = icmp slt i64 %.4131, 1
  br i1 %i.hb, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %PyUnicode_WRITE.exit208
  switch i32 %i.en, label %PyUnicode_READ.exit210 [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.hc = getelementptr i8, ptr %.0.i194, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !22
  %i.he = zext i8 %i.hd to i32
  br label %PyUnicode_READ.exit210.thread

bb.ah:                                            ; preds = %bb.af
  %i.hf = getelementptr [2 x i8], ptr %.0.i194, i64 %i.ha
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !35
  %i.hh = zext i16 %i.hg to i32
  br label %PyUnicode_READ.exit210.thread

PyUnicode_READ.exit210:                           ; preds = %bb.af
  %i.hi = getelementptr [4 x i8], ptr %.0.i194, i64 %i.ha
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !6  ; 2 uses
  %i.hk = icmp ugt i32 %i.hj, 1114111
  br i1 %i.hk, label %_getrecord_ex.exit212, label %PyUnicode_READ.exit210.thread

PyUnicode_READ.exit210.thread:                    ; preds = %bb.ah, %bb.ag, %PyUnicode_READ.exit210
  %.0.i209265 = phi i32 [ %i.hj, %PyUnicode_READ.exit210 ], [ %i.hh, %bb.ah ], [ %i.he, %bb.ag ] ; 2 uses
  %i.hl = lshr i32 %.0.i209265, 7
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr [2 x i8], ptr @index1, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !35
  %i.hp = zext i16 %i.ho to i32
  %i.hq = shl nuw nsw i32 %i.hp, 7
  %i.hr = and i32 %.0.i209265, 127
  %i.hs = or disjoint i32 %i.hq, %i.hr
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr [2 x i8], ptr @index2, i64 %i.ht
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !35
  %i.hw = zext i16 %i.hv to i64
  br label %_getrecord_ex.exit212

_getrecord_ex.exit212:                            ; preds = %PyUnicode_READ.exit210, %PyUnicode_READ.exit210.thread
  %.0.i211 = phi i64 [ %i.hw, %PyUnicode_READ.exit210.thread ], [ 0, %PyUnicode_READ.exit210 ]
  %i.hx = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i211
  %i.hy = getelementptr i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !66  ; 2 uses
  %i.ia = icmp ne i8 %i.hz, 0
  %.not170 = icmp ugt i8 %i.hz, %i.gl
  %or.cond180 = select i1 %i.ia, i1 %.not170, i1 false
  %cond.fr = freeze i1 %or.cond180
  br i1 %cond.fr, label %bb.ae, label %bb.ai

bb.ai:                                            ; preds = %_getrecord_ex.exit212, %PyUnicode_WRITE.exit208
  switch i32 %i.en, label %PyUnicode_READ.exit214 [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ib = getelementptr i8, ptr %.0.i194, i64 %.1126304
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !22
  %i.id = zext i8 %i.ic to i32
  br label %PyUnicode_READ.exit214.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ie = getelementptr [2 x i8], ptr %.0.i194, i64 %.1126304
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !35
  %i.ig = zext i16 %i.if to i32
  br label %PyUnicode_READ.exit214.thread

PyUnicode_READ.exit214:                           ; preds = %bb.ai
  %i.ih = getelementptr [4 x i8], ptr %.0.i194, i64 %.1126304
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !6  ; 2 uses
  %i.ij = icmp ugt i32 %i.ii, 1114111
  br i1 %i.ij, label %_getrecord_ex.exit216, label %PyUnicode_READ.exit214.thread

PyUnicode_READ.exit214.thread:                    ; preds = %bb.ak, %bb.aj, %PyUnicode_READ.exit214
  %.0.i213269 = phi i32 [ %i.ii, %PyUnicode_READ.exit214 ], [ %i.ig, %bb.ak ], [ %i.id, %bb.aj ] ; 2 uses
  %i.ik = lshr i32 %.0.i213269, 7
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr [2 x i8], ptr @index1, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !35
  %i.io = zext i16 %i.in to i32
  %i.ip = shl nuw nsw i32 %i.io, 7
  %i.iq = and i32 %.0.i213269, 127
  %i.ir = or disjoint i32 %i.ip, %i.iq
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr [2 x i8], ptr @index2, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !35
  %i.iv = zext i16 %i.iu to i64
  br label %_getrecord_ex.exit216

_getrecord_ex.exit216:                            ; preds = %PyUnicode_READ.exit214, %PyUnicode_READ.exit214.thread
  %.0.i215 = phi i64 [ %i.iv, %PyUnicode_READ.exit214.thread ], [ 0, %PyUnicode_READ.exit214 ]
  %i.iw = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i215
  %i.ix = getelementptr i8, ptr %i.iw, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !66
  %.val182.pre = load i64, ptr %i.fj, align 8, !tbaa !32
  br label %bb.al

bb.al:                                            ; preds = %_getrecord_ex.exit203, %_getrecord_ex.exit216
  %.val182 = phi i64 [ %.val182.pre, %_getrecord_ex.exit216 ], [ %.val182308, %_getrecord_ex.exit203 ] ; 2 uses
  %.1147 = phi i8 [ %i.iy, %_getrecord_ex.exit216 ], [ %i.gl, %_getrecord_ex.exit203 ]
  %i.iz = add nuw nsw i64 %.1126304, 1            ; 2 uses
  %i.ja = icmp slt i64 %i.iz, %.val182
  br i1 %i.ja, label %.lr.ph306, label %.loopexit, !llvm.loop !110

.loopexit.sink.split:                             ; preds = %bb.b, %bb.a, %.thread232
  %i.jb = tail call ptr @PyErr_NoMemory() #10     ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %.loopexit.sink.split, %_getrecord_ex.exit, %._crit_edge
  %.5 = phi ptr [ %i.ej, %_getrecord_ex.exit ], [ null, %._crit_edge ], [ null, %.loopexit.sink.split ], [ %i.ej, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.5
}

declare i32 @PyUnicode_Compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromObject(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @unicodedata_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.b = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @Segment_spec, ptr noundef null) #10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %.val, align 8, !tbaa !18
  %i.d = tail call ptr @PyType_FromModuleAndSpec(ptr noundef nonnull %0, ptr noundef nonnull @GraphemeBreakIterator_spec, ptr noundef null) #10 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !20
  %i.g = tail call i32 @PyModule_AddStringConstant(ptr noundef nonnull %0, ptr noundef nonnull @.str.553, ptr noundef nonnull @.str.554) #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %Py_DECREF.exit23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @PyType_FromSpec(ptr noundef nonnull @ucd_type_spec) #10 ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit23, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @PyModule_AddType(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #10
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.m, -1
  br i1 %.not.i22, label %bb.g, label %Py_DECREF.exit23

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.i, align 8, !tbaa !22
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %Py_DECREF.exit23

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #10
  br label %Py_DECREF.exit23

bb.i:                                             ; preds = %bb.e
  %i.p = tail call ptr @_PyObject_GC_New(ptr noundef nonnull %i.i) #10 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %new_previous_version.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %i.p, i64 16
  store ptr @.str.555, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr i8, ptr %i.p, i64 24
  store ptr @get_change_3_2_0, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr i8, ptr %i.p, i64 32
  store ptr @normalization_3_2_0, ptr %i.t, align 8, !tbaa !105
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.p) #10
  br label %new_previous_version.exit

new_previous_version.exit:                        ; preds = %bb.i, %bb.j
  %i.u = load i32, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %new_previous_version.exit
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.i, align 8, !tbaa !22
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %new_previous_version.exit, %bb.k, %bb.l
  %i.x = tail call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.556, ptr noundef %i.p) #10
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit23, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit
  %i.z = tail call ptr @PyMem_Malloc(i64 noundef 16) #10 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call ptr @PyErr_NoMemory() #10     ; 0 uses
  br label %unicodedata_create_capi.exit

bb.o:                                             ; preds = %bb.m
  store ptr @capi_getucname, ptr %i.z, align 8, !tbaa !112
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  store ptr @capi_getcode, ptr %i.ac, align 8, !tbaa !114
  %i.ad = tail call ptr @PyCapsule_New(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.576, ptr noundef nonnull @unicodedata_destroy_capi) #10 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.p, label %unicodedata_create_capi.exit

bb.p:                                             ; preds = %bb.o
  tail call void @PyMem_Free(ptr noundef nonnull %i.z) #10
  br label %unicodedata_create_capi.exit

unicodedata_create_capi.exit:                     ; preds = %bb.n, %bb.o, %bb.p
  %.0.i = phi ptr [ null, %bb.n ], [ null, %bb.p ], [ %i.ad, %bb.o ]
  %i.af = tail call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.557, ptr noundef %.0.i) #10
  %.lobit = ashr i32 %i.af, 31
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %bb.c, %Py_DECREF.exit, %unicodedata_create_capi.exit, %bb.d, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.d ], [ %.lobit, %unicodedata_create_capi.exit ], [ -1, %Py_DECREF.exit ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ]
  ret i32 %.3
}

declare ptr @PyType_FromModuleAndSpec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddStringConstant(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyType_FromSpec(ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddType(ptr noundef, ptr noundef) local_unnamed_addr #1

end_hunk_1
