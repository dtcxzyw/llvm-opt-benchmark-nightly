Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodedata?download=true
inline.NumInlined: 234
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_getcode:bb.a
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr i8, ptr @_Py_ctype_toupper, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !23
  %.not.i53.i = icmp eq i8 %i.dn, %i.du
  br i1 %.not.i53.i, label %bb.ad, label %_dawg_match_edge.exit.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_dawg_match_edge.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !102

_dawg_match_edge.exit.i:                          ; preds = %.lr.ph.i.i
  %.not17.i.not.i = icmp eq i64 %indvars.iv.i.i, 0
  %.not47.i = icmp eq i32 %i.dh, 0
  %or.cond.i61 = select i1 %.not17.i.not.i, i1 %.not47.i, i1 false
  br i1 %or.cond.i61, label %bb.ae, label %_lookup_dawg_packed.exit.thread

_dawg_match_edge.exit.thread79.i:                 ; preds = %_dawg_decode_edge.exit.i
  %.not47.old.i = icmp eq i32 %i.dd, 0
  br i1 %.not47.old.i, label %bb.ae, label %_lookup_dawg_packed.exit.thread

bb.ae:                                            ; preds = %_dawg_match_edge.exit.thread79.i, %_dawg_match_edge.exit.i
  %.012.i150.i = phi i32 [ %.012.i151155.i, %_dawg_match_edge.exit.i ], [ %i.cy, %_dawg_match_edge.exit.thread79.i ]
  %storemerge.i148.i = phi i32 [ %storemerge.i149156.i, %_dawg_match_edge.exit.i ], [ %i.dc, %_dawg_match_edge.exit.thread79.i ]
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.014.i.i54.i = phi i32 [ %i.cw, %bb.ae ], [ %i.ec, %bb.af ] ; 2 uses
  %.012.i.i55.i = phi i32 [ 0, %bb.ae ], [ %i.eb, %bb.af ]
  %.011.i.i56.i = phi i32 [ 0, %bb.ae ], [ %i.ed, %bb.af ] ; 2 uses
  %i.dv = zext i32 %.014.i.i54.i to i64
  %i.dw = getelementptr i8, ptr @packed_name_dawg, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !23  ; 2 uses
  %i.dy = and i8 %i.dx, 127
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = shl i32 %i.dz, %.011.i.i56.i
  %i.eb = or i32 %i.ea, %.012.i.i55.i             ; 2 uses
  %i.ec = add i32 %.014.i.i54.i, 1
  %i.ed = add i32 %.011.i.i56.i, 7
  %.not.i.i57.i = icmp slt i8 %i.dx, 0
  br i1 %.not.i.i57.i, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = lshr i32 %i.eb, 1
  %i.ef = add i32 %i.ee, %.129.i
  %i.eg = add i32 %storemerge.i148.i, %.012.i150.i
  br label %_dawg_decode_node.exit.i

_dawg_match_edge.exit.thread.i:                   ; preds = %.preheader.i.i, %bb.ad
  %i.eh = phi i32 [ %i.di, %bb.ad ], [ %i.df, %.preheader.i.i ] ; 2 uses
  %i.ei = and i32 %i.cg, 1
  %spec.select.i = add i32 %.129.i, %i.ei         ; 2 uses
  %i.ej = icmp ult i32 %i.eh, %1
  br i1 %i.ej, label %.preheader109.i, label %.preheader.i, !llvm.loop !103

bb.ah:                                            ; preds = %bb.ah, %.preheader.i
  %.014.i.i59.i = phi i32 [ %i.eq, %bb.ah ], [ %.031.lcssa.i, %.preheader.i ] ; 2 uses
  %.012.i.i60.i = phi i32 [ %i.ep, %bb.ah ], [ 0, %.preheader.i ]
  %.011.i.i61.i = phi i32 [ %i.er, %bb.ah ], [ 0, %.preheader.i ] ; 2 uses
  %i.ek = zext i32 %.014.i.i59.i to i64
  %i.el = getelementptr i8, ptr @packed_name_dawg, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !23  ; 2 uses
  %i.en = zext i8 %i.em to i32
  %i.eo = shl i32 %i.en, %.011.i.i61.i
  %i.ep = or i32 %i.eo, %.012.i.i60.i             ; 2 uses
  %i.eq = add i32 %.014.i.i59.i, 1
  %i.er = add i32 %.011.i.i61.i, 7
  %.not.i.i62.i = icmp slt i8 %i.em, 0
  br i1 %.not.i.i62.i, label %bb.ah, label %_dawg_node_is_final.exit.i

_dawg_node_is_final.exit.i:                       ; preds = %bb.ah
  %i.es = trunc i32 %i.ep to i1
  %i.et = icmp sgt i32 %.028.lcssa.i, -1
  %or.cond96.not = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond96.not, label %bb.ai, label %_lookup_dawg_packed.exit.thread

bb.ai:                                            ; preds = %_dawg_node_is_final.exit.i
  %i.eu = zext nneg i32 %.028.lcssa.i to i64
  %i.ev = getelementptr [4 x i8], ptr @dawg_pos_to_codepoint, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !10
  br label %_lookup_dawg_packed.exit.thread.sink.split

_lookup_dawg_packed.exit.thread.sink.split:       ; preds = %parse_hex_code.exit, %bb.ai, %bb.t
  %.sink = phi i32 [ %i.be, %bb.t ], [ %i.ew, %bb.ai ], [ %.3.i, %parse_hex_code.exit ]
  store i32 %.sink, ptr %2, align 4, !tbaa !10
  br label %_lookup_dawg_packed.exit.thread

_lookup_dawg_packed.exit.thread:                  ; preds = %_dawg_match_edge.exit.i, %_dawg_match_edge.exit.thread79.i, %_dawg_decode_varint_unsigned.exit.i.i, %_lookup_dawg_packed.exit.thread.sink.split, %_dawg_node_is_final.exit.i, %bb.s, %find_syllable.exit58, %parse_hex_code.exit
  %.3 = phi i32 [ 0, %_dawg_node_is_final.exit.i ], [ 0, %parse_hex_code.exit ], [ 0, %bb.s ], [ 0, %find_syllable.exit58 ], [ 1, %_lookup_dawg_packed.exit.thread.sink.split ], [ 0, %_dawg_decode_varint_unsigned.exit.i.i ], [ 0, %_dawg_match_edge.exit.thread79.i ], [ 0, %_dawg_match_edge.exit.i ]
  ret i32 %.3
}

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromOrdinal(i32 noundef) local_unnamed_addr #1

declare i32 @PyOS_mystrnicmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyUnicode_CompareWithASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @nfc_nfkc(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
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
  %.val4.i = load ptr, ptr %i.i, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 21 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !35  ; 10 uses
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
  %cond306 = icmp eq i32 %i.f, 2
  br label %.preheader.lr.ph

.thread:                                          ; preds = %_PyUnicode_DATA.exit, %bb.e
  %i.n = tail call ptr @PyErr_NoMemory() #10      ; 0 uses
  %i.o = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i149 = icmp sgt i32 %i.o, -1
  br i1 %.not.i149, label %bb.f, label %Py_DECREF.exit150

bb.f:                                             ; preds = %.thread
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.b, align 8, !tbaa !23
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %Py_DECREF.exit150

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit150

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.backedge, %.preheader.lr.ph.lr.ph.lr.ph
  %.1.ph251 = phi i32 [ 0, %.preheader.lr.ph.lr.ph.lr.ph ], [ %.1.ph251.be, %.preheader.lr.ph.backedge ] ; 4 uses
  %.1122.ph250 = phi i64 [ 0, %.preheader.lr.ph.lr.ph.lr.ph ], [ %.1122.ph250.be, %.preheader.lr.ph.backedge ]
  %.1126.ph249 = phi i64 [ 0, %.preheader.lr.ph.lr.ph.lr.ph ], [ %.1126.ph249.be, %.preheader.lr.ph.backedge ]
  %i.r = icmp sgt i32 %.1.ph251, 0
  %wide.trip.count = zext nneg i32 %.1.ph251 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.backedge
  %.1122234 = phi i64 [ %.1122.ph250, %.preheader.lr.ph ], [ %.1122.be, %.backedge ] ; 8 uses
  %.1126233 = phi i64 [ %.1126.ph249, %.preheader.lr.ph ], [ %.1126.be, %.backedge ] ; 13 uses
  br i1 %i.r, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54
  %i.u = icmp eq i64 %i.t, %.1126233
  br i1 %i.u, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph
  %i.v = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.w = add nsw i32 %.1.ph251, -1                ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.a, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !54
  store i64 %i.z, ptr %i.v, align 8, !tbaa !54
  %i.aa = add i64 %.1126233, 1                    ; 2 uses
  %i.ab = icmp slt i64 %i.aa, %.val
  br i1 %i.ab, label %.preheader.lr.ph.backedge, label %.outer._crit_edge

._crit_edge:                                      ; preds = %bb.h, %.preheader
  switch i32 %i.f, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %._crit_edge
  %i.ac = getelementptr i8, ptr %.0.i, i64 %.1126233
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  %i.ae = zext i8 %i.ad to i32
  br label %PyUnicode_READ.exit

bb.k:                                             ; preds = %._crit_edge
  %i.af = getelementptr [2 x i8], ptr %.0.i, i64 %.1126233
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !36
  %i.ah = zext i16 %i.ag to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ai = getelementptr [4 x i8], ptr %.0.i, i64 %.1126233
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.j, %bb.k, %bb.l
  %.0.i153 = phi i32 [ %i.ae, %bb.j ], [ %i.ah, %bb.k ], [ %i.aj, %bb.l ] ; 7 uses
  %i.ak = add i32 %.0.i153, -4352
  %or.cond = icmp ult i32 %i.ak, 19
  br i1 %or.cond, label %bb.m, label %PyUnicode_READ.exit155.thread

bb.m:                                             ; preds = %PyUnicode_READ.exit
  %i.al = add i64 %.1126233, 1                    ; 7 uses
  %i.am = icmp slt i64 %i.al, %.val
  br i1 %i.am, label %bb.n, label %PyUnicode_READ.exit155.thread

bb.n:                                             ; preds = %bb.m
  switch i32 %i.f, label %bb.p [
    i32 1, label %PyUnicode_READ.exit155.thread
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr [2 x i8], ptr %.0.i, i64 %i.al
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !36
  %i.ap = zext i16 %i.ao to i32
  br label %PyUnicode_READ.exit155

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr [4 x i8], ptr %.0.i, i64 %i.al
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  br label %PyUnicode_READ.exit155

PyUnicode_READ.exit155:                           ; preds = %bb.o, %bb.p
  %.0.i154 = phi i32 [ %i.ar, %bb.p ], [ %i.ap, %bb.o ]
  %i.as = icmp ugt i32 %.0.i154, 4448
  br i1 %i.as, label %bb.q, label %PyUnicode_READ.exit155.thread

bb.q:                                             ; preds = %PyUnicode_READ.exit155
  br i1 %cond, label %PyUnicode_READ.exit157, label %PyUnicode_READ.exit157.thread

PyUnicode_READ.exit157:                           ; preds = %bb.q
  %i.at = getelementptr [2 x i8], ptr %.0.i, i64 %i.al
  %i.au = load i16, ptr %i.at, align 2, !tbaa !36
  %i.av = icmp ult i16 %i.au, 4470
  br i1 %i.av, label %bb.r, label %PyUnicode_READ.exit155.thread

PyUnicode_READ.exit157.thread:                    ; preds = %bb.q
  %i.aw = getelementptr [4 x i8], ptr %.0.i, i64 %i.al
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10
  %i.ay = icmp ult i32 %i.ax, 4470
  br i1 %i.ay, label %.thread302, label %PyUnicode_READ.exit155.thread

bb.r:                                             ; preds = %PyUnicode_READ.exit157
  %i.az = getelementptr [2 x i8], ptr %.0.i, i64 %i.al
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !36
  %i.bb = zext i16 %i.ba to i32
  br label %PyUnicode_READ.exit159

.thread302:                                       ; preds = %PyUnicode_READ.exit157.thread
  %i.bc = getelementptr [4 x i8], ptr %.0.i, i64 %i.al
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10
  br label %PyUnicode_READ.exit159

PyUnicode_READ.exit159:                           ; preds = %bb.r, %.thread302
  %.0.i158 = phi i32 [ %i.bd, %.thread302 ], [ %i.bb, %bb.r ]
  %i.be = mul nuw nsw i32 %.0.i153, 21
  %i.bf = add i32 %.0.i158, %i.be
  %i.bg = mul i32 %i.bf, 28                       ; 2 uses
  %i.bh = add i32 %i.bg, -2639516                 ; 4 uses
  %i.bi = add i64 %.1126233, 2                    ; 11 uses
  %i.bj = icmp slt i64 %i.bi, %.val
  br i1 %i.bj, label %bb.s, label %PyUnicode_READ.exit161.thread

bb.s:                                             ; preds = %PyUnicode_READ.exit159
  br i1 %cond306, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr [2 x i8], ptr %.0.i, i64 %i.bi
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !36
  %i.bm = zext i16 %i.bl to i32
  br label %PyUnicode_READ.exit161

bb.u:                                             ; preds = %bb.s
  %i.bn = getelementptr [4 x i8], ptr %.0.i, i64 %i.bi
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !10
  br label %PyUnicode_READ.exit161

PyUnicode_READ.exit161:                           ; preds = %bb.t, %bb.u
  %.0.i160 = phi i32 [ %i.bo, %bb.u ], [ %i.bm, %bb.t ]
  %i.bp = icmp ugt i32 %.0.i160, 4519
  br i1 %i.bp, label %bb.v, label %PyUnicode_READ.exit161.thread

bb.v:                                             ; preds = %PyUnicode_READ.exit161
  br i1 %cond, label %PyUnicode_READ.exit163, label %PyUnicode_READ.exit163.thread

PyUnicode_READ.exit163:                           ; preds = %bb.v
  %i.bq = getelementptr [2 x i8], ptr %.0.i, i64 %i.bi
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !36
  %i.bs = icmp ult i16 %i.br, 4547
  br i1 %i.bs, label %bb.w, label %PyUnicode_READ.exit161.thread

PyUnicode_READ.exit163.thread:                    ; preds = %bb.v
  %i.bt = getelementptr [4 x i8], ptr %.0.i, i64 %i.bi
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !10
  %i.bv = icmp ult i32 %i.bu, 4547
  br i1 %i.bv, label %.thread304, label %PyUnicode_READ.exit161.thread

bb.w:                                             ; preds = %PyUnicode_READ.exit163
  %i.bw = getelementptr [2 x i8], ptr %.0.i, i64 %i.bi
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !36
  %i.by = zext i16 %i.bx to i32
  br label %PyUnicode_READ.exit165

.thread304:                                       ; preds = %PyUnicode_READ.exit163.thread
  %i.bz = getelementptr [4 x i8], ptr %.0.i, i64 %i.bi
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !10
  br label %PyUnicode_READ.exit165

PyUnicode_READ.exit165:                           ; preds = %bb.w, %.thread304
  %.0.i164 = phi i32 [ %i.ca, %.thread304 ], [ %i.by, %bb.w ]
  %i.cb = add i32 %i.bg, -2644035
  %i.cc = add i32 %i.cb, %.0.i164
  %i.cd = add i64 %.1126233, 3
  br label %PyUnicode_READ.exit161.thread

PyUnicode_READ.exit161.thread:                    ; preds = %PyUnicode_READ.exit163.thread, %PyUnicode_READ.exit165, %PyUnicode_READ.exit163, %PyUnicode_READ.exit161, %PyUnicode_READ.exit159
  %.2127 = phi i64 [ %i.cd, %PyUnicode_READ.exit165 ], [ %i.bi, %PyUnicode_READ.exit163 ], [ %i.bi, %PyUnicode_READ.exit161 ], [ %i.bi, %PyUnicode_READ.exit159 ], [ %i.bi, %PyUnicode_READ.exit163.thread ]
  %.0115 = phi i32 [ %i.cc, %PyUnicode_READ.exit165 ], [ %i.bh, %PyUnicode_READ.exit163 ], [ %i.bh, %PyUnicode_READ.exit161 ], [ %i.bh, %PyUnicode_READ.exit159 ], [ %i.bh, %PyUnicode_READ.exit163.thread ]
  %i.ce = getelementptr [4 x i8], ptr %i.m, i64 %.1122234
  store i32 %.0115, ptr %i.ce, align 4, !tbaa !10
  br label %.backedge

.backedge:                                        ; preds = %PyUnicode_READ.exit161.thread, %find_nfc_index.exit.thread
  %.1126.be = phi i64 [ %i.cy, %find_nfc_index.exit.thread ], [ %.2127, %PyUnicode_READ.exit161.thread ] ; 2 uses
  %.1122.be = add i64 %.1122234, 1                ; 2 uses
  %i.cf = icmp slt i64 %.1126.be, %.val
  br i1 %i.cf, label %.preheader, label %.outer._crit_edge, !llvm.loop !105

PyUnicode_READ.exit155.thread:                    ; preds = %PyUnicode_READ.exit157.thread, %bb.n, %PyUnicode_READ.exit157, %PyUnicode_READ.exit155, %bb.m, %PyUnicode_READ.exit
  %or.cond.not27.i = icmp ugt i32 %.0.i153, 59
  br i1 %or.cond.not27.i, label %.lr.ph.i, label %find_nfc_index.exit.thread

bb.x:                                             ; preds = %.lr.ph.i
  %i.cg = add i32 %.01828.i, 1                    ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr @nfc_first, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !109 ; 2 uses
  %i.ck = add i32 %i.cj, -1
  %or.cond.not.i = icmp ult i32 %i.ck, %.0.i153
  br i1 %or.cond.not.i, label %.lr.ph.i, label %find_nfc_index.exit.thread, !llvm.loop !106

.lr.ph.i:                                         ; preds = %PyUnicode_READ.exit155.thread, %bb.x
  %i.cl = phi i32 [ %i.cj, %bb.x ], [ 60, %PyUnicode_READ.exit155.thread ] ; 2 uses
  %i.cm = phi ptr [ %i.ci, %bb.x ], [ @nfc_first, %PyUnicode_READ.exit155.thread ] ; 2 uses
  %.01828.i = phi i32 [ %i.cg, %bb.x ], [ 0, %PyUnicode_READ.exit155.thread ]
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  %i.co = load i16, ptr %i.cn, align 4, !tbaa !110
  %i.cp = sext i16 %i.co to i32
  %i.cq = add i32 %i.cl, %i.cp
  %.not21.i = icmp ugt i32 %.0.i153, %i.cq
  br i1 %.not21.i, label %bb.x, label %find_nfc_index.exit

find_nfc_index.exit:                              ; preds = %.lr.ph.i
  %i.cr = sub i32 %.0.i153, %i.cl
  %i.cs = getelementptr i8, ptr %i.cm, i64 6
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !111
  %i.cu = sext i16 %i.ct to i32
  %i.cv = add i32 %i.cr, %i.cu                    ; 2 uses
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %find_nfc_index.exit.thread, label %bb.y

find_nfc_index.exit.thread:                       ; preds = %bb.x, %PyUnicode_READ.exit155.thread, %find_nfc_index.exit
  %i.cx = getelementptr [4 x i8], ptr %i.m, i64 %.1122234
  store i32 %.0.i153, ptr %i.cx, align 4, !tbaa !10
  %i.cy = add i64 %.1126233, 1
  br label %.backedge

bb.y:                                             ; preds = %find_nfc_index.exit
  %i.cz = add i64 %.1126233, 1                    ; 3 uses
  switch i32 %i.f, label %bb.ab [
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr i8, ptr %.0.i, i64 %.1126233
  %i.db = load i8, ptr %i.da, align 1, !tbaa !23
  %i.dc = zext i8 %i.db to i32
  br label %PyUnicode_READ.exit167

bb.aa:                                            ; preds = %bb.y
  %i.dd = getelementptr [2 x i8], ptr %.0.i, i64 %.1126233
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !36
  %i.df = zext i16 %i.de to i32
  br label %PyUnicode_READ.exit167

bb.ab:                                            ; preds = %bb.y
  %i.dg = getelementptr [4 x i8], ptr %.0.i, i64 %.1126233
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !10
  br label %PyUnicode_READ.exit167

PyUnicode_READ.exit167:                           ; preds = %bb.z, %bb.aa, %bb.ab
  %.0.i166 = phi i32 [ %i.dc, %bb.z ], [ %i.df, %bb.aa ], [ %i.dh, %bb.ab ]
  %i.di = getelementptr [4 x i8], ptr %i.m, i64 %.1122234 ; 2 uses
  store i32 %.0.i166, ptr %i.di, align 4, !tbaa !10
  %i.dj = icmp slt i64 %i.cz, %.val
  br i1 %i.dj, label %.lr.ph241, label %.thread201.thread

.thread201.thread:                                ; preds = %PyUnicode_READ.exit167
  %i.dk = add i64 %.1122234, 1
  br label %.outer._crit_edge

.lr.ph241:                                        ; preds = %PyUnicode_READ.exit167, %bb.al
  %.2240 = phi i32 [ %.3, %bb.al ], [ %.1.ph251, %PyUnicode_READ.exit167 ] ; 6 uses
  %.0116239 = phi i32 [ %.1117, %bb.al ], [ 0, %PyUnicode_READ.exit167 ] ; 4 uses
  %.0119238 = phi i32 [ %.1120, %bb.al ], [ %i.cv, %PyUnicode_READ.exit167 ] ; 3 uses
  %.0123237 = phi i64 [ %.1124, %bb.al ], [ %i.cz, %PyUnicode_READ.exit167 ] ; 5 uses
  switch i32 %i.f, label %PyUnicode_READ.exit169 [
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %.lr.ph241
  %i.dl = getelementptr i8, ptr %.0.i, i64 %.0123237
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !23
  %i.dn = zext i8 %i.dm to i32
  br label %PyUnicode_READ.exit169.thread

bb.ad:                                            ; preds = %.lr.ph241
  %i.do = getelementptr [2 x i8], ptr %.0.i, i64 %.0123237
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !36
  %i.dq = zext i16 %i.dp to i32
  br label %PyUnicode_READ.exit169.thread

PyUnicode_READ.exit169:                           ; preds = %.lr.ph241
  %i.dr = getelementptr [4 x i8], ptr %.0.i, i64 %.0123237
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10 ; 3 uses
  %i.dt = icmp ugt i32 %i.ds, 1114111
  br i1 %i.dt, label %_getrecord_ex.exit, label %PyUnicode_READ.exit169.thread

PyUnicode_READ.exit169.thread:                    ; preds = %bb.ad, %bb.ac, %PyUnicode_READ.exit169
  %.0.i168194 = phi i32 [ %i.ds, %PyUnicode_READ.exit169 ], [ %i.dq, %bb.ad ], [ %i.dn, %bb.ac ] ; 3 uses
  %i.du = lshr i32 %.0.i168194, 7
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr [2 x i8], ptr @index1, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !36
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 7
  %i.ea = and i32 %.0.i168194, 127
  %i.eb = or disjoint i32 %i.dz, %i.ea
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr [2 x i8], ptr @index2, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !36
  %i.ef = zext i16 %i.ee to i64
  br label %_getrecord_ex.exit

_getrecord_ex.exit:                               ; preds = %PyUnicode_READ.exit169, %PyUnicode_READ.exit169.thread
  %.0.i168195 = phi i32 [ %.0.i168194, %PyUnicode_READ.exit169.thread ], [ %i.ds, %PyUnicode_READ.exit169 ] ; 4 uses
  %.0.i170 = phi i64 [ %i.ef, %PyUnicode_READ.exit169.thread ], [ 0, %PyUnicode_READ.exit169 ]
  %i.eg = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i170
  %i.eh = getelementptr i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !53  ; 3 uses
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %.not146 = icmp eq i32 %.0116239, 0
  br i1 %.not146, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_getrecord_ex.exit
  %i.ek = icmp eq i8 %i.ei, 0
  br i1 %i.ek, label %.thread201, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not147 = icmp slt i32 %.0116239, %i.ej
  br i1 %.not147, label %bb.ag, label %bb.al, !llvm.loop !107

bb.ag:                                            ; preds = %bb.af, %_getrecord_ex.exit
  %or.cond.not27.i171 = icmp ugt i32 %.0.i168195, 767
  br i1 %or.cond.not27.i171, label %.lr.ph.i173, label %find_nfc_index.exit177.thread

bb.ah:                                            ; preds = %.lr.ph.i173
  %i.el = add i32 %.01828.i174, 1                 ; 2 uses
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr [8 x i8], ptr @nfc_last, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !109 ; 2 uses
  %i.ep = add i32 %i.eo, -1
  %or.cond.not.i176 = icmp ult i32 %i.ep, %.0.i168195
  br i1 %or.cond.not.i176, label %.lr.ph.i173, label %find_nfc_index.exit177.thread, !llvm.loop !106

.lr.ph.i173:                                      ; preds = %bb.ag, %bb.ah
  %i.eq = phi i32 [ %i.eo, %bb.ah ], [ 768, %bb.ag ] ; 2 uses
  %i.er = phi ptr [ %i.en, %bb.ah ], [ @nfc_last, %bb.ag ] ; 2 uses
  %.01828.i174 = phi i32 [ %i.el, %bb.ah ], [ 0, %bb.ag ]
  %i.es = getelementptr i8, ptr %i.er, i64 4
  %i.et = load i16, ptr %i.es, align 4, !tbaa !110
  %i.eu = sext i16 %i.et to i32
  %i.ev = add i32 %i.eq, %i.eu
  %.not21.i175 = icmp ugt i32 %.0.i168195, %i.ev
  br i1 %.not21.i175, label %bb.ah, label %find_nfc_index.exit177

find_nfc_index.exit177:                           ; preds = %.lr.ph.i173
  %i.ew = sub i32 %.0.i168195, %i.eq
  %i.ex = getelementptr i8, ptr %i.er, i64 6
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !111
  %i.ez = sext i16 %i.ey to i32
  %i.fa = add i32 %i.ew, %i.ez                    ; 3 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %find_nfc_index.exit177.thread, label %bb.ai

find_nfc_index.exit177.thread:                    ; preds = %bb.ah, %bb.ag, %bb.ai, %find_nfc_index.exit177
  %i.fc = icmp eq i8 %i.ei, 0
  br i1 %i.fc, label %find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge, label %bb.al, !llvm.loop !107

bb.ai:                                            ; preds = %find_nfc_index.exit177
  %i.fd = mul i32 %.0119238, 72
  %i.fe = add i32 %i.fa, %i.fd
  %i.ff = ashr i32 %i.fe, 2
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [2 x i8], ptr @comp_index, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !36
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 2
  %i.fl = and i32 %i.fa, 3
  %i.fm = or disjoint i32 %i.fk, %i.fl
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr [4 x i8], ptr @comp_data, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !10 ; 6 uses
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %find_nfc_index.exit177.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.fp, ptr %i.di, align 4, !tbaa !10
  %i.fr = add i32 %.2240, 1                       ; 4 uses
  %i.fs = sext i32 %.2240 to i64
  %i.ft = getelementptr [8 x i8], ptr %i.a, i64 %i.fs
  store i64 %.0123237, ptr %i.ft, align 8, !tbaa !54
  %or.cond.not27.i178 = icmp ugt i32 %i.fp, 59
  br i1 %or.cond.not27.i178, label %.lr.ph.i180, label %.thread201

bb.ak:                                            ; preds = %.lr.ph.i180
  %i.fu = add i32 %.01828.i181, 1                 ; 2 uses
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr [8 x i8], ptr @nfc_first, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !109 ; 2 uses
  %i.fy = add i32 %i.fx, -1
  %or.cond.not.i183 = icmp ult i32 %i.fy, %i.fp
  br i1 %or.cond.not.i183, label %.lr.ph.i180, label %.thread201, !llvm.loop !106

.lr.ph.i180:                                      ; preds = %bb.aj, %bb.ak
  %i.fz = phi i32 [ %i.fx, %bb.ak ], [ 60, %bb.aj ] ; 2 uses
  %i.ga = phi ptr [ %i.fw, %bb.ak ], [ @nfc_first, %bb.aj ] ; 2 uses
  %.01828.i181 = phi i32 [ %i.fu, %bb.ak ], [ 0, %bb.aj ]
  %i.gb = getelementptr i8, ptr %i.ga, i64 4
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !110
  %i.gd = sext i16 %i.gc to i32
  %i.ge = add i32 %i.fz, %i.gd
  %.not21.i182 = icmp ugt i32 %i.fp, %i.ge
  br i1 %.not21.i182, label %bb.ak, label %find_nfc_index.exit184

find_nfc_index.exit184:                           ; preds = %.lr.ph.i180
  %i.gf = sub i32 %i.fp, %i.fz
  %i.gg = getelementptr i8, ptr %i.ga, i64 6
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !111
  %i.gi = sext i16 %i.gh to i32
  %i.gj = add i32 %i.gf, %i.gi
  %.fr = freeze i32 %i.gj                         ; 2 uses
  %i.gk = icmp eq i32 %.fr, -1
  br i1 %i.gk, label %.thread201, label %bb.al

bb.al:                                            ; preds = %find_nfc_index.exit177.thread, %bb.af, %find_nfc_index.exit184
  %.1120 = phi i32 [ %.0119238, %bb.af ], [ %.fr, %find_nfc_index.exit184 ], [ %.0119238, %find_nfc_index.exit177.thread ]
  %.1117 = phi i32 [ %.0116239, %bb.af ], [ %.0116239, %find_nfc_index.exit184 ], [ %i.ej, %find_nfc_index.exit177.thread ]
  %.3 = phi i32 [ %.2240, %bb.af ], [ %i.fr, %find_nfc_index.exit184 ], [ %.2240, %find_nfc_index.exit177.thread ] ; 2 uses
  %.1124 = add nsw i64 %.0123237, 1               ; 2 uses
  %exitcond287.not = icmp eq i64 %.1124, %.val
  br i1 %exitcond287.not, label %.thread201, label %.lr.ph241

find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge: ; preds = %find_nfc_index.exit177.thread
  br label %.thread201, !llvm.loop !107

.thread201:                                       ; preds = %bb.al, %bb.ae, %bb.aj, %find_nfc_index.exit184, %bb.ak, %find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge
  %.4 = phi i32 [ %.2240, %find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge ], [ %i.fr, %bb.ak ], [ %.3, %bb.al ], [ %i.fr, %bb.aj ], [ %i.fr, %find_nfc_index.exit184 ], [ %.2240, %bb.ae ]
  %i.gl = add i64 %.1122234, 1
  br label %.preheader.lr.ph.backedge

.preheader.lr.ph.backedge:                        ; preds = %.thread201, %bb.i
  %.1.ph251.be = phi i32 [ %.4, %.thread201 ], [ %i.w, %bb.i ]
  %.1122.ph250.be = phi i64 [ %i.gl, %.thread201 ], [ %.1122234, %bb.i ]
  %.1126.ph249.be = phi i64 [ %i.cz, %.thread201 ], [ %i.aa, %bb.i ]
  br label %.preheader.lr.ph, !llvm.loop !105

.outer._crit_edge:                                ; preds = %bb.i, %.backedge, %.thread201.thread, %.preheader211
  %.1122.lcssa = phi i64 [ %.1122.be, %.backedge ], [ %i.dk, %.thread201.thread ], [ 0, %.preheader211 ], [ %.1122234, %bb.i ] ; 2 uses
  %i.gm = icmp eq i64 %.1122.lcssa, %.val
  br i1 %i.gm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.outer._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #10
  br label %Py_DECREF.exit150

bb.an:                                            ; preds = %.outer._crit_edge
  %i.gn = load i32, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp sgt i32 %i.gn, -1
  br i1 %.not.i, label %bb.ao, label %Py_DECREF.exit

bb.ao:                                            ; preds = %bb.an
  %i.go = add nsw i32 %i.gn, -1                   ; 2 uses
  store i32 %i.go, ptr %i.b, align 8, !tbaa !23
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.ap, label %Py_DECREF.exit

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.an, %bb.ao, %bb.ap
  %i.gq = tail call ptr @PyUnicode_FromKindAndData(i32 noundef 4, ptr noundef nonnull %i.m, i64 noundef %.1122.lcssa) #10
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #10
  br label %Py_DECREF.exit150

Py_DECREF.exit150:                                ; preds = %bb.g, %bb.f, %.thread, %bb.a, %Py_DECREF.exit, %bb.am
  %.0128 = phi ptr [ %i.b, %bb.am ], [ %i.gq, %Py_DECREF.exit ], [ null, %bb.a ], [ null, %.thread ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0128
}

; Function Attrs: nounwind uwtable
define internal ptr @nfd_nfkd(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val183 = load i64, ptr %i.b, align 8, !tbaa !35 ; 7 uses
  %i.c = icmp sgt i64 %.val183, 10
  %i.d = shl i64 %.val183, 1
  %i.e = icmp slt i64 %.val183, 9223372036854775798
  %i.f = add nuw nsw i64 %.val183, 10
  %spec.select = select i1 %i.e, i64 %i.f, i64 %.val183
  %.0126 = select i1 %i.c, i64 %spec.select, i64 %i.d ; 4 uses
  %i.g = icmp ugt i64 %.0126, 2305843009213693951
  br i1 %i.g, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i64 %.0126, 2
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef %i.h) #10 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i32 %i.k, 2
  %i.m = and i32 %i.l, 7
  %i.n = and i32 %i.k, 32
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.k, 64
  %.not.i.i = icmp eq i32 %i.o, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 56
  %.val4.i = load ptr, ptr %i.p, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 3 uses
  %i.q = icmp sgt i64 %.val183, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  %.not173 = icmp eq ptr %0, null
  %i.r = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = icmp ne i32 %2, 0
  br label %bb.f

.loopexit282:                                     ; preds = %.loopexit281
  %exitcond.not = icmp eq i64 %i.v, %.val183
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !112

bb.f:                                             ; preds = %.lr.ph, %.loopexit282
  %.1127300 = phi i64 [ %.0126, %.lr.ph ], [ %.5131, %.loopexit282 ]
  %.0132299 = phi i64 [ %.0126, %.lr.ph ], [ %.2134, %.loopexit282 ]
  %.0136298 = phi i64 [ 0, %.lr.ph ], [ %.3139, %.loopexit282 ]
  %.0141297 = phi i64 [ 0, %.lr.ph ], [ %i.v, %.loopexit282 ] ; 4 uses
  %.0143296 = phi ptr [ %i.i, %.lr.ph ], [ %.3146, %.loopexit282 ]
  %i.v = add nuw nsw i64 %.0141297, 1             ; 2 uses
  switch i32 %i.m, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %.0.i, i64 %.0141297
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23
  %i.y = zext i8 %i.x to i32
  br label %PyUnicode_READ.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr [2 x i8], ptr %.0.i, i64 %.0141297
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !36
  %i.ab = zext i16 %i.aa to i32
  br label %PyUnicode_READ.exit

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr [4 x i8], ptr %.0.i, i64 %.0141297
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.g, %bb.h, %bb.i
  %.0.i184 = phi i32 [ %i.y, %bb.g ], [ %i.ab, %bb.h ], [ %i.ad, %bb.i ]
  store i32 %.0.i184, ptr %i.a, align 16, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %PyUnicode_READ.exit, %.loopexit281
  %.1123295 = phi i32 [ 1, %PyUnicode_READ.exit ], [ %.5, %.loopexit281 ] ; 2 uses
  %.2128294 = phi i64 [ %.1127300, %PyUnicode_READ.exit ], [ %.5131, %.loopexit281 ] ; 3 uses
  %.1133293 = phi i64 [ %.0132299, %PyUnicode_READ.exit ], [ %.2134, %.loopexit281 ] ; 2 uses
  %.1137292 = phi i64 [ %.0136298, %PyUnicode_READ.exit ], [ %.3139, %.loopexit281 ] ; 9 uses
  %.1144291 = phi ptr [ %.0143296, %PyUnicode_READ.exit ], [ %.3146, %.loopexit281 ] ; 3 uses
  %i.ae = add i32 %.1123295, -1                   ; 10 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10 ; 8 uses
  %i.ai = icmp slt i64 %.2128294, 3
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = add i64 %.1133293, 10                   ; 2 uses
  %i.ak = add nuw nsw i64 %.2128294, 10
  %i.al = shl i64 %i.aj, 2
  %i.am = tail call ptr @PyMem_Realloc(ptr noundef %.1144291, i64 noundef %i.al) #10 ; 2 uses
  %.not172 = icmp eq ptr %i.am, null
  br i1 %.not172, label %.thread232, label %bb.l

.thread232:                                       ; preds = %bb.k
  tail call void @PyMem_Free(ptr noundef %.1144291) #10
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3146 = phi ptr [ %.1144291, %bb.j ], [ %i.am, %bb.k ] ; 6 uses
  %.2134 = phi i64 [ %.1133293, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.3129 = phi i64 [ %.2128294, %bb.j ], [ %i.ak, %bb.k ] ; 7 uses
  %i.an = add i32 %i.ah, -44032                   ; 2 uses
  %or.cond = icmp ult i32 %i.an, 11172
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc = trunc nuw nsw i32 %i.an to i16    ; 3 uses
  %i.ao = urem i16 %.lhs.trunc, 588
  %i.ap = urem i16 %.lhs.trunc, 28                ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %.3146, i64 %.1137292
  %i.ar = add i64 %.1137292, 2                    ; 2 uses
  %i.as = insertelement <2 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.at = insertelement <2 x i16> %i.as, i16 %i.ao, i64 1
  %i.au = udiv <2 x i16> %i.at, <i16 588, i16 28>
  %i.av = add nuw nsw <2 x i16> %i.au, <i16 4352, i16 4449>
  %i.aw = zext nneg <2 x i16> %i.av to <2 x i32>
  store <2 x i32> %i.aw, ptr %i.aq, align 4, !tbaa !10
  %i.ax = add nsw i64 %.3129, -2
  %.not178 = icmp eq i16 %i.ap, 0
  br i1 %.not178, label %.loopexit281, label %bb.n

bb.n:                                             ; preds = %bb.m
  %narrow280 = add nuw nsw i16 %i.ap, 4519
  %i.ay = zext nneg i16 %narrow280 to i32
  %i.az = add i64 %.1137292, 3
  %i.ba = getelementptr [4 x i8], ptr %.3146, i64 %i.ar
end_hunk_0
