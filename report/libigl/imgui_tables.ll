Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_tables?download=true
inline.NumInlined: 561
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable:bb.a
bb.do:                                            ; preds = %bb.dn
  call void @_ZN5ImGui18TableUpdateBordersEP10ImGuiTable(ptr noundef nonnull %0)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float 0.000000e+00, ptr %i.vv, align 8, !tbaa !309
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 1, ptr %i.vw, align 1, !tbaa !161
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 509
  store i8 0, ptr %i.vx, align 1, !tbaa !310
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 510 ; 2 uses
  %i.vz = load i8, ptr %i.vy, align 2, !tbaa !311, !range !129, !noundef !130
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.wc = load i16, ptr %i.wb, align 8, !tbaa !144
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !211
  %i.wf = icmp eq i16 %i.wc, %i.we
  br i1 %i.wf, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.wg = load i32, ptr %0, align 8, !tbaa !157
  %i.wh = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef %i.wg)
  %i.wi = call noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef %i.wh, i32 noundef 321)
  br i1 %i.wi, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN5ImGui20TableDrawContextMenuEP10ImGuiTable(ptr noundef nonnull %0)
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  store i8 0, ptr %i.vy, align 2, !tbaa !311
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt, %bb.dq, %bb.dp
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.wk = load i8, ptr %i.wj, align 4, !tbaa !210, !range !129, !noundef !130
  %i.wl = trunc nuw i8 %i.wk to i1
  %.pre603 = load i32, ptr %i.b, align 4, !tbaa !145 ; 2 uses
  %i.wm = and i32 %.pre603, 8
  %.not468 = icmp ne i32 %i.wm, 0
  %or.cond632.not = select i1 %i.wl, i1 %.not468, i1 false
  br i1 %or.cond632.not, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  call void @_ZN5ImGui19TableSortSpecsBuildEP10ImGuiTable(ptr noundef nonnull %0)
  %.pre602 = load i32, ptr %i.b, align 4, !tbaa !145
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.wn = phi i32 [ %.pre602, %bb.dv ], [ %.pre603, %bb.du ]
  %i.wo = load ptr, ptr %i.vm, align 8, !tbaa !158 ; 4 uses
  %i.wp = and i32 %i.wn, 1048576
  %.not469 = icmp eq i32 %i.wp, 0
  br i1 %.not469, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !155
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 616
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !312
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.wr, ptr noundef %i.wt, i32 noundef 2)
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 616
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !312
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wo, i64 520
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.ww, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wo, i64 528
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.wx, align 8
  call void @_ZN10ImDrawList12PushClipRectE6ImVec2S0_b(ptr noundef nonnull align 8 dereferenceable(196) %i.wv, <2 x float> %.sroa.010.0.copyload, <2 x float> %.sroa.0.0.copyload, i1 noundef zeroext false)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL21TableSetupColumnFlagsP10ImGuiTableP16ImGuiTableColumni(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = and i32 %2, 24
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145  ; 2 uses
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !198
  %i.r = ptrtoint ptr %1 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 104
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i32 65536, i32 131072
  %i.y = or disjoint i32 %i.x, %.373
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.474 = phi i32 [ %i.y, %bb.e ], [ %.373, %._crit_edge ] ; 3 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !260
  %i.aa = and i32 %i.z, 251658240
  %i.ab = or i32 %i.aa, %.474
  store i32 %i.ab, ptr %1, align 4, !tbaa !260
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 102 ; 2 uses
  store i8 0, ptr %i.ac, align 2, !tbaa !313
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 101 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 3                         ; 3 uses
  store i8 %i.af, ptr %i.ad, align 1
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !145 ; 2 uses
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
  %3 = zext i1 %or.cond3 to i32
  %.469 = add nuw nsw i32 %.368, %3
  %i.ba = zext i1 %or.cond3 to i8
  %.4 = or i8 %.364, %i.ba                        ; 2 uses
  %i.bb = trunc nuw i32 %.3 to i8                 ; 2 uses
  store i8 %i.bb, ptr %i.ac, align 2, !tbaa !313
  %i.bc = shl nuw nsw i8 %.4, 4
  %i.bd = trunc nuw nsw i32 %.469 to i8
  %i.be = shl nuw nsw i8 %i.bd, 2
  %i.bf = and i8 %i.be, 12
  %i.bg = or disjoint i8 %i.bf, %i.bc             ; 2 uses
  %i.bh = or disjoint i8 %i.bg, %i.af
  store i8 %i.bh, ptr %i.ad, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 86
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !244
  %i.bk = icmp eq i8 %i.bj, -1
  br i1 %i.bk, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = zext nneg i8 %.4 to i32
  %i.bm = zext nneg i8 %i.af to i32
  %i.bn = shl nuw nsw i32 1, %i.bm
  %i.bo = and i32 %i.bn, %i.bl
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %bb.m, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.m:                                             ; preds = %bb.l
  %i.bp = and i8 %i.bb, 3
  %i.bq = or disjoint i8 %i.bg, %i.bp
  store i8 %i.bq, ptr %i.ad, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i8 1, ptr %i.br, align 4, !tbaa !210
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load float, ptr %i.a, align 4, !tbaa !273 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !274 ; 2 uses
  %i.e = fcmp oge float %i.b, %i.d
  %i.f = select i1 %i.e, float %i.b, float %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load float, ptr %i.g, align 4, !tbaa !275 ; 2 uses
  %i.i = fsub float %i.f, %i.h                    ; 3 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !260    ; 3 uses
  %i.k = and i32 %i.j, 8192
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.m = load float, ptr %i.l, align 4, !tbaa !276
  %i.n = fsub float %i.m, %i.h                    ; 2 uses
  %i.o = fcmp oge float %i.i, %i.n
  %i.p = select i1 %i.o, float %i.i, float %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.i, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = and i32 %i.j, 16
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.s = load float, ptr %i.r, align 4, !tbaa !269 ; 2 uses
  %i.t = fcmp ogt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !145
  %.not17 = trunc i32 %i.v to i1
  %i.w = and i32 %i.j, 32
  %.not18 = icmp eq i32 %i.w, 0
  %or.cond = and i1 %.not18, %.not17
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.1 = phi float [ %i.s, %bb.f ], [ %.0, %bb.e ], [ %.0, %bb.d ], [ %.0, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.y = load float, ptr %i.x, align 4, !tbaa !251 ; 2 uses
  %i.z = fcmp oge float %.1, %i.y
  %i.aa = select i1 %i.z, float %.1, float %i.y
  ret float %i.aa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZN5ImGui22TableGetMaxColumnWidthEPK10ImGuiTablei(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [104 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.f = load float, ptr %i.e, align 4, !tbaa !251
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.h = load float, ptr %i.g, align 4, !tbaa !175 ; 3 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float 2.000000e+00, float %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.k = load float, ptr %i.j, align 4, !tbaa !173
  %i.l = fadd float %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load float, ptr %i.m, align 8, !tbaa !174 ; 3 uses
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !145  ; 2 uses
  %i.r = and i32 %i.q, 16777216
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  %i.t = load i8, ptr %i.s, align 2, !tbaa !222   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 499
  %i.v = load i8, ptr %i.u, align 1, !tbaa !252   ; 2 uses
  %i.w = icmp slt i8 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = sext i8 %i.v to i32
  %i.y = sext i8 %i.t to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.aa = load float, ptr %i.z, align 4, !tbaa !253
  %i.ab = sub nsw i32 %i.x, %i.y
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fneg float %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.o, float %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !254
  %i.ah = fsub float %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !178
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fsub float %i.ak, %i.h
  %i.am = fsub float %i.al, %i.n
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.an = and i32 %i.q, 262144
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !255
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 481
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !256
  %i.at = sext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 83
  %i.av = load i8, ptr %i.au, align 1, !tbaa !257
  %i.aw = xor i8 %i.av, -1
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, %i.at
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fneg float %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.o, float %i.aq)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !254
  %i.be = fsub float %i.bb, %i.bd
  %i.bf = fsub float %i.be, %i.n
  %i.bg = fneg float %i.h
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.000000e+00, float %i.bf)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !178
  %i.bk = fsub float %i.bh, %i.bj
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0 = phi float [ %i.am, %bb.c ], [ f0x7F7FFFFF, %bb.b ], [ %i.bk, %bb.e ], [ f0x7F7FFFFF, %bb.d ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui22TableSetupDrawChannelsEP10ImGuiTable(ptr nofree noundef captures(none) initializes((502, 505)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 498 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !293
  %i.c = icmp sgt i8 %i.b, 0                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !145
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 481
  %i.h = load i8, ptr %i.g, align 1, !tbaa !256
  %i.i = sext i8 %i.h to i32                      ; 2 uses
  %. = select i1 %.not, i32 %i.i, i32 1           ; 3 uses
  %i.j = select i1 %i.c, i32 3, i32 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !160
  %i.m = icmp sgt i32 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
