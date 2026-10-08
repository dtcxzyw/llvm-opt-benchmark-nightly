Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/screen?download=true
inline.NumInlined: 1345
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7nanogui6Screen14keyboard_eventEiiii:bb.a
  br i1 %i.o, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !169
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %.lr.ph ] ; 2 uses
  %.not17 = icmp eq ptr %i.g, %i.p
  br i1 %.not17, label %.thread, label %.lr.ph, !llvm.loop !294

.thread:                                          ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Screen24keyboard_character_eventEj(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(520) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !170  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !169 ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.not1415 = icmp eq ptr %i.e, %i.d
  %or.cond = select i1 %.not, i1 true, i1 %.not1415
  br i1 %or.cond, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.p, %bb.c ], [ %i.d, %bb.a ]
  %.sroa.311.016 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %.sroa.311.016, i64 -8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !215  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 106
  %i.j = load i8, ptr %i.i, align 2, !tbaa !216, !range !174, !noundef !175
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(148) %i.h, i32 noundef %1)
  br i1 %i.o, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !169
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %.lr.ph ] ; 2 uses
  %.not14 = icmp eq ptr %i.g, %i.p
  br i1 %.not14, label %.thread, label %.lr.ph, !llvm.loop !295

.thread:                                          ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Screen12resize_eventERKNS_5ArrayIiLm2EEE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(520) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.nanogui::Array", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !159 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNKSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEEclES3_.exit

_ZNKSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEEclES3_.exit: ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 4, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload, ptr %2, align 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %2), !inline_history !296
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEEclES3_.exit, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Screen6redrawEv(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(520) initializes((372, 373)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i8 1, ptr %i.a, align 4, !tbaa !158
  tail call void @glfwPostEmptyEvent()
  ret void
}

declare void @glfwPostEmptyEvent() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Screen25cursor_pos_callback_eventEdd(ptr noundef nonnull align 16 dereferenceable(520) initializes((296, 304)) %0, double noundef %1, double noundef %2) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanogui::Array", align 8   ; 12 uses
  %4 = alloca %"struct.nanogui::Array", align 8   ; 5 uses
  %5 = alloca %"struct.nanogui::Array", align 8   ; 5 uses
  %6 = alloca %"struct.nanogui::Array", align 8   ; 5 uses
  %7 = alloca %"struct.nanogui::Array.17", align 8 ; 5 uses
  %8 = alloca %"struct.nanogui::Array.17", align 8 ; 5 uses
  %i.a = tail call i32 @glfwGetPlatform()
  %.not = icmp eq i32 %i.a, 393219
  %i.b = insertelement <2 x double> poison, double %1, i64 0
  %i.c = insertelement <2 x double> %i.b, double %2, i64 1 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load float, ptr %i.d, align 16, !tbaa !181
  %i.f = fpext float %i.e to double
  %i.g = insertelement <2 x double> poison, double %i.f, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fdiv <2 x double> %i.c, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi <2 x double> [ %i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.k = fadd <2 x double> %i.j, <double -1.000000e+00, double -2.000000e+00> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.m = fptosi <2 x double> %i.k to <2 x i32>
  store <2 x i32> %i.m, ptr %3, align 8, !tbaa !40
  %i.n = fptrunc <2 x double> %i.k to <2 x float> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !168
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !211, !range !174, !noundef !175
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.q, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i8 1, ptr %i.t, align 4, !tbaa !158
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = tail call double @glfwGetTime()
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.u, ptr %i.v, align 8, !tbaa !213
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.x = load i8, ptr %i.w, align 4, !tbaa !184, !range !174, !noundef !175
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = invoke noundef ptr @_ZN7nanogui6Widget11find_widgetERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %.preheader63 unwind label %bb.i ; 2 uses

.preheader63:                                     ; preds = %bb.g
  %.not3965 = icmp eq ptr %i.z, null
  br i1 %.not3965, label %.critedge45, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader63, %bb.h
  %.03366 = phi ptr [ %i.ae, %bb.h ], [ %i.z, %.preheader63 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03366, i64 144
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !217 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %.critedge45

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.03366, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !214 ; 2 uses
  %.not39 = icmp eq ptr %i.ae, null
  br i1 %.not39, label %.critedge45, label %.lr.ph, !llvm.loop !297

bb.i:                                             ; preds = %.critedge45, %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.y

.critedge45:                                      ; preds = %bb.h, %.lr.ph, %.preheader63
  %i.ag = phi i32 [ 0, %.preheader63 ], [ %i.ab, %.lr.ph ], [ 0, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !154
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !177
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = sext i32 %i.ag to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !192
  invoke void @glfwSetCursor(ptr noundef %i.aj, ptr noundef %i.an)
          to label %.thread unwind label %bb.i

bb.j:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !155 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !214
  %i.as = invoke i64 @_ZNK7nanogui6Widget17absolute_positionEv(ptr noundef nonnull align 8 dereferenceable(148) %i.ar)
          to label %bb.k unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.sroa.059.0.extract.trunc = trunc i64 %i.as to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.as, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.at = load i32, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.au = sub nsw i32 %i.at, %.sroa.059.0.extract.trunc
  %i.av = load i32, ptr %i.l, align 4, !tbaa !40  ; 2 uses
  %i.aw = sub nsw i32 %i.av, %.sroa.5.0.extract.trunc
  %.sroa.2.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.au to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40
  %i.az = sub nsw i32 %i.at, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bb = load i32, ptr %i.ba, align 16, !tbaa !40
  %i.bc = sub nsw i32 %i.av, %i.bb
  %.sroa.2.0.insert.ext.i46 = zext i32 %i.bc to i64
  %.sroa.2.0.insert.shift.i47 = shl nuw i64 %.sroa.2.0.insert.ext.i46, 32
  %.sroa.0.0.insert.ext.i48 = zext i32 %i.az to i64
  %.sroa.0.0.insert.insert.i49 = or disjoint i64 %.sroa.2.0.insert.shift.i47, %.sroa.0.0.insert.ext.i48
  store i64 %.sroa.0.0.insert.insert.i49, ptr %5, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !218
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !219
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !109
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(148) %i.ap, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %i.be, i32 noundef %i.bg)
          to label %bb.o unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %9, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.y

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %i.bk, label %bb.t, label %.thread

.thread:                                          ; preds = %.critedge45, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bn = load i32, ptr %3, align 8, !tbaa !40
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !40
  %i.bp = sub nsw i32 %i.bn, %i.bo
  %i.bq = load i32, ptr %i.l, align 4, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !40
  %i.bt = sub nsw i32 %i.bq, %i.bs
  %.sroa.2.0.insert.ext.i50 = zext i32 %i.bt to i64
  %.sroa.2.0.insert.shift.i51 = shl nuw i64 %.sroa.2.0.insert.ext.i50, 32
  %.sroa.0.0.insert.ext.i52 = zext i32 %i.bp to i64
  %.sroa.0.0.insert.insert.i53 = or disjoint i64 %.sroa.2.0.insert.shift.i51, %.sroa.0.0.insert.ext.i52
  store i64 %.sroa.0.0.insert.insert.i53, ptr %6, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !218
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !219
  %i.by = load ptr, ptr %0, align 16, !tbaa !109
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.bv, i32 noundef %i.bx)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.cc = load <2 x i32>, ptr %3, align 8, !tbaa !40
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>
  store <2 x float> %i.cd, ptr %7, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cf = load <2 x float>, ptr %i.ce, align 4, !tbaa !59
  %i.cg = fsub <2 x float> %i.n, %i.cf
  store <2 x float> %i.cg, ptr %8, align 8
  %i.ch = load i32, ptr %i.bu, align 4, !tbaa !218
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !219
  %i.cj = load ptr, ptr %0, align 16, !tbaa !109
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 184
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 16 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.ch, i32 noundef %i.ci)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %10 = zext i1 %i.cm to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.t

bb.r:                                             ; preds = %.thread
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.y

bb.s:                                             ; preds = %bb.p
  %i.co = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.y

bb.t:                                             ; preds = %bb.q, %bb.o
  %.135 = phi i8 [ 1, %bb.o ], [ %10, %bb.q ]
  %i.cp = load ptr, ptr %i.o, align 16, !tbaa !168
  %.not41 = icmp eq ptr %i.cp, null
  br i1 %.not41, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = invoke noundef ptr @_ZN7nanogui6Widget11find_widgetERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %.preheader unwind label %bb.w ; 2 uses

.preheader:                                       ; preds = %bb.u
  %.not4269 = icmp eq ptr %i.cq, null
  br i1 %.not4269, label %.critedge4, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader, %bb.v
  %.070 = phi ptr [ %i.db, %bb.v ], [ %i.cq, %.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.070, i64 112
  %i.cs = load i8, ptr %i.cr, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %.070, i64 120
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = lshr i8 %i.cs, 1
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = select i1 %i.ct, i64 %i.cv, i64 %i.cx
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %.lr.ph71
  %i.da = getelementptr inbounds nuw i8, ptr %.070, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !214 ; 2 uses
  %.not42 = icmp eq ptr %i.db, null
  br i1 %.not42, label %.critedge4, label %.lr.ph71, !llvm.loop !298

bb.w:                                             ; preds = %.critedge4, %.critedge2, %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.y

.critedge2:                                       ; preds = %.lr.ph71
  %i.dd = load ptr, ptr %i.o, align 16, !tbaa !168
  invoke void @_ZN7nanogui16RestartableTimer7restartEv(ptr noundef nonnull align 16 dereferenceable(178) %i.dd)
          to label %bb.x unwind label %bb.w

.critedge4:                                       ; preds = %bb.v, %.preheader
  %i.de = load ptr, ptr %i.o, align 16, !tbaa !168
  invoke void @_ZN7nanogui16RestartableTimer5clearEv(ptr noundef nonnull align 16 dereferenceable(178) %i.de)
          to label %bb.x unwind label %bb.w

bb.x:                                             ; preds = %.critedge2, %.critedge4, %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.dg = load i64, ptr %3, align 8, !tbaa !164
  store i64 %i.dg, ptr %i.df, align 4, !tbaa !164
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 276
  store <2 x float> %i.n, ptr %i.dh, align 4, !tbaa !164
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !158, !range !174, !noundef !175
  %i.dk = or i8 %i.dj, %.135
  store i8 %i.dk, ptr %i.di, align 4, !tbaa !158
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.s, %bb.r, %bb.n, %bb.i
  %.pn43 = phi { ptr, i32 } [ %i.dc, %bb.w ], [ %i.co, %bb.s ], [ %i.cn, %bb.r ], [ %.pn, %bb.n ], [ %i.af, %bb.i ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn43, 1
  %i.dl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #37
  %i.dm = icmp eq i32 %.1, %i.dl
  br i1 %i.dm, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.131 = extractvalue { ptr, i32 } %.pn43, 0
  %i.dn = call ptr @__cxa_begin_catch(ptr %.131) #37 ; 2 uses
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.11, i64 noundef 35)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.ab

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.z
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !109
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call noundef ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) #37 ; 2 uses
  %i.dt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #37
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull %i.ds, i64 noundef %i.dt)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit56 unwind label %bb.ab

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit56: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit unwind label %bb.ab, !inline_history !4 ; 0 uses

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit56
  call void @__cxa_end_catch()
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.ab:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit56, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit, %bb.z
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.merged = phi { ptr, i32 } [ %.pn43, %bb.y ], [ %i.dw, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.merged

bb.ad:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #43
  unreachable
}

declare void @glfwSetCursor(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN7nanogui16RestartableTimer7restartEv(ptr noundef nonnull align 16 dereferenceable(178)) local_unnamed_addr #5

declare void @_ZN7nanogui16RestartableTimer5clearEv(ptr noundef nonnull align 16 dereferenceable(178)) local_unnamed_addr #5

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #20

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::locale", align 8  ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %1, ptr noundef nonnull align 8 dereferenceable(148) %i.d)
  %i.e = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i unwind label %bb.b ; 2 uses

_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef signext i8 %i.h(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 noundef signext 10)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit unwind label %bb.b, !inline_history !5

bb.b:                                             ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %i.j

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit: ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.i) ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 0 uses
  ret ptr %0
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Screen20mouse_motion_event_fERKNS_5ArrayIfLm2EEES4_ii(ptr nofree nonnull readnone align 16 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr nofree nonnull readnone align 4 captures(none) %2, i32 %3, i32 %4) unnamed_addr #15 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Screen27mouse_button_callback_eventEiii(ptr noundef nonnull align 16 dereferenceable(520) initializes((264, 268), (296, 304)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanogui::Array", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  store i32 %3, ptr %i.a, align 8, !tbaa !219
  %i.b = tail call double @glfwGetTime()
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.b, ptr %i.c, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170
  %i.g = load ptr, ptr %i.d, align 16, !tbaa !169 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp ugt i64 %i.j, 8
  br i1 %i.k, label %bb.b, label %.thread63

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !215  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @__dynamic_cast(ptr nonnull %i.n, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6WindowE, i64 0) #37 ; 6 uses
  %.not50 = icmp eq ptr %i.p, null
  br i1 %.not50, label %.thread63, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.r = load i8, ptr %i.q, align 8, !tbaa !221, !range !174, !noundef !175
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %.thread63

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.v = load i32, ptr %i.t, align 4, !tbaa !40
  %i.w = load i32, ptr %i.u, align 8, !tbaa !40
  %i.x = sub nsw i32 %i.v, %i.w                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.z = load i32, ptr %i.y, align 16, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = sub nsw i32 %i.z, %i.ab                 ; 2 uses
  %i.ad = or i32 %i.ac, %i.x
  %or.cond.i = icmp sgt i32 %i.ad, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp slt i32 %i.x, %i.af
  %or.cond6.i = select i1 %or.cond.i, i1 %i.ag, i1 false
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp slt i32 %i.ac, %i.ai
  %i.ak = select i1 %or.cond6.i, i1 %i.aj, i1 false
  br i1 %i.ak, label %.thread63, label %bb.ae

.thread63:                                        ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %bb.a
  %i.al = icmp eq i32 %2, 1                       ; 3 uses
  %i.am = shl nuw i32 1, %1                       ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread63
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !218
  %i.ap = or i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !218
  br label %bb.h

bb.g:                                             ; preds = %.thread63
  %i.aq = xor i32 %i.am, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !218
  %i.at = and i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !218
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 4 uses
  %i.av = invoke noundef ptr @_ZN7nanogui6Widget11find_widgetERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.au)
          to label %bb.i unwind label %bb.n       ; 4 uses

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !184, !range !174, !noundef !175
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp eq i32 %2, 0                       ; 2 uses
  %or.cond = and i1 %i.az, %i.ay
  br i1 %or.cond, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !155 ; 4 uses
  %.not51 = icmp eq ptr %i.av, %i.bb
end_hunk_0
