Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN17ExampleAppConsole4DrawEPKcPb:bb.a
  %i.ci = load i8, ptr %0, align 8, !tbaa !120
  %.not28 = icmp eq i8 %i.ci, 0
  br i1 %.not28, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN17ExampleAppConsole13StrtrimblanksEPc.exit
  call void @_ZN17ExampleAppConsole11ExecCommandEPKc(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull %0)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN17ExampleAppConsole13StrtrimblanksEPc.exit
  store i8 0, ptr %0, align 8, !tbaa !120
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  call void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
  br label %bb.ap

.critedge31:                                      ; preds = %bb.ak
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge31, %bb.a
  call void @_ZN5ImGui3EndEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef %1, ...) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %1, ptr noundef nonnull %2) #30 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 0, ptr %i.c, align 1, !tbaa !120
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #32
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.f) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 16 %i.a, i64 %i.f, i1 false)
  %i.h = load i32, ptr %i.d, align 8, !tbaa !221  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !220
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i:     ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !219
  br label %_ZN8ImVectorIPcE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.h, 1
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i32 %i.h, 2
  %i.n = add nsw i32 %i.m, %i.h
  br label %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i:       ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %i.n, %bb.c ], [ 8, %bb.b ]
  %i.p = call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.l) ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.r) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !219  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.u, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i
  %i.v = load i32, ptr %i.d, align 8, !tbaa !221
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr nonnull align 8 %i.u, i64 %i.x, i1 false)
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !219
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.y)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i
  store ptr %i.s, ptr %i.t, align 8, !tbaa !219
  store i32 %i.p, ptr %i.i, align 4, !tbaa !220
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !221
  br label %_ZN8ImVectorIPcE9push_backERKS0_.exit

_ZN8ImVectorIPcE9push_backERKS0_.exit:            ; preds = %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i, %bb.e
  %i.z = phi i32 [ %i.h, %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.e ]
  %i.aa = phi ptr [ %.pre.i, %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i ], [ %i.s, %bb.e ]
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = ptrtoint ptr %i.g to i64
  store i64 %i.ad, ptr %i.ac, align 8
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !221
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.d, align 8, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorIPcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorIPKcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #26

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #26

declare noundef zeroext i1 @_ZN5ImGui23BeginPopupContextWindowEPKci(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN17ExampleAppConsole20TextEditCallbackStubEP26ImGuiInputTextCallbackData(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208
  %i.c = tail call noundef i32 @_ZN17ExampleAppConsole16TextEditCallbackEP26ImGuiInputTextCallbackData(ptr noundef nonnull align 8 dereferenceable(594) %i.b, ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17ExampleAppConsole11ExecCommandEPKc(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2150, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 -1, ptr %i.a, align 8, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 10 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !228  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 7 uses
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph112, label %.loopexit

.lr.ph112:                                        ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.h = tail call ptr @__ctype_toupper_loc() #33
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !229  ; 4 uses
  %i.j = load i8, ptr %1, align 1, !tbaa !120
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51   ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit
  %i.n = trunc nuw i64 %i.p to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.loopexit, !llvm.loop !490

bb.c:                                             ; preds = %.lr.ph112, %bb.b
  %.in = phi i64 [ %i.f, %.lr.ph112 ], [ %i.p, %bb.b ]
  %i.p = add nsw i64 %.in, -1                     ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101  ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !120   ; 2 uses
  %i.t = sext i8 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !51   ; 2 uses
  %i.w = icmp ne i32 %i.m, %i.v
  %.not9.i = icmp eq i8 %i.s, 0
  %or.cond10.i = or i1 %.not9.i, %i.w
  br i1 %or.cond10.i, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit, label %toupper.exit.i

toupper.exit.i:                                   ; preds = %bb.c, %toupper.exit.i
  %.012.i = phi ptr [ %i.y, %toupper.exit.i ], [ %1, %bb.c ]
  %.0511.i = phi ptr [ %i.x, %toupper.exit.i ], [ %i.r, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0511.i, i64 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !120
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51 ; 2 uses
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !120  ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !51 ; 2 uses
  %i.ah = icmp ne i32 %i.ac, %i.ag
  %.not.i = icmp eq i8 %i.ad, 0
  %or.cond.i = or i1 %.not.i, %i.ah
  br i1 %or.cond.i, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit, label %toupper.exit.i, !llvm.loop !491

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit:       ; preds = %toupper.exit.i, %bb.c
  %.lcssa8.i = phi i32 [ %i.m, %bb.c ], [ %i.ac, %toupper.exit.i ]
  %.lcssa.i = phi i32 [ %i.v, %bb.c ], [ %i.ag, %toupper.exit.i ]
  %i.ai = icmp eq i32 %.lcssa8.i, %.lcssa.i
  br i1 %i.ai, label %bb.d, label %bb.b, !llvm.loop !490

bb.d:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.r)
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.ak = and i64 %i.p, 4294967295                ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.b, align 8, !tbaa !221
  %i.ao = sext i32 %i.an to i64
  %i.ap = xor i64 %i.ak, -1
  %i.aq = add nsw i64 %i.ao, %i.ap
  %i.ar = shl nsw i64 %i.aq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.am, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %i.b, align 8, !tbaa !221
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.b, align 8, !tbaa !221
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.av = add i64 %i.au, 1                        ; 2 uses
  %i.aw = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.av) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %1, i64 %i.av, i1 false)
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !221 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !220
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.e, label %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i:     ; preds = %.loopexit
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !219
  br label %_ZN8ImVectorIPcE9push_backERKS0_.exit

bb.e:                                             ; preds = %.loopexit
  %i.bb = add nsw i32 %i.ax, 1
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = sdiv i32 %i.ax, 2
  %i.bd = add nsw i32 %i.bc, %i.ax
  br label %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i:       ; preds = %bb.f, %bb.e
  %i.be = phi i32 [ %i.bd, %bb.f ], [ 8, %bb.e ]
  %i.bf = tail call noundef i32 @llvm.smax.i32(i32 %i.be, i32 %i.bb) ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bh) ; 3 uses
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !219 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bj, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i
  %i.bk = load i32, ptr %i.b, align 8, !tbaa !221
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bi, ptr nonnull align 8 %i.bj, i64 %i.bm, i1 false)
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !219
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bn)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !219
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !220
  %.pre3.i = load i32, ptr %i.b, align 8, !tbaa !221
  br label %_ZN8ImVectorIPcE9push_backERKS0_.exit

_ZN8ImVectorIPcE9push_backERKS0_.exit:            ; preds = %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i, %bb.h
  %i.bo = phi i32 [ %i.ax, %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.bp = phi ptr [ %.pre.i, %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i ], [ %i.bi, %bb.h ]
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = ptrtoint ptr %i.aw to i64
  store i64 %i.bs, ptr %i.br, align 8
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !221 ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1                    ; 2 uses
  store i32 %i.bu, ptr %i.b, align 8, !tbaa !221
  %i.bv = tail call ptr @__ctype_toupper_loc() #33
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !229 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 268
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !51 ; 2 uses
  %i.bz = load i8, ptr %1, align 1, !tbaa !120    ; 2 uses
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !51 ; 4 uses
  %i.cd = icmp ne i32 %i.by, %i.cc
  %.not9.i23 = icmp eq i8 %i.bz, 0                ; 2 uses
  %or.cond10.i24 = or i1 %.not9.i23, %i.cd
  br i1 %or.cond10.i24, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32, label %toupper.exit.i25

toupper.exit.i25:                                 ; preds = %_ZN8ImVectorIPcE9push_backERKS0_.exit, %toupper.exit.i25
  %.012.i26 = phi ptr [ %i.cf, %toupper.exit.i25 ], [ @.str.2127, %_ZN8ImVectorIPcE9push_backERKS0_.exit ]
  %.0511.i27 = phi ptr [ %i.ce, %toupper.exit.i25 ], [ %1, %_ZN8ImVectorIPcE9push_backERKS0_.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0511.i27, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i26, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !120
  %i.ch = sext i8 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !51 ; 2 uses
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !120 ; 2 uses
  %i.cl = sext i8 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !51 ; 2 uses
  %i.co = icmp ne i32 %i.cj, %i.cn
  %.not.i28 = icmp eq i8 %i.ck, 0
  %or.cond.i29 = or i1 %.not.i28, %i.co
  br i1 %or.cond.i29, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32, label %toupper.exit.i25, !llvm.loop !491

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32:     ; preds = %toupper.exit.i25, %_ZN8ImVectorIPcE9push_backERKS0_.exit
  %.lcssa8.i30 = phi i32 [ %i.by, %_ZN8ImVectorIPcE9push_backERKS0_.exit ], [ %i.cj, %toupper.exit.i25 ]
  %.lcssa.i31 = phi i32 [ %i.cc, %_ZN8ImVectorIPcE9push_backERKS0_.exit ], [ %i.cn, %toupper.exit.i25 ]
  %i.cp = icmp eq i32 %.lcssa8.i30, %.lcssa.i31
  br i1 %i.cp, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !218
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !219 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i33, label %_ZN17ExampleAppConsole8ClearLogEv.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.cw, align 4, !tbaa !220
  store i32 0, ptr %i.cq, align 8, !tbaa !221
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.cv)
  store ptr null, ptr %i.cu, align 8, !tbaa !219
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !219
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !101
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cz)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = load i32, ptr %i.cq, align 8, !tbaa !218
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next.i, %i.db
  br i1 %i.dc, label %bb.k, label %._crit_edge.i, !llvm.loop !4

bb.l:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 288
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !51 ; 2 uses
  %i.df = icmp ne i32 %i.de, %i.cc
  %or.cond10.i35 = or i1 %.not9.i23, %i.df
  br i1 %or.cond10.i35, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43, label %toupper.exit.i36

toupper.exit.i36:                                 ; preds = %bb.l, %toupper.exit.i36
  %.012.i37 = phi ptr [ %i.dh, %toupper.exit.i36 ], [ @.str.2125, %bb.l ]
  %.0511.i38 = phi ptr [ %i.dg, %toupper.exit.i36 ], [ %1, %bb.l ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0511.i38, i64 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i37, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !120
  %i.dj = sext i8 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !51 ; 2 uses
  %i.dm = load i8, ptr %i.dg, align 1, !tbaa !120 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13ExampleAppLog6AddLogEPKcz:bb.a
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.a, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @_ZN15ImGuiTextBuffer8appendfvEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = load i32, ptr %0, align 8, !tbaa !111
  %spec.select.i6 = call noundef i32 @llvm.usub.sat.i32(i32 %i.b, i32 1) ; 2 uses
  %i.c = icmp slt i32 %spec.select.i, %spec.select.i6
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.g = sext i32 %spec.select.i to i64
  %i.h = sext i32 %spec.select.i6 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %._crit_edge9, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %._crit_edge9
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %i.m, %._crit_edge9 ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !120
  %i.l = icmp eq i8 %i.k, 10
  %i.m = add nsw i64 %indvars.iv, 1               ; 3 uses
  br i1 %i.l, label %bb.c, label %._crit_edge9

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.e, align 8, !tbaa !141  ; 6 uses
  %i.o = load i32, ptr %i.f, align 4, !tbaa !142
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i:      ; preds = %bb.c
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !143
  br label %_ZN8ImVectorIiE9push_backERKi.exit

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.n, 1
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %i.n, 2
  %i.s = add nsw i32 %i.r, %i.n
  br label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i:        ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.s, %bb.e ], [ 8, %bb.d ]
  %i.u = call noundef i32 @llvm.smax.i32(i32 %i.t, i32 %i.q) ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  %i.x = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.w) ; 3 uses
  %i.y = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !143 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.y, null
  br i1 %.not6.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  %i.z = load i32, ptr %i.e, align 8, !tbaa !141
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr nonnull align 4 %i.y, i64 %i.ab, i1 false)
  %i.ac = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !143
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ac)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  store ptr %i.x, ptr %.phi.trans.insert.i, align 8, !tbaa !143
  store i32 %i.u, ptr %i.f, align 4, !tbaa !142
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !141
  br label %_ZN8ImVectorIiE9push_backERKi.exit

_ZN8ImVectorIiE9push_backERKi.exit:               ; preds = %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i, %bb.g
  %i.ad = phi i32 [ %i.n, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.g ]
  %i.ae = phi ptr [ %.pre.i, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i ], [ %i.x, %bb.g ]
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = trunc nsw i64 %i.m to i32
  store i32 %i.ah, ptr %i.ag, align 4
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !141
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !141
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %bb.b, %_ZN8ImVectorIiE9push_backERKi.exit
  %i.ak = icmp slt i64 %i.m, %i.h
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !498
}

declare noundef i32 @_ZN5ImGui13GetFrameCountEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN13ExampleAppLog4DrawEPKcPb(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImGuiListClipper, align 8   ; 11 uses
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.400, i32 noundef 0)
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2141, ptr noundef nonnull %i.c) ; 0 uses
  tail call void @_ZN5ImGui8EndPopupEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !46
  %i.e = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.400, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.400, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !46
  %i.g = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.2140, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !46
  %i.h = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.711, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN15ImGuiTextFilter4DrawEPKcf(ptr noundef nonnull align 8 dereferenceable(276) %i.i, ptr noundef nonnull @.str.2170, float noundef -1.000000e+02) ; 0 uses
  call void @_ZN5ImGui9SeparatorEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !46
  %i.k = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1460, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef 0, i32 noundef 2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %i.k, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %bb.g
  br i1 %i.g, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN13ExampleAppLog5ClearEv(ptr noundef nonnull align 8 dereferenceable(313) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.h, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN5ImGui14LogToClipboardEi(i32 noundef -1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115  ; 3 uses
  %.not.i = icmp eq ptr %i.m, null                ; 2 uses
  %spec.select.i = select i1 %.not.i, ptr @_ZN15ImGuiTextBuffer11EmptyStringE, ptr %i.m ; 4 uses
  %i.n = load i32, ptr %0, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = select i1 %.not.i, ptr @_ZN15ImGuiTextBuffer11EmptyStringE, ptr %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.t = load i32, ptr %i.s, align 8, !tbaa !502
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.r, label %.preheader36

.preheader36:                                     ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !503  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit37

.lr.ph:                                           ; preds = %.preheader36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.y = phi i32 [ %i.v, %.lr.ph ], [ %i.an, %bb.q ]
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !143  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %spec.select.i, i64 %i.ac ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ae = sext i32 %i.y to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %spec.select.i, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.al = phi ptr [ %i.ak, %bb.n ], [ %i.r, %bb.m ] ; 2 uses
  %i.am = call noundef zeroext i1 @_ZNK15ImGuiTextFilter10PassFilterEPKcS1_(ptr noundef nonnull align 8 dereferenceable(276) %i.i, ptr noundef nonnull %i.ad, ptr noundef %i.al)
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.ad, ptr noundef %i.al)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = load i32, ptr %i.u, align 8, !tbaa !503 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.m, label %.loopexit37, !llvm.loop !499

bb.r:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %8)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !503
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %8, i32 noundef %i.ar, float noundef -1.000000e+00)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %.preheader
  %i.au = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.s unwind label %.loopexit35

bb.s:                                             ; preds = %.loopexit
  br i1 %i.au, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.av = load i32, ptr %8, align 8, !tbaa !118
  %i.aw = sext i32 %i.av to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.x ], [ %i.aw, %bb.t ] ; 3 uses
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !119
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv40, %i.ay
  br i1 %i.az, label %bb.v, label %.loopexit, !llvm.loop !500

.loopexit35:                                      ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.r, %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !143 ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv40
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !51
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %spec.select.i, i64 %i.bd
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1 ; 3 uses
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !503
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next41, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv.next41
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !51
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %spec.select.i, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -1
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bn = phi ptr [ %i.bm, %bb.w ], [ %i.r, %bb.v ]
  invoke void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.be, ptr noundef %i.bn)
          to label %bb.u unwind label %bb.y, !llvm.loop !501

bb.y:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.s
  invoke void @_ZN16ImGuiListClipper3EndEv(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit37

bb.ab:                                            ; preds = %.loopexit35, %.loopexit.split-lp, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.y ], [ %lpad.loopexit, %.loopexit35 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn

.loopexit37:                                      ; preds = %bb.q, %.preheader36, %bb.aa
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !232, !range !19, !noundef !20
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.loopexit37
  %i.bs = call noundef float @_ZN5ImGui10GetScrollYEv()
  %i.bt = call noundef float @_ZN5ImGui13GetScrollMaxYEv()
  %i.bu = fcmp ult float %i.bs, %i.bt
  br i1 %i.bu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5ImGui14SetScrollHereYEf(float noundef 1.000000e+00)
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit37, %bb.ac, %bb.ad, %bb.g
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui3EndEv()
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN13ExampleAppLog5ClearEv(ptr noundef nonnull align 8 dereferenceable(313) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN15ImGuiTextBuffer5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !113
  store i32 0, ptr %0, align 8, !tbaa !114
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !112
  br label %_ZN15ImGuiTextBuffer5clearEv.exit

_ZN15ImGuiTextBuffer5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN8ImVectorIiE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN15ImGuiTextBuffer5clearEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %i.g, align 4, !tbaa !142
  store i32 0, ptr %i.d, align 8, !tbaa !141
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.f)
  store ptr null, ptr %i.e, align 8, !tbaa !143
  br label %_ZN8ImVectorIiE5clearEv.exit

_ZN8ImVectorIiE5clearEv.exit:                     ; preds = %_ZN15ImGuiTextBuffer5clearEv.exit, %bb.c
  %i.h = load i32, ptr %i.d, align 8, !tbaa !141  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !142
  %i.k = icmp eq i32 %i.h, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i32 %i.h, 1
  %.not.i.i1 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i1, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN8ImVectorIiE5clearEv.exit
  %i.m = sdiv i32 %i.h, 2
  %i.n = add nsw i32 %i.m, %i.h
  br label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i:        ; preds = %bb.d, %_ZN8ImVectorIiE5clearEv.exit
  %i.o = phi i32 [ %i.n, %bb.d ], [ 8, %_ZN8ImVectorIiE5clearEv.exit ]
  %i.p = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.l) ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.r) ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !143  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.t, null
  br i1 %.not6.i.i, label %_ZN8ImVectorIiE9push_backERKi.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  %i.u = load i32, ptr %i.d, align 8, !tbaa !141
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.s, ptr nonnull align 4 %i.t, i64 %i.w, i1 false)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !143
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.x)
  br label %_ZN8ImVectorIiE9push_backERKi.exit

_ZN8ImVectorIiE9push_backERKi.exit:               ; preds = %bb.e, %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  store ptr %i.s, ptr %i.e, align 8, !tbaa !143
  store i32 %i.p, ptr %i.i, align 4, !tbaa !142
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !141
  %i.y = sext i32 %.pre3.i to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.y
  store i32 0, ptr %i.z, align 4
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !141
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !141
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN15ImGuiTextBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN8ImVectorIcED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN8ImVectorIcED2Ev.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN15ImGuiTextBuffer8appendfvEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN16ImGuiListClipper3EndEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN24ExampleAppPropertyEditorD2Ev(ptr noundef nonnull align 8 dead_on_return(289) dereferenceable(289) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN15ImGuiTextFilterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN15ImGuiTextFilterD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN15ImGuiTextFilterD2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN24ExampleAppPropertyEditor4DrawEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9685, ptr noundef nonnull @.str.2183)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store <2 x float> <float 3.000000e+02, float 0.000000e+00>, ptr %2, align 8, !tbaa !46
  %i.e = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2184, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef 261, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.e, label %bb.b, label %bb.i
end_hunk_1
