Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_tables?download=true
inline.NumInlined: 561
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj:bb.a
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.ao, %_ZN6ImPoolI10ImGuiTableE3AddEv.exit ]
  ret ptr %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18ImGuiTableTempDataD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN18ImDrawListSplitterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.c)
          to label %_ZN18ImDrawListSplitterD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable

_ZN18ImDrawListSplitterD2Ev.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

declare void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN5ImGui19SetNextWindowScrollERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2bi(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui14PushOverrideIDEj(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui20TableBeginInitMemoryEP10ImGuiTablei(ptr nofree noundef captures(none) initializes((8, 16), (24, 72)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = mul i32 %1, 104
  %i.c = mul i32 %1, 105
  %i.d = shl i32 %1, 3                            ; 2 uses
  %i.e = add nsw i32 %i.c, 3
  %i.f = and i32 %i.e, -4                         ; 2 uses
  %i.g = add nsw i32 %i.f, %i.d
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.h, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !199  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = sext i32 %i.b to i64
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !198
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.a
  store ptr %i.n, ptr %i.p, align 8, !tbaa !200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.q, ptr %i.r, align 8, !tbaa !201
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds i8, ptr %i.k, i64 %i.t ; 2 uses
  %i.v = sext i32 %i.d to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  store ptr %i.u, ptr %i.s, align 8, !tbaa !202
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.w, ptr %i.x, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5ImGui18TableResetSettingsEP10ImGuiTable(ptr nofree noundef writeonly captures(none) initializes((104, 108), (507, 508), (511, 513), (514, 515)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 1, ptr %i.a, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 507
  store i8 1, ptr %i.b, align 1, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 514
  store i8 0, ptr %i.c, align 2, !tbaa !206
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 511
  store i8 0, ptr %i.d, align 1, !tbaa !204
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.e, align 8, !tbaa !208
  ret void
}

declare void @_ZN5ImGui7MemFreeEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_ZN5ImGui17TableLoadSettingsEP10ImGuiTable(ptr nofree noundef captures(none) initializes((511, 512)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 511
  store i8 0, ptr %i.b, align 1, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145
  %i.e = and i32 %i.d, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !209  ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %0, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12488
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12496
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !231  ; 4 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0812.i = phi ptr [ %i.s, %select.unfold.i ], [ %i.m, %.lr.ph.i.preheader ] ; 6 uses
  %i.n = load i32, ptr %.0812.i, align 4, !tbaa !233
  %i.o = icmp eq i32 %i.n, %i.i
  br i1 %i.o, label %_ZN5ImGui21TableSettingsFindByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !214
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %.0812.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.j, align 8, !tbaa !234
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = icmp eq ptr %i.s, %i.w
  br i1 %i.x, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i

_ZN5ImGui21TableSettingsFindByIDEj.exit:          ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0812.i, i64 12
  %i.z = load i8, ptr %i.y, align 4, !tbaa !235
  %i.aa = sext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !160
  %.not72 = icmp eq i32 %i.ac, %i.aa
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 1, ptr %i.ad, align 8, !tbaa !207
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5ImGui21TableSettingsFindByIDEj.exit
  %i.ae = ptrtoint ptr %.0812.i to i64
  %i.af = ptrtoint ptr %i.l to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !209
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

bb.f:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 12496
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !231
  %i.ak = sext i32 %i.g to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %bb.f, %bb.e
  %.068 = phi ptr [ %.0812.i, %bb.e ], [ %i.al, %bb.f ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.068, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !236
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !208
  %i.ap = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !237
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  store float %i.aq, ptr %i.ar, align 8, !tbaa !224
  %i.as = getelementptr inbounds nuw i8, ptr %.068, i64 12 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4, !tbaa !235 ; 3 uses
  %i.au = icmp sgt i8 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %1 = sext i8 %i.at to i64
  %2 = and i64 %1, 4294967295
  %notmask114 = shl nsw i64 -1, %2
  %i.av = xor i64 %notmask114, -1
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

._crit_edge:                                      ; preds = %bb.o
  %i.az = icmp eq i8 %.fr, 64
  %i.ba = zext nneg i32 %i.cx to i64
  %notmask = shl nsw i64 -1, %i.ba
  %i.bb = xor i64 %notmask, -1
  %spec.select = select i1 %i.az, i64 -1, i64 %i.bb
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.066.lcssa116 = phi i64 [ 0, %._crit_edge.thread ], [ %.1, %._crit_edge ]
  %i.bc = phi i64 [ %i.av, %._crit_edge.thread ], [ %spec.select, %._crit_edge ]
  %.not73 = icmp eq i64 %.066.lcssa116, %i.bc
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.pre100 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !160 ; 3 uses
  %i.bd = icmp sgt i32 %.pre100, 0                ; 2 uses
  br i1 %.not73, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  br i1 %i.bd, label %.lr.ph88, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

.lr.ph88:                                         ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !198 ; 9 uses
  %wide.trip.count = zext nneg i32 %.pre100 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bg = icmp ult i32 %.pre100, 8
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %i.bh = phi i8 [ %i.at, %.lr.ph ], [ %.fr, %bb.o ] ; 2 uses
  %.06584 = phi i32 [ 0, %.lr.ph ], [ %i.cv, %bb.o ]
  %.06683 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %.06782 = phi ptr [ %i.aw, %.lr.ph ], [ %i.cw, %bb.o ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.06782, i64 8
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !239 ; 3 uses
  %i.bk = sext i8 %i.bj to i32                    ; 2 uses
  %i.bl = icmp slt i8 %i.bj, 0
  br i1 %i.bl, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load i32, ptr %i.ax, align 4, !tbaa !160
  %.not74 = icmp sgt i32 %i.bm, %i.bk
  br i1 %.not74, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !198
  %i.bo = zext nneg i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [104 x i8], ptr %i.bn, i64 %i.bo ; 7 uses
  %i.bq = load i32, ptr %i.am, align 4, !tbaa !236 ; 2 uses
  %i.br = and i32 %i.bq, 1
  %.not75 = icmp eq i32 %i.br, 0
  br i1 %.not75, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.06782, i64 11
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = and i8 %i.bt, 8
  %.not76 = icmp eq i8 %i.bu, 0
  %i.bv = load float, ptr %.06782, align 4, !tbaa !240
  %. = select i1 %.not76, i64 16, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.
  store float %i.bv, ptr %i.bw, align 4, !tbaa !131
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 99
  store i8 0, ptr %i.bx, align 1, !tbaa !241
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.by = and i32 %i.bq, 2
  %.not77 = icmp eq i32 %i.by, 0
  br i1 %.not77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.06782, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !242
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sink = phi i8 [ %i.ca, %bb.m ], [ %i.bj, %bb.l ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 82
  store i8 %.sink, ptr %i.cb, align 2, !tbaa !222
  %i.cc = sext i8 %.sink to i64
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = or i64 %i.ce, %.06683
  %i.cg = getelementptr inbounds nuw i8, ptr %.06782, i64 11 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 92
  %i.cj = lshr i8 %i.ch, 2
  %.lobit = and i8 %i.cj, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.ci, align 4, !tbaa !220
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 91
  store i8 %.lobit, ptr %i.ck, align 1, !tbaa !221
  %i.cl = getelementptr inbounds nuw i8, ptr %.06782, i64 10
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !243
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 86
  store i8 %i.cm, ptr %i.cn, align 2, !tbaa !244
  %i.co = load i8, ptr %i.cg, align 1
  %i.cp = and i8 %i.co, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bp, i64 101 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = and i8 %i.cr, -4
  %i.ct = or disjoint i8 %i.cs, %i.cp
  store i8 %i.ct, ptr %i.cq, align 1
  %.pre = load i8, ptr %i.as, align 4, !tbaa !235
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.i, %bb.n
  %i.cu = phi i8 [ %.pre, %bb.n ], [ %i.bh, %bb.i ], [ %i.bh, %bb.h ]
  %.1 = phi i64 [ %i.cf, %bb.n ], [ %.06683, %bb.i ], [ %.06683, %bb.h ] ; 2 uses
  %.fr = freeze i8 %i.cu                          ; 3 uses
  %i.cv = add nuw nsw i32 %.06584, 1              ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.06782, i64 12
  %i.cx = sext i8 %.fr to i32                     ; 2 uses
  %i.cy = icmp slt i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.h, label %._crit_edge, !llvm.loop !409

bb.p:                                             ; preds = %bb.p, %.lr.ph88.new
  %indvars.iv = phi i64 [ 0, %.lr.ph88.new ], [ %indvars.iv.next.7, %bb.p ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph88.new ], [ %niter.next.7, %bb.p ]
  %i.cz = trunc i64 %indvars.iv to i8
  %i.da = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 82
  store i8 %i.cz, ptr %i.db, align 2, !tbaa !222
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dc = trunc i64 %indvars.iv.next to i8
  %i.dd = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 82
  store i8 %i.dc, ptr %i.de, align 2, !tbaa !222
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.df = trunc i64 %indvars.iv.next.1 to i8
  %i.dg = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv.next.1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 82
  store i8 %i.df, ptr %i.dh, align 2, !tbaa !222
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.di = trunc i64 %indvars.iv.next.2 to i8
  %i.dj = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv.next.2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 82
  store i8 %i.di, ptr %i.dk, align 2, !tbaa !222
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.dl = trunc i64 %indvars.iv.next.3 to i8
  %i.dm = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv.next.3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 82
  store i8 %i.dl, ptr %i.dn, align 2, !tbaa !222
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.do = trunc i64 %indvars.iv.next.4 to i8
  %i.dp = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv.next.4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 82
  store i8 %i.do, ptr %i.dq, align 2, !tbaa !222
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.dr = trunc i64 %indvars.iv.next.5 to i8
  %i.ds = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv.next.5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 82
  store i8 %i.dr, ptr %i.dt, align 2, !tbaa !222
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.du = trunc i64 %indvars.iv.next.6 to i8
  %i.dv = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv.next.6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 82
  store i8 %i.du, ptr %i.dw, align 2, !tbaa !222
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph91.loopexit.unr-lcssa, label %bb.p, !llvm.loop !410

.loopexit:                                        ; preds = %bb.g
  br i1 %i.bd, label %.lr.ph91, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

.lr.ph91.loopexit.unr-lcssa:                      ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph91.loopexit.unr-lcssa, %.lr.ph88
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next.7, %.lr.ph91.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.dx = trunc i64 %indvars.iv.epil to i8
  %i.dy = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %indvars.iv.epil
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 82
  store i8 %i.dx, ptr %i.dz, align 2, !tbaa !222
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph91, label %bb.q, !llvm.loop !411
end_hunk_0
