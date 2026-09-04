Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable:bb.a
  %i.aee = load float, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !377 ; 2 uses
  %i.aef = fcmp olt float %i.aee, %i.ado
  %i.aeg = select i1 %i.aef, float %i.aee, float %i.ado
  store float %i.aeg, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !377
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !219
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aej, ptr noundef nonnull align 8 dereferenceable(16) %i.kg, i64 16, i1 false), !tbaa.struct !230
  %i.aek = load float, ptr %i.uj, align 8, !tbaa !387
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.aek, ptr %i.ael, align 4, !tbaa !388
  %i.aem = load float, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !377
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float %i.aem, ptr %i.aen, align 8, !tbaa !389
  %i.aeo = load i32, ptr %i.do, align 4, !tbaa !217 ; 2 uses
  %i.aep = and i32 %i.aeo, 131072
  %.not630 = icmp eq i32 %i.aep, 0
  br i1 %.not630, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aeq = load float, ptr %i.sx, align 4, !tbaa !364
  %.pre818 = load ptr, ptr %i.aeh, align 8, !tbaa !219
  br label %bb.fe

bb.fb:                                            ; preds = %bb.ez
  %i.aer = load ptr, ptr %i.aeh, align 8, !tbaa !219 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 644
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !390 ; 2 uses
  %i.aeu = and i32 %i.aeo, 33554432
  %.not631 = icmp eq i32 %i.aeu, 0
  br i1 %.not631, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aev = load float, ptr %i.sx, align 4, !tbaa !364
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fb, %bb.fc
  %i.aew = phi float [ %i.aev, %bb.fc ], [ 0.000000e+00, %bb.fb ] ; 2 uses
  %i.aex = fcmp oge float %i.aet, %i.aew
  %i.aey = select i1 %i.aex, float %i.aet, float %i.aew
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fa
  %i.aez = phi ptr [ %.pre818, %bb.fa ], [ %i.aer, %bb.fd ] ; 2 uses
  %.0 = phi float [ %i.aeq, %bb.fa ], [ %i.aey, %bb.fd ]
  %i.afa = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %i.afb = load float, ptr %i.afa, align 8, !tbaa !391
  %i.afc = fsub float %.0, %i.afb                 ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aez, i64 588
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !392 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aez, i64 596 ; 2 uses
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !251 ; 2 uses
  %i.afh = fcmp olt float %i.afc, %i.afe
  %i.afi = fcmp ogt float %i.afc, %i.afg
  %i.afj = select i1 %i.afi, float %i.afg, float %i.afc
  %i.afk = select i1 %i.afh, float %i.afe, float %i.afj
  store float %i.afk, ptr %i.aff, align 4, !tbaa !251
  call void @_ZN5ImGui22TableSetupDrawChannelsEP10ImGuiTable(ptr noundef nonnull %0)
  %i.afl = load i32, ptr %i.do, align 4, !tbaa !217
  %i.afm = and i32 %i.afl, 1
  %.not632 = icmp eq i32 %i.afm, 0
  br i1 %.not632, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN5ImGui18TableUpdateBordersEP10ImGuiTable(ptr noundef nonnull %0)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.afn = getelementptr inbounds nuw i8, ptr %.0.i678, i64 8
  store float 0.000000e+00, ptr %i.afn, align 4, !tbaa !393
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 569
  store i8 1, ptr %i.afo, align 1, !tbaa !222
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 574
  store i8 0, ptr %i.afp, align 2, !tbaa !394
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 526 ; 3 uses
  store i16 -1, ptr %i.afq, align 2, !tbaa !395
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 575 ; 2 uses
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !396, !range !175, !noundef !176
  %i.aft = trunc nuw i8 %i.afs to i1              ; 2 uses
  br i1 %i.aft, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 550
  %i.afv = load i16, ptr %i.afu, align 2, !tbaa !291 ; 2 uses
  %.not633 = icmp eq i16 %i.afv, -1
  br i1 %.not633, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.afx = load i16, ptr %i.afw, align 2, !tbaa !290
  %i.afy = load i16, ptr %i.sf, align 8, !tbaa !216
  %i.afz = icmp eq i16 %i.afx, %i.afy
  br i1 %i.afz, label %.thread720, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %bb.fg
  %i.aga = load i32, ptr %i.do, align 4, !tbaa !217
  %i.agb = and i32 %i.aga, 268435456
  %.not634 = icmp eq i32 %i.agb, 0
  br i1 %.not634, label %bb.fq, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.agc = load i16, ptr %i.ss, align 2, !tbaa !298 ; 3 uses
  %.not635 = icmp eq i16 %i.agc, -1
  %i.agd = sext i16 %i.agc to i32
  %.not636 = icmp eq i32 %i.e, %i.agd
  %or.cond675 = select i1 %.not635, i1 true, i1 %.not636
  br i1 %or.cond675, label %bb.fq, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.age = load i16, ptr %i.sr, align 4, !tbaa !297
  %i.agf = icmp eq i16 %i.age, -1
  br i1 %i.agf, label %bb.fm, label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  %i.agg = load i32, ptr %i.ti, align 4, !tbaa !326
  %i.agh = icmp eq i32 %i.agg, 0
  br i1 %i.agh, label %bb.fp, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 587
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !258, !range !175, !noundef !176
  %i.agk = trunc nuw i8 %i.agj to i1
  br i1 %i.agk, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.agl = getelementptr inbounds nuw i8, ptr %i.a, i64 8776
  %i.agm = load i8, ptr %i.agl, align 8, !tbaa !397, !range !175, !noundef !176
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm
  store i16 %i.agc, ptr %i.afq, align 2, !tbaa !395
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fj, %bb.fk, %bb.fl, %bb.fp, %bb.fo
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.agp = load i8, ptr %i.ago, align 8, !tbaa !552, !range !175, !noundef !176
  %i.agq = icmp eq i8 %i.agp, 0
  %brmerge.not = and i1 %i.agq, %i.aft
  br i1 %brmerge.not, label %.thread721, label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

.thread720:                                       ; preds = %bb.fi
  store i16 %i.afv, ptr %i.afq, align 2, !tbaa !395
  %i.agr = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ags = load i8, ptr %i.agr, align 8, !tbaa !552, !range !175, !noundef !176
  %i.agt = icmp eq i8 %i.ags, 0
  br i1 %i.agt, label %.thread721.thread, label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

.thread721:                                       ; preds = %bb.fq
  %.pre819 = load i16, ptr %i.sf, align 8, !tbaa !216
  %.phi.trans.insert820 = getelementptr inbounds nuw i8, ptr %0, i64 122
  %.pre821 = load i16, ptr %.phi.trans.insert820, align 2, !tbaa !290
  %i.agu = icmp eq i16 %.pre819, %.pre821
  br i1 %i.agu, label %.thread721.thread, label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

.thread721.thread:                                ; preds = %.thread720, %.thread721
  %i.agv = load i32, ptr %0, align 8, !tbaa !218
  %i.agw = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.17, i64 noundef 0, i32 noundef %i.agv)
  %i.agx = call noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef %i.agw, i32 noundef 321)
  br i1 %i.agx, label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit, label %bb.fr

bb.fr:                                            ; preds = %.thread721.thread
  store i8 0, ptr %i.afr, align 1, !tbaa !396
  br label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit: ; preds = %.thread721.thread
  %i.agy = load i32, ptr %i.do, align 4, !tbaa !217
  call void @_ZN5ImGui27TableDrawDefaultContextMenuEP10ImGuiTablei(ptr noundef nonnull %0, i32 noundef %i.agy)
  call void @_ZN5ImGui8EndPopupEv()
  br label %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread

_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread: ; preds = %bb.fq, %bb.fr, %.thread721, %.thread720, %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !288, !range !175, !noundef !176
  %i.ahb = trunc nuw i8 %i.aha to i1
  br i1 %i.ahb, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread
  %i.ahc = load i32, ptr %i.do, align 4, !tbaa !217
  %i.ahd = and i32 %i.ahc, 8
  %.not637 = icmp eq i32 %i.ahd, 0
  br i1 %.not637, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @_ZN5ImGui19TableSortSpecsBuildEP10ImGuiTable(ptr noundef nonnull %0)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs, %_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable.exit.thread
  %i.ahe = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.ahf = load i16, ptr %i.ahe, align 4, !tbaa !337 ; 2 uses
  %i.ahg = icmp sgt i16 %i.ahf, 0
  %.pre822.pre = load ptr, ptr %i.aeh, align 8, !tbaa !219 ; 7 uses
  br i1 %i.ahg, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.ahh = zext nneg i16 %i.ahf to i64
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = add nuw nsw i64 %i.ahh, 4294967295
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !275
  %3 = and i64 %2, 4294967295
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.ahj, i64 %3
  %i.ahk = load i16, ptr %4, align 2, !tbaa !300
  %i.ahl = load ptr, ptr %i.adh, align 8, !tbaa !271
  %i.ahm = sext i16 %i.ahk to i64
  %i.ahn = getelementptr inbounds [120 x i8], ptr %i.ahl, i64 %i.ahm
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 12
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !374
  %i.ahq = load float, ptr %i.st, align 8, !tbaa !373
  %i.ahr = fsub float %i.ahp, %i.ahq
  %i.ahs = getelementptr inbounds nuw i8, ptr %.pre822.pre, i64 128
  store float %i.ahr, ptr %i.ahs, align 8, !tbaa !553
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.aht = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ahu = load i16, ptr %i.aht, align 8, !tbaa !398
  %i.ahv = icmp sgt i16 %i.ahu, 0
  br i1 %i.ahv, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0.i678, i64 12
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !399
  %i.ahy = getelementptr inbounds nuw i8, ptr %.pre822.pre, i64 132
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !554
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0.i678, i64 12
  store float 0.000000e+00, ptr %i.ahz, align 4, !tbaa !399
  %i.aia = getelementptr inbounds nuw i8, ptr %i.a, i64 9208
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !555
  %i.aic = icmp eq ptr %i.aib, %.pre822.pre
  br i1 %i.aic, label %bb.fz, label %_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit

bb.fz:                                            ; preds = %bb.fy
  %i.aid = getelementptr inbounds nuw i8, ptr %i.a, i64 9216
  %i.aie = load i8, ptr %i.aid, align 8, !tbaa !556, !range !175, !noundef !176
  %i.aif = trunc nuw i8 %i.aie to i1
  br i1 %i.aif, label %bb.ga, label %_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit

bb.ga:                                            ; preds = %bb.fz
  %i.aig = getelementptr inbounds nuw i8, ptr %i.a, i64 9220
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !359 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.a, i64 9228
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !358 ; 2 uses
  %i.aik = fcmp ogt float %i.aih, %i.aij
  %i.ail = getelementptr inbounds nuw i8, ptr %i.a, i64 9224
  %i.aim = load float, ptr %i.ail, align 8
  %.fr14.i = freeze float %i.aim                  ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.a, i64 9232
  %i.aio = load float, ptr %i.ain, align 8        ; 2 uses
  %i.aip = fcmp ogt float %.fr14.i, %i.aio
  %i.aiq = select i1 %i.aik, i1 true, i1 %i.aip
  br i1 %i.aiq, label %_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ga
  %i.air = load i32, ptr %i.d, align 4, !tbaa !221 ; 2 uses
  %i.ais = icmp sgt i32 %i.air, 0
  br i1 %i.ais, label %.lr.ph.i, label %_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ait = load ptr, ptr %i.adh, align 8, !tbaa !271
  %i.aiu = fcmp olt float %.fr14.i, f0x7F7FFFFF
  br i1 %i.aiu, label %.lr.ph.split.preheader.i, label %_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.air to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread.i, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %_ZNK6ImRect8OverlapsERKS_.exit.thread.i ] ; 2 uses
  %i.aiv = getelementptr inbounds nuw [120 x i8], ptr %i.ait, i64 %indvars.iv.i ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 111 ; 2 uses
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !357, !range !175, !noundef !176
  %i.aiy = trunc nuw i8 %i.aix to i1
  br i1 %i.aiy, label %_ZNK6ImRect8OverlapsERKS_.exit.thread.i, label %bb.gb

bb.gb:                                            ; preds = %.lr.ph.split.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !375
  %i.ajb = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !400
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiv, i64 12
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !374
  %i.aje = fcmp olt float %i.ajb, %i.aio
  %i.ajf = fcmp olt float %i.aja, %i.aij
  %or.cond11.i = select i1 %i.aje, i1 %i.ajf, i1 false
  %i.ajg = fcmp ogt float %i.ajd, %i.aih
  %or.cond12.i = select i1 %or.cond11.i, i1 %i.ajg, i1 false
  br i1 %or.cond12.i, label %bb.gc, label %_ZNK6ImRect8OverlapsERKS_.exit.thread.i

bb.gc:                                            ; preds = %bb.gb
  store i8 1, ptr %i.aiw, align 1, !tbaa !357
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread.i

_ZNK6ImRect8OverlapsERKS_.exit.thread.i:          ; preds = %bb.gc, %bb.gb, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit, label %.lr.ph.split.i, !llvm.loop !5

_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit: ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread.i, %.lr.ph.i, %.preheader.i, %bb.ga, %bb.fz, %bb.fy
  %i.ajh = load i32, ptr %i.do, align 4, !tbaa !217
  %i.aji = and i32 %i.ajh, 1048576
  %.not638 = icmp eq i32 %i.aji, 0
  br i1 %.not638, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !211
  %i.ajl = getelementptr inbounds nuw i8, ptr %.pre822.pre, i64 712
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !401
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ajk, ptr noundef %i.ajm, i32 noundef 2)
  br label %bb.gf

bb.ge:                                            ; preds = %_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect.exit
  %i.ajn = getelementptr inbounds nuw i8, ptr %.pre822.pre, i64 712
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !401
  %i.ajp = getelementptr inbounds nuw i8, ptr %.pre822.pre, i64 568
  %i.ajq = getelementptr inbounds nuw i8, ptr %.pre822.pre, i64 576
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.ajo, ptr noundef nonnull align 4 dereferenceable(8) %i.ajp, ptr noundef nonnull align 4 dereferenceable(8) %i.ajq, i1 noundef zeroext false)
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui21TableReconcileColumnsEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10404 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !272
  %i.f = and i32 %i.e, 4096
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !218
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.g)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !271
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270
  %i.n = icmp eq ptr %i.k, %i.m
  %spec.select = select i1 %i.n, ptr %i.i, ptr %i.j ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !192  ; 2 uses
  %i.r = load i32, ptr %i.o, align 8, !tbaa !210  ; 2 uses
  %i.s = sext i32 %i.r to i64
  %.idx = mul nsw i64 %i.s, 144
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %.idx
  %.not100125 = icmp eq i32 %i.r, 0
  br i1 %.not100125, label %._crit_edge145, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit120
  %.pre149 = load i32, ptr %i.o, align 8, !tbaa !210 ; 3 uses
  %i.v = icmp eq i32 %.4, %.pre149
  br i1 %i.v, label %.loopexit, label %bb.i

bb.d:                                             ; preds = %.lr.ph128, %.loopexit120
  %.096127 = phi ptr [ %i.q, %.lr.ph128 ], [ %i.ba, %.loopexit120 ] ; 5 uses
  %.097126 = phi i32 [ 0, %.lr.ph128 ], [ %.4, %.loopexit120 ] ; 4 uses
  %i.w = load i32, ptr %.096127, align 4, !tbaa !403 ; 2 uses
  %.not107 = icmp eq i32 %i.w, 0
  br i1 %.not107, label %.loopexit120, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %spec.select, align 8, !tbaa !271 ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !270  ; 2 uses
  %.not108123 = icmp eq ptr %i.x, %i.y
  br i1 %.not108123, label %.loopexit120, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.093124 = phi ptr [ %i.az, %bb.h ], [ %i.x, %bb.e ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.093124, i64 52
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !347
  %i.ab = icmp eq i32 %i.aa, %i.w
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.093124, i64 113
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i8 %i.ad, 8
  %.not109 = icmp eq i8 %i.ae, 0
  br i1 %.not109, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.093124, i64 113 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.096127, i64 20
end_hunk_0
begin_hunk_1_@_ZN5ImGui20TableFixDisplayOrderEP10ImGuiTable:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 90
  store i16 %i.ao, ptr %i.at, align 2, !tbaa !305
  %indvars.iv.next40.epil = add nuw nsw i64 %indvars.iv39.epil, 1
  %epil.iter57.next = add i64 %epil.iter57, 1     ; 2 uses
  %epil.iter57.cmp.not = icmp eq i64 %epil.iter57.next, %xtraiter56
  br i1 %epil.iter57.cmp.not, label %.lr.ph36, label %bb.f, !llvm.loop !566

.lr.ph36:                                         ; preds = %bb.f, %.lr.ph36.unr-lcssa
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !271 ; 5 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !275 ; 5 uses
  %xtraiter63 = and i64 %wide.trip.count42, 3     ; 3 uses
  %i.ay = icmp ult i32 %i.x, 4
  br i1 %i.ay, label %.epil.preheader62, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.lr.ph36
  %unroll_iter67 = and i64 %wide.trip.count42, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph33.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph33.new ], [ %indvars.iv.next40.3, %bb.g ] ; 6 uses
  %niter61 = phi i64 [ 0, %.lr.ph33.new ], [ %niter61.next.3, %bb.g ]
  %i.az = trunc i64 %indvars.iv39 to i16
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv39
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !416
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 90
  store i16 %i.az, ptr %i.be, align 2, !tbaa !305
  %indvars.iv.next40 = or disjoint i64 %indvars.iv39, 1 ; 2 uses
  %i.bf = trunc i64 %indvars.iv.next40 to i16
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next40
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !416
  %i.bi = sext i16 %i.bh to i64
  %i.bj = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 90
  store i16 %i.bf, ptr %i.bk, align 2, !tbaa !305
  %indvars.iv.next40.1 = or disjoint i64 %indvars.iv39, 2 ; 2 uses
  %i.bl = trunc i64 %indvars.iv.next40.1 to i16
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next40.1
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !416
  %i.bo = sext i16 %i.bn to i64
  %i.bp = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 90
  store i16 %i.bl, ptr %i.bq, align 2, !tbaa !305
  %indvars.iv.next40.2 = or disjoint i64 %indvars.iv39, 3 ; 2 uses
  %i.br = trunc i64 %indvars.iv.next40.2 to i16
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next40.2
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !416
  %i.bu = sext i16 %i.bt to i64
  %i.bv = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 90
  store i16 %i.br, ptr %i.bw, align 2, !tbaa !305
  %indvars.iv.next40.3 = add nuw nsw i64 %indvars.iv39, 4 ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %.lr.ph36.unr-lcssa, label %bb.g, !llvm.loop !567

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod65.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod65.not, label %._crit_edge37, label %.epil.preheader62

.epil.preheader62:                                ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36
  %indvars.iv44.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next45.3, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter63, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader62
  %indvars.iv44.epil = phi i64 [ %indvars.iv44.epil.init, %.epil.preheader62 ], [ %indvars.iv.next45.epil, %bb.h ] ; 3 uses
  %epil.iter64 = phi i64 [ 0, %.epil.preheader62 ], [ %epil.iter64.next, %bb.h ]
  %i.bx = trunc i64 %indvars.iv44.epil to i16
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv44.epil
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 90
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !305
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.cb
  store i16 %i.bx, ptr %i.cc, align 2, !tbaa !300
  %indvars.iv.next45.epil = add nuw nsw i64 %indvars.iv44.epil, 1
  %epil.iter64.next = add i64 %epil.iter64, 1     ; 2 uses
  %epil.iter64.cmp.not = icmp eq i64 %epil.iter64.next, %xtraiter63
  br i1 %epil.iter64.cmp.not, label %._crit_edge37, label %bb.h, !llvm.loop !568

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit.unr-lcssa, %bb.h, %_Z7ImQsortPvmmPFiPKvS1_E.exit
  ret void

bb.i:                                             ; preds = %bb.i, %.lr.ph36.new
  %indvars.iv44 = phi i64 [ 0, %.lr.ph36.new ], [ %indvars.iv.next45.3, %bb.i ] ; 6 uses
  %niter68 = phi i64 [ 0, %.lr.ph36.new ], [ %niter68.next.3, %bb.i ]
  %i.cd = trunc i64 %indvars.iv44 to i16
  %i.ce = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 90
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !305
  %i.ch = sext i16 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ch
  store i16 %i.cd, ptr %i.ci, align 2, !tbaa !300
  %indvars.iv.next45 = or disjoint i64 %indvars.iv44, 1 ; 2 uses
  %i.cj = trunc i64 %indvars.iv.next45 to i16
  %i.ck = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv.next45
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 90
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !305
  %i.cn = sext i16 %i.cm to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.cn
  store i16 %i.cj, ptr %i.co, align 2, !tbaa !300
  %indvars.iv.next45.1 = or disjoint i64 %indvars.iv44, 2 ; 2 uses
  %i.cp = trunc i64 %indvars.iv.next45.1 to i16
  %i.cq = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv.next45.1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 90
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !305
  %i.ct = sext i16 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ct
  store i16 %i.cp, ptr %i.cu, align 2, !tbaa !300
  %indvars.iv.next45.2 = or disjoint i64 %indvars.iv44, 3 ; 2 uses
  %i.cv = trunc i64 %indvars.iv.next45.2 to i16
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv.next45.2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 90
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !305
  %i.cz = sext i16 %i.cy to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.cz
  store i16 %i.cv, ptr %i.da, align 2, !tbaa !300
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %niter68.next.3 = add i64 %niter68, 4           ; 2 uses
  %niter68.ncmp.3 = icmp eq i64 %niter68.next.3, %unroll_iter67
  br i1 %niter68.ncmp.3, label %._crit_edge37.loopexit.unr-lcssa, label %bb.i, !llvm.loop !569
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL21TableSetupColumnFlagsP10ImGuiTableP16ImGuiTableColumni(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = and i32 %2, 24
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !217  ; 2 uses
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271
  %i.r = ptrtoint ptr %1 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 120
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i32 65536, i32 131072
  %i.y = or disjoint i32 %i.x, %.373
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.474 = phi i32 [ %i.y, %bb.e ], [ %.373, %._crit_edge ] ; 3 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !328
  %i.aa = and i32 %i.z, 251658240
  %i.ab = or i32 %i.aa, %.474
  store i32 %i.ab, ptr %1, align 4, !tbaa !328
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 117 ; 2 uses
  store i8 0, ptr %i.ac, align 1, !tbaa !418
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 115 ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 1            ; 2 uses
  %i.af = and i16 %i.ae, 1023                     ; 2 uses
  store i16 %i.af, ptr %i.ad, align 1
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !217 ; 2 uses
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
  %3 = or disjoint i8 %.061, 4
  %i.ak = select i1 %or.cond80, i32 9, i32 2
  %i.al = select i1 %or.cond80, i32 2, i32 1
  %.166 = select i1 %or.cond82, i32 %i.al, i32 %.0 ; 3 uses
  %.162 = select i1 %or.cond82, i8 %3, i8 %.061   ; 2 uses
  %.1 = select i1 %or.cond82, i32 %i.ak, i32 %.0  ; 2 uses
  %or.cond84 = icmp eq i32 %i.ai, 0
  br i1 %or.cond84, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %4 = or i8 %.162, 2
  %i.am = shl nuw nsw i32 %.166, 1
  %i.an = shl nuw nsw i32 1, %i.am
  %i.ao = or i32 %i.an, %.1
  %i.ap = add nuw nsw i32 %.166, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.267 = phi i32 [ %i.ap, %bb.h ], [ %.166, %bb.g ] ; 3 uses
  %.263 = phi i8 [ %4, %bb.h ], [ %.162, %bb.g ]  ; 2 uses
  %.2 = phi i32 [ %i.ao, %bb.h ], [ %.1, %bb.g ]  ; 2 uses
  %or.cond86 = icmp eq i32 %i.aj, 0
  br i1 %or.cond86, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %5 = or i8 %.263, 4
  %i.aq = shl nuw nsw i32 %.267, 1
  %i.ar = shl nuw nsw i32 2, %i.aq
  %i.as = or i32 %.2, %i.ar
  %i.at = add nuw nsw i32 %.267, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.368 = phi i32 [ %i.at, %bb.j ], [ %.267, %bb.i ] ; 2 uses
  %.364 = phi i8 [ %5, %bb.j ], [ %.263, %bb.i ]
  %.3 = phi i32 [ %i.as, %bb.j ], [ %.2, %bb.i ]
  %i.au = and i32 %i.ag, 134217728
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = icmp eq i32 %.368, 0
  %or.cond3 = select i1 %i.av, i1 true, i1 %i.aw  ; 2 uses
  %i.ax = zext i1 %or.cond3 to i32
  %.469 = add nuw nsw i32 %.368, %i.ax
  %6 = zext i1 %or.cond3 to i8
  %.4 = or i8 %.364, %6                           ; 2 uses
  %i.ay = trunc nuw i32 %.3 to i8                 ; 2 uses
  store i8 %i.ay, ptr %i.ac, align 1, !tbaa !418
  %7 = zext nneg i8 %.4 to i16
  %i.az = shl nuw nsw i16 %7, 12
  %i.ba = trunc nuw nsw i32 %.469 to i16
  %i.bb = shl nuw nsw i16 %i.ba, 10
  %i.bc = and i16 %i.bb, 3072
  %i.bd = or disjoint i16 %i.bc, %i.az
  %i.be = or disjoint i16 %i.bd, %i.af            ; 2 uses
  store i16 %i.be, ptr %i.ad, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !339
  %i.bh = icmp eq i16 %i.bg, -1
  br i1 %i.bh, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = zext nneg i8 %.4 to i32
  %i.bj = lshr i16 %i.ae, 8
  %i.bk = and i16 %i.bj, 3
  %i.bl = zext nneg i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %i.bi
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %bb.m, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = and i8 %i.ay, 3
  %i.bp = zext nneg i8 %i.bo to i16
  %i.bq = shl nuw nsw i16 %i.bp, 8
  %i.br = and i16 %i.be, 31999
  %i.bs = or disjoint i16 %i.br, %i.bq
  store i16 %i.bs, ptr %i.ad, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.bt, align 1, !tbaa !288
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load float, ptr %i.a, align 4, !tbaa !349 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.d = load float, ptr %i.c, align 4, !tbaa !350 ; 2 uses
  %i.e = fcmp oge float %i.b, %i.d
  %i.f = select i1 %i.e, float %i.b, float %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !351 ; 2 uses
  %i.i = fsub float %i.f, %i.h                    ; 3 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !328    ; 3 uses
  %i.k = and i32 %i.j, 8192
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.m = load float, ptr %i.l, align 4, !tbaa !352
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
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load float, ptr %i.r, align 4, !tbaa !338 ; 2 uses
  %i.t = fcmp ogt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !217
  %.not17 = trunc i32 %i.v to i1
  %i.w = and i32 %i.j, 32
  %.not18 = icmp eq i32 %i.w, 0
  %or.cond = and i1 %.not18, %.not17
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.1 = phi float [ %i.s, %bb.f ], [ %.0, %bb.e ], [ %.0, %bb.d ], [ %.0, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load float, ptr %i.x, align 8, !tbaa !329 ; 2 uses
  %i.z = fcmp oge float %.1, %i.y
  %i.aa = select i1 %i.z, float %.1, float %i.y
  ret float %i.aa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

declare noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load float, ptr %i.e, align 8, !tbaa !329
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load float, ptr %i.g, align 8, !tbaa !246 ; 3 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float 2.000000e+00, float %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.k = load float, ptr %i.j, align 4, !tbaa !244
  %i.l = fadd float %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load float, ptr %i.m, align 8, !tbaa !245 ; 3 uses
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !217  ; 2 uses
  %i.r = and i32 %i.q, 16777216
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 90
  %i.t = load i16, ptr %i.s, align 2, !tbaa !305  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.v = load i16, ptr %i.u, align 4, !tbaa !337  ; 2 uses
  %i.w = icmp slt i16 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = sext i16 %i.v to i32
  %i.y = sext i16 %i.t to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = load float, ptr %i.z, align 8, !tbaa !377
  %i.ab = sub nsw i32 %i.x, %i.y
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fneg float %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.o, float %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !375
  %i.ah = fsub float %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !247
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fsub float %i.ak, %i.h
  %i.am = fsub float %i.al, %i.n
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.an = and i32 %i.q, 262144
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !378
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 514
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !343
  %i.at = sext i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.av = load i16, ptr %i.au, align 4, !tbaa !348
  %i.aw = xor i16 %i.av, -1
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, %i.at
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fneg float %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.o, float %i.aq)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !375
  %i.be = fsub float %i.bb, %i.bd
  %i.bf = fsub float %i.be, %i.n
  %i.bg = fneg float %i.h
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.000000e+00, float %i.bf)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !247
  %i.bk = fsub float %i.bh, %i.bj
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0 = phi float [ %i.am, %bb.c ], [ f0x7F7FFFFF, %bb.b ], [ %i.bk, %bb.e ], [ f0x7F7FFFFF, %bb.d ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22TableSetupDrawChannelsEP10ImGuiTable(ptr nofree noundef captures(none) initializes((562, 568)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 554 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !371
  %i.c = icmp sgt i16 %i.b, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 514
  %i.h = load i16, ptr %i.g, align 2, !tbaa !343
  %i.i = sext i16 %i.h to i32                     ; 2 uses
  %. = select i1 %.not, i32 %i.i, i32 1           ; 3 uses
  %i.j = select i1 %i.c, i32 3, i32 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !221  ; 2 uses
  %i.m = icmp sgt i32 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !281
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !280
  %i.r = add nsw i32 %i.l, 31
  %i.s = ashr i32 %i.r, 5
  %i.t = sext i32 %i.s to i64
end_hunk_1
begin_hunk_2_@_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.lr.ph.i
  %i.r = phi i32 [ %i.k, %.lr.ph.i ], [ %i.as, %bb.k ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 5 uses
  %.01315.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 4 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.u = lshr i64 %indvars.iv.i, 5
  %i.v = and i64 %i.u, 134217727
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !299
  %i.y = and i32 %i.t, 31
  %i.z = shl nuw i32 1, %i.y
  %i.aa = and i32 %i.x, %i.z
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !271
  %i.ac = getelementptr inbounds nuw [120 x i8], ptr %i.ab, i64 %indvars.iv.i ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !328
  %i.ae = and i32 %i.ad, 262144
  %.not14.i = icmp eq i32 %i.ae, 0
  br i1 %.not14.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.o, align 1, !tbaa !222, !range !175, !noundef !176
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i16, ptr %i.p, align 2, !tbaa !257
  %i.ai = sext i16 %i.ah to i64
  %.not.i.i = icmp slt i64 %indvars.iv.i, %i.ai
  br i1 %.not.i.i, label %bb.i, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !345 ; 2 uses
  %i.al = icmp eq i16 %i.ak, -1
  br i1 %i.al, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.an = sext i16 %i.ak to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %.1.i.i = phi ptr [ @.str.11, %bb.h ], [ %i.ao, %bb.j ], [ @.str.11, %bb.i ]
  %i.ap = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i.i, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00)
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.aq = fcmp oge float %.01315.i, %.sroa.0.0.vec.extract.i
  %i.ar = select i1 %i.aq, float %.01315.i, float %.sroa.0.0.vec.extract.i
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !221
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i, %bb.f, %bb.e
  %i.as = phi i32 [ %.pre.i, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i ], [ %i.r, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.1.i = phi float [ %i.ar, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i ], [ %.01315.i, %bb.f ], [ %.01315.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next.i, %i.at
  br i1 %i.au, label %bb.e, label %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit, !llvm.loop !8

_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit: ; preds = %bb.k, %bb.d
  %.013.lcssa.i = phi float [ 0.000000e+00, %bb.d ], [ %.1.i, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %i.aw = load float, ptr %i.av, align 8, !tbaa !391
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float 2.000000e+00, float %.013.lcssa.i)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit, %bb.c
  %.0169 = phi float [ %i.ax, %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit ], [ %2, %bb.c ] ; 2 uses
  %i.ay = fcmp olt float %1, 0.000000e+00         ; 7 uses
  %i.az = fadd float %1, f0xBFC90FDB              ; 3 uses
  %i.ba = tail call float @cosf(float noundef %i.az) #4 ; 7 uses
  %i.bb = tail call float @sinf(float noundef %i.az) #4 ; 8 uses
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = fadd float %i.az, f0x40490FDB           ; 2 uses
  %i.bd = tail call float @cosf(float noundef %i.bc) #4
  %i.be = tail call float @sinf(float noundef %i.bc) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bf = phi float [ %i.bd, %bb.m ], [ %i.ba, %bb.l ]
  %i.bg = phi float [ %i.be, %bb.m ], [ %i.bb, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4568 ; 3 uses
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !340
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 3316 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !243
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float 2.000000e+00, float %i.bi) ; 2 uses
  %i.bm = fneg float %i.bl
  %i.bn = select i1 %i.ay, float %i.bl, float %i.bm
  %i.bo = fneg float %i.bb                        ; 3 uses
  %i.bp = fmul float %i.ba, %i.bn
  %i.bq = tail call float @llvm.fmuladd.f32(float %.0169, float %i.bb, float %i.bp)
  %i.br = tail call float @llvm.fabs.f32(float %i.bq)
  %i.bs = fptosi float %i.br to i32
  %i.bt = sitofp i32 %i.bs to float               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store float %i.bt, ptr %i.bu, align 8, !tbaa !259
  %i.bv = fcmp une float %i.bb, 0.000000e+00
  %i.bw = fdiv float %i.ba, %i.bb
  %i.bx = select i1 %i.bv, float %i.bw, float 0.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store float %i.bx, ptr %i.by, align 4, !tbaa !369
  %i.bz = fdiv float %i.bt, %i.bo
  %i.ca = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bb, i64 1
  %i.cc = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.cb, %i.cd           ; 2 uses
  %i.cf = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8984
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !263 ; 11 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 569
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !222, !range !175, !noundef !176
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.ch)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 570
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !434, !range !175, !noundef !176
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.q, label %_ZN5ImGui12TableNextRowEif.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.ch)
  br label %_ZN5ImGui12TableNextRowEif.exit

_ZN5ImGui12TableNextRowEif.exit:                  ; preds = %bb.p, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 148 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = shl i32 %i.cp, 16
  %i.cr = or disjoint i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 3320
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !391
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 136 ; 2 uses
  store float %i.ct, ptr %i.cu, align 8, !tbaa !444
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 132
  store float %i.bt, ptr %i.cv, align 4, !tbaa !465
  tail call void @_ZN5ImGui13TableBeginRowEP10ImGuiTable(ptr noundef nonnull %i.ch)
  %i.cw = load float, ptr %i.cu, align 8, !tbaa !444
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 128 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !253
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cw, float 2.000000e+00, float %i.cy) ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 124
  %i.db = load float, ptr %i.da, align 4, !tbaa !254
  %i.dc = fadd float %i.db, %i.bt                 ; 2 uses
  %i.dd = fcmp oge float %i.cz, %i.dc
  %i.de = select i1 %i.dd, float %i.cz, float %i.dc
  store float %i.de, ptr %i.cx, align 8, !tbaa !253
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 392
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !219
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 209
  store i8 1, ptr %i.dh, align 1, !tbaa !174
  %i.di = tail call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !383
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 308 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !454 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.dp = load float, ptr %i.do, align 8, !tbaa !378
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !253 ; 2 uses
  store float %i.dk, ptr %5, align 4, !tbaa !228
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.dn, ptr %i.ds, align 4, !tbaa !229
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.dp, ptr %i.dt, align 4, !tbaa !228
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store float %i.dr, ptr %i.du, align 4, !tbaa !229
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !211
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef %i.g, i32 noundef 0)
  %i.dx = load float, ptr %i.dl, align 8, !tbaa !671 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 558 ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !370 ; 2 uses
  %i.ea = icmp sgt i16 %i.dz, 0
  br i1 %i.ea, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui12TableNextRowEif.exit
  %i.eb = zext nneg i16 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %16 = add nuw nsw i64 %i.eb, 4294967295
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !275
  %17 = and i64 %16, 4294967295
  %18 = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %17
  %i.ef = load i16, ptr %18, align 2, !tbaa !300
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !271
  %i.eh = sext i16 %i.ef to i64
  %i.ei = getelementptr inbounds [120 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !374 ; 2 uses
  %i.el = fcmp oge float %i.dx, %i.ek
  %i.em = select i1 %i.el, float %i.dx, float %i.ek
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui12TableNextRowEif.exit
  %.0173 = phi float [ %i.em, %bb.r ], [ %i.dx, %_ZN5ImGui12TableNextRowEif.exit ]
  %i.en = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8984
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !263 ; 4 uses
  %.not.i182 = icmp eq ptr %i.ep, null
  br i1 %.not.i182, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eq = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.6) ; 0 uses
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

bb.u:                                             ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 124
  %i.es = load float, ptr %i.er, align 4, !tbaa !254
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 300
  %i.eu = load float, ptr %i.et, align 4, !tbaa !252
  %i.ev = fcmp ogt float %i.es, %i.eu
  br i1 %i.ev, label %_ZN5ImGui15TableSetBgColorEiji.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 156
  store i32 0, ptr %i.ew, align 4, !tbaa !299
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

_ZN5ImGui15TableSetBgColorEiji.exit:              ; preds = %bb.t, %bb.u, %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 3 uses
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.dl, ptr noundef nonnull align 4 dereferenceable(8) %i.ex, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.ey = load float, ptr %i.dl, align 8, !tbaa !671
  store float %i.ey, ptr %6, align 4, !tbaa !228
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.dn, ptr %i.ez, align 4, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.fa = load float, ptr %i.ex, align 8, !tbaa !672
  store float %i.fa, ptr %7, align 4, !tbaa !228
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.dr, ptr %i.fb, align 4, !tbaa !229
  %i.fc = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 46, float noundef 2.500000e-01)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.fc, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.fd = load float, ptr %i.dm, align 4, !tbaa !454
  store float %.0173, ptr %8, align 4, !tbaa !228
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.fd, ptr %i.fe, align 4, !tbaa !229
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.ex, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  %i.ff = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %0)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 4560
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !673
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 68
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !674
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 4576
  %i.fl = load float, ptr %i.fk, align 8, !tbaa !675
  %i.fm = fmul float %i.fj, %i.fl
  %i.fn = load float, ptr %i.bh, align 8, !tbaa !340
  %i.fo = fsub float %i.fn, %i.fm
  %i.fp = fmul float %i.fo, 5.000000e-01          ; 2 uses
  %i.fq = fcmp oge float %i.fp, 0.000000e+00
  %i.fr = select i1 %i.fq, float %i.fp, float 0.000000e+00
  %i.fs = fdiv float %i.fr, %i.bo
  %i.ft = select i1 %i.ay, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.fu = fmul float %i.ft, %i.fs
  %.sroa.066.0.copyload = load float, ptr %i.bj, align 4, !tbaa !177 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !177 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 3408
  %.sroa.065.0.copyload = load float, ptr %i.fv, align 8, !tbaa !177
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !177
  %i.fw = icmp sgt i32 %4, 0
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa_idx210 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa_idx207 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.ge = fneg float %.sroa.066.0.copyload
  %i.gf = fsub float %.0169, %.sroa.5.0.copyload  ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 616 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 620
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.gl = fmul float %i.ba, %.sroa.066.0.copyload
  %i.gm = call float @llvm.fabs.f32(float %i.gl)
  %i.gn = fmul float %i.bb, %.sroa.5.0.copyload   ; 2 uses
  %i.go = call float @llvm.fabs.f32(float %i.gn)
  %i.gp = fneg float %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.gs = fmul float %i.ba, %.sroa.5.0.copyload
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 530
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  br i1 %i.fw, label %.preheader.us.preheader, label %.split.us

.preheader.us.preheader:                          ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.ha = extractelement <2 x float> %i.ce, i64 0
  %i.hb = insertelement <2 x float> poison, float %i.gf, i64 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.hc = phi i1 [ false, %._crit_edge.us ], [ true, %.preheader.us.preheader ] ; 2 uses
  %i.hd = phi i1 [ true, %._crit_edge.us ], [ false, %.preheader.us.preheader ]
  %.0172232.us = phi float [ %.2.us247, %._crit_edge.us ], [ f0xFF7FFFFF, %.preheader.us.preheader ]
  br label %bb.w

bb.w:                                             ; preds = %.preheader.us, %.loopexit.us.thread
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %.loopexit.us.thread ] ; 3 uses
  %.1228.us = phi float [ %.0172232.us, %.preheader.us ], [ %.2.us247, %.loopexit.us.thread ] ; 3 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 4 uses
  %i.hf = load i16, ptr %i.he, align 4, !tbaa !677 ; 4 uses
  %i.hg = load ptr, ptr %i.fx, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 32, i1 false), !tbaa !177
  %i.hh = sext i16 %i.hf to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [120 x i8], ptr %i.hg, i64 %i.hh ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 12 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !374 ; 2 uses
  %i.hl = load i32, ptr %i.du, align 4, !tbaa !449 ; 3 uses
  store i32 %i.hk, ptr %9, align 16
  store i32 %i.hl, ptr %.sroa_idx210, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !375 ; 2 uses
  store i32 %i.hn, ptr %i.fy, align 8
  store i32 %i.hl, ptr %.sroa_idx207, align 4
  %i.ho = insertelement <2 x i32> poison, i32 %i.hn, i64 0
  %i.hp = insertelement <2 x i32> %i.ho, i32 %i.hl, i64 1
  %i.hq = bitcast <2 x i32> %i.hp to <2 x float>
  %i.hr = fadd <2 x float> %i.ce, %i.hq           ; 2 uses
  store <2 x float> %i.hr, ptr %i.fz, align 16
  %i.hs = bitcast i32 %i.hk to float
  %i.ht = fadd float %i.ha, %i.hs
  %i.hu = insertelement <2 x float> %i.hr, float %i.ht, i64 0
  store <2 x float> %i.hu, ptr %i.ga, align 8
  br i1 %i.hc, label %bb.x, label %.loopexit.us

bb.x:                                             ; preds = %bb.w
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !678
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fy, ptr noundef nonnull align 4 dereferenceable(8) %i.fz, ptr noundef nonnull align 4 dereferenceable(8) %i.ga, i32 noundef %i.hw)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !679
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fy, ptr noundef nonnull align 4 dereferenceable(8) %i.fz, ptr noundef nonnull align 4 dereferenceable(8) %i.ga, i32 noundef %i.hy)
  %i.hz = load float, ptr %i.ga, align 8, !tbaa !228 ; 2 uses
  %i.ia = fcmp oge float %.1228.us, %i.hz
  %i.ib = select i1 %i.ia, float %.1228.us, float %i.hz ; 2 uses
  %i.ic = load i8, ptr %i.gb, align 1, !tbaa !222, !range !175, !noundef !176
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ie = load i16, ptr %i.gc, align 2, !tbaa !257
  %.not.i188.us = icmp slt i16 %i.hf, %i.ie
  br i1 %.not.i188.us, label %bb.z, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.if = load ptr, ptr %i.fx, align 8, !tbaa !271
  %i.ig = getelementptr inbounds [120 x i8], ptr %i.if, i64 %i.hh
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 88
  %i.ii = load i16, ptr %i.ih, align 4, !tbaa !345 ; 2 uses
  %i.ij = icmp eq i16 %i.ii, -1
  br i1 %i.ij, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = load ptr, ptr %i.gd, align 8, !tbaa !319
  %i.il = sext i16 %i.ii to i64
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 %i.il
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us: ; preds = %bb.aa, %bb.z, %bb.y
  %.1.i187.us = phi ptr [ @.str.11, %bb.y ], [ %i.im, %bb.aa ], [ @.str.11, %bb.z ] ; 4 uses
  %i.in = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %.1.i187.us, ptr noundef null) ; 4 uses
  %i.io = load float, ptr %i.bh, align 8, !tbaa !340
  %i.ip = fdiv float %i.io, %i.bo                 ; 6 uses
  %i.iq = call noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef %.1.i187.us, ptr noundef %i.in) ; 2 uses
  %i.ir = load float, ptr %i.hj, align 4, !tbaa !374
  %i.is = load float, ptr %i.hm, align 4, !tbaa !375
  %i.it = fsub float %i.ir, %i.is
end_hunk_2
