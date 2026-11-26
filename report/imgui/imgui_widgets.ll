Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE:bb.a
  %indvars.iv.next.i.i34.2 = or disjoint i64 %indvars.iv.i.i32, 3 ; 2 uses
  %.val.i.i33.3 = load ptr, ptr %i.be, align 8, !tbaa !400
  %i.bt = getelementptr i8, ptr %.val.i.i33.3, i64 %indvars.iv.next.i.i34.2
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bf
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !351
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next.i.i34.2
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !351
  %indvars.iv.next.i.i34.3 = add nuw nsw i64 %indvars.iv.i.i32, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, label %bb.o, !llvm.loop !11

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, %.lr.ph.i.i30
  %indvars.iv.i.i32.epil.init = phi i64 [ 0, %.lr.ph.i.i30 ], [ %indvars.iv.next.i.i34.3, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.i.i32.epil = phi i64 [ %indvars.iv.i.i32.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i34.epil, %bb.p ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %.val.i.i33.epil = load ptr, ptr %i.be, align 8, !tbaa !400
  %i.bx = getelementptr i8, ptr %.val.i.i33.epil, i64 %indvars.iv.i.i32.epil
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bf
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !351
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.i.i32.epil
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !351
  %indvars.iv.next.i.i34.epil = add nuw nsw i64 %indvars.iv.i.i32.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, label %bb.p, !llvm.loop !919

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36: ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, %bb.p, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26
  %.pre-phi.i28 = phi i64 [ %.pre.i27, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26 ], [ %i.bf, %bb.p ], [ %i.bf, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !376
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %.pre-phi.i28 ; 2 uses
  %i.ce = sext i32 %i.bc to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !377
  %reass.sub = sub i32 %i.cg, %i.l
  %i.ch = add i32 %reass.sub, 1
  %i.ci = sext i32 %i.ch to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr nonnull align 1 %i.cf, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.cj, align 4, !tbaa !415
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.ck, align 1, !tbaa !393
  %i.cl = load i32, ptr %i.a, align 8, !tbaa !377
  %i.cm = sub nsw i32 %i.cl, %i.bc
  store i32 %i.cm, ptr %i.a, align 8, !tbaa !377
  %i.cn = load i32, ptr %i.d, align 4, !tbaa !395 ; 2 uses
  store i32 %i.cn, ptr %1, align 4, !tbaa !388
  store i32 %i.cn, ptr %i.b, align 4, !tbaa !394
  br label %bb.q

bb.q:                                             ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.co, align 2, !tbaa !396
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) initializes((2618, 2620), (2624, 2628)) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %3, i32 noundef 0) ; 6 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.c, %.not.i
  br i1 %or.cond.i, label %.lr.ph.i, label %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge

._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge: ; preds = %bb.a
  %.pre = sext i32 %2 to i64
  br label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.e = sext i32 %2 to i64                       ; 7 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %3, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !400
  %i.g = getelementptr i8, ptr %.val.i, i64 %indvars.iv.i
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = load i8, ptr %i.h, align 1, !tbaa !351
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.i, ptr %i.j, align 1, !tbaa !351
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i.1 = load ptr, ptr %i.d, align 8, !tbaa !400
  %i.k = getelementptr i8, ptr %.val.i.1, i64 %indvars.iv.next.i
  %i.l = getelementptr i8, ptr %i.k, i64 %i.e
  %i.m = load i8, ptr %i.l, align 1, !tbaa !351
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i
  store i8 %i.m, ptr %i.n, align 1, !tbaa !351
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %.val.i.2 = load ptr, ptr %i.d, align 8, !tbaa !400
  %i.o = getelementptr i8, ptr %.val.i.2, i64 %indvars.iv.next.i.1
  %i.p = getelementptr i8, ptr %i.o, i64 %i.e
  %i.q = load i8, ptr %i.p, align 1, !tbaa !351
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !351
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %.val.i.3 = load ptr, ptr %i.d, align 8, !tbaa !400
  %i.s = getelementptr i8, ptr %.val.i.3, i64 %indvars.iv.next.i.2
  %i.t = getelementptr i8, ptr %i.s, i64 %i.e
  %i.u = load i8, ptr %i.t, align 1, !tbaa !351
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.2
  store i8 %i.u, ptr %i.v, align 1, !tbaa !351
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !11

_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.val.i.epil = load ptr, ptr %i.d, align 8, !tbaa !400
  %i.w = getelementptr i8, ptr %.val.i.epil, i64 %indvars.iv.i.epil
  %i.x = getelementptr i8, ptr %i.w, i64 %i.e
  %i.y = load i8, ptr %i.x, align 1, !tbaa !351
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.epil
  store i8 %i.y, ptr %i.z, align 1, !tbaa !351
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %bb.c, !llvm.loop !920

_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit: ; preds = %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %bb.c, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !376
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.pre-phi ; 2 uses
  %i.ad = sext i32 %3 to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !377
  %i.ah = add i32 %2, %3
  %reass.sub = sub i32 %i.ag, %i.ah
  %i.ai = add i32 %reass.sub, 1
  %i.aj = sext i32 %i.ai to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.ae, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.ak, align 4, !tbaa !415
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.al, align 1, !tbaa !393
  %i.am = load i32, ptr %i.af, align 8, !tbaa !377
  %i.an = sub nsw i32 %i.am, %3
  store i32 %i.an, ptr %i.af, align 8, !tbaa !377
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.ao, align 2, !tbaa !396
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL29STB_TEXTEDIT_MOVELINEEND_IMPLEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi(ptr nofree noundef nonnull readonly captures(none) %0, i8 %.23.val, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !377 ; 3 uses
  %.not = icmp eq i8 %.23.val, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !414
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %.thread9

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !450    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !400  ; 2 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 3 uses
  %i.k = tail call noundef ptr @_Z8ImStrbolPKcS0_(ptr noundef %i.j, ptr noundef %i.h) ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.m = load i32, ptr %i.b, align 8, !tbaa !377
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = icmp ult ptr %i.k, %i.o
  br i1 %i.p, label %.lr.ph, label %.thread9

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4552
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4568
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 118
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.015 = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %bb.g ]
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !401
  %i.u = load float, ptr %i.r, align 8, !tbaa !205
  %i.v = load float, ptr %i.c, align 8, !tbaa !414
  %i.w = tail call noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef %i.t, float noundef %i.u, ptr noundef %.015, ptr noundef nonnull %i.o, float noundef %i.v, i32 noundef 2) ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.s, align 2, !tbaa !436
  %.not49 = icmp eq i8 %i.y, 0
  br i1 %.not49, label %bb.f, label %.thread9.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = icmp ugt ptr %i.w, %i.j
  br i1 %i.z, label %.critedge.loopexit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !351
  %i.ab = icmp eq i8 %i.aa, 10
  %.idx = zext i1 %i.ab to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.o
  br i1 %i.ad, label %bb.d, label %.thread9.sink.split

.thread9.sink.split:                              ; preds = %bb.e, %bb.g
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  br label %.thread9

.thread9:                                         ; preds = %.thread9.sink.split, %bb.c, %bb.b
  %.3 = phi i32 [ %1, %bb.b ], [ %1, %bb.c ], [ %i.ai, %.thread9.sink.split ] ; 3 uses
  %i.aj = getelementptr i8, ptr %0, i64 32
  %i.ak = icmp slt i32 %.3, %.val
  br i1 %i.ak, label %.lr.ph33, label %.critedge

.lr.ph33:                                         ; preds = %.thread9, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit
  %.432 = phi i32 [ %.0.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ], [ %.3, %.thread9 ] ; 4 uses
  %.val51 = load ptr, ptr %i.aj, align 8, !tbaa !400 ; 2 uses
  %i.al = sext i32 %.432 to i64
  %i.am = getelementptr inbounds i8, ptr %.val51, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !351
  %.not50 = icmp eq i8 %i.an, 10
  br i1 %.not50, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph33
  %i.ao = load i32, ptr %i.b, align 8, !tbaa !377 ; 3 uses
  %.not.i = icmp slt i32 %.432, %i.ao
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ao, 1
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %.val51, i64 %i.aq
  %i.as = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.am, ptr noundef %i.ar)
  %i.at = add nsw i32 %i.as, %.432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit

_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ap, %bb.i ], [ %i.at, %bb.j ] ; 3 uses
  %i.au = icmp slt i32 %.0.i, %.val
  br i1 %i.au, label %.lr.ph33, label %.critedge, !llvm.loop !921

.critedge.loopexit14:                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.aw = ptrtoint ptr %i.w to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, %.lr.ph33, %.thread9, %.critedge.loopexit14, %bb.a
  %.446 = phi i32 [ %i.az, %.critedge.loopexit14 ], [ %.val, %bb.a ], [ %.3, %.thread9 ], [ %.0.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ], [ %.432, %.lr.ph33 ]
  ret i32 %.446
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !389
  %i.c = and i32 %i.b, 4194304
  %i.d = icmp ne i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !377  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !416
  %i.i = xor i32 %i.f, -1
  %i.j = add i32 %i.h, %i.i                       ; 2 uses
  %i.k = icmp sle i32 %3, %i.j
  %or.cond52.not = select i1 %i.d, i1 true, i1 %i.k
  br i1 %or.cond52.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = tail call noundef ptr @_Z31ImTextFindValidUtf8CodepointEndPKcS0_S0_(ptr noundef %2, ptr noundef %i.m, ptr noundef %i.o)
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %2 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %3, %bb.a ], [ %i.t, %bb.b ]    ; 7 uses
  %i.u = icmp eq i32 %.0, 0
  br i1 %i.u, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i32 %.0, %i.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !454
  %i.y = icmp sge i32 %i.v, %i.x
  %or.cond = and i1 %i.d, %i.y
  br i1 %or.cond, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre56 = load ptr, ptr %.phi.trans.insert55, align 8, !tbaa !376
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.z = tail call i32 @llvm.smax.i32(i32 %.0, i32 32)
  %i.aa = add nsw i32 %i.z, %i.f                  ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !382 ; 4 uses
  %.not54 = icmp slt i32 %i.aa, %i.ad
  br i1 %.not54, label %._ZN8ImVectorIcE6resizeEi.exit_crit_edge, label %bb.f

._ZN8ImVectorIcE6resizeEi.exit_crit_edge:         ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !376
  br label %_ZN8ImVectorIcE6resizeEi.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %i.ad, 2
  %i.af = add nsw i32 %i.ae, %i.ad
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i:        ; preds = %bb.g, %bb.f
  %i.ag = phi i32 [ %i.af, %bb.g ], [ 8, %bb.f ]
  %i.ah = tail call noundef i32 @llvm.smax.i32(i32 %i.ag, i32 %i.ab) ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ai) ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !383 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.al, null
  br i1 %.not6.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  %i.am = load i32, ptr %i.w, align 8, !tbaa !384
  %i.an = sext i32 %i.am to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.al, i64 %i.an, i1 false)
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !383
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ao)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !383
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !382
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %._ZN8ImVectorIcE6resizeEi.exit_crit_edge, %bb.i
  %i.ap = phi ptr [ %.pre, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge ], [ %i.aj, %bb.i ] ; 2 uses
  store i32 %i.ab, ptr %i.w, align 8, !tbaa !384
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !400
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN8ImVectorIcE6resizeEi.exit
  %i.ar = phi ptr [ %.pre56, %._crit_edge ], [ %i.ap, %_ZN8ImVectorIcE6resizeEi.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not = icmp eq i32 %1, %i.f
  %.pre58 = sext i32 %1 to i64                    ; 2 uses
  br i1 %.not, label %._crit_edge57, label %bb.k

._crit_edge57:                                    ; preds = %bb.j
  %.pre59 = sext i32 %.0 to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %.pre58 ; 2 uses
  %i.au = sext i32 %.0 to i64                     ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = sub nsw i32 %i.f, %1
  %i.ax = sext i32 %i.aw to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.at, i64 %i.ax, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge57, %bb.k
  %.pre-phi60 = phi i64 [ %.pre59, %._crit_edge57 ], [ %i.au, %bb.k ]
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %.pre58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %2, i64 %.pre-phi60, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.az, align 4, !tbaa !415
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.ba, align 1, !tbaa !393
  %i.bb = load i32, ptr %i.e, align 8, !tbaa !377
  %i.bc = add nsw i32 %i.bb, %.0                  ; 2 uses
  store i32 %i.bc, ptr %i.e, align 8, !tbaa !377
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !383
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !351
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5ImStbL27is_word_boundary_from_rightEP19ImGuiInputTextStatei(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
end_hunk_0
