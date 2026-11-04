Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_impl_opengl3?download=true
inline.NumInlined: 39
inline.NumDeleted: 18
begin_hunk_0_@_Z37ImGui_ImplOpenGL3_CreateDeviceObjectsv:bb.a
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 96), align 8, !tbaa !14
  call void %i.aa(i32 noundef %i.y)
  call fastcc void @_ZL11CheckShaderjPKc(i32 noundef %i.y, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store ptr %i.q, ptr %i.h, align 16, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.0, ptr %i.ab, align 8, !tbaa !13
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 112), align 8, !tbaa !14
  %i.ad = call noundef i32 %i.ac(i32 noundef 35632) ; 6 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 360), align 8, !tbaa !14
  call void %i.ae(i32 noundef %i.ad, i32 noundef 2, ptr noundef nonnull %i.h, ptr noundef null)
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 96), align 8, !tbaa !14
  call void %i.af(i32 noundef %i.ad)
  call fastcc void @_ZL11CheckShaderjPKc(i32 noundef %i.ad, ptr noundef nonnull @.str.16)
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 104), align 8, !tbaa !14
  %i.ah = call noundef i32 %i.ag()                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 11 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !37
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 8), align 8, !tbaa !14
  call void %i.aj(i32 noundef %i.ah, i32 noundef %i.y)
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 8), align 8, !tbaa !14
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !37
  call void %i.ak(i32 noundef %i.al, i32 noundef %i.ad)
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 320), align 8, !tbaa !14
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !37
  call void %i.am(i32 noundef %i.an)
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !37 ; 3 uses
  %i.ap = call noundef ptr @_ZN5ImGui17GetCurrentContextEv()
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29
  br label %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit.i

_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit.i:    ; preds = %bb.f, %bb.e
  %i.at = phi ptr [ %i.as, %bb.f ], [ null, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !31
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 264), align 8, !tbaa !14
  call void %i.au(i32 noundef %i.ao, i32 noundef 35714, ptr noundef nonnull %i.a), !inline_history !70
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 264), align 8, !tbaa !14
  call void %i.av(i32 noundef %i.ao, i32 noundef 35716, ptr noundef nonnull %i.b), !inline_history !70
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ax = and i32 %i.aw, 255
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit.i
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ba) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit.i
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !31  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %_ZL12CheckProgramjPKc.exit

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.be = add nuw nsw i32 %i.bc, 1                ; 2 uses
  %i.bf = call i32 @llvm.umax.i32(i32 %i.be, i32 8) ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bg)
          to label %.noexc6.i unwind label %bb.l  ; 5 uses

.noexc6.i:                                        ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre1.i = load i32, ptr %i.b, align 4, !tbaa !31
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 256), align 8, !tbaa !14
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !52
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !53
  store i32 %i.be, ptr %0, align 8, !tbaa !54
  invoke void %.pre.i(i32 noundef %i.ao, i32 noundef %.pre1.i, ptr noundef null, ptr noundef %i.bh)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %.noexc6.i
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.79, ptr noundef %i.bh) #19 ; 0 uses
  %.not.i7.i = icmp eq ptr %i.bh, null
  br i1 %.not.i7.i, label %_ZN8ImVectorIcED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bh)
          to label %_ZN8ImVectorIcED2Ev.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #20
  unreachable

_ZN8ImVectorIcED2Ev.exit.i:                       ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  br label %_ZL12CheckProgramjPKc.exit

bb.l:                                             ; preds = %.noexc6.i, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8ImVectorIcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.bo

_ZL12CheckProgramjPKc.exit:                       ; preds = %bb.h, %_ZN8ImVectorIcED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 160), align 8, !tbaa !14
  %i.bq = load i32, ptr %i.ai, align 4, !tbaa !37
  call void %i.bp(i32 noundef %i.bq, i32 noundef %i.y)
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 160), align 8, !tbaa !14
  %i.bs = load i32, ptr %i.ai, align 4, !tbaa !37
  call void %i.br(i32 noundef %i.bs, i32 noundef %i.ad)
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 136), align 8, !tbaa !14
  call void %i.bt(i32 noundef %i.y)
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 136), align 8, !tbaa !14
  call void %i.bu(i32 noundef %i.ad)
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 304), align 8, !tbaa !14
  %i.bw = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.bx = call noundef i32 %i.bv(i32 noundef %i.bw, ptr noundef nonnull @.str.18)
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !55
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 304), align 8, !tbaa !14
  %i.ca = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.cb = call noundef i32 %i.bz(i32 noundef %i.ca, ptr noundef nonnull @.str.19)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !56
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 232), align 8, !tbaa !14
  %i.ce = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.cf = call noundef i32 %i.cd(i32 noundef %i.ce, ptr noundef nonnull @.str.20)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !57
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 232), align 8, !tbaa !14
  %i.ci = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.cj = call noundef i32 %i.ch(i32 noundef %i.ci, ptr noundef nonnull @.str.21)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !58
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 232), align 8, !tbaa !14
  %i.cm = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.cn = call noundef i32 %i.cl(i32 noundef %i.cm, ptr noundef nonnull @.str.22)
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !59
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 208), align 8, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void %i.cp(i32 noundef 1, ptr noundef nonnull %i.cq)
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 208), align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  call void %i.cr(i32 noundef 1, ptr noundef nonnull %i.cs)
  %i.ct = call noundef zeroext i1 @_Z36ImGui_ImplOpenGL3_CreateFontsTexturev() ; 0 uses
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 32), align 8, !tbaa !14
  %i.cv = load i32, ptr %i.c, align 4, !tbaa !31
  call void %i.cu(i32 noundef 3553, i32 noundef %i.cv)
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 16), align 8, !tbaa !14
  %i.cx = load i32, ptr %i.d, align 4, !tbaa !31
  call void %i.cw(i32 noundef 34962, i32 noundef %i.cx)
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 40), align 8, !tbaa !14
  %i.cz = load i32, ptr %i.e, align 4, !tbaa !31
  call void %i.cy(i32 noundef %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [2 x i32], align 4                ; 4 uses
  %i.h = alloca [4 x i32], align 16               ; 7 uses
  %i.i = alloca [4 x i32], align 16               ; 7 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load <2 x float>, ptr %i.q, align 8, !tbaa !60
  %i.t = load <2 x float>, ptr %i.r, align 8, !tbaa !60
  %i.u = fmul <2 x float> %i.s, %i.t
  %i.v = fptosi <2 x float> %i.u to <2 x i32>
  %.fr = freeze <2 x i32> %i.v                    ; 3 uses
  %1 = icmp slt <2 x i32> %.fr, splat (i32 1)
  %2 = bitcast <2 x i1> %1 to i2
  %or.cond.not = icmp eq i2 %2, 0
  br i1 %or.cond.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef ptr @_ZN5ImGui17GetCurrentContextEv()
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  br label %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit

_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit:      ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.z, %bb.c ], [ null, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ab(i32 noundef 34016, ptr noundef nonnull %i.a)
  %i.ac = load ptr, ptr @imgl3wProcs, align 8, !tbaa !14
  call void %i.ac(i32 noundef 33984)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ad(i32 noundef 35725, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ae(i32 noundef 32873, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ag = icmp ugt i32 %i.af, 329
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ah(i32 noundef 35097, ptr noundef nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit
  store i32 0, ptr %i.d, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ai(i32 noundef 34964, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.aj(i32 noundef 34229, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ak(i32 noundef 2880, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.al(i32 noundef 2978, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.am(i32 noundef 3088, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.an(i32 noundef 32969, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ao(i32 noundef 32968, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ap(i32 noundef 32971, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.aq(i32 noundef 32970, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.ar(i32 noundef 32777, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 248), align 8, !tbaa !14
  call void %i.as(i32 noundef 34877, ptr noundef nonnull %i.o)
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 312), align 8, !tbaa !14
  %i.au = call noundef zeroext i8 %i.at(i32 noundef 3042)
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 312), align 8, !tbaa !14
  %i.aw = call noundef zeroext i8 %i.av(i32 noundef 2884)
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 312), align 8, !tbaa !14
  %i.ay = call noundef zeroext i8 %i.ax(i32 noundef 2929)
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 312), align 8, !tbaa !14
  %i.ba = call noundef zeroext i8 %i.az(i32 noundef 2960)
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 312), align 8, !tbaa !14
  %i.bc = call noundef zeroext i8 %i.bb(i32 noundef 3089)
  %i.bd = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.be = icmp ugt i32 %i.bd, 309
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 312), align 8, !tbaa !14
  %i.bg = call noundef zeroext i8 %i.bf(i32 noundef 36765)
  %i.bh = icmp eq i8 %i.bg, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.not75 = phi i1 [ %i.bh, %bb.g ], [ true, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  store i32 0, ptr %i.p, align 4, !tbaa !31
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 224), align 8, !tbaa !14
  call void %i.bi(i32 noundef 1, ptr noundef nonnull %i.p)
  %i.bj = load i32, ptr %i.p, align 4, !tbaa !31
  %i.bk = extractelement <2 x i32> %.fr, i64 0    ; 2 uses
  %i.bl = extractelement <2 x i32> %.fr, i64 1    ; 3 uses
  call fastcc void @_ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij(ptr noundef nonnull %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bj)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load <2 x float>, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.r, align 8, !tbaa !60 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !75
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = uitofp nneg i32 %i.bl to float
  br label %bb.i

._crit_edge84:                                    ; preds = %._crit_edge, %bb.h
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 152), align 8, !tbaa !14
  call void %i.bu(i32 noundef 1, ptr noundef nonnull %i.p)
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 400), align 8, !tbaa !14
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !31
  call void %i.bv(i32 noundef %i.bw)
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 32), align 8, !tbaa !14
  %i.by = load i32, ptr %i.c, align 4, !tbaa !31
  call void %i.bx(i32 noundef 3553, i32 noundef %i.by)
  %i.bz = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ca = icmp ugt i32 %i.bz, 329
  br i1 %i.ca, label %bb.q, label %bb.r

bb.i:                                             ; preds = %.lr.ph83, %._crit_edge
  %indvars.iv86 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next87, %._crit_edge ] ; 2 uses
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !76
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv86
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !78 ; 8 uses
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 72), align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !95
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.ch, 20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !96
  call void %i.ce(i32 noundef 34962, i64 noundef %i.ci, ptr noundef %i.ck, i32 noundef 35040)
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 72), align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !97
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !98
  call void %i.cl(i32 noundef 34963, i64 noundef %i.cp, ptr noundef %i.cr, i32 noundef 35040)
  %i.cs = load i32, ptr %i.cd, align 8, !tbaa !99
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %bb.j

._crit_edge:                                      ; preds = %.critedge, %bb.i
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.cv = load i32, ptr %i.bp, align 4, !tbaa !75
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next87, %i.cw
  br i1 %i.cx, label %bb.i, label %._crit_edge84, !llvm.loop !71

bb.j:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !100
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %i.cy, i64 %indvars.iv ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !102 ; 2 uses
  %magicptr = ptrtoint ptr %i.db to i64
  switch i64 %magicptr, label %bb.l [
    i64 0, label %bb.m
    i64 -1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.dc = load i32, ptr %i.p, align 4, !tbaa !31
  call fastcc void @_ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij(ptr noundef nonnull %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.dc)
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  call void %i.db(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cz)
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load <2 x float>, ptr %i.cz, align 8, !tbaa !60
  %i.df = fsub <2 x float> %i.de, %i.bn
  %i.dg = fmul <2 x float> %i.bo, %i.df           ; 3 uses
  %i.dh = load <2 x float>, ptr %i.dd, align 8, !tbaa !60
  %i.di = fsub <2 x float> %i.dh, %i.bn
  %i.dj = fmul <2 x float> %i.bo, %i.di           ; 3 uses
  %i.dk = fcmp olt <2 x float> %i.dj, %i.dg
  %3 = freeze <2 x i1> %i.dk
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond79.not = icmp eq i2 %4, 0
  br i1 %or.cond79.not, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 352), align 8, !tbaa !14
  %i.dm = extractelement <2 x float> %i.dg, i64 0
  %i.dn = fptosi float %i.dm to i32
  %i.do = extractelement <2 x float> %i.dj, i64 1
  %i.dp = fsub float %i.bt, %i.do
  %i.dq = fptosi float %i.dp to i32
  %i.dr = fsub <2 x float> %i.dj, %i.dg           ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = fptosi float %i.ds to i32
  %i.du = extractelement <2 x float> %i.dr, i64 1
  %i.dv = fptosi float %i.du to i32
  call void %i.dl(i32 noundef %i.dn, i32 noundef %i.dq, i32 noundef %i.dt, i32 noundef %i.dv)
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 32), align 8, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !103
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = trunc i64 %i.dz to i32
  call void %i.dw(i32 noundef 3553, i32 noundef %i.ea)
  %i.eb = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ec = icmp ugt i32 %i.eb, 319
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !104 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !105
  %i.eh = zext i32 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 1
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 184), align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !106
  call void %i.ek(i32 noundef 4, i32 noundef %i.ee, i32 noundef 5123, ptr noundef %i.ej, i32 noundef %i.em)
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 176), align 8, !tbaa !14
  call void %i.en(i32 noundef 4, i32 noundef %i.ee, i32 noundef 5123, ptr noundef %i.ej)
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.p, %bb.o, %bb.l, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = load i32, ptr %i.cd, align 8, !tbaa !99
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %bb.j, label %._crit_edge, !llvm.loop !72

bb.q:                                             ; preds = %._crit_edge84
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 24), align 8, !tbaa !14
  %i.es = load i32, ptr %i.d, align 4, !tbaa !31
  call void %i.er(i32 noundef 0, i32 noundef %i.es)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge84
  %i.et = load ptr, ptr @imgl3wProcs, align 8, !tbaa !14
  %i.eu = load i32, ptr %i.a, align 4, !tbaa !31
  call void %i.et(i32 noundef %i.eu)
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 40), align 8, !tbaa !14
  %i.ew = load i32, ptr %i.f, align 4, !tbaa !31
  call void %i.ev(i32 noundef %i.ew)
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 16), align 8, !tbaa !14
  %i.ey = load i32, ptr %i.e, align 4, !tbaa !31
  call void %i.ex(i32 noundef 34962, i32 noundef %i.ey)
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 56), align 8, !tbaa !14
  %i.fa = load i32, ptr %i.n, align 4, !tbaa !31
  %i.fb = load i32, ptr %i.o, align 4, !tbaa !31
  call void %i.ez(i32 noundef %i.fa, i32 noundef %i.fb)
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 64), align 8, !tbaa !14
  %i.fd = load i32, ptr %i.j, align 4, !tbaa !31
  %i.fe = load i32, ptr %i.k, align 4, !tbaa !31
  %i.ff = load i32, ptr %i.l, align 4, !tbaa !31
  %i.fg = load i32, ptr %i.m, align 4, !tbaa !31
  call void %i.fc(i32 noundef %i.fd, i32 noundef %i.fe, i32 noundef %i.ff, i32 noundef %i.fg)
  %.not = icmp eq i8 %i.au, 0
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 192), align 8
  %.sink = select i1 %.not, ptr %i.fh, ptr %i.fi
  call void %.sink(i32 noundef 3042)
  %.not71 = icmp eq i8 %i.aw, 0
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 192), align 8
  %.sink94 = select i1 %.not71, ptr %i.fj, ptr %i.fk
  call void %.sink94(i32 noundef 2884)
  %.not72 = icmp eq i8 %i.ay, 0
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 192), align 8
  %.sink95 = select i1 %.not72, ptr %i.fl, ptr %i.fm
  call void %.sink95(i32 noundef 2929)
  %.not73 = icmp eq i8 %i.ba, 0
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 192), align 8
  %.sink96 = select i1 %.not73, ptr %i.fn, ptr %i.fo
  call void %.sink96(i32 noundef 2960)
  %.not74 = icmp eq i8 %i.bc, 0
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 192), align 8
  %.sink97 = select i1 %.not74, ptr %i.fp, ptr %i.fq
  call void %.sink97(i32 noundef 3089)
  %i.fr = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.fs = icmp ugt i32 %i.fr, 309
  br i1 %i.fs, label %.sink.split, label %bb.s

.sink.split:                                      ; preds = %bb.r
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 192), align 8
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8
  %.sink98 = select i1 %.not75, ptr %i.fu, ptr %i.ft
  call void %.sink98(i32 noundef 36765)
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 336), align 8, !tbaa !14
  %i.fw = load i32, ptr %i.g, align 4, !tbaa !31
  call void %i.fv(i32 noundef 1032, i32 noundef %i.fw)
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 416), align 8, !tbaa !14
  %i.fy = load i32, ptr %i.h, align 16, !tbaa !31
  %i.fz = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !31
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !31
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !31
  call void %i.fx(i32 noundef %i.fy, i32 noundef %i.ga, i32 noundef %i.gc, i32 noundef %i.ge)
  %i.gf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 352), align 8, !tbaa !14
  %i.gg = load i32, ptr %i.i, align 16, !tbaa !31
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !31
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !31
  %i.gl = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !31
  call void %i.gf(i32 noundef %i.gg, i32 noundef %i.gi, i32 noundef %i.gk, i32 noundef %i.gm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, i32 noundef range(i32 1, -2147483648) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [4 x [4 x float]], align 16       ; 10 uses
  %i.c = tail call noundef ptr @_ZN5ImGui17GetCurrentContextEv()
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  br label %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit

_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit:      ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 11 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 192), align 8, !tbaa !14
  tail call void %i.h(i32 noundef 3042)
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 48), align 8, !tbaa !14
  tail call void %i.i(i32 noundef 32774)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 64), align 8, !tbaa !14
  tail call void %i.j(i32 noundef 770, i32 noundef 771, i32 noundef 1, i32 noundef 771)
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8, !tbaa !14
  tail call void %i.k(i32 noundef 2884)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8, !tbaa !14
  tail call void %i.l(i32 noundef 2929)
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8, !tbaa !14
  tail call void %i.m(i32 noundef 2960)
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 192), align 8, !tbaa !14
  tail call void %i.n(i32 noundef 3089)
  %i.o = load i32, ptr %i.g, align 4, !tbaa !33
  %i.p = icmp ugt i32 %i.o, 309
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 168), align 8, !tbaa !14
  tail call void %i.q(i32 noundef 36765)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL32ImGui_ImplOpenGL3_GetBackendDatav.exit
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @imgl3wProcs, i64 336), align 8, !tbaa !14
  tail call void %i.r(i32 noundef 1032, i32 noundef 6914)
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 72
end_hunk_0
