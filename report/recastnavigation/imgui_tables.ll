Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_tables?download=true
begin_hunk_0_@_ZN5ImGui13GetIDWithSeedEPKcS1_j

declare void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN5ImGui19SetNextWindowScrollERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2ii(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui14PushOverrideIDEj(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui20TableBeginInitMemoryEP10ImGuiTablei(ptr nofree noundef captures(none) initializes((8, 16), (24, 96)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 31
  %i.b = mul i32 %1, 116
  %i.c = shl i32 %1, 1
  %i.d = mul i32 %1, 118
  %i.e = shl i32 %1, 3                            ; 2 uses
  %i.f = add nsw i32 %i.d, 2                      ; 2 uses
  %i.g = and i32 %i.f, -4
  %i.h = add nsw i32 %i.f, %i.e                   ; 2 uses
  %i.i = ashr i32 %i.a, 3
  %i.j = and i32 %i.i, -4                         ; 3 uses
  %i.k = and i32 %i.h, -4
  %i.l = add nsw i32 %i.h, %i.j                   ; 2 uses
  %i.m = and i32 %i.l, -4
  %i.n = add nsw i32 %i.l, %i.j
  %i.o = and i32 %i.n, -4                         ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.q) #4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !263
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.q, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !263  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = sext i32 %i.b to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !262
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !261
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = sext i32 %i.c to i64
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  store ptr %i.w, ptr %i.y, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !265
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = sext i32 %i.g to i64
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 %i.ad ; 2 uses
  %i.af = sext i32 %i.e to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !266
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !267
  %i.ai = sext i32 %i.k to i64
  %i.aj = getelementptr inbounds i8, ptr %i.t, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !268
  %i.al = sext i32 %i.m to i64
  %i.am = getelementptr inbounds i8, ptr %i.t, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.am, ptr %i.an, align 8, !tbaa !269
  %i.ao = sext i32 %i.o to i64
  %i.ap = getelementptr inbounds i8, ptr %i.t, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5ImGui18TableResetSettingsEP10ImGuiTable(ptr nofree noundef writeonly captures(none) initializes((96, 100), (569, 570), (574, 576), (577, 578)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 575
  store i8 1, ptr %i.a, align 1, !tbaa !277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 569
  store i8 1, ptr %i.b, align 1, !tbaa !272
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 577
  store i8 0, ptr %i.c, align 1, !tbaa !273
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 574
  store i8 0, ptr %i.d, align 2, !tbaa !271
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.e, align 8, !tbaa !274
  ret void
}

declare void @_ZN5ImGui7MemFreeEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_ZN5ImGui17TableLoadSettingsEP10ImGuiTable(ptr nofree noundef captures(none) initializes((574, 575)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 574
  store i8 0, ptr %i.b, align 2, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !210
  %i.e = and i32 %i.d, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !275  ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %0, align 8, !tbaa !211
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 9888
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 9896
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !305  ; 4 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0812.i = phi ptr [ %i.s, %select.unfold.i ], [ %i.m, %.lr.ph.i.preheader ] ; 6 uses
  %i.n = load i32, ptr %.0812.i, align 4, !tbaa !307
  %i.o = icmp eq i32 %i.n, %i.i
  br i1 %i.o, label %_ZN5ImGui21TableSettingsFindByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !286
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %.0812.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.j, align 8, !tbaa !308
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = icmp eq ptr %i.s, %i.w
  br i1 %i.x, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i

_ZN5ImGui21TableSettingsFindByIDEj.exit:          ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0812.i, i64 12
  %i.z = load i16, ptr %i.y, align 4, !tbaa !309
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !214 ; 2 uses
  %.not81 = icmp eq i32 %i.ac, %i.aa
  br i1 %.not81, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 575
  store i8 1, ptr %i.ad, align 1, !tbaa !277
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5ImGui21TableSettingsFindByIDEj.exit
  %i.ae = ptrtoint ptr %.0812.i to i64
  %i.af = ptrtoint ptr %i.l to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !275
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

bb.f:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 9896
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !305
  %i.ak = sext i32 %i.g to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  %i.an = load i16, ptr %i.am, align 2, !tbaa !310
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !214 ; 2 uses
  %.not10.not.i = icmp sle i32 %i.aq, %i.ao
  tail call void @llvm.assume(i1 %.not10.not.i)
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %bb.f, %bb.e
  %i.ar = phi i32 [ %i.ac, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %.076 = phi ptr [ %.0812.i, %bb.e ], [ %i.al, %bb.f ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.076, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !311
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.at, ptr %i.au, align 8, !tbaa !274
  %i.av = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !312
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 228
  store float %i.aw, ptr %i.ax, align 4, !tbaa !298
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.az = icmp sgt i32 %i.ar, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZL23TableInitColumnDefaultsP10ImGuiTableP16ImGuiTableColumni.exit

._crit_edge:                                      ; preds = %_ZL23TableInitColumnDefaultsP10ImGuiTableP16ImGuiTableColumni.exit, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %.pre123125 = phi i32 [ %i.ar, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit ], [ %i.cm, %_ZL23TableInitColumnDefaultsP10ImGuiTableP16ImGuiTableColumni.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.076, i64 12 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !309 ; 3 uses
  %i.bd = icmp sgt i16 %i.bc, 0
  br i1 %i.bd, label %.lr.ph99, label %._crit_edge100.thread

._crit_edge100.thread:                            ; preds = %._crit_edge
  %1 = sext i16 %i.bc to i64
  %2 = and i64 %1, 4294967295
  %notmask139 = shl nsw i64 -1, %2
  %i.be = xor i64 %notmask139, -1
  br label %bb.g

.lr.ph99:                                         ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %.076, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

_ZL23TableInitColumnDefaultsP10ImGuiTableP16ImGuiTableColumni.exit: ; preds = %.lr.ph, %_ZL23TableInitColumnDefaultsP10ImGuiTableP16ImGuiTableColumni.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL23TableInitColumnDefaultsP10ImGuiTableP16ImGuiTableColumni.exit ] ; 3 uses
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !262
  %i.bi = getelementptr inbounds nuw [116 x i8], ptr %i.bh, i64 %indvars.iv ; 10 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !313 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !314 ; 3 uses
  %i.bm = and i32 %i.bj, 16
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = fcmp ogt float %i.bl, 0.000000e+00      ; 2 uses
  %or.cond.i = and i1 %i.bn, %i.bo
  %i.bp = select i1 %or.cond.i, float %i.bl, float -1.000000e+00
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store float %i.bp, ptr %i.bq, align 4, !tbaa !299
  %i.br = and i32 %i.bj, 8
  %.not27.i = icmp ne i32 %i.br, 0
  %or.cond35.not.i = select i1 %i.bo, i1 %.not27.i, i1 false
  %i.bs = select i1 %or.cond35.not.i, float %i.bl, float -1.000000e+00
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store float %i.bs, ptr %i.bt, align 4, !tbaa !315
  %i.bu = trunc i64 %indvars.iv to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 86
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !296
  %i.bw = and i32 %i.bj, 2
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bz = zext i1 %i.bx to i8                     ; 2 uses
  store i8 %i.bz, ptr %i.by, align 4, !tbaa !293
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 103
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !294
  %i.cb = and i32 %i.bj, 4
  %.not32.i = icmp eq i32 %i.cb, 0                ; 2 uses
  %i.cc = sext i1 %.not32.i to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 94
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !316
  %i.ce = and i32 %i.bj, 32768
  %.not33.i = icmp eq i32 %i.ce, 0
  %i.cf = select i1 %.not33.i, i8 1, i8 2
  %i.cg = select i1 %.not32.i, i8 0, i8 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 113 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = and i8 %i.ci, -4
  %i.ck = or disjoint i8 %i.cj, %i.cg
  store i8 %i.ck, ptr %i.ch, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 111
  store i8 0, ptr %i.cl, align 1, !tbaa !317
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.ay, align 4, !tbaa !214 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %_ZL23TableInitColumnDefaultsP10ImGuiTableP16ImGuiTableColumni.exit, label %._crit_edge, !llvm.loop !510

._crit_edge100:                                   ; preds = %bb.q
  %.pre123.pre = load i32, ptr %i.ay, align 4, !tbaa !214
  %i.cp = icmp eq i16 %.fr, 64
  %i.cq = zext nneg i32 %i.es to i64
  %notmask = shl nsw i64 -1, %i.cq
  %i.cr = xor i64 %notmask, -1
  %spec.select = select i1 %i.cp, i64 -1, i64 %i.cr
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge100, %._crit_edge100.thread
  %.073.lcssa142 = phi i64 [ 0, %._crit_edge100.thread ], [ %.1, %._crit_edge100 ]
  %.pre123141 = phi i32 [ %.pre123125, %._crit_edge100.thread ], [ %.pre123.pre, %._crit_edge100 ] ; 5 uses
  %i.cs = phi i64 [ %i.be, %._crit_edge100.thread ], [ %spec.select, %._crit_edge100 ]
  %.not82 = icmp eq i64 %.073.lcssa142, %i.cs
  %i.ct = icmp sgt i32 %.pre123141, 0             ; 2 uses
  br i1 %.not82, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  br i1 %i.ct, label %.lr.ph104, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

.lr.ph104:                                        ; preds = %.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !262 ; 9 uses
  %wide.trip.count = zext nneg i32 %.pre123141 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.cw = icmp ult i32 %.pre123141, 8
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph104.new

.lr.ph104.new:                                    ; preds = %.lr.ph104
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.r

bb.h:                                             ; preds = %.lr.ph99, %bb.q
  %i.cx = phi i16 [ %i.bc, %.lr.ph99 ], [ %.fr, %bb.q ] ; 2 uses
  %.07297 = phi i32 [ 0, %.lr.ph99 ], [ %i.eq, %bb.q ]
  %.07396 = phi i64 [ 0, %.lr.ph99 ], [ %.1, %bb.q ] ; 3 uses
  %.07495 = phi ptr [ %i.bf, %.lr.ph99 ], [ %i.er, %bb.q ] ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.07495, i64 8
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !319 ; 2 uses
  %i.da = sext i16 %i.cz to i32                   ; 2 uses
  %i.db = icmp slt i16 %i.cz, 0
  br i1 %i.db, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = load i32, ptr %i.ay, align 4, !tbaa !214
  %.not83 = icmp sgt i32 %i.dc, %i.da
  br i1 %.not83, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.dd = load ptr, ptr %i.bg, align 8, !tbaa !262
  %i.de = zext nneg i32 %i.da to i64
  %i.df = getelementptr inbounds nuw [116 x i8], ptr %i.dd, i64 %i.de ; 7 uses
  %i.dg = load i32, ptr %i.as, align 4, !tbaa !311 ; 3 uses
  %i.dh = and i32 %i.dg, 1
  %.not84 = icmp eq i32 %i.dh, 0
  br i1 %.not84, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %.07495, i64 14
  %i.dj = load i8, ptr %i.di, align 2
  %i.dk = and i8 %i.dj, 16
  %.not85 = icmp eq i8 %i.dk, 0
  %i.dl = load float, ptr %.07495, align 4, !tbaa !320
  %. = select i1 %.not85, i64 16, i64 28
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 %.
  store float %i.dl, ptr %i.dm, align 4, !tbaa !176
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %i.dn = and i32 %i.dg, 2
  %.not86 = icmp eq i32 %i.dn, 0
  br i1 %.not86, label %._crit_edge121, label %bb.l

._crit_edge121:                                   ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.df, i64 86
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !296
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.do = getelementptr inbounds nuw i8, ptr %.07495, i64 10
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !321 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 86
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !296
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge121, %bb.l
  %i.dr = phi i16 [ %.pre, %._crit_edge121 ], [ %i.dp, %bb.l ]
  %i.ds = sext i16 %i.dr to i64
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = or i64 %i.du, %.07396
  %i.dw = and i32 %i.dg, 4
  %.not87 = icmp eq i32 %i.dw, 0
  br i1 %.not87, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %.07495, i64 14
  %i.dy = load i8, ptr %i.dx, align 2
  %i.dz = shl i8 %i.dy, 4
  %i.ea = ashr i8 %i.dz, 6                        ; 2 uses
  %.not88 = icmp eq i8 %i.ea, -1
  br i1 %.not88, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = icmp eq i8 %i.ea, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 104
  %i.ed = zext i1 %i.eb to i8                     ; 2 uses
  store i8 %i.ed, ptr %i.ec, align 4, !tbaa !293
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 103
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !294
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ef = getelementptr inbounds nuw i8, ptr %.07495, i64 12
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !322
  %i.eh = getelementptr inbounds nuw i8, ptr %i.df, i64 94
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !316
  %i.ei = getelementptr inbounds nuw i8, ptr %.07495, i64 14
  %i.ej = load i8, ptr %i.ei, align 2
  %i.ek = and i8 %i.ej, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.df, i64 113 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1
  %i.en = and i8 %i.em, -4
  %i.eo = or disjoint i8 %i.en, %i.ek
  store i8 %i.eo, ptr %i.el, align 1
  %.pre122 = load i16, ptr %i.bb, align 4, !tbaa !309
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.i, %bb.p
  %i.ep = phi i16 [ %.pre122, %bb.p ], [ %i.cx, %bb.i ], [ %i.cx, %bb.h ]
  %.1 = phi i64 [ %i.dv, %bb.p ], [ %.07396, %bb.i ], [ %.07396, %bb.h ] ; 2 uses
  %.fr = freeze i16 %i.ep                         ; 3 uses
  %i.eq = add nuw nsw i32 %.07297, 1              ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.07495, i64 16
  %i.es = sext i16 %.fr to i32                    ; 2 uses
  %i.et = icmp slt i32 %i.eq, %i.es
  br i1 %i.et, label %bb.h, label %._crit_edge100, !llvm.loop !511

bb.r:                                             ; preds = %bb.r, %.lr.ph104.new
  %indvars.iv113 = phi i64 [ 0, %.lr.ph104.new ], [ %indvars.iv.next114.7, %bb.r ] ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable:bb.a
  store float %i.zz, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !369
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !212
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aac, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !tbaa.struct !223
  %i.aad = load float, ptr %i.py, align 8, !tbaa !379
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.aad, ptr %i.aae, align 4, !tbaa !380
  %i.aaf = load float, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !369
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float %i.aaf, ptr %i.aag, align 8, !tbaa !381
  %i.aah = load i32, ptr %i.b, align 4, !tbaa !210 ; 2 uses
  %i.aai = and i32 %i.aah, 131072
  %.not562 = icmp eq i32 %i.aai, 0
  br i1 %.not562, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aaj = load float, ptr %i.om, align 4, !tbaa !354
  %.pre719 = load ptr, ptr %i.aaa, align 8, !tbaa !212
  br label %bb.dx

bb.du:                                            ; preds = %bb.ds
  %i.aak = load ptr, ptr %i.aaa, align 8, !tbaa !212 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 636
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !382 ; 2 uses
  %i.aan = and i32 %i.aah, 33554432
  %.not563 = icmp eq i32 %i.aan, 0
  br i1 %.not563, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aao = load float, ptr %i.om, align 4, !tbaa !354
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv
  %i.aap = phi float [ %i.aao, %bb.dv ], [ 0.000000e+00, %bb.du ] ; 2 uses
  %i.aaq = fcmp oge float %i.aam, %i.aap
  %i.aar = select i1 %i.aaq, float %i.aam, float %i.aap
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dt
  %i.aas = phi ptr [ %.pre719, %bb.dt ], [ %i.aak, %bb.dw ] ; 2 uses
  %.0 = phi float [ %i.aaj, %bb.dt ], [ %i.aar, %bb.dw ]
  %i.aat = getelementptr inbounds nuw i8, ptr %i.a, i64 3248
  %i.aau = load float, ptr %i.aat, align 8, !tbaa !383
  %i.aav = fsub float %.0, %i.aau                 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aas, i64 580
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !384 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aas, i64 588 ; 2 uses
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !242 ; 2 uses
  %i.aba = fcmp olt float %i.aav, %i.aax
  %i.abb = fcmp ogt float %i.aav, %i.aaz
  %i.abc = select i1 %i.abb, float %i.aaz, float %i.aav
  %i.abd = select i1 %i.aba, float %i.aax, float %i.abc
  store float %i.abd, ptr %i.aay, align 4, !tbaa !242
  call void @_ZN5ImGui22TableSetupDrawChannelsEP10ImGuiTable(ptr noundef nonnull %0)
  %i.abe = load i32, ptr %i.b, align 4, !tbaa !210
  %i.abf = and i32 %i.abe, 1
  %.not564 = icmp eq i32 %i.abf, 0
  br i1 %.not564, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN5ImGui18TableUpdateBordersEP10ImGuiTable(ptr noundef nonnull %0)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.abg = getelementptr inbounds nuw i8, ptr %.0.i601, i64 8
  store float 0.000000e+00, ptr %i.abg, align 4, !tbaa !385
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 567
  store i8 1, ptr %i.abh, align 1, !tbaa !215
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 571
  store i8 0, ptr %i.abi, align 1, !tbaa !386
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 526 ; 3 uses
  store i16 -1, ptr %i.abj, align 2, !tbaa !387
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.abl = load i8, ptr %i.abk, align 4, !tbaa !388, !range !174, !noundef !175
  %i.abm = trunc nuw i8 %i.abl to i1              ; 2 uses
  br i1 %i.abm, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.abo = load i16, ptr %i.abn, align 4, !tbaa !279 ; 2 uses
  %.not565 = icmp eq i16 %i.abo, -1
  br i1 %.not565, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.abq = load i16, ptr %i.abp, align 2, !tbaa !278
  %i.abr = load i16, ptr %i.nu, align 8, !tbaa !209
  %i.abs = icmp eq i16 %i.abq, %i.abr
  br i1 %i.abs, label %.thread634, label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %i.abt = load i32, ptr %i.b, align 4, !tbaa !210
  %i.abu = and i32 %i.abt, 268435456
  %.not566 = icmp eq i32 %i.abu, 0
  br i1 %.not566, label %bb.ek, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.abv = load i16, ptr %i.oh, align 2, !tbaa !285 ; 3 uses
  %.not567 = icmp eq i16 %i.abv, -1
  br i1 %.not567, label %bb.ek, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.abw = sext i16 %i.abv to i32
  %i.abx = load i32, ptr %i.i, align 4, !tbaa !214
  %.not568 = icmp eq i32 %i.abx, %i.abw
  br i1 %.not568, label %bb.ek, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aby = load i16, ptr %i.og, align 4, !tbaa !284
  %i.abz = icmp eq i16 %i.aby, -1
  br i1 %i.abz, label %bb.eg, label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  %i.aca = load i32, ptr %i.ox, align 4, !tbaa !357
  %i.acb = icmp eq i32 %i.aca, 0
  br i1 %i.acb, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 582
  %i.acd = load i8, ptr %i.acc, align 2, !tbaa !249, !range !174, !noundef !175
  %i.ace = trunc nuw i8 %i.acd to i1
  br i1 %i.ace, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.acf = getelementptr inbounds nuw i8, ptr %i.a, i64 8616
  %i.acg = load i8, ptr %i.acf, align 8, !tbaa !389, !range !174, !noundef !175
  %i.ach = trunc nuw i8 %i.acg to i1
  br i1 %i.ach, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.eg
  store i16 %i.abv, ptr %i.abj, align 2, !tbaa !387
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.ej, %bb.ei
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !529, !range !174, !noundef !175
  %i.ack = icmp eq i8 %i.acj, 0
  %brmerge645.not = and i1 %i.ack, %i.abm
  br i1 %brmerge645.not, label %.thread635, label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

.thread634:                                       ; preds = %bb.eb
  store i16 %i.abo, ptr %i.abj, align 2, !tbaa !387
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !529, !range !174, !noundef !175
  %i.acn = icmp eq i8 %i.acm, 0
  br i1 %i.acn, label %.thread635.thread, label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

.thread635:                                       ; preds = %bb.ek
  %.pre720 = load i16, ptr %i.nu, align 8, !tbaa !209
  %.phi.trans.insert721 = getelementptr inbounds nuw i8, ptr %0, i64 122
  %.pre722 = load i16, ptr %.phi.trans.insert721, align 2, !tbaa !278
  %i.aco = icmp eq i16 %.pre720, %.pre722
  br i1 %i.aco, label %.thread635.thread, label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

.thread635.thread:                                ; preds = %.thread634, %.thread635
  %i.acp = load i32, ptr %0, align 8, !tbaa !211
  %i.acq = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.12, i64 noundef 0, i32 noundef %i.acp) #4
  %i.acr = call noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef %i.acq, i32 noundef 321) #4
  br i1 %i.acr, label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit, label %bb.el

bb.el:                                            ; preds = %.thread635.thread
  store i8 0, ptr %i.abk, align 4, !tbaa !388
  br label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit: ; preds = %.thread635.thread
  %i.acs = load i32, ptr %i.b, align 4, !tbaa !210
  call void @_ZN5ImGui27TableDrawDefaultContextMenuEP10ImGuiTablei(ptr noundef nonnull %0, i32 noundef %i.acs)
  call void @_ZN5ImGui8EndPopupEv() #4
  br label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread: ; preds = %bb.ek, %bb.el, %.thread635, %.thread634, %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.acu = load i8, ptr %i.act, align 2, !tbaa !276, !range !174, !noundef !175
  %i.acv = trunc nuw i8 %i.acu to i1
  br i1 %i.acv, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread
  %i.acw = load i32, ptr %i.b, align 4, !tbaa !210
  %i.acx = and i32 %i.acw, 8
  %.not569 = icmp eq i32 %i.acx, 0
  br i1 %.not569, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_ZN5ImGui19TableSortSpecsBuildEP10ImGuiTable(ptr noundef nonnull %0)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.acz = load i16, ptr %i.acy, align 2, !tbaa !368 ; 2 uses
  %i.ada = icmp sgt i16 %i.acz, 0
  %.pre723.pre = load ptr, ptr %i.aaa, align 8, !tbaa !212 ; 6 uses
  br i1 %i.ada, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.adb = zext nneg i16 %i.acz to i64
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = add nuw nsw i64 %i.adb, 4294967295
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !264
  %3 = and i64 %2, 4294967295
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.add, i64 %3
  %i.ade = load i16, ptr %4, align 2, !tbaa !287
  %i.adf = load ptr, ptr %i.za, align 8, !tbaa !262
  %i.adg = sext i16 %i.ade to i64
  %i.adh = getelementptr inbounds [116 x i8], ptr %i.adf, i64 %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 12
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !365
  %i.adk = load float, ptr %i.oi, align 8, !tbaa !364
  %i.adl = fsub float %i.adj, %i.adk
  %i.adm = getelementptr inbounds nuw i8, ptr %.pre723.pre, i64 128
  store float %i.adl, ptr %i.adm, align 8, !tbaa !530
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 550
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !390
  %i.adp = icmp sgt i16 %i.ado, 0
  br i1 %i.adp, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.adq = getelementptr inbounds nuw i8, ptr %.0.i601, i64 12
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !391
  %i.ads = getelementptr inbounds nuw i8, ptr %.pre723.pre, i64 132
  store float %i.adr, ptr %i.ads, align 4, !tbaa !531
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.adt = getelementptr inbounds nuw i8, ptr %.0.i601, i64 12
  store float 0.000000e+00, ptr %i.adt, align 4, !tbaa !391
  %i.adu = load i32, ptr %i.b, align 4, !tbaa !210
  %i.adv = and i32 %i.adu, 1048576
  %.not570 = icmp eq i32 %i.adv, 0
  br i1 %.not570, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !205
  %i.ady = getelementptr inbounds nuw i8, ptr %.pre723.pre, i64 712
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !392
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.adx, ptr noundef %i.adz, i32 noundef 2) #4
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.aea = getelementptr inbounds nuw i8, ptr %.pre723.pre, i64 712
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !392
  %i.aec = getelementptr inbounds nuw i8, ptr %.pre723.pre, i64 560
  %i.aed = getelementptr inbounds nuw i8, ptr %.pre723.pre, i64 568
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.aeb, ptr noundef nonnull align 4 dereferenceable(8) %i.aec, ptr noundef nonnull align 4 dereferenceable(8) %i.aed, i1 noundef zeroext false) #4
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL21TableSetupColumnFlagsP10ImGuiTableP16ImGuiTableColumni(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = and i32 %2, 24
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !210  ; 2 uses
  br i1 %i.b, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i32 %i.d to i16
  %trunc = and i16 %i.e, -8192
  switch i16 %trunc, label %bb.d [
    i16 16384, label %bb.c
    i16 8192, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = or disjoint i32 %2, 16
  br label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.g = or disjoint i32 %2, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c, %bb.d
  %.171 = phi i32 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = shl i32 %i.d, 5
  %i.j = and i32 %i.i, 32
  %i.k = xor i32 %i.j, 32
  %spec.select = or i32 %i.k, %.171               ; 2 uses
  %i.l = and i32 %.171, 3072
  %or.cond.not = icmp eq i32 %i.l, 3072
  %i.m = or i32 %spec.select, 512
  %.373 = select i1 %or.cond.not, i32 %i.m, i32 %spec.select ; 3 uses
  %i.n = and i32 %.373, 196608
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !262
  %i.r = ptrtoint ptr %1 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 116
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i32 65536, i32 131072
  %i.y = or disjoint i32 %i.x, %.373
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.474 = phi i32 [ %i.y, %bb.e ], [ %.373, %._crit_edge ] ; 3 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !313
  %i.aa = and i32 %i.z, 251658240
  %i.ab = or i32 %i.aa, %.474
  store i32 %i.ab, ptr %1, align 4, !tbaa !313
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  store i8 0, ptr %i.ac, align 2, !tbaa !393
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 113 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 3                         ; 3 uses
  store i8 %i.af, ptr %i.ad, align 1
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !210 ; 2 uses
  %i.ah = and i32 %i.ag, 8
  %.not76 = icmp eq i32 %i.ah, 0
  br i1 %.not76, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = and i32 %.474, 17408                    ; 2 uses
  %or.cond80 = icmp eq i32 %i.ai, 16384           ; 4 uses
  %.061 = select i1 %or.cond80, i8 2, i8 0        ; 2 uses
  %.0 = zext i1 %or.cond80 to i32                 ; 2 uses
  %i.aj = and i32 %.474, 34816                    ; 2 uses
  %or.cond82 = icmp eq i32 %i.aj, 32768           ; 3 uses
  %i.ak = or disjoint i8 %.061, 4
  %i.al = select i1 %or.cond80, i32 9, i32 2
  %i.am = select i1 %or.cond80, i32 2, i32 1
  %.166 = select i1 %or.cond82, i32 %i.am, i32 %.0 ; 3 uses
  %.162 = select i1 %or.cond82, i8 %i.ak, i8 %.061 ; 2 uses
  %.1 = select i1 %or.cond82, i32 %i.al, i32 %.0  ; 2 uses
  %or.cond84 = icmp eq i32 %i.ai, 0
  br i1 %or.cond84, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = or i8 %.162, 2
  %i.ao = shl nuw nsw i32 %.166, 1
  %i.ap = shl nuw nsw i32 1, %i.ao
  %i.aq = or i32 %i.ap, %.1
  %i.ar = add nuw nsw i32 %.166, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.267 = phi i32 [ %i.ar, %bb.h ], [ %.166, %bb.g ] ; 3 uses
  %.263 = phi i8 [ %i.an, %bb.h ], [ %.162, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %i.aq, %bb.h ], [ %.1, %bb.g ]  ; 2 uses
  %or.cond86 = icmp eq i32 %i.aj, 0
  br i1 %or.cond86, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = or i8 %.263, 4
  %i.at = shl nuw nsw i32 %.267, 1
  %i.au = shl nuw nsw i32 2, %i.at
  %i.av = or i32 %.2, %i.au
  %i.aw = add nuw nsw i32 %.267, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.368 = phi i32 [ %i.aw, %bb.j ], [ %.267, %bb.i ] ; 2 uses
  %.364 = phi i8 [ %i.as, %bb.j ], [ %.263, %bb.i ]
  %.3 = phi i32 [ %i.av, %bb.j ], [ %.2, %bb.i ]
  %i.ax = and i32 %i.ag, 134217728
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = icmp eq i32 %.368, 0
  %or.cond3 = select i1 %i.ay, i1 true, i1 %i.az  ; 2 uses
  %i.ba = zext i1 %or.cond3 to i32
  %.469 = add nuw nsw i32 %.368, %i.ba
  %i.bb = zext i1 %or.cond3 to i8
  %.4 = or i8 %.364, %i.bb                        ; 2 uses
  %i.bc = trunc nuw i32 %.3 to i8                 ; 2 uses
  store i8 %i.bc, ptr %i.ac, align 2, !tbaa !393
  %i.bd = shl nuw nsw i8 %.4, 4
  %i.be = trunc nuw nsw i32 %.469 to i8
  %i.bf = shl nuw nsw i8 %i.be, 2
  %i.bg = and i8 %i.bf, 12
  %i.bh = or disjoint i8 %i.bg, %i.bd             ; 2 uses
  %i.bi = or disjoint i8 %i.bh, %i.af
  store i8 %i.bi, ptr %i.ad, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !316
  %i.bl = icmp eq i16 %i.bk, -1
  br i1 %i.bl, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = zext nneg i8 %.4 to i32
  %i.bn = zext nneg i8 %i.af to i32
  %i.bo = shl nuw nsw i32 1, %i.bn
  %i.bp = and i32 %i.bo, %i.bm
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.m, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.m:                                             ; preds = %bb.l
  %i.bq = and i8 %i.bc, 3
  %i.br = or disjoint i8 %i.bh, %i.bq
  store i8 %i.br, ptr %i.ad, align 1
end_hunk_1
begin_hunk_2_@_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 567
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.lr.ph.i
  %i.s = phi i32 [ %i.l, %.lr.ph.i ], [ %i.at, %bb.k ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 5 uses
  %.01315.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 4 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !269
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.v = lshr i64 %indvars.iv.i, 5
  %i.w = and i64 %i.v, 134217727
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !286
  %i.z = and i32 %i.u, 31
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = and i32 %i.y, %i.aa
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !262
  %i.ad = getelementptr inbounds nuw [116 x i8], ptr %i.ac, i64 %indvars.iv.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !313
  %i.af = and i32 %i.ae, 262144
  %.not14.i = icmp eq i32 %i.af, 0
  br i1 %.not14.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %i.p, align 1, !tbaa !215, !range !174, !noundef !175
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load i16, ptr %i.q, align 2, !tbaa !248
  %i.aj = sext i16 %i.ai to i64
  %.not.i.i = icmp slt i64 %indvars.iv.i, %i.aj
  br i1 %.not.i.i, label %bb.i, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !335 ; 2 uses
  %i.am = icmp eq i16 %i.al, -1
  br i1 %i.am, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !301
  %i.ao = sext i16 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %.1.i.i = phi ptr [ @.str.6, %bb.h ], [ %i.ap, %bb.j ], [ @.str.6, %bb.i ]
  %i.aq = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i.i, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) #4
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.ar = fcmp oge float %.01315.i, %.sroa.0.0.vec.extract.i
  %i.as = select i1 %i.ar, float %.01315.i, float %.sroa.0.0.vec.extract.i
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !214
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i, %bb.f, %bb.e
  %i.at = phi i32 [ %.pre.i, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i ], [ %i.s, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.1.i = phi float [ %i.as, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i ], [ %.01315.i, %bb.f ], [ %.01315.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %bb.e, label %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit, !llvm.loop !4

_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit: ; preds = %bb.k, %bb.d
  %.013.lcssa.i = phi float [ 0.000000e+00, %bb.d ], [ %.1.i, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 3248
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !383
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float 2.000000e+00, float %.013.lcssa.i)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit, %bb.c
  %.0169 = phi float [ %i.ay, %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit ], [ %2, %bb.c ] ; 2 uses
  %i.az = fcmp olt float %1, 0.000000e+00         ; 7 uses
  %i.ba = fadd float %1, f0xBFC90FDB              ; 3 uses
  %i.bb = tail call float @cosf(float noundef %i.ba) #4 ; 7 uses
  %i.bc = tail call float @sinf(float noundef %i.ba) #4 ; 8 uses
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = fadd float %i.ba, f0x40490FDB           ; 2 uses
  %i.be = tail call float @cosf(float noundef %i.bd) #4
  %i.bf = tail call float @sinf(float noundef %i.bd) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bg = phi float [ %i.be, %bb.m ], [ %i.bb, %bb.l ]
  %i.bh = phi float [ %i.bf, %bb.m ], [ %i.bc, %bb.l ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 4400 ; 3 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !297
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 3244 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !234
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float 2.000000e+00, float %i.bj) ; 2 uses
  %i.bn = fneg float %i.bm
  %i.bo = select i1 %i.az, float %i.bm, float %i.bn
  %i.bp = fneg float %i.bc                        ; 3 uses
  %i.bq = fmul float %i.bb, %i.bo
  %i.br = tail call float @llvm.fmuladd.f32(float %.0169, float %i.bc, float %i.bq)
  %i.bs = tail call float @llvm.fabs.f32(float %i.br)
  %i.bt = fptosi float %i.bs to i32
  %i.bu = sitofp i32 %i.bt to float               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store float %i.bu, ptr %i.bv, align 8, !tbaa !250
  %i.bw = fcmp une float %i.bc, 0.000000e+00
  %i.bx = fdiv float %i.bb, %i.bc
  %i.by = select i1 %i.bw, float %i.bx, float 0.000000e+00
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store float %i.by, ptr %i.bz, align 4, !tbaa !360
  %i.ca = fdiv float %i.bu, %i.bp
  %i.cb = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.bc, i64 1
  %i.cd = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.cc, %i.ce           ; 2 uses
  %i.cg = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8816
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !254 ; 11 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 567
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !215, !range !174, !noundef !175
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.ci)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 568
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !405, !range !174, !noundef !175
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.q, label %_ZN5ImGui12TableNextRowEif.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.ci)
  br label %_ZN5ImGui12TableNextRowEif.exit

_ZN5ImGui12TableNextRowEif.exit:                  ; preds = %bb.p, %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 148 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = shl i32 %i.cq, 16
  %i.cs = or disjoint i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cp, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 3248
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !383
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 136 ; 2 uses
  store float %i.cu, ptr %i.cv, align 8, !tbaa !415
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 132
  store float %i.bu, ptr %i.cw, align 4, !tbaa !435
  tail call void @_ZN5ImGui13TableBeginRowEP10ImGuiTable(ptr noundef nonnull %i.ci)
  %i.cx = load float, ptr %i.cv, align 8, !tbaa !415
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 128 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !244
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cx, float 2.000000e+00, float %i.cz) ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 124
  %i.dc = load float, ptr %i.db, align 4, !tbaa !245
  %i.dd = fadd float %i.dc, %i.bu                 ; 2 uses
  %i.de = fcmp oge float %i.da, %i.dd
  %i.df = select i1 %i.de, float %i.da, float %i.dd
  store float %i.df, ptr %i.cy, align 8, !tbaa !244
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 392
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !212
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 209
  store i8 1, ptr %i.di, align 1, !tbaa !173
  %i.dj = tail call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !375
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 308 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !426 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !370
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !244 ; 2 uses
  store float %i.dl, ptr %5, align 4, !tbaa !221
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.do, ptr %i.dt, align 4, !tbaa !222
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.dq, ptr %i.du, align 4, !tbaa !221
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store float %i.ds, ptr %i.dv, align 4, !tbaa !222
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !205
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef %i.g, i32 noundef 0) #4
  %i.dy = load float, ptr %i.dm, align 8, !tbaa !632 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 556 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !361 ; 2 uses
  %i.eb = icmp sgt i16 %i.ea, 0
  br i1 %i.eb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui12TableNextRowEif.exit
  %i.ec = zext nneg i16 %i.ea to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %14 = add nuw nsw i64 %i.ec, 4294967295
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !262
  %15 = and i64 %14, 4294967295
  %i.ef = getelementptr inbounds nuw [116 x i8], ptr %i.ee, i64 %15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !365 ; 2 uses
  %i.ei = fcmp oge float %i.dy, %i.eh
  %i.ej = select i1 %i.ei, float %i.dy, float %i.eh
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui12TableNextRowEif.exit
  %.0173 = phi float [ %i.ej, %bb.r ], [ %i.dy, %_ZN5ImGui12TableNextRowEif.exit ]
  %i.ek = load ptr, ptr @GImGui, align 8, !tbaa !20
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8816
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !254 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 124
  %i.eo = load float, ptr %i.en, align 4, !tbaa !245
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 300
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !243
  %i.er = fcmp ogt float %i.eo, %i.eq
  br i1 %i.er, label %_ZN5ImGui15TableSetBgColorEiji.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 156
  store i32 0, ptr %i.es, align 4, !tbaa !286
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

_ZN5ImGui15TableSetBgColorEiji.exit:              ; preds = %bb.s, %bb.t
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 3 uses
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.dm, ptr noundef nonnull align 4 dereferenceable(8) %i.et, i1 noundef zeroext false) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.eu = load float, ptr %i.dm, align 8, !tbaa !632
  store float %i.eu, ptr %6, align 4, !tbaa !221
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.do, ptr %i.ev, align 4, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.ew = load float, ptr %i.et, align 8, !tbaa !633
  store float %i.ew, ptr %7, align 4, !tbaa !221
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.ds, ptr %i.ex, align 4, !tbaa !222
  %i.ey = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 45, float noundef 2.500000e-01) #4
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.ey, float noundef 0.000000e+00, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.ez = load float, ptr %i.dn, align 4, !tbaa !426
  store float %.0173, ptr %8, align 4, !tbaa !221
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.ez, ptr %i.fa, align 4, !tbaa !222
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.et, i1 noundef zeroext true) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  %i.fb = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0) #4 ; 0 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %0) #4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 4392
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !634
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 68
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !635
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 4408
  %i.fh = load float, ptr %i.fg, align 8, !tbaa !636
  %i.fi = fmul float %i.ff, %i.fh
  %i.fj = load float, ptr %i.bi, align 8, !tbaa !297
  %i.fk = fsub float %i.fj, %i.fi
  %i.fl = fmul float %i.fk, 5.000000e-01          ; 2 uses
  %i.fm = fcmp oge float %i.fl, 0.000000e+00
  %i.fn = select i1 %i.fm, float %i.fl, float 0.000000e+00
  %i.fo = fdiv float %i.fn, %i.bp
  %i.fp = select i1 %i.az, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.fq = fmul float %i.fp, %i.fo
  %.sroa.066.0.copyload = load float, ptr %i.bk, align 4, !tbaa !176 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3248
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !176 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %.sroa.065.0.copyload = load float, ptr %i.fr, align 8, !tbaa !176
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3324
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !176
  %i.fs = icmp sgt i32 %4, 0
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa_idx202 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa_idx199 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 567
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.ga = fneg float %.sroa.066.0.copyload
  %i.gb = fsub float %.0169, %.sroa.5.0.copyload  ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 608 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 612
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.gh = fmul float %i.bb, %.sroa.066.0.copyload
  %i.gi = call float @llvm.fabs.f32(float %i.gh)
  %i.gj = fmul float %i.bc, %.sroa.5.0.copyload   ; 2 uses
  %i.gk = call float @llvm.fabs.f32(float %i.gj)
  %i.gl = fneg float %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.go = fmul float %i.bb, %.sroa.5.0.copyload
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 530
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  br i1 %i.fs, label %.preheader.us.preheader, label %.split.us

.preheader.us.preheader:                          ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.gw = extractelement <2 x float> %i.cf, i64 0
  %i.gx = insertelement <2 x float> poison, float %i.gb, i64 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.gy = phi i1 [ false, %._crit_edge.us ], [ true, %.preheader.us.preheader ] ; 2 uses
  %i.gz = phi i1 [ true, %._crit_edge.us ], [ false, %.preheader.us.preheader ]
  %.0172224.us = phi float [ %.2.us238, %._crit_edge.us ], [ f0xFF7FFFFF, %.preheader.us.preheader ]
  br label %bb.u

bb.u:                                             ; preds = %.preheader.us, %.loopexit.us.thread
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %.loopexit.us.thread ] ; 3 uses
  %.1220.us = phi float [ %.0172224.us, %.preheader.us ], [ %.2.us238, %.loopexit.us.thread ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 4 uses
  %i.hb = load i16, ptr %i.ha, align 4, !tbaa !638 ; 4 uses
  %i.hc = load ptr, ptr %i.ft, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 32, i1 false), !tbaa !176
  %i.hd = sext i16 %i.hb to i64                   ; 2 uses
  %i.he = getelementptr inbounds [116 x i8], ptr %i.hc, i64 %i.hd ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 12 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !365 ; 2 uses
  %i.hh = load i32, ptr %i.dv, align 4, !tbaa !421 ; 3 uses
  store i32 %i.hg, ptr %9, align 16
  store i32 %i.hh, ptr %.sroa_idx202, align 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !366 ; 2 uses
  store i32 %i.hj, ptr %i.fu, align 8
  store i32 %i.hh, ptr %.sroa_idx199, align 4
  %i.hk = insertelement <2 x i32> poison, i32 %i.hj, i64 0
  %i.hl = insertelement <2 x i32> %i.hk, i32 %i.hh, i64 1
  %i.hm = bitcast <2 x i32> %i.hl to <2 x float>
  %i.hn = fadd <2 x float> %i.cf, %i.hm           ; 2 uses
  store <2 x float> %i.hn, ptr %i.fv, align 16
  %i.ho = bitcast i32 %i.hg to float
  %i.hp = fadd float %i.gw, %i.ho
  %i.hq = insertelement <2 x float> %i.hn, float %i.hp, i64 0
  store <2 x float> %i.hq, ptr %i.fw, align 8
  br i1 %i.gy, label %bb.v, label %.loopexit.us

bb.v:                                             ; preds = %bb.u
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !639
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fu, ptr noundef nonnull align 4 dereferenceable(8) %i.fv, ptr noundef nonnull align 4 dereferenceable(8) %i.fw, i32 noundef %i.hs) #4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !640
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fu, ptr noundef nonnull align 4 dereferenceable(8) %i.fv, ptr noundef nonnull align 4 dereferenceable(8) %i.fw, i32 noundef %i.hu) #4
  %i.hv = load float, ptr %i.fw, align 8, !tbaa !221 ; 2 uses
  %i.hw = fcmp oge float %.1220.us, %i.hv
  %i.hx = select i1 %i.hw, float %.1220.us, float %i.hv ; 2 uses
  %i.hy = load i8, ptr %i.fx, align 1, !tbaa !215, !range !174, !noundef !175
  %i.hz = icmp eq i8 %i.hy, 0
  br i1 %i.hz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ia = load i16, ptr %i.fy, align 2, !tbaa !248
  %.not.i188.us = icmp slt i16 %i.hb, %i.ia
  br i1 %.not.i188.us, label %bb.x, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ib = load ptr, ptr %i.ft, align 8, !tbaa !262
  %i.ic = getelementptr inbounds [116 x i8], ptr %i.ib, i64 %i.hd
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 84
  %i.ie = load i16, ptr %i.id, align 4, !tbaa !335 ; 2 uses
  %i.if = icmp eq i16 %i.ie, -1
  br i1 %i.if, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ig = load ptr, ptr %i.fz, align 8, !tbaa !301
  %i.ih = sext i16 %i.ie to i64
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 %i.ih
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us: ; preds = %bb.y, %bb.x, %bb.w
  %.1.i187.us = phi ptr [ @.str.6, %bb.w ], [ %i.ii, %bb.y ], [ @.str.6, %bb.x ] ; 4 uses
  %i.ij = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %.1.i187.us, ptr noundef null) #4 ; 4 uses
  %i.ik = load float, ptr %i.bi, align 8, !tbaa !297
  %i.il = fdiv float %i.ik, %i.bp                 ; 6 uses
  %i.im = call noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef %.1.i187.us, ptr noundef %i.ij) #4 ; 2 uses
  %i.in = load float, ptr %i.hf, align 4, !tbaa !365
  %i.io = load float, ptr %i.hi, align 4, !tbaa !366
  %i.ip = fsub float %i.in, %i.io
  %i.iq = call float @llvm.fmuladd.f32(float %i.ga, float 2.000000e+00, float %i.ip)
  %i.ir = sitofp i32 %i.im to float               ; 2 uses
  %i.is = fneg float %i.ir
  %i.it = call float @llvm.fmuladd.f32(float %i.is, float %i.il, float %i.iq) ; 2 uses
  %i.iu = fcmp oge float %i.it, 0.000000e+00
  %i.iv = select i1 %i.iu, float %i.it, float 0.000000e+00
  %i.iw = fmul float %.sroa.065.0.copyload, %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.he, i64 56 ; 3 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !341
  %i.iz = fneg float %i.iw
  %i.ja = call float @llvm.fmuladd.f32(float %i.ir, float %i.il, float %i.iz)
  %i.jb = call float @llvm.ceil.f32(float %i.ja)
end_hunk_2
