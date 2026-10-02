Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  br i1 %.not21.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN8ImVectorIP11ImGuiWindowE10push_frontERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !476
  br label %_ZL15CreateNewWindowPKci.exit

bb.y:                                             ; preds = %bb.w
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !361 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 7092 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !360
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.z, label %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i26.i

._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i26.i: ; preds = %bb.y
  %.phi.trans.insert.i27.i = getelementptr inbounds nuw i8, ptr %i.g, i64 7096
  %.pre.i28.i = load ptr, ptr %.phi.trans.insert.i27.i, align 8, !tbaa !340
  br label %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit38.i

bb.z:                                             ; preds = %bb.y
  %i.fn = add nsw i32 %i.fj, 1
  %.not.i.i29.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i29.i, label %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i30.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fo = sdiv i32 %i.fj, 2
  %i.fp = add nsw i32 %i.fo, %i.fj
  br label %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i30.i

_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i30.i: ; preds = %bb.aa, %bb.z
  %i.fq = phi i32 [ %i.fp, %bb.aa ], [ 8, %bb.z ]
  %i.fr = tail call noundef i32 @llvm.smax.i32(i32 %i.fq, i32 %i.fn) ; 2 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = shl nsw i64 %i.fs, 3
  %i.fu = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i31.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i31.i, label %_ZN5ImGui8MemAllocEm.exit.i.i32.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i30.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 944 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !180
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !180
  br label %_ZN5ImGui8MemAllocEm.exit.i.i32.i

_ZN5ImGui8MemAllocEm.exit.i.i32.i:                ; preds = %bb.ab, %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i30.i
  %i.fy = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.fz = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.ga = tail call noundef ptr %i.fy(i64 noundef %i.ft, ptr noundef %i.fz), !inline_history !980 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 7096 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !340 ; 2 uses
  %.not6.i.i33.i = icmp eq ptr %i.gc, null
  br i1 %.not6.i.i33.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i32.i
  %i.gd = load i32, ptr %i.fi, align 8, !tbaa !361
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ga, ptr nonnull align 8 %i.gc, i64 %i.gf, i1 false)
  %i.gg = load ptr, ptr %i.gb, align 8, !tbaa !340 ; 2 uses
  %.not.i7.i.i34.i = icmp eq ptr %i.gg, null
  br i1 %.not.i7.i.i34.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i36.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i35.i = icmp eq ptr %i.gh, null
  br i1 %.not4.i.i.i35.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i36.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 944 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !180
  %i.gk = add nsw i32 %i.gj, -1
  store i32 %i.gk, ptr %i.gi, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i36.i

_ZN5ImGui7MemFreeEPv.exit.i.i36.i:                ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.gl = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.gm = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.gl(ptr noundef %i.gg, ptr noundef %i.gm), !inline_history !981
  br label %bb.af

bb.af:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i36.i, %_ZN5ImGui8MemAllocEm.exit.i.i32.i
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !340
  store i32 %i.fr, ptr %i.fk, align 4, !tbaa !360
  %.pre3.i37.i = load i32, ptr %i.fi, align 8, !tbaa !361
  br label %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit38.i

_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit38.i: ; preds = %bb.af, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i26.i
  %i.gn = phi i32 [ %i.fj, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i26.i ], [ %.pre3.i37.i, %bb.af ]
  %i.go = phi ptr [ %.pre.i28.i, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i26.i ], [ %i.ga, %bb.af ]
  %i.gp = sext i32 %i.gn to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gp
  store i64 %i.bg, ptr %i.gq, align 8
  %i.gr = load i32, ptr %i.fi, align 8, !tbaa !361
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.fi, align 8, !tbaa !361
  br label %_ZL15CreateNewWindowPKci.exit

_ZL15CreateNewWindowPKci.exit:                    ; preds = %bb.x, %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit38.i
  %i.gt = phi ptr [ %i.at, %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit38.i ], [ %.pre.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %bb.ag

bb.ag:                                            ; preds = %_ZL15CreateNewWindowPKci.exit, %_ZN5ImGui16FindWindowByNameEPKc.exit
  %i.gu = phi i1 [ true, %_ZL15CreateNewWindowPKci.exit ], [ false, %_ZN5ImGui16FindWindowByNameEPKc.exit ] ; 11 uses
  %.01057 = phi ptr [ %i.gt, %_ZL15CreateNewWindowPKci.exit ], [ %i.am, %_ZN5ImGui16FindWindowByNameEPKc.exit ] ; 290 uses
  %i.gv = and i32 %2, 786944
  %i.gw = icmp eq i32 %i.gv, 786944
  %i.gx = or i32 %2, 6
  %spec.select = select i1 %i.gw, i32 %i.gx, i32 %2 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 7056
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !427 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.01057, i64 560 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !328 ; 2 uses
  %.not335 = icmp eq i32 %i.hb, %i.gz             ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 7136 ; 7 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !615
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 7069
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !603, !range !216, !noundef !217
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hh = phi i8 [ 0, %bb.ag ], [ %i.hg, %bb.ah ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.01057, i64 150
  store i8 %i.hh, ptr %i.hi, align 2, !tbaa !991
  %i.hj = add nsw i32 %i.gz, -1
  %i.hk = icmp slt i32 %i.hb, %i.hj               ; 3 uses
  %i.hl = and i32 %spec.select, 67108864
  %.not336 = icmp eq i32 %i.hl, 0
  br i1 %.not336, label %bb.aj, label %.split

.split:                                           ; preds = %bb.ai
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 7656
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !516
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 7648
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !484
  %i.hq = sext i32 %i.hn to i64
  %i.hr = getelementptr inbounds [48 x i8], ptr %i.hp, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.01057, i64 164
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !508
  %i.hu = load i32, ptr %i.hr, align 8, !tbaa !511
  %i.hv = icmp ne i32 %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !514
  %i.hy = icmp ne ptr %.01057, %i.hx
  %i.hz = or i1 %i.hv, %i.hy
  %i.ia = or i1 %i.hk, %i.hz                      ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.01057, i64 148 ; 3 uses
  %i.ic = zext i1 %i.ia to i8
  store i8 %i.ic, ptr %i.ib, align 4, !tbaa !507
  br i1 %i.ia, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.id = getelementptr inbounds nuw i8, ptr %.01057, i64 148 ; 3 uses
  %i.ie = zext i1 %i.hk to i8
  store i8 %i.ie, ptr %i.id, align 4, !tbaa !507
  br i1 %i.hk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.split, %bb.aj
  %i.if = phi ptr [ %i.ib, %.split ], [ %i.id, %bb.aj ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.01057, i64 180 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = or i32 %i.ih, 526344
  store i32 %i.ii, ptr %i.ig, align 4
  br label %bb.al

bb.al:                                            ; preds = %.split, %bb.ak, %bb.aj
  %i.ij = phi ptr [ %i.ib, %.split ], [ %i.if, %bb.ak ], [ %i.id, %bb.aj ]
  %.0308.in1064 = phi i1 [ false, %.split ], [ true, %bb.ak ], [ false, %bb.aj ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.01057, i64 12 ; 2 uses
  br i1 %.not335, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %spec.select, ptr %i.ik, align 4, !tbaa !392
  store i32 %i.gz, ptr %i.ha, align 8, !tbaa !328
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 7048
  %i.im = load double, ptr %i.il, align 8, !tbaa !426
  %i.in = fptrunc double %i.im to float
  %i.io = getelementptr inbounds nuw i8, ptr %.01057, i64 564
  store float %i.in, ptr %i.io, align 4, !tbaa !329
  %i.ip = getelementptr inbounds nuw i8, ptr %.01057, i64 156
  store i16 0, ptr %i.ip, align 4, !tbaa !616
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 7168 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !430 ; 2 uses
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 8, !tbaa !430
  %i.it = trunc i32 %i.ir to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %.01057, i64 158
  store i16 %i.it, ptr %i.iu, align 2, !tbaa !617
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.iv = load i32, ptr %i.ik, align 4, !tbaa !392
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1 = phi i32 [ %spec.select, %bb.am ], [ %i.iv, %bb.an ] ; 32 uses
  %i.iw = load i32, ptr %i.hc, align 8, !tbaa !479 ; 3 uses
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 7144
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !477
  %i.ja = sext i32 %i.iw to i64
  %i.jb = getelementptr [88 x i8], ptr %i.iz, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.jb, i64 -88
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !620
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.je = phi ptr [ %i.jd, %bb.ap ], [ null, %bb.ao ]
  br i1 %.not335, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jf = and i32 %.1, 83886080
  %.not337 = icmp eq i32 %i.jf, 0
  %i.jg = select i1 %.not337, ptr null, ptr %i.je
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jh = getelementptr inbounds nuw i8, ptr %.01057, i64 824
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !518
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.jj = phi ptr [ %i.jg, %bb.ar ], [ %i.ji, %bb.as ] ; 22 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.01057, i64 200 ; 12 uses
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !343
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.jn = getelementptr inbounds nuw i8, ptr %.01057, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %.01057, i64 204 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !317
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i:      ; preds = %bb.au
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01057, i64 208
  %.pre.i454 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !318
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i:        ; preds = %bb.au
  %i.jr = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i456 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i456, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 944 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !180
  %i.ju = add nsw i32 %i.jt, 1
  store i32 %i.ju, ptr %i.js, align 8, !tbaa !180
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.av, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.jv = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.jw = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.jx = call noundef ptr %i.jv(i64 noundef 32, ptr noundef %i.jw), !inline_history !43 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.01057, i64 208 ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !318 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.jz, null
  br i1 %.not6.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.ka = load i32, ptr %i.jk, align 8, !tbaa !316
  %i.kb = sext i32 %i.ka to i64
  %i.kc = shl nsw i64 %i.kb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jx, ptr nonnull align 4 %i.jz, i64 %i.kc, i1 false)
  %i.kd = load ptr, ptr %i.jy, align 8, !tbaa !318 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ke = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 944 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !180
  %i.kh = add nsw i32 %i.kg, -1
  store i32 %i.kh, ptr %i.kf, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ki = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.kj = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  call void %i.ki(ptr noundef %i.kd, ptr noundef %i.kj), !inline_history !44
  br label %bb.az

bb.az:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !318
  store i32 8, ptr %i.jo, align 4, !tbaa !317
  %.pre3.i = load i32, ptr %i.jk, align 8, !tbaa !316
  %i.kk = sext i32 %.pre3.i to i64
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZN8ImVectorIjE9push_backERKj.exit:               ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i, %bb.az
  %i.kl = phi i64 [ 0, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %i.kk, %bb.az ]
  %i.km = phi ptr [ %.pre.i454, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %i.jx, %bb.az ]
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.kl
  %i.ko = load i32, ptr %i.jn, align 8
  store i32 %i.ko, ptr %i.kn, align 4
  %i.kp = load i32, ptr %i.jk, align 8, !tbaa !316
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.jk, align 8, !tbaa !316
  %.pre = load i32, ptr %i.hc, align 8, !tbaa !479
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN8ImVectorIjE9push_backERKj.exit, %bb.at
  %i.kr = phi i32 [ %.pre, %_ZN8ImVectorIjE9push_backERKj.exit ], [ %i.iw, %bb.at ] ; 6 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.g, i64 7184 ; 2 uses
  store ptr %.01057, ptr %i.ks, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4855)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.g, i64 7368 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.4855, ptr noundef nonnull align 8 dereferenceable(60) %i.kt, i64 60, i1 false), !tbaa.struct !621
  %i.ku = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 10 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 7184
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !214
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 200
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !343
  %i.kz = trunc i32 %i.ky to i16
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 7544
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !622
  %i.lc = trunc i32 %i.lb to i16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 7560
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !623
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 7576
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !624
  %i.li = trunc i32 %i.lh to i16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ku, i64 7592
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !625
  %i.ll = trunc i32 %i.lk to i16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ku, i64 7624
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !626
  %i.lo = trunc i32 %i.ln to i16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ku, i64 7608
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !627
  %i.lr = trunc i32 %i.lq to i16
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ku, i64 7656
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !516
  %i.lu = trunc i32 %i.lt to i16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ku, i64 12372
  %i.lw = load i16, ptr %i.lv, align 4, !tbaa !628
  %i.lx = getelementptr inbounds nuw i8, ptr %i.g, i64 7140 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !478
  %i.lz = icmp eq i32 %i.kr, %i.ly
  br i1 %i.lz, label %bb.bb, label %._ZN8ImVectorI20ImGuiWindowStackDataE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI20ImGuiWindowStackDataE7reserveEi.exit_crit_edge.i: ; preds = %bb.ba
  %.phi.trans.insert.i457 = getelementptr inbounds nuw i8, ptr %i.g, i64 7144
  %.pre.i458 = load ptr, ptr %.phi.trans.insert.i457, align 8, !tbaa !477
  br label %_ZN8ImVectorI20ImGuiWindowStackDataE9push_backERKS0_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ma = add nsw i32 %i.kr, 1
  %.not.i.i459 = icmp eq i32 %i.kr, 0
  br i1 %.not.i.i459, label %_ZN5ImGui8MemAllocEm.exit.i.i461, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mb = sdiv i32 %i.kr, 2
  %i.mc = add nsw i32 %i.mb, %i.kr
  br label %_ZN5ImGui8MemAllocEm.exit.i.i461

_ZN5ImGui8MemAllocEm.exit.i.i461:                 ; preds = %bb.bc, %bb.bb
  %i.md = phi i32 [ %i.mc, %bb.bc ], [ 8, %bb.bb ]
  %i.me = call noundef i32 @llvm.smax.i32(i32 %i.md, i32 %i.ma) ; 2 uses
  %i.mf = sext i32 %i.me to i64
  %i.mg = mul nsw i64 %i.mf, 88
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ku, i64 944 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !180
  %i.mj = add nsw i32 %i.mi, 1
  store i32 %i.mj, ptr %i.mh, align 8, !tbaa !180
  %i.mk = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.ml = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.mm = call noundef ptr %i.mk(i64 noundef %i.mg, ptr noundef %i.ml), !inline_history !982 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.g, i64 7144 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !477 ; 2 uses
  %.not6.i.i462 = icmp eq ptr %i.mo, null
  br i1 %.not6.i.i462, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i461
  %i.mp = load i32, ptr %i.hc, align 8, !tbaa !479
  %i.mq = sext i32 %i.mp to i64
  %i.mr = mul nsw i64 %i.mq, 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.mm, ptr nonnull align 8 %i.mo, i64 %i.mr, i1 false)
  %i.ms = load ptr, ptr %i.mn, align 8, !tbaa !477 ; 2 uses
  %.not.i7.i.i463 = icmp eq ptr %i.ms, null
  br i1 %.not.i7.i.i463, label %_ZN5ImGui7MemFreeEPv.exit.i.i465, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mt = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i464 = icmp eq ptr %i.mt, null
  br i1 %.not4.i.i.i464, label %_ZN5ImGui7MemFreeEPv.exit.i.i465, label %bb.bf
end_hunk_0
begin_hunk_1_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.rh = load <2 x float>, ptr %i.qx, align 8, !tbaa !75
  %i.ri = fadd <2 x float> %i.rd, %i.rh
  store <2 x float> %i.ri, ptr %i.qx, align 8, !tbaa !75
  %i.rj = load <4 x float>, ptr %i.qy, align 8, !tbaa !75
  %i.rk = fadd <4 x float> %i.re, %i.rj
  store <4 x float> %i.rk, ptr %i.qy, align 8, !tbaa !75
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit: ; preds = %.thread, %._crit_edge.i481, %bb.bz, %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit
  %.0317.shrunk = phi i1 [ true, %bb.bz ], [ false, %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit ], [ %i.qg, %._crit_edge.i481 ], [ false, %.thread ] ; 5 uses
  %i.rl = load i32, ptr %i.pw, align 8, !tbaa !599
  %i.rm = and i32 %i.rl, 2
  %.not339 = icmp eq i32 %i.rm, 0
  br i1 %.not339, label %_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit
  %i.rn = getelementptr inbounds nuw i8, ptr %.01057, i64 180 ; 2 uses
  %i.ro = load i32, ptr %i.rn, align 4            ; 2 uses
  %i.rp = shl i32 %i.ro, 16
  %i.rq = ashr i32 %i.rp, 24
  %i.rr = getelementptr inbounds nuw i8, ptr %i.g, i64 7440
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !604 ; 2 uses
  %i.rt = and i32 %i.rq, %i.rs
  %.not340 = icmp eq i32 %i.rt, 0
  br i1 %.not340, label %.thread1068, label %.thread1069

.thread1068:                                      ; preds = %bb.ca
  %.not.i485 = icmp eq i32 %i.rs, 0
  br i1 %.not.i485, label %._crit_edge.i488, label %_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i.exit

.thread1069:                                      ; preds = %bb.ca
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 7464
  %i.rv = load float, ptr %i.ru, align 8, !tbaa !992
  %i.rw = fcmp ogt float %i.rv, 0.000000e+00
  %i.rx = getelementptr inbounds nuw i8, ptr %i.g, i64 7468
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !993
  %i.rz = fcmp ogt float %i.ry, 0.000000e+00
  br label %._crit_edge.i488

._crit_edge.i488:                                 ; preds = %.thread1069, %.thread1068
  %i.sa = phi i1 [ false, %.thread1068 ], [ %i.rz, %.thread1069 ] ; 2 uses
  %i.sb = phi i1 [ false, %.thread1068 ], [ %i.rw, %.thread1069 ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.g, i64 7464
  %i.sd = and i32 %i.ro, -3585
  store i32 %i.sd, ptr %i.rn, align 4
  %i.se = load float, ptr %i.sc, align 8, !tbaa !187 ; 2 uses
  %i.sf = fcmp ogt float %i.se, 0.000000e+00
  br i1 %i.sf, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %._crit_edge.i488
  %i.sg = fptosi float %i.se to i32
  %i.sh = sitofp i32 %i.sg to float
  %i.si = getelementptr inbounds nuw i8, ptr %.01057, i64 32
  store float %i.sh, ptr %i.si, align 8, !tbaa !632
  br label %bb.cd

bb.cc:                                            ; preds = %._crit_edge.i488
  %i.sj = getelementptr inbounds nuw i8, ptr %.01057, i64 171
  store i8 0, ptr %i.sj, align 1, !tbaa !614
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink.i489 = phi i8 [ 0, %bb.cb ], [ 2, %bb.cc ]
  %i.sk = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  store i8 %.sink.i489, ptr %i.sk, align 8, !tbaa !326
  %i.sl = getelementptr inbounds nuw i8, ptr %i.g, i64 7468
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !188 ; 2 uses
  %i.sn = fcmp ogt float %i.sm, 0.000000e+00
  %i.so = getelementptr inbounds nuw i8, ptr %.01057, i64 169 ; 2 uses
  br i1 %i.sn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i8 0, ptr %i.so, align 1, !tbaa !325
  %i.sp = fptosi float %i.sm to i32
  %i.sq = sitofp i32 %i.sp to float
  %i.sr = getelementptr inbounds nuw i8, ptr %.01057, i64 36
  store float %i.sq, ptr %i.sr, align 4, !tbaa !586
  br label %_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i.exit

bb.cf:                                            ; preds = %bb.cd
  store i8 2, ptr %i.so, align 1, !tbaa !325
  %i.ss = getelementptr inbounds nuw i8, ptr %.01057, i64 171
  store i8 0, ptr %i.ss, align 1, !tbaa !614
  br label %_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i.exit

_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i.exit: ; preds = %.thread1068, %bb.cf, %bb.ce, %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit
  %.0316 = phi i1 [ false, %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit ], [ %i.sb, %bb.cf ], [ %i.sb, %bb.ce ], [ false, %.thread1068 ] ; 4 uses
  %.0315 = phi i1 [ false, %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit ], [ %i.sa, %bb.cf ], [ %i.sa, %bb.ce ], [ false, %.thread1068 ] ; 4 uses
  %i.st = load i32, ptr %i.pw, align 8, !tbaa !599 ; 5 uses
  %i.su = and i32 %i.st, 128
  %.not342 = icmp eq i32 %i.su, 0
  br i1 %.not342, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i.exit
  %i.sv = getelementptr inbounds nuw i8, ptr %i.g, i64 7480
  %i.sw = load float, ptr %i.sv, align 8, !tbaa !994 ; 2 uses
  %i.sx = fcmp ult float %i.sw, 0.000000e+00
  br i1 %i.sx, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sy = getelementptr inbounds nuw i8, ptr %.01057, i64 108
  store float %i.sw, ptr %i.sy, align 4, !tbaa !589
  %i.sz = getelementptr inbounds nuw i8, ptr %.01057, i64 116
  store float 0.000000e+00, ptr %i.sz, align 4, !tbaa !590
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ta = getelementptr inbounds nuw i8, ptr %i.g, i64 7484
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !995 ; 2 uses
  %i.tc = fcmp ult float %i.tb, 0.000000e+00
  br i1 %i.tc, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.td = getelementptr inbounds nuw i8, ptr %.01057, i64 112
  store float %i.tb, ptr %i.td, align 8, !tbaa !582
  %i.te = getelementptr inbounds nuw i8, ptr %.01057, i64 120
  store float 0.000000e+00, ptr %i.te, align 8, !tbaa !583
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj, %_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i.exit
  %i.tf = and i32 %i.st, 4
  %.not343 = icmp eq i32 %i.tf, 0
  br i1 %.not343, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tg = getelementptr inbounds nuw i8, ptr %i.g, i64 7472
  %i.th = getelementptr inbounds nuw i8, ptr %.01057, i64 56
  %i.ti = load i64, ptr %i.tg, align 8, !tbaa !75
  store i64 %i.ti, ptr %i.th, align 8, !tbaa !75
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  br i1 %.not335, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.tj = getelementptr inbounds nuw i8, ptr %.01057, i64 56
  store i32 0, ptr %i.tj, align 8, !tbaa !75
  %.sroa_idx851 = getelementptr inbounds nuw i8, ptr %.01057, i64 60
  store i32 0, ptr %.sroa_idx851, align 4, !tbaa !75
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn, %bb.cl
  %i.tk = and i32 %i.st, 8
  %.not344 = icmp eq i32 %i.tk, 0
  br i1 %.not344, label %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.tl = getelementptr inbounds nuw i8, ptr %i.g, i64 7488
  %i.tm = load i8, ptr %i.tl, align 8, !tbaa !633, !range !216, !noundef !217
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 7444
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !634 ; 2 uses
  %.not.i490 = icmp eq i32 %i.to, 0
  %.phi.trans.insert.i491 = getelementptr inbounds nuw i8, ptr %.01057, i64 180 ; 2 uses
  %.pre.i492 = load i32, ptr %.phi.trans.insert.i491, align 4 ; 2 uses
  br i1 %.not.i490, label %._crit_edge.i493, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.tp = shl i32 %.pre.i492, 8
  %i.tq = ashr i32 %i.tp, 24
  %i.tr = and i32 %i.tq, %i.to
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit, label %._crit_edge.i493

._crit_edge.i493:                                 ; preds = %bb.cq, %bb.cp
  %i.tt = and i32 %.pre.i492, -917505
  store i32 %i.tt, ptr %.phi.trans.insert.i491, align 4
  %i.tu = getelementptr inbounds nuw i8, ptr %.01057, i64 145
  store i8 %i.tm, ptr %i.tu, align 1, !tbaa !595
  %.pre1133 = load i32, ptr %i.pw, align 8, !tbaa !599
  br label %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit

_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit: ; preds = %._crit_edge.i493, %bb.cq, %bb.co
  %i.tv = phi i32 [ %.pre1133, %._crit_edge.i493 ], [ %i.st, %bb.cq ], [ %i.st, %bb.co ]
  %i.tw = and i32 %i.tv, 32
  %.not345 = icmp eq i32 %i.tw, 0
  br i1 %.not345, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef nonnull %.01057)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit
  %i.tx = load i8, ptr %i.ij, align 4, !tbaa !507, !range !216, !noundef !217
  %i.ty = trunc nuw i8 %i.tx to i1
  br i1 %i.ty, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.tz = getelementptr inbounds nuw i8, ptr %.01057, i64 180 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4
  %i.ub = and i32 %i.ua, -526345
  store i32 %i.ub, ptr %i.tz, align 4
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  br i1 %.not335, label %bb.pq, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.uc = and i32 %.1, 16777216                   ; 2 uses
  %.not346 = icmp eq i32 %i.uc, 0                 ; 6 uses
  %i.ud = and i32 %.1, 33554432
  %.not347 = icmp eq i32 %i.ud, 0                 ; 2 uses
  %i.ue = and i32 %.1, 50331648                   ; 2 uses
  %i.uf = icmp eq i32 %i.ue, 50331648             ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.01057, i64 142
  store i8 1, ptr %i.ug, align 2, !tbaa !520
  %i.uh = icmp ne ptr %1, null                    ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.01057, i64 151
  %i.uj = zext i1 %i.uh to i8
  store i8 %i.uj, ptr %i.ui, align 1, !tbaa !996
  %i.uk = getelementptr inbounds nuw i8, ptr %.01057, i64 520
  store <4 x float> <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, ptr %i.uk, align 8, !tbaa !75
  %i.ul = getelementptr inbounds nuw i8, ptr %.01057, i64 204 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !317 ; 2 uses
  %i.un = icmp slt i32 %i.um, 1
  br i1 %i.un, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i495, label %_ZN8ImVectorIjE6resizeEi.exit

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i495:     ; preds = %bb.cv
  %.not.i.i494 = icmp eq i32 %i.um, 0
  %i.uo = select i1 %.not.i.i494, i32 8, i32 1    ; 2 uses
  %i.up = shl nuw nsw i32 %i.uo, 2
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i496 = icmp eq ptr %i.ur, null
  br i1 %.not.i.i.i496, label %_ZN5ImGui8MemAllocEm.exit.i.i497, label %bb.cw

bb.cw:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i495
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 944 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !180
  %i.uu = add nsw i32 %i.ut, 1
  store i32 %i.uu, ptr %i.us, align 8, !tbaa !180
  br label %_ZN5ImGui8MemAllocEm.exit.i.i497

_ZN5ImGui8MemAllocEm.exit.i.i497:                 ; preds = %bb.cw, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i495
  %i.uv = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.uw = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.ux = call noundef ptr %i.uv(i64 noundef %i.uq, ptr noundef %i.uw), !inline_history !35 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.01057, i64 208 ; 3 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !318 ; 2 uses
  %.not6.i.i498 = icmp eq ptr %i.uz, null
  br i1 %.not6.i.i498, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i497
  %i.va = load i32, ptr %i.jk, align 8, !tbaa !316
  %i.vb = sext i32 %i.va to i64
  %i.vc = shl nsw i64 %i.vb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ux, ptr nonnull align 4 %i.uz, i64 %i.vc, i1 false)
  %i.vd = load ptr, ptr %i.uy, align 8, !tbaa !318 ; 2 uses
  %.not.i7.i.i499 = icmp eq ptr %i.vd, null
  br i1 %.not.i7.i.i499, label %_ZN5ImGui7MemFreeEPv.exit.i.i501, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ve = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i500 = icmp eq ptr %i.ve, null
  br i1 %.not4.i.i.i500, label %_ZN5ImGui7MemFreeEPv.exit.i.i501, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 944 ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !180
  %i.vh = add nsw i32 %i.vg, -1
  store i32 %i.vh, ptr %i.vf, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i501

_ZN5ImGui7MemFreeEPv.exit.i.i501:                 ; preds = %bb.cz, %bb.cy, %bb.cx
  %i.vi = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.vj = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  call void %i.vi(ptr noundef %i.vd, ptr noundef %i.vj), !inline_history !36
  br label %bb.da

bb.da:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i501, %_ZN5ImGui8MemAllocEm.exit.i.i497
  store ptr %i.ux, ptr %i.uy, align 8, !tbaa !318
  store i32 %i.uo, ptr %i.ul, align 4, !tbaa !317
  br label %_ZN8ImVectorIjE6resizeEi.exit

_ZN8ImVectorIjE6resizeEi.exit:                    ; preds = %bb.cv, %bb.da
  store i32 1, ptr %i.jk, align 8, !tbaa !316
  %i.vk = getelementptr inbounds nuw i8, ptr %.01057, i64 616 ; 22 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !292
  call void @_ZN10ImDrawList17_ResetForNewFrameEv(ptr noundef nonnull align 8 dereferenceable(196) %i.vl)
  %i.vm = getelementptr inbounds nuw i8, ptr %.01057, i64 384 ; 2 uses
  store i32 -1, ptr %i.vm, align 8, !tbaa !635
  %i.vn = getelementptr inbounds nuw i8, ptr %.01057, i64 920
  %i.vo = load i8, ptr %i.vn, align 8, !tbaa !357, !range !216, !noundef !217
  %i.vp = trunc nuw i8 %i.vo to i1
  br i1 %i.vp, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZN8ImVectorIjE6resizeEi.exit
  call void @_ZN5ImGui29GcAwakeTransientWindowBuffersEP11ImGuiWindow(ptr noundef nonnull %.01057)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_ZN8ImVectorIjE6resizeEi.exit
  %i.vq = getelementptr inbounds nuw i8, ptr %i.g, i64 8000
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !636
  %.not348 = icmp eq ptr %i.vr, null
  br i1 %.not348, label %.critedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vs = getelementptr inbounds nuw i8, ptr %.01057, i64 12
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !392
  %i.vu = and i32 %i.vt, 524288
  %i.vv = icmp ne i32 %i.vu, 0
  %spec.select384 = or i1 %i.gu, %i.vv
  br i1 %spec.select384, label %.critedge, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vw = load ptr, ptr %.01057, align 8, !tbaa !313 ; 3 uses
  %i.vx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.vw) #56
  %.not349 = icmp eq i32 %i.vx, 0
  br i1 %.not349, label %.critedge, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vy = getelementptr inbounds nuw i8, ptr %.01057, i64 80 ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !314 ; 2 uses
  %i.wa = sext i32 %i.vz to i64
  %i.wb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #56
  %i.wc = add i64 %i.wb, 1                        ; 4 uses
  %i.wd = icmp ugt i64 %i.wc, %i.wa
  br i1 %i.wd, label %bb.dg, label %_Z11ImStrdupcpyPcPmPKc.exit

bb.dg:                                            ; preds = %bb.df
  %i.we = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.we, null
  br i1 %.not4.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 944 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !180
  %i.wh = add nsw i32 %i.wg, -1
  store i32 %i.wh, ptr %i.wf, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %bb.dh, %bb.dg
  %i.wi = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.wj = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  call void %i.wi(ptr noundef nonnull %i.vw, ptr noundef %i.wj), !inline_history !997
  %i.wk = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.wk, null
  br i1 %.not.i15.i, label %_ZN5ImGui8MemAllocEm.exit.i504, label %bb.di

bb.di:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 944 ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !180
  %i.wn = add nsw i32 %i.wm, 1
  store i32 %i.wn, ptr %i.wl, align 8, !tbaa !180
  br label %_ZN5ImGui8MemAllocEm.exit.i504

_ZN5ImGui8MemAllocEm.exit.i504:                   ; preds = %bb.di, %_ZN5ImGui7MemFreeEPv.exit.i
  %i.wo = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.wp = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.wq = call noundef ptr %i.wo(i64 noundef %i.wc, ptr noundef %i.wp), !inline_history !998
  %i.wr = trunc i64 %i.wc to i32
  br label %_Z11ImStrdupcpyPcPmPKc.exit

_Z11ImStrdupcpyPcPmPKc.exit:                      ; preds = %bb.df, %_ZN5ImGui8MemAllocEm.exit.i504
  %.01062 = phi i32 [ %i.wr, %_ZN5ImGui8MemAllocEm.exit.i504 ], [ %i.vz, %bb.df ]
  %.0.i = phi ptr [ %i.wq, %_ZN5ImGui8MemAllocEm.exit.i504 ], [ %i.vw, %bb.df ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr nonnull readonly align 1 %0, i64 %i.wc, i1 false)
  store ptr %.0.i, ptr %.01057, align 8, !tbaa !313
  store i32 %.01062, ptr %i.vy, align 8, !tbaa !314
  br label %.critedge

.critedge:                                        ; preds = %bb.dc, %_Z11ImStrdupcpyPcPmPKc.exit, %bb.de, %bb.dd
  %i.ws = getelementptr inbounds nuw i8, ptr %.01057, i64 177 ; 7 uses
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !637
  %i.wu = icmp slt i8 %i.wt, 1
  %i.wv = getelementptr inbounds nuw i8, ptr %.01057, i64 40 ; 5 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.01057, i64 48 ; 2 uses
  call fastcc void @_ZL22CalcWindowContentSizesP11ImGuiWindowP6ImVec2S2_(ptr noundef nonnull %.01057, ptr noundef nonnull %i.wv, ptr noundef nonnull %i.ww)
  %i.wx = getelementptr inbounds nuw i8, ptr %.01057, i64 176 ; 2 uses
  %i.wy = load i8, ptr %i.wx, align 8, !tbaa !638 ; 2 uses
  %i.wz = icmp sgt i8 %i.wy, 0
  br i1 %i.wz, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.critedge
  %i.xa = add nsw i8 %i.wy, -1
  store i8 %i.xa, ptr %i.wx, align 8, !tbaa !638
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.critedge
  %i.xb = load i8, ptr %i.ws, align 1, !tbaa !637 ; 2 uses
  %i.xc = icmp sgt i8 %i.xb, 0
  br i1 %i.xc, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.xd = add nsw i8 %i.xb, -1
  store i8 %i.xd, ptr %i.ws, align 1, !tbaa !637
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.xe = getelementptr inbounds nuw i8, ptr %.01057, i64 178 ; 2 uses
  %i.xf = load i8, ptr %i.xe, align 2, !tbaa !999 ; 2 uses
  %i.xg = icmp sgt i8 %i.xf, 0
  br i1 %i.xg, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.xh = add nsw i8 %i.xf, -1
  store i8 %i.xh, ptr %i.xe, align 2, !tbaa !999
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.not = xor i1 %i.gu, true
  %or.cond3 = select i1 %.0316, i1 %.0315, i1 false
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a

_ZL16SetCurrentWindowP11ImGuiWindow.exit:         ; preds = %bb.dz, %bb.ea
  %.0.i.i = phi float [ %i.yg, %bb.ea ], [ %i.yb, %bb.dz ] ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xo, i64 6552
  store float %.0.i.i, ptr %i.yh, align 8, !tbaa !545
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xo, i64 6528
  store float %.0.i.i, ptr %i.yi, align 8, !tbaa !294
  br i1 %.not346, label %.thread1072, label %bb.eb

.thread1072:                                      ; preds = %_ZL16SetCurrentWindowP11ImGuiWindow.exit
  %i.yj = and i32 %.1, 134217728
  %.not353 = icmp eq i32 %i.yj, 0
  %or.cond386 = and i1 %.not350, %.not353
  %.in.v = select i1 %or.cond386, i64 5528, i64 5492
  %.in = getelementptr inbounds nuw i8, ptr %i.g, i64 %.in.v
  %i.yk = load float, ptr %.in, align 4, !tbaa !75
  %i.yl = getelementptr inbounds nuw i8, ptr %.01057, i64 76
  store float %i.yk, ptr %i.yl, align 4, !tbaa !1000
  %i.ym = getelementptr inbounds nuw i8, ptr %i.g, i64 5480
  %i.yn = getelementptr inbounds nuw i8, ptr %.01057, i64 64 ; 2 uses
  %i.yo = load i64, ptr %i.ym, align 8, !tbaa !75 ; 2 uses
  store i64 %i.yo, ptr %i.yn, align 8, !tbaa !75
  %i.yp = trunc i64 %i.yo to i32
  %i.yq = bitcast i32 %i.yp to float
  br label %bb.ef

bb.eb:                                            ; preds = %_ZL16SetCurrentWindowP11ImGuiWindow.exit
  %i.yr = getelementptr inbounds nuw i8, ptr %i.g, i64 5520
  %i.ys = load float, ptr %i.yr, align 8, !tbaa !1001 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.01057, i64 76
  store float %i.ys, ptr %i.yt, align 4, !tbaa !1000
  %i.yu = getelementptr inbounds nuw i8, ptr %i.g, i64 5480
  %i.yv = getelementptr inbounds nuw i8, ptr %.01057, i64 64 ; 4 uses
  %i.yw = load i64, ptr %i.yu, align 8, !tbaa !75 ; 2 uses
  store i64 %i.yw, ptr %i.yv, align 8, !tbaa !75
  %i.yx = and i32 %.1, 67174400
  %.not354 = icmp eq i32 %i.yx, 0
  %i.yy = trunc i64 %i.yw to i32
  %i.yz = bitcast i32 %i.yy to float
  %i.za = fcmp oeq float %i.ys, 0.000000e+00
  %or.cond1318 = select i1 %.not354, i1 %i.za, i1 false
  br i1 %or.cond1318, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.zb = and i32 %.1, 1024
  %.not355 = icmp eq i32 %i.zb, 0
  br i1 %.not355, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zc = getelementptr inbounds nuw i8, ptr %i.g, i64 5484
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !1002
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  %i.ze = phi i32 [ %i.zd, %bb.ed ], [ 0, %bb.ec ]
  store i32 0, ptr %i.yv, align 8, !tbaa !75
  %.sroa_idx836 = getelementptr inbounds nuw i8, ptr %.01057, i64 68
  store i32 %i.ze, ptr %.sroa_idx836, align 4, !tbaa !75
  br label %bb.ef

bb.ef:                                            ; preds = %.thread1072, %bb.ee, %bb.eb
  %i.zf = phi float [ %i.yq, %.thread1072 ], [ 0.000000e+00, %bb.ee ], [ %i.yz, %bb.eb ] ; 2 uses
  %i.zg = phi ptr [ %i.yn, %.thread1072 ], [ %i.yv, %bb.ee ], [ %i.yv, %bb.eb ] ; 5 uses
  %.not346.not1076 = xor i1 %.not346, true
  %i.zh = getelementptr inbounds nuw i8, ptr %i.g, i64 5548 ; 2 uses
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !1003 ; 2 uses
  %i.zj = fcmp oge float %i.zf, %i.zi
  %i.zk = select i1 %i.zj, float %i.zf, float %i.zi ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.g, i64 7532
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !1004 ; 2 uses
  %i.zn = fcmp oge float %i.zk, %i.zm
  %i.zo = select i1 %i.zn, float %i.zk, float %i.zm
  %i.zp = getelementptr inbounds nuw i8, ptr %.01057, i64 308
  store float %i.zo, ptr %i.zp, align 4, !tbaa !1005
  %i.zq = getelementptr inbounds nuw i8, ptr %i.g, i64 7536
  %i.zr = load float, ptr %i.zq, align 8, !tbaa !1006
  %i.zs = getelementptr inbounds nuw i8, ptr %.01057, i64 312 ; 3 uses
  store float %i.zr, ptr %i.zs, align 8, !tbaa !639
  %i.zt = and i32 %.1, 1
  %.not356 = icmp eq i32 %i.zt, 0
  %i.zu = and i32 %.1, 33
  %or.cond388 = icmp eq i32 %i.zu, 0
  br i1 %or.cond388, label %bb.eg, label %bb.es

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #39
  %i.zv = getelementptr inbounds nuw i8, ptr %.01057, i64 16 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.01057, i64 32
  %i.zx = load float, ptr %i.zw, align 8, !tbaa !632
  %i.zy = load <2 x float>, ptr %i.zv, align 8, !tbaa !75
  %i.zz = getelementptr inbounds nuw i8, ptr %.01057, i64 12 ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !392
  %i.aab = and i32 %i.aaa, 1
  %.not.i.i507 = icmp eq i32 %i.aab, 0
  br i1 %.not.i.i507, label %bb.eh, label %_ZNK11ImGuiWindow12TitleBarRectEv.exit

bb.eh:                                            ; preds = %bb.eg
  %i.aac = load float, ptr %i.xx, align 4, !tbaa !517
  %i.aad = load float, ptr %i.xz, align 8, !tbaa !330
  %i.aae = fmul float %i.aac, %i.aad              ; 2 uses
  %i.aaf = load ptr, ptr %i.yc, align 8, !tbaa !518 ; 2 uses
  %.not.i.i.i508 = icmp eq ptr %i.aaf, null
  br i1 %.not.i.i.i508, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 608
  %i.aah = load float, ptr %i.aag, align 8, !tbaa !330
  %i.aai = fmul float %i.aae, %i.aah
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i:       ; preds = %bb.ei, %bb.eh
  %.0.i.i.i509 = phi float [ %i.aai, %bb.ei ], [ %i.aae, %bb.eh ]
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.xo, i64 5536
  %i.aak = load float, ptr %i.aaj, align 8, !tbaa !298
  %i.aal = call float @llvm.fmuladd.f32(float %i.aak, float 2.000000e+00, float %.0.i.i.i509)
  br label %_ZNK11ImGuiWindow12TitleBarRectEv.exit

_ZNK11ImGuiWindow12TitleBarRectEv.exit:           ; preds = %bb.eg, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i
  %i.aam = phi float [ %i.aal, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i ], [ 0.000000e+00, %bb.eg ]
  %i.aan = insertelement <2 x float> poison, float %i.zx, i64 0
  %i.aao = insertelement <2 x float> %i.aan, float %i.aam, i64 1
  %i.aap = fadd <2 x float> %i.zy, %i.aao
  %i.aaq = load <2 x float>, ptr %i.zv, align 8, !tbaa !75
  store <2 x float> %i.aaq, ptr %22, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store <2 x float> %i.aap, ptr %i.aar, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %i.g, i64 7192
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !388
  %i.aau = icmp eq ptr %i.aat, %.01057
  br i1 %i.aau, label %bb.ej, label %bb.eo

bb.ej:                                            ; preds = %_ZNK11ImGuiWindow12TitleBarRectEv.exit
  %i.aav = getelementptr inbounds nuw i8, ptr %i.g, i64 7240
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !380
  %i.aax = icmp eq i32 %i.aaw, 0
  br i1 %i.aax, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %bb.ej
  %i.aay = getelementptr inbounds nuw i8, ptr %i.g, i64 7244
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !383
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  %i.abb = call noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %i.aar, i1 noundef zeroext true)
  br i1 %i.abb, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.abc = getelementptr inbounds nuw i8, ptr %i.g, i64 1061
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !219, !range !216, !noundef !217
  %i.abe = trunc nuw i8 %i.abd to i1
  br i1 %i.abe, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.abf = getelementptr inbounds nuw i8, ptr %.01057, i64 146
  store i8 1, ptr %i.abf, align 2, !tbaa !1007
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %_ZNK11ImGuiWindow12TitleBarRectEv.exit
  %i.abg = getelementptr inbounds nuw i8, ptr %.01057, i64 146
  %i.abh = load i8, ptr %i.abg, align 2, !tbaa !1007, !range !216, !noundef !217
  %i.abi = trunc nuw i8 %i.abh to i1
  br i1 %i.abi, label %bb.ep, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.ep:                                            ; preds = %bb.eo
  %i.abj = getelementptr inbounds nuw i8, ptr %.01057, i64 145 ; 2 uses
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !595, !range !216, !noundef !217
  %i.abl = xor i8 %i.abk, 1
  store i8 %i.abl, ptr %i.abj, align 1, !tbaa !595
  %i.abm = load i32, ptr %i.zz, align 4, !tbaa !392
  %i.abn = and i32 %i.abm, 256
  %.not.i510 = icmp eq i32 %i.abn, 0
  br i1 %.not.i510, label %bb.eq, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.eq:                                            ; preds = %bb.ep
  %i.abo = getelementptr inbounds nuw i8, ptr %i.xo, i64 12436 ; 2 uses
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !448
  %i.abq = fcmp ugt float %i.abp, 0.000000e+00
  br i1 %i.abq, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abr = getelementptr inbounds nuw i8, ptr %i.xo, i64 28
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !506
  store float %i.abs, ptr %i.abo, align 4, !tbaa !448
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit: ; preds = %bb.er, %bb.eq, %bb.ep, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #39
  br label %bb.et

bb.es:                                            ; preds = %bb.ef
  %i.abt = getelementptr inbounds nuw i8, ptr %.01057, i64 145
  store i8 0, ptr %i.abt, align 1, !tbaa !595
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit
  %i.abu = getelementptr inbounds nuw i8, ptr %.01057, i64 146 ; 2 uses
  store i8 0, ptr %i.abu, align 2, !tbaa !1007
  %i.abv = call fastcc <2 x float> @_ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %.01057, ptr noundef nonnull align 4 dereferenceable(8) %i.ww) ; 7 uses
  %i.abw = and i32 %.1, 64
  %.not358 = icmp ne i32 %i.abw, 0                ; 2 uses
  br i1 %.not358, label %bb.eu, label %bb.ez

bb.eu:                                            ; preds = %bb.et
  %i.abx = getelementptr inbounds nuw i8, ptr %.01057, i64 145
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !595, !range !216, !noundef !217
  %i.abz = trunc nuw i8 %i.aby to i1
  br i1 %i.abz, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  br i1 %.0316, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.sroa.0826.0.vec.extract = extractelement <2 x float> %i.abv, i64 0
  %i.aca = getelementptr inbounds nuw i8, ptr %.01057, i64 32
  store float %.sroa.0826.0.vec.extract, ptr %i.aca, align 8, !tbaa !632
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.0311 = phi i1 [ %i.gu, %bb.ev ], [ true, %bb.ew ] ; 2 uses
  br i1 %.0315, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %.sroa.0826.4.vec.extract = extractelement <2 x float> %i.abv, i64 1
  %i.acb = getelementptr inbounds nuw i8, ptr %.01057, i64 36
  store float %.sroa.0826.4.vec.extract, ptr %i.acb, align 4, !tbaa !586
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512

bb.ez:                                            ; preds = %bb.eu, %bb.et
  %i.acc = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.acd = load i8, ptr %i.acc, align 8, !tbaa !326
  %i.ace = icmp sgt i8 %i.acd, 0
  br i1 %i.ace, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.acf = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !325
  %i.ach = icmp sgt i8 %i.acg, 0
  br i1 %i.ach, label %.thread1078, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512

bb.fb:                                            ; preds = %bb.ez
  br i1 %.0316, label %.thread1078, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aci = getelementptr inbounds nuw i8, ptr %.01057, i64 171
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !614, !range !216, !noundef !217
  %i.ack = trunc nuw i8 %i.acj to i1
  br i1 %i.ack, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.acl = getelementptr inbounds nuw i8, ptr %.01057, i64 32
  %i.acm = load float, ptr %i.acl, align 8, !tbaa !632 ; 2 uses
  %.sroa.0826.0.vec.extract828 = extractelement <2 x float> %i.abv, i64 0 ; 2 uses
  %i.acn = fcmp oge float %i.acm, %.sroa.0826.0.vec.extract828
  %i.aco = select i1 %i.acn, float %i.acm, float %.sroa.0826.0.vec.extract828
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %.sroa.0826.0.vec.extract830 = extractelement <2 x float> %i.abv, i64 0
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.acp = phi float [ %i.aco, %bb.fd ], [ %.sroa.0826.0.vec.extract830, %bb.fe ]
  %i.acq = getelementptr inbounds nuw i8, ptr %.01057, i64 32
  store float %i.acp, ptr %i.acq, align 8, !tbaa !632
  br label %.thread1078

.thread1078:                                      ; preds = %bb.fa, %bb.ff, %bb.fb
  %.1312 = phi i1 [ %i.gu, %bb.fb ], [ true, %bb.ff ], [ %i.gu, %bb.fa ] ; 4 uses
  br i1 %.0315, label %bb.fl, label %bb.fg

bb.fg:                                            ; preds = %.thread1078
  %i.acr = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !325
  %i.act = icmp sgt i8 %i.acs, 0
  br i1 %i.act, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  %i.acu = getelementptr inbounds nuw i8, ptr %.01057, i64 171
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !614, !range !216, !noundef !217
  %i.acw = trunc nuw i8 %i.acv to i1
  br i1 %i.acw, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.acx = getelementptr inbounds nuw i8, ptr %.01057, i64 36
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !586 ; 2 uses
  %.sroa.0826.4.vec.extract835 = extractelement <2 x float> %i.abv, i64 1 ; 2 uses
  %i.acz = fcmp oge float %i.acy, %.sroa.0826.4.vec.extract835
  %i.ada = select i1 %i.acz, float %i.acy, float %.sroa.0826.4.vec.extract835
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %.sroa.0826.4.vec.extract833 = extractelement <2 x float> %i.abv, i64 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.adb = phi float [ %i.ada, %bb.fi ], [ %.sroa.0826.4.vec.extract833, %bb.fj ]
  %i.adc = getelementptr inbounds nuw i8, ptr %.01057, i64 36
  store float %i.adb, ptr %i.adc, align 4, !tbaa !586
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fg, %.thread1078
  %.0309 = phi i1 [ %i.gu, %.thread1078 ], [ true, %bb.fk ], [ %i.gu, %bb.fg ] ; 4 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.01057, i64 145
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !595, !range !216, !noundef !217
  %i.adf = trunc nuw i8 %i.ade to i1
  br i1 %i.adf, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.adg = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.01057, i64 12
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !392
  %i.adj = and i32 %i.adi, 256
  %.not.i511 = icmp eq i32 %i.adj, 0
  br i1 %.not.i511, label %bb.fn, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512

bb.fn:                                            ; preds = %bb.fm
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 12436 ; 2 uses
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !448
  %i.adm = fcmp ugt float %i.adl, 0.000000e+00
  br i1 %i.adm, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adg, i64 28
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !506
  store float %i.ado, ptr %i.adk, align 4, !tbaa !448
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512: ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fa, %bb.fl, %bb.ex, %bb.ey
  %.2313 = phi i1 [ %.1312, %bb.fl ], [ %.0311, %bb.ey ], [ %i.gu, %bb.fa ], [ %.0311, %bb.ex ], [ %.1312, %bb.fm ], [ %.1312, %bb.fn ], [ %.1312, %bb.fo ] ; 2 uses
  %.1310 = phi i1 [ %.0309, %bb.fl ], [ true, %bb.ey ], [ %i.gu, %bb.fa ], [ %i.gu, %bb.ex ], [ %.0309, %bb.fm ], [ %.0309, %bb.fn ], [ %.0309, %bb.fo ] ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.01057, i64 32 ; 8 uses
  %.val448 = load i64, ptr %i.adp, align 8, !tbaa !75
  %i.adq = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %.01057, i64 %.val448) ; 3 uses
  store <2 x float> %i.adq, ptr %i.adp, align 8, !tbaa !75
  %i.adr = getelementptr inbounds nuw i8, ptr %.01057, i64 145 ; 4 uses
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !595, !range !216, !noundef !217
  %i.adt = trunc nuw i8 %i.ads to i1
  %i.adu = select i1 %i.adt, i1 %.not346, i1 false
  br i1 %i.adu, label %bb.fp, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512._crit_edge

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512._crit_edge: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.01057, i64 12
  %.pre1134 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !392
  br label %bb.fs

bb.fp:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512
  %i.adv = getelementptr inbounds nuw i8, ptr %.01057, i64 16 ; 2 uses
  %i.adw = load <2 x float>, ptr %i.adv, align 8, !tbaa !75
  %i.adx = getelementptr inbounds nuw i8, ptr %.01057, i64 12
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !392 ; 2 uses
  %i.adz = and i32 %i.ady, 1
  %.not.i.i513 = icmp eq i32 %i.adz, 0
  br i1 %.not.i.i513, label %bb.fq, label %_ZNK11ImGuiWindow12TitleBarRectEv.exit521

bb.fq:                                            ; preds = %bb.fp
  %i.aea = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 6532
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !517
  %i.aed = load float, ptr %i.xz, align 8, !tbaa !330
  %i.aee = fmul float %i.aec, %i.aed              ; 2 uses
  %i.aef = load ptr, ptr %i.yc, align 8, !tbaa !518 ; 2 uses
  %.not.i.i.i518 = icmp eq ptr %i.aef, null
  br i1 %.not.i.i.i518, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i519, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 608
  %i.aeh = load float, ptr %i.aeg, align 8, !tbaa !330
  %i.aei = fmul float %i.aee, %i.aeh
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i519

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i519:    ; preds = %bb.fr, %bb.fq
  %.0.i.i.i520 = phi float [ %i.aei, %bb.fr ], [ %i.aee, %bb.fq ]
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aea, i64 5536
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !298
  %i.ael = call float @llvm.fmuladd.f32(float %i.aek, float 2.000000e+00, float %.0.i.i.i520)
  br label %_ZNK11ImGuiWindow12TitleBarRectEv.exit521

_ZNK11ImGuiWindow12TitleBarRectEv.exit521:        ; preds = %bb.fp, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i519
  %i.aem = phi float [ %i.ael, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i519 ], [ 0.000000e+00, %bb.fp ]
  %i.aen = insertelement <2 x float> %i.adq, float %i.aem, i64 1
  %i.aeo = fadd <2 x float> %i.adw, %i.aen
  %i.aep = load <2 x float>, ptr %i.adv, align 8, !tbaa !75
  %i.aeq = fsub <2 x float> %i.aeo, %i.aep
  br label %bb.fs

bb.fs:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512._crit_edge, %_ZNK11ImGuiWindow12TitleBarRectEv.exit521
  %i.aer = phi i32 [ %i.ady, %_ZNK11ImGuiWindow12TitleBarRectEv.exit521 ], [ %.pre1134, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512._crit_edge ] ; 2 uses
  %.sroa.071.0 = phi <2 x float> [ %i.aeq, %_ZNK11ImGuiWindow12TitleBarRectEv.exit521 ], [ %i.adq, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit512._crit_edge ]
  %i.aes = getelementptr inbounds nuw i8, ptr %.01057, i64 24 ; 20 uses
  store <2 x float> %.sroa.071.0, ptr %i.aes, align 8, !tbaa !75
  %i.aet = getelementptr inbounds nuw i8, ptr %.01057, i64 12 ; 10 uses
  %i.aeu = and i32 %i.aer, 1
  %.not.i522 = icmp eq i32 %i.aeu, 0
  br i1 %.not.i522, label %bb.ft, label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit

bb.ft:                                            ; preds = %bb.fs
  %i.aev = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 6532
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !517
  %i.aey = load float, ptr %i.xz, align 8, !tbaa !330
  %i.aez = fmul float %i.aex, %i.aey              ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5ImGui5BeginEPKcPbi:bb.a

.thread1079:                                      ; preds = %bb.jb
  %i.bcn = getelementptr inbounds nuw i8, ptr %.01057, i64 140
  store i8 1, ptr %i.bcn, align 4, !tbaa !592
  %.pre1151 = trunc nuw i8 %i.bck to i1
  br i1 %.pre1151, label %.split1313.thread, label %bb.jh

bb.jc:                                            ; preds = %bb.jb
  %.sroa.0804.0.vec.extract = extractelement <2 x float> %.sroa.0804.0, i64 0
  %i.bco = trunc nuw i8 %i.bck to i1              ; 2 uses
  br i1 %i.bco, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  %i.bcq = load float, ptr %i.bcp, align 4, !tbaa !643
  br label %bb.je

bb.je:                                            ; preds = %bb.jc, %bb.jd
  %i.bcr = phi float [ %i.bcq, %bb.jd ], [ 0.000000e+00, %bb.jc ]
  %i.bcs = fsub float %i.bcd, %i.bcr
  %i.bct = fcmp ogt float %.sroa.0804.0.vec.extract, %i.bcs
  %i.bcu = and i32 %.1, 8
  %.not367 = icmp eq i32 %i.bcu, 0
  %or.cond400 = select i1 %i.bct, i1 %.not367, i1 false
  br i1 %or.cond400, label %bb.jf, label %.thread1080

.thread1080:                                      ; preds = %bb.je
  %i.bcv = getelementptr inbounds nuw i8, ptr %.01057, i64 140
  store i8 0, ptr %i.bcv, align 4, !tbaa !592
  br label %bb.ji

bb.jf:                                            ; preds = %bb.je
  %i.bcw = lshr i32 %.1, 11                       ; 2 uses
  %i.bcx = trunc i32 %i.bcw to i8
  %i.bcy = and i8 %i.bcx, 1
  %i.bcz = getelementptr inbounds nuw i8, ptr %.01057, i64 140
  store i8 %i.bcy, ptr %i.bcz, align 4, !tbaa !592
  %i.bda = trunc i32 %i.bcw to i1
  br i1 %i.bda, label %bb.jg, label %bb.ji

bb.jg:                                            ; preds = %bb.jf
  br i1 %i.bco, label %.split1313.thread, label %bb.jh

bb.jh:                                            ; preds = %.thread1079, %bb.jg
  %.sroa.0804.4.vec.extract807 = extractelement <2 x float> %.sroa.0804.0, i64 1
  %i.bdb = fcmp ogt float %.sroa.0804.4.vec.extract807, %i.bcf
  %i.bdc = and i32 %.1, 8
  %.not368 = icmp eq i32 %i.bdc, 0
  %narrow = select i1 %i.bdb, i1 %.not368, i1 false
  %i.bdd = zext i1 %narrow to i8                  ; 2 uses
  store i8 %i.bdd, ptr %i.bcl, align 1, !tbaa !642
  br label %bb.ji

bb.ji:                                            ; preds = %.thread1080, %bb.jh, %bb.jf
  %i.bde = phi i8 [ %i.bdd, %bb.jh ], [ %i.bck, %.thread1080 ], [ %i.bck, %bb.jf ]
  %i.bdf = phi i1 [ true, %bb.jh ], [ false, %.thread1080 ], [ false, %bb.jf ] ; 2 uses
  %i.bdg = trunc nuw i8 %i.bde to i1
  br i1 %i.bdg, label %.split1313, label %bb.jj

.split1313.thread:                                ; preds = %bb.jg, %.thread1079
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !643
  br label %bb.jk

.split1313:                                       ; preds = %bb.ji
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !643 ; 2 uses
  br i1 %i.bdf, label %bb.jk, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  br i1 %i.bdf, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.split1313.thread, %.split1313, %bb.jj
  %i.bdl = phi i32 [ %i.bdk, %.split1313 ], [ 0, %bb.jj ], [ %i.bdi, %.split1313.thread ]
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !643
  br label %bb.jl

bb.jl:                                            ; preds = %.split1313, %bb.jj, %bb.jk
  %i.bdo = phi i32 [ %i.bdl, %bb.jk ], [ 0, %bb.jj ], [ %i.bdk, %.split1313 ]
  %i.bdp = phi i32 [ %i.bdn, %bb.jk ], [ 0, %bb.jj ], [ 0, %.split1313 ]
  store i32 %i.bdo, ptr %i.bbs, align 4, !tbaa !75
  store i32 %i.bdp, ptr %i.bbt, align 8, !tbaa !75
  br label %bb.jm

bb.jm:                                            ; preds = %.thread1299, %bb.jl, %bb.iv
  %i.bdq = phi ptr [ %i.alt, %.thread1299 ], [ %i.bbi, %bb.jl ], [ %i.bbh, %bb.iv ]
  %or.cond19 = or i1 %i.ng, %i.uf
  %or.cond401 = select i1 %.not346, i1 true, i1 %or.cond19 ; 3 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.jj, i64 520
  %i.bds = select i1 %or.cond401, ptr %23, ptr %i.bdr
  %.sroa.0786.0.copyload = load <2 x float>, ptr %i.bds, align 4, !tbaa !75 ; 7 uses
  %.sroa.gep821 = getelementptr inbounds nuw i8, ptr %i.jj, i64 528
  %.sroa.sel = select i1 %or.cond401, ptr %i.ajv, ptr %.sroa.gep821
  %.sroa.10796.0.copyload = load <2 x float>, ptr %.sroa.sel, align 4, !tbaa !75 ; 7 uses
  %i.bdt = load <2 x float>, ptr %i.akt, align 8, !tbaa !75 ; 5 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %.01057, i64 28 ; 6 uses
  %i.bdv = load <2 x float>, ptr %i.aes, align 8, !tbaa !75 ; 3 uses
  %i.bdw = fadd <2 x float> %i.bdt, %i.bdv        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #39
  %i.bdx = load float, ptr %i.adp, align 8, !tbaa !632
  %i.bdy = load i32, ptr %i.aet, align 4, !tbaa !392
  %i.bdz = and i32 %i.bdy, 1
  %.not.i.i594 = icmp eq i32 %i.bdz, 0
  br i1 %.not.i.i594, label %bb.jn, label %_ZNK11ImGuiWindow12TitleBarRectEv.exit602

bb.jn:                                            ; preds = %bb.jm
  %i.bea = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 6532
  %i.bec = load float, ptr %i.beb, align 4, !tbaa !517
  %i.bed = load float, ptr %i.xz, align 8, !tbaa !330
  %i.bee = fmul float %i.bec, %i.bed              ; 2 uses
  %i.bef = load ptr, ptr %i.yc, align 8, !tbaa !518 ; 2 uses
  %.not.i.i.i599 = icmp eq ptr %i.bef, null
  br i1 %.not.i.i.i599, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 608
  %i.beh = load float, ptr %i.beg, align 8, !tbaa !330
  %i.bei = fmul float %i.bee, %i.beh
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600:    ; preds = %bb.jo, %bb.jn
  %.0.i.i.i601 = phi float [ %i.bei, %bb.jo ], [ %i.bee, %bb.jn ]
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bea, i64 5536
  %i.bek = load float, ptr %i.bej, align 4, !tbaa !298
  %i.bel = call float @llvm.fmuladd.f32(float %i.bek, float 2.000000e+00, float %.0.i.i.i601)
  br label %_ZNK11ImGuiWindow12TitleBarRectEv.exit602

_ZNK11ImGuiWindow12TitleBarRectEv.exit602:        ; preds = %bb.jm, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600
  %i.bem = phi float [ %i.bel, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600 ], [ 0.000000e+00, %bb.jm ]
  %i.ben = insertelement <2 x float> poison, float %i.bdx, i64 0
  %i.beo = insertelement <2 x float> %i.ben, float %i.bem, i64 1
  %i.bep = fadd <2 x float> %i.bdt, %i.beo
  %i.beq = load <2 x float>, ptr %i.akt, align 8  ; 4 uses
  store <2 x float> %i.beq, ptr %25, align 8
  %i.ber = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  store <2 x float> %i.bep, ptr %i.ber, align 8
  %i.bes = getelementptr inbounds nuw i8, ptr %.01057, i64 440
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.01057, i64 448
  %i.bet = extractelement <2 x float> %i.bdt, i64 1
  %i.beu = fcmp oge <2 x float> %i.bdt, %.sroa.0786.0.copyload
  %i.bev = select <2 x i1> %i.beu, <2 x float> %i.bdt, <2 x float> %.sroa.0786.0.copyload
  store <2 x float> %i.bev, ptr %i.bes, align 8, !tbaa !75
  %i.bew = fcmp olt <2 x float> %i.bdw, %.sroa.10796.0.copyload
  %i.bex = select <2 x i1> %i.bew, <2 x float> %i.bdw, <2 x float> %.sroa.10796.0.copyload
  store <2 x float> %i.bex, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !75
  %i.bey = extractelement <2 x float> %i.beq, i64 0
  %i.bez = getelementptr inbounds nuw i8, ptr %.01057, i64 456 ; 2 uses
  store float %i.bey, ptr %i.bez, align 8, !tbaa !1013
  %i.bfa = fadd float %i.afy, %i.bet              ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.01057, i64 460 ; 2 uses
  store float %i.bfa, ptr %i.bfb, align 4, !tbaa !1014
  %i.bfc = extractelement <2 x float> %i.bdv, i64 0 ; 2 uses
  %foldExtExtBinop1339 = fadd <2 x float> %i.bdv, %i.beq
  %i.bfd = getelementptr inbounds nuw i8, ptr %.01057, i64 132 ; 3 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %.01057, i64 464
  %i.bff = getelementptr inbounds nuw i8, ptr %.01057, i64 136 ; 2 uses
  %i.bfg = load <2 x float>, ptr %i.bfd, align 4, !tbaa !75
  %i.bfh = shufflevector <2 x float> %foldExtExtBinop1339, <2 x float> %i.bdw, <2 x i32> <i32 0, i32 3>
  %i.bfi = fsub <2 x float> %i.bfh, %i.bfg        ; 3 uses
  store <2 x float> %i.bfi, ptr %i.bfe, align 8, !tbaa !75
  %i.bfj = and i32 %.1, 1025
  %brmerge402.not = icmp eq i32 %i.bfj, 1
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.g, i64 5544
  %i.bfl = getelementptr inbounds nuw i8, ptr %.01057, i64 76 ; 6 uses
  %.in370 = select i1 %brmerge402.not, ptr %i.bfl, ptr %i.bfk
  %i.bfm = load float, ptr %.in370, align 4, !tbaa !75
  %i.bfn = load float, ptr %i.zg, align 8, !tbaa !644
  %i.bfo = fmul float %i.bfn, 5.000000e-01
  %i.bfp = fptosi float %i.bfo to i32
  %i.bfq = sitofp i32 %i.bfp to float             ; 2 uses
  %i.bfr = load float, ptr %i.bfl, align 4, !tbaa !1000 ; 3 uses
  %i.bfs = fcmp ole float %i.bfr, %i.bfq
  %i.bft = select i1 %i.bfs, float %i.bfq, float %i.bfr
  %i.bfu = getelementptr inbounds nuw i8, ptr %.01057, i64 472
  %i.bfv = getelementptr inbounds nuw i8, ptr %.01057, i64 480
  %i.bfw = insertelement <2 x float> %i.beq, float %i.bfa, i64 1 ; 2 uses
  %i.bfx = fadd <2 x float> %i.bfw, splat (float 5.000000e-01)
  %i.bfy = insertelement <2 x float> poison, float %i.bft, i64 0 ; 2 uses
  %i.bfz = insertelement <2 x float> %i.bfy, float %i.bfm, i64 1
  %i.bga = fadd <2 x float> %i.bfx, %i.bfz
  %i.bgb = fptosi <2 x float> %i.bga to <2 x i32>
  %i.bgc = sitofp <2 x i32> %i.bgb to <2 x float> ; 3 uses
  %i.bgd = fcmp ogt <2 x float> %.sroa.0786.0.copyload, %i.bgc
  %i.bge = fcmp olt <2 x float> %.sroa.10796.0.copyload, %i.bgc
  %i.bgf = select <2 x i1> %i.bge, <2 x float> %.sroa.10796.0.copyload, <2 x float> %i.bgc
  %i.bgg = select <2 x i1> %i.bgd, <2 x float> %.sroa.0786.0.copyload, <2 x float> %i.bgf
  store <2 x float> %i.bgg, ptr %i.bfu, align 8, !tbaa !75
  %i.bgh = fadd <2 x float> %i.bfi, splat (float 5.000000e-01)
  %i.bgi = insertelement <2 x float> %i.bfy, float %i.bfr, i64 1
  %i.bgj = fsub <2 x float> %i.bgh, %i.bgi
  %i.bgk = fptosi <2 x float> %i.bgj to <2 x i32>
  %i.bgl = sitofp <2 x i32> %i.bgk to <2 x float> ; 3 uses
  %i.bgm = fcmp ogt <2 x float> %.sroa.0786.0.copyload, %i.bgl
  %i.bgn = fcmp olt <2 x float> %.sroa.10796.0.copyload, %i.bgl
  %i.bgo = select <2 x i1> %i.bgn, <2 x float> %.sroa.10796.0.copyload, <2 x float> %i.bgl
  %i.bgp = select <2 x i1> %i.bgm, <2 x float> %.sroa.0786.0.copyload, <2 x float> %i.bgo
  store <2 x float> %i.bgp, ptr %i.bfv, align 8, !tbaa !75
  %i.bgq = fcmp ule float %i.bfc, 0.000000e+00
  %.not347.not = xor i1 %.not347, true
  %brmerge404 = select i1 %i.bgq, i1 true, i1 %.not347.not
  %brmerge405 = or i1 %.not358, %brmerge404
  br i1 %brmerge405, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %_ZNK11ImGuiWindow12TitleBarRectEv.exit602
  %i.bgr = fmul nnan float %i.bfc, 6.500000e-01
  br label %bb.jr

bb.jq:                                            ; preds = %_ZNK11ImGuiWindow12TitleBarRectEv.exit602
  %i.bgs = load float, ptr %i.ali, align 8, !tbaa !294
  %i.bgt = fmul float %i.bgs, 1.600000e+01
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.sink.in.in = phi float [ %i.bgt, %bb.jq ], [ %i.bgr, %bb.jp ]
  %.sink.in = fptosi float %.sink.in.in to i32
  %.sink = sitofp i32 %.sink.in to float
  %i.bgu = getelementptr inbounds nuw i8, ptr %.01057, i64 568 ; 2 uses
  store float %.sink, ptr %i.bgu, align 8, !tbaa !645
  %i.bgv = load float, ptr %i.zg, align 8, !tbaa !644
  %i.bgw = fsub <2 x float> %i.bfi, %i.bfw
  %i.bgx = getelementptr inbounds nuw i8, ptr %.01057, i64 100
  %i.bgy = getelementptr inbounds nuw i8, ptr %.01057, i64 44
  %i.bgz = getelementptr inbounds nuw i8, ptr %.01057, i64 68 ; 3 uses
  %i.bha = load float, ptr %i.bgz, align 4, !tbaa !646
  %i.bhb = getelementptr inbounds nuw i8, ptr %.01057, i64 104
  %i.bhc = load <2 x float>, ptr %i.wv, align 8, !tbaa !75
  %i.bhd = insertelement <2 x float> poison, float %i.bgv, i64 0
  %i.bhe = insertelement <2 x float> %i.bhd, float %i.bha, i64 1
  %i.bhf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhe, <2 x float> splat (float 2.000000e+00), <2 x float> %i.bhc)
  %i.bhg = fsub <2 x float> %i.bhf, %i.bgw        ; 2 uses
  %i.bhh = fcmp ole <2 x float> %i.bhg, zeroinitializer
  %i.bhi = select <2 x i1> %i.bhh, <2 x float> zeroinitializer, <2 x float> %i.bhg
  store <2 x float> %i.bhi, ptr %i.bgx, align 4, !tbaa !75
  %i.bhj = call fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.bhk = getelementptr inbounds nuw i8, ptr %.01057, i64 92 ; 2 uses
  store <2 x float> %i.bhj, ptr %i.bhk, align 4, !tbaa !75
  %i.bhl = getelementptr inbounds nuw i8, ptr %.01057, i64 108
  store i32 2139095039, ptr %i.bhl, align 4, !tbaa !75
  %.sroa_idx783 = getelementptr inbounds nuw i8, ptr %.01057, i64 112
  store i32 2139095039, ptr %.sroa_idx783, align 8, !tbaa !75
  %i.bhm = load ptr, ptr %i.vk, align 8, !tbaa !292
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.g, i64 6520
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !293
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 64
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !542
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !497
  call void @_ZN10ImDrawList13PushTextureIDEPv(ptr noundef nonnull align 8 dereferenceable(196) %i.bhm, ptr noundef %i.bhs)
  %i.bht = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 7184
  %i.bhv = load ptr, ptr %i.bhu, align 8, !tbaa !214 ; 3 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 144
  store i8 1, ptr %i.bhw, align 8, !tbaa !393
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhv, i64 616 ; 2 uses
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !292
  call void @_ZN10ImDrawList12PushClipRectE6ImVec2S0_b(ptr noundef nonnull align 8 dereferenceable(196) %i.bhy, <2 x float> %.sroa.0786.0.copyload, <2 x float> %.sroa.10796.0.copyload, i1 noundef zeroext false)
  %i.bhz = load ptr, ptr %i.bhx, align 8, !tbaa !292 ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 88
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhz, i64 96
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !335
  %i.bid = load i32, ptr %i.bia, align 8, !tbaa !647
  %i.bie = sext i32 %i.bid to i64
  %i.bif = getelementptr [16 x i8], ptr %i.bic, i64 %i.bie
  %i.big = getelementptr i8, ptr %i.bif, i64 -16
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bhv, i64 520
  %i.bii = load <4 x float>, ptr %i.big, align 4, !tbaa !75
  store <4 x float> %i.bii, ptr %i.bih, align 8, !tbaa !75
  %i.bij = and i32 %.1, 134217728
  %.not371 = icmp eq i32 %i.bij, 0
  br i1 %.not371, label %bb.jx, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bik = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 7640
  %i.bim = load i32, ptr %i.bil, align 8, !tbaa !509 ; 2 uses
  %i.bin = icmp slt i32 %i.bim, 1
  br i1 %i.bin, label %_ZN5ImGui20GetTopMostPopupModalEv.exit, label %.lr.ph.i620

.lr.ph.i620:                                      ; preds = %bb.js
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bik, i64 7648
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !513
  %i.biq = zext nneg i32 %i.bim to i64
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jv, %.lr.ph.i620
  %indvars.iv.i621 = phi i64 [ %i.biq, %.lr.ph.i620 ], [ %indvars.iv.next.i622, %bb.jv ] ; 2 uses
  %indvars.iv.next.i622 = add nsw i64 %indvars.iv.i621, -1 ; 2 uses
  %i.bir = getelementptr inbounds nuw [48 x i8], ptr %i.bip, i64 %indvars.iv.next.i622
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 8
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !514 ; 3 uses
  %.not.i623 = icmp eq ptr %i.bit, null
  br i1 %.not.i623, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 12
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !392
  %i.biw = and i32 %i.biv, 134217728
  %.not15.i = icmp eq i32 %i.biw, 0
  br i1 %.not15.i, label %bb.jv, label %_ZN5ImGui20GetTopMostPopupModalEv.exit

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.bix = icmp samesign ult i64 %indvars.iv.i621, 2
  br i1 %i.bix, label %_ZN5ImGui20GetTopMostPopupModalEv.exit, label %bb.jt, !llvm.loop !30

_ZN5ImGui20GetTopMostPopupModalEv.exit:           ; preds = %bb.ju, %bb.jv, %bb.js
  %spec.select.i = phi ptr [ null, %bb.js ], [ null, %bb.jv ], [ %i.bit, %bb.ju ]
  %i.biy = icmp eq ptr %.01057, %spec.select.i
  br i1 %i.biy, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %_ZN5ImGui20GetTopMostPopupModalEv.exit
  %i.biz = load i8, ptr %i.ws, align 1, !tbaa !637
  %i.bja = icmp slt i8 %i.biz, 1
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %_ZN5ImGui20GetTopMostPopupModalEv.exit, %bb.jr
  %i.bjb = phi i1 [ false, %_ZN5ImGui20GetTopMostPopupModalEv.exit ], [ false, %bb.jr ], [ %i.bja, %bb.jw ] ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.g, i64 7992 ; 3 uses
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !558 ; 2 uses
  %.not372 = icmp eq ptr %i.bjd, null
  br i1 %.not372, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 832
  %i.bjf = load ptr, ptr %i.bje, align 8, !tbaa !390
  %i.bjg = icmp eq ptr %.01057, %i.bjf
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.bjh = phi i1 [ false, %bb.jx ], [ %i.bjg, %bb.jy ] ; 2 uses
  %or.cond21 = select i1 %i.bjb, i1 true, i1 %i.bjh
  br i1 %or.cond21, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.bji = getelementptr inbounds nuw i8, ptr %i.g, i64 8052
  %i.bjj = load float, ptr %i.bji, align 4, !tbaa !560
  %i.bjk = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 5472
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjk, i64 5672
  %i.bjn = select i1 %i.bjb, i64 52, i64 51
  %i.bjo = getelementptr inbounds nuw [16 x i8], ptr %i.bjm, i64 %i.bjn
  %i.bjp = load float, ptr %i.bjl, align 4, !tbaa !278
  %i.bjq = load <4 x float>, ptr %i.bjo, align 4, !tbaa !75
  %i.bjr = fmul float %i.bjj, %i.bjp
  %i.bjs = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bjr, i64 3
  %i.bjt = fmul <4 x float> %i.bjq, %i.bjs        ; 3 uses
  %i.bju = fcmp olt <4 x float> %i.bjt, zeroinitializer
  %i.bjv = fcmp ogt <4 x float> %i.bjt, splat (float 1.000000e+00)
  %i.bjw = select <4 x i1> %i.bjv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bjt
  %i.bjx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bjw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bjy = select <4 x i1> %i.bju, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bjx
  %i.bjz = fptosi <4 x float> %i.bjy to <4 x i32>
  %i.bka = shl <4 x i32> %i.bjz, <i32 0, i32 8, i32 16, i32 24>
  %i.bkb = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bka)
  %i.bkc = load ptr, ptr %i.vk, align 8, !tbaa !292
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bkc, ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(8) %i.ajv, i32 noundef %i.bkb, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.kb

bb.kb:                                            ; preds = %bb.jz, %bb.ka
  br i1 %i.bjh, label %bb.kc, label %bb.kf

bb.kc:                                            ; preds = %bb.kb
  %i.bkd = load ptr, ptr %i.bjc, align 8, !tbaa !558
  %i.bke = icmp eq ptr %.01057, %i.bkd
  br i1 %i.bke, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #39
  %i.bkf = load float, ptr %i.ali, align 8, !tbaa !294
  %i.bkg = load <2 x float>, ptr %i.akt, align 8, !tbaa !75 ; 2 uses
  %i.bkh = load <2 x float>, ptr %i.aes, align 8, !tbaa !75
  %i.bki = fadd <2 x float> %i.bkg, %i.bkh
  %i.bkj = shufflevector <2 x float> %i.bkg, <2 x float> %i.bki, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bkk = insertelement <4 x float> poison, float %i.bkf, i64 0
  %i.bkl = shufflevector <4 x float> %i.bkk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bkm = fsub <4 x float> %i.bkj, %i.bkl
  %i.bkn = fadd <4 x float> %i.bkj, %i.bkl
  %i.bko = shufflevector <4 x float> %i.bkm, <4 x float> %i.bkn, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  store <4 x float> %i.bko, ptr %26, align 16, !tbaa !75
  %i.bkp = load <4 x float>, ptr %23, align 16    ; 2 uses
  %i.bkq = fcmp ole <4 x float> %i.bkp, %i.bko
  %i.bkr = fcmp oge <4 x float> %i.bkp, %i.bko
  %i.bks = shufflevector <4 x i1> %i.bkr, <4 x i1> %i.bkq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bkt = freeze <4 x i1> %i.bks
  %i.bku = bitcast <4 x i1> %i.bkt to i4
  %i.bkv = icmp eq i4 %i.bku, -1
  br i1 %i.bkv, label %bb.ke, label %_ZNK6ImRect8ContainsERKS_.exit.thread

_ZNK6ImRect8ContainsERKS_.exit.thread:            ; preds = %bb.kd
  %i.bkw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bkx = load ptr, ptr %i.vk, align 8, !tbaa !292
  %i.bky = getelementptr inbounds nuw i8, ptr %i.g, i64 8012
  %i.bkz = load float, ptr %i.bky, align 4, !tbaa !559
  %i.bla = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 5472
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bla, i64 6472
  %i.bld = load float, ptr %i.blb, align 4, !tbaa !278
  %i.ble = fmul float %i.bkz, 2.500000e-01
  %i.blf = load <4 x float>, ptr %i.blc, align 4, !tbaa !75
  %i.blg = fmul float %i.ble, %i.bld
  %i.blh = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.blg, i64 3
  %i.bli = fmul <4 x float> %i.blf, %i.blh        ; 3 uses
end_hunk_3
