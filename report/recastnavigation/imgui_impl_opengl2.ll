Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_impl_opengl2?download=true
inline.NumInlined: 25
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1.92.0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"imgui_impl_opengl2\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_Z22ImGui_ImplOpenGL2_Initv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #4 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui30DebugCheckVersionAndDataLayoutEPKcmmmmmm(ptr noundef nonnull @.str, i64 noundef 3032, i64 noundef 1232, i64 noundef 8, i64 noundef 16, i64 noundef 20, i64 noundef 2) #4 ; 0 uses
  %i.c = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 1) #4 ; 2 uses
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.c, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr @.str.1, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = or i32 %i.g, 16
  store i32 %i.h, ptr %i.f, align 4, !tbaa !27
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui30DebugCheckVersionAndDataLayoutEPKcmmmmmm(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z26ImGui_ImplOpenGL2_Shutdownv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5ImGui17GetCurrentContextEv() #4
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  br label %_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit

_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit:      ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #4 ; 3 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN5ImGui13GetPlatformIOEv() #4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %i.k = load i32, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i = shl nsw i64 %i.l, 3
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %.idx.i
  %.not9.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i, label %_Z38ImGui_ImplOpenGL2_DestroyDeviceObjectsv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit, %bb.d
  %.010.i = phi ptr [ %i.s, %bb.d ], [ %i.j, %_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit ] ; 2 uses
  %i.n = load ptr, ptr %.010.i, align 8, !tbaa !34 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.p = load i16, ptr %i.o, align 4, !tbaa !42
  %i.q = icmp eq i16 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 4, ptr %i.r, align 4, !tbaa !43
  tail call void @_Z31ImGui_ImplOpenGL2_UpdateTextureP13ImTextureData(ptr noundef nonnull %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i4 = icmp eq ptr %i.s, %i.m
  br i1 %.not.i4, label %_Z38ImGui_ImplOpenGL2_DestroyDeviceObjectsv.exit, label %.lr.ph.i

_Z38ImGui_ImplOpenGL2_DestroyDeviceObjectsv.exit: ; preds = %bb.d, %_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr null, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store ptr null, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = and i32 %i.w, -17
  store i32 %i.x, ptr %i.v, align 4, !tbaa !27
  %.not.i5 = icmp eq ptr %i.e, null
  br i1 %.not.i5, label %_Z9IM_DELETEI22ImGui_ImplOpenGL2_DataEvPT_.exit, label %bb.e

bb.e:                                             ; preds = %_Z38ImGui_ImplOpenGL2_DestroyDeviceObjectsv.exit
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.e) #4
  br label %_Z9IM_DELETEI22ImGui_ImplOpenGL2_DataEvPT_.exit

_Z9IM_DELETEI22ImGui_ImplOpenGL2_DataEvPT_.exit:  ; preds = %_Z38ImGui_ImplOpenGL2_DestroyDeviceObjectsv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z38ImGui_ImplOpenGL2_DestroyDeviceObjectsv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN5ImGui13GetPlatformIOEv() #4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 3
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.010 = phi ptr [ %i.m, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.010, align 8, !tbaa !34  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.j = load i16, ptr %i.i, align 4, !tbaa !42
  %i.k = icmp eq i16 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 4, ptr %i.l, align 4, !tbaa !43
  tail call void @_Z31ImGui_ImplOpenGL2_UpdateTextureP13ImTextureData(ptr noundef nonnull %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z26ImGui_ImplOpenGL2_NewFramev() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5ImGui17GetCurrentContextEv() #4
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #4 ; 0 uses
  br label %_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit

_ZL32ImGui_ImplOpenGL2_GetBackendDatav.exit:      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z32ImGui_ImplOpenGL2_RenderDrawDataP10ImDrawData(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca [4 x i32], align 16               ; 7 uses
  %i.d = alloca [4 x i32], align 16               ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load <2 x float>, ptr %i.g, align 8, !tbaa !44
  %i.j = load <2 x float>, ptr %i.h, align 8, !tbaa !44
  %i.k = fmul <2 x float> %i.i, %i.j
  %i.l = fptosi <2 x float> %i.k to <2 x i32>
  %.fr = freeze <2 x i32> %i.l                    ; 3 uses
  %1 = icmp eq <2 x i32> %.fr, zeroinitializer
  %2 = bitcast <2 x i1> %1 to i2
  %or.cond.not = icmp eq i2 %2, 0
  br i1 %or.cond.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.idx = shl nsw i64 %i.r, 3
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %.not7177 = icmp eq i32 %i.q, 0
  br i1 %.not7177, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.06178 = phi ptr [ %i.w, %bb.e ], [ %i.p, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %.06178, align 8, !tbaa !34 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43
  %.not73 = icmp eq i32 %i.v, 0
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_Z31ImGui_ImplOpenGL2_UpdateTextureP13ImTextureData(ptr noundef nonnull %i.t)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.06178, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.w, %i.s
  br i1 %.not71, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @glGetIntegerv(i32 noundef 2880, ptr noundef nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @glGetIntegerv(i32 noundef 3088, ptr noundef nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @glGetIntegerv(i32 noundef 2900, ptr noundef nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @glGetTexEnviv(i32 noundef 8960, i32 noundef 8704, ptr noundef nonnull %i.f) #4
  call void @glPushAttrib(i32 noundef 28672) #4
  %i.x = extractelement <2 x i32> %.fr, i64 0     ; 2 uses
  %i.y = extractelement <2 x i32> %.fr, i64 1     ; 3 uses
  call fastcc void @_ZL34ImGui_ImplOpenGL2_SetupRenderStateP10ImDrawDataii(ptr noundef %0, i32 noundef %i.x, i32 noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load <2 x float>, ptr %i.z, align 8, !tbaa !44 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.h, align 8, !tbaa !44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !54
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = sitofp i32 %i.y to float
  br label %bb.f

._crit_edge84:                                    ; preds = %._crit_edge, %.loopexit
  call void @glDisableClientState(i32 noundef 32886) #4
  call void @glDisableClientState(i32 noundef 32888) #4
  call void @glDisableClientState(i32 noundef 32884) #4
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !45
  call void @glBindTexture(i32 noundef 3553, i32 noundef %i.ah) #4
  call void @glMatrixMode(i32 noundef 5888) #4
  call void @glPopMatrix() #4
  call void @glMatrixMode(i32 noundef 5889) #4
  call void @glPopMatrix() #4
  call void @glPopAttrib() #4
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !45
  call void @glPolygonMode(i32 noundef 1028, i32 noundef %i.ai) #4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !45
  call void @glPolygonMode(i32 noundef 1029, i32 noundef %i.ak) #4
  %i.al = load i32, ptr %i.c, align 16, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !45
  call void @glViewport(i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ap, i32 noundef %i.ar) #4
  %i.as = load i32, ptr %i.d, align 16, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !45
  call void @glScissor(i32 noundef %i.as, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay) #4
  %i.az = load i32, ptr %i.e, align 4, !tbaa !45
  call void @glShadeModel(i32 noundef %i.az) #4
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !45
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef %i.ba) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph83, %._crit_edge
  %indvars.iv86 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next87, %._crit_edge ] ; 2 uses
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv86
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !57 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !77 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !78
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 20, ptr noundef %i.bf) #4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 20, ptr noundef nonnull %i.bi) #4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call void @glColorPointer(i32 noundef 4, i32 noundef 5121, i32 noundef 20, ptr noundef nonnull %i.bj) #4
  %i.bk = load i32, ptr %i.bd, align 8, !tbaa !79
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %bb.g

._crit_edge:                                      ; preds = %bb.k, %bb.f
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.bn = load i32, ptr %i.ac, align 4, !tbaa !54
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next87, %i.bo
  br i1 %i.bp, label %bb.f, label %._crit_edge84, !llvm.loop !46

bb.g:                                             ; preds = %.lr.ph80, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !81
  %i.br = getelementptr inbounds nuw [72 x i8], ptr %i.bq, i64 %indvars.iv ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !83 ; 2 uses
  %magicptr = ptrtoint ptr %i.bt to i64
  switch i64 %magicptr, label %bb.i [
    i64 0, label %bb.j
    i64 -8, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZL34ImGui_ImplOpenGL2_SetupRenderStateP10ImDrawDataii(ptr noundef %0, i32 noundef %i.x, i32 noundef %i.y)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void %i.bt(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.br) #4
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load <2 x float>, ptr %i.br, align 8, !tbaa !44
  %i.bw = fsub <2 x float> %i.bv, %i.aa
  %i.bx = fmul <2 x float> %i.ab, %i.bw           ; 3 uses
  %i.by = load <2 x float>, ptr %i.bu, align 8, !tbaa !44
  %i.bz = fsub <2 x float> %i.by, %i.aa
  %i.ca = fmul <2 x float> %i.ab, %i.bz           ; 3 uses
  %i.cb = fcmp ugt <2 x float> %i.ca, %i.bx
  %3 = freeze <2 x i1> %i.cb
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond76 = icmp eq i2 %4, -1
  br i1 %or.cond76, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.j
  %i.cc = extractelement <2 x float> %i.bx, i64 0
  %i.cd = fptosi float %i.cc to i32
  %i.ce = extractelement <2 x float> %i.ca, i64 1
  %i.cf = fsub float %i.ag, %i.ce
  %i.cg = fptosi float %i.cf to i32
  %i.ch = fsub <2 x float> %i.ca, %i.bx           ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %i.cj = fptosi float %i.ci to i32
  %i.ck = extractelement <2 x float> %i.ch, i64 1
  %i.cl = fptosi float %i.ck to i32
  call void @glScissor(i32 noundef %i.cd, i32 noundef %i.cg, i32 noundef %i.cj, i32 noundef %i.cl) #4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !84 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.in.i = select i1 %.not.i, ptr %i.cp, ptr %i.co
  %i.cq = load i64, ptr %.in.i, align 8, !tbaa !85
  %i.cr = trunc i64 %i.cq to i32
  call void @glBindTexture(i32 noundef 3553, i32 noundef %i.cr) #4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !86
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !87
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.cw
  call void @glDrawElements(i32 noundef 4, i32 noundef %i.ct, i32 noundef 5123, ptr noundef %i.cx) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.bd, align 8, !tbaa !79
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.g, label %._crit_edge, !llvm.loop !47

bb.l:                                             ; preds = %bb.a, %._crit_edge84
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z31ImGui_ImplOpenGL2_UpdateTextureP13ImTextureData(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  switch i32 %i.f, label %bb.f [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %i.b) #4
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %i.a) #4
  %i.i = load i32, ptr %i.a, align 4, !tbaa !45
  call void @glBindTexture(i32 noundef 3553, i32 noundef %i.i) #4
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #4
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #4
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 10496) #4
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 10496) #4
  call void @glPixelStorei(i32 noundef 3314, i32 noundef 0) #4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !90
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %i.k, i32 noundef %i.m, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %i.h) #4
  %i.n = load i32, ptr %i.a, align 4, !tbaa !45
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !91
  store i32 0, ptr %i.e, align 4, !tbaa !43
  %i.q = load i32, ptr %i.b, align 4, !tbaa !45
  call void @glBindTexture(i32 noundef 3553, i32 noundef %i.q) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %i.c) #4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !91
  %i.t = trunc i64 %i.s to i32
  call void @glBindTexture(i32 noundef 3553, i32 noundef %i.t) #4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %i.v) #4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !92   ; 2 uses
  %i.z = load i32, ptr %i.w, align 8, !tbaa !93   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %.idx = shl nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %.idx
  %.not30 = icmp eq i32 %i.z, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @glPixelStorei(i32 noundef 3314, i32 noundef 0) #4
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !45
  call void @glBindTexture(i32 noundef 3553, i32 noundef %i.ae) #4
  store i32 0, ptr %i.e, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.031 = phi ptr [ %i.y, %.lr.ph ], [ %i.ay, %bb.d ] ; 5 uses
  %i.af = load i16, ptr %.031, align 2, !tbaa !94
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !95
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !96
  %i.am = zext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %.031, i64 6
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !97
  %i.ap = zext i16 %i.ao to i32
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.ar = load i32, ptr %i.u, align 4, !tbaa !89
  %i.as = mul nsw i32 %i.ar, %i.aj
  %i.at = add nsw i32 %i.as, %i.ag
  %i.au = load i32, ptr %i.ad, align 4, !tbaa !98
  %i.av = mul nsw i32 %i.at, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.aq, i64 %i.aw
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef 6408, i32 noundef 5121, ptr noundef %i.ax) #4
  %i.ay = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.ab
  br i1 %.not, label %._crit_edge, label %bb.d

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !91
  %i.bb = trunc i64 %i.ba to i32
  store i32 %i.bb, ptr %i.d, align 4, !tbaa !45
  call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %i.d) #4
  store i64 0, ptr %i.az, align 8, !tbaa !91
  store i32 1, ptr %i.e, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge, %bb.e, %bb.b
  ret void
}

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glGetTexEnviv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL34ImGui_ImplOpenGL2_SetupRenderStateP10ImDrawDataii(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 0) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #0 {
bb.a:
  tail call void @glEnable(i32 noundef 3042) #4
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #4
  tail call void @glDisable(i32 noundef 2884) #4
  tail call void @glDisable(i32 noundef 2929) #4
  tail call void @glDisable(i32 noundef 2960) #4
  tail call void @glDisable(i32 noundef 2896) #4
  tail call void @glDisable(i32 noundef 2903) #4
  tail call void @glEnable(i32 noundef 3089) #4
  tail call void @glEnableClientState(i32 noundef 32884) #4
  tail call void @glEnableClientState(i32 noundef 32888) #4
  tail call void @glEnableClientState(i32 noundef 32886) #4
  tail call void @glDisableClientState(i32 noundef 32885) #4
  tail call void @glEnable(i32 noundef 3553) #4
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #4
  tail call void @glShadeModel(i32 noundef 7425) #4
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #4
  tail call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2) #4
  tail call void @glMatrixMode(i32 noundef 5889) #4
  tail call void @glPushMatrix() #4
  tail call void @glLoadIdentity() #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !44 ; 3 uses
  %i.d = extractelement <2 x float> %i.c, i64 0
  %i.e = fpext float %i.d to double
  %i.f = load <2 x float>, ptr %i.b, align 8, !tbaa !44
  %i.g = fadd <2 x float> %i.c, %i.f
end_hunk_0
