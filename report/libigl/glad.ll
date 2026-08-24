Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/glad?download=true
inline.NumInlined: 534
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gladLoadGL:bb.a
  %i.dpi = icmp eq ptr %i.dph, null
  %.pr4065.pre4780 = load ptr, ptr @libGL, align 8, !tbaa !8 ; 2 uses
  br i1 %i.dpi, label %.thread.i38, label %get_proc.exit39

.thread.i38:                                      ; preds = %bb.ams, %bb.amr
  %i.dpj = phi ptr [ %.pr4063, %bb.amr ], [ %.pr4065.pre4780, %bb.ams ]
  %i.dpk = call ptr @dlsym(ptr noundef %i.dpj, ptr noundef nonnull @.str.508) #7
  %.pr4065.pre = load ptr, ptr @libGL, align 8, !tbaa !8
  br label %get_proc.exit39

get_proc.exit39:                                  ; preds = %bb.ams, %.thread.i38
  %.pr4065 = phi ptr [ %.pr4065.pre, %.thread.i38 ], [ %.pr4065.pre4780, %bb.ams ] ; 2 uses
  %.05.i35.ph = phi ptr [ %i.dpk, %.thread.i38 ], [ %i.dph, %bb.ams ]
  store ptr %.05.i35.ph, ptr @glad_glScissorArrayv, align 8, !tbaa !8
  %i.dpl = icmp eq ptr %.pr4065, null
  br i1 %i.dpl, label %get_proc.exit27.thread6535, label %bb.amt

bb.amt:                                           ; preds = %get_proc.exit39
  %i.dpm = load ptr, ptr @gladGetProcAddressPtr, align 8, !tbaa !8 ; 2 uses
  %.not.i28 = icmp eq ptr %i.dpm, null
  br i1 %.not.i28, label %.thread.i32, label %bb.amu

bb.amu:                                           ; preds = %bb.amt
  %i.dpn = call ptr %i.dpm(ptr noundef nonnull @.str.509) #7, !inline_history !30 ; 2 uses
  %i.dpo = icmp eq ptr %i.dpn, null
  br i1 %i.dpo, label %..thread_crit_edge.i30, label %get_proc.exit33

..thread_crit_edge.i30:                           ; preds = %bb.amu
  %.pre.i31 = load ptr, ptr @libGL, align 8, !tbaa !8
  br label %.thread.i32

.thread.i32:                                      ; preds = %..thread_crit_edge.i30, %bb.amt
  %i.dpp = phi ptr [ %.pre.i31, %..thread_crit_edge.i30 ], [ %.pr4065, %bb.amt ]
  %i.dpq = call ptr @dlsym(ptr noundef %i.dpp, ptr noundef nonnull @.str.509) #7
  br label %get_proc.exit33

get_proc.exit27.thread6535.sink.split:            ; preds = %get_proc.exit45, %get_proc.exit39.thread6532
  store ptr null, ptr @glad_glScissorArrayv, align 8, !tbaa !8
  br label %get_proc.exit27.thread6535

get_proc.exit27.thread6535:                       ; preds = %get_proc.exit27.thread6535.sink.split, %get_proc.exit39
  store ptr null, ptr @glad_glScissorIndexed, align 8, !tbaa !8
  br label %get_proc.exit15.thread6538.sink.split

get_proc.exit33:                                  ; preds = %bb.amu, %.thread.i32
  %.05.i29.ph = phi ptr [ %i.dpn, %bb.amu ], [ %i.dpq, %.thread.i32 ]
  %.pr4067 = load ptr, ptr @libGL, align 8, !tbaa !8 ; 2 uses
  store ptr %.05.i29.ph, ptr @glad_glScissorIndexed, align 8, !tbaa !8
  %i.dpr = icmp eq ptr %.pr4067, null
  br i1 %i.dpr, label %get_proc.exit15.thread6538.sink.split, label %bb.amv

bb.amv:                                           ; preds = %get_proc.exit33
  %i.dps = load ptr, ptr @gladGetProcAddressPtr, align 8, !tbaa !8 ; 2 uses
  %.not.i22 = icmp eq ptr %i.dps, null
  br i1 %.not.i22, label %.thread.i26, label %bb.amw

bb.amw:                                           ; preds = %bb.amv
  %i.dpt = call ptr %i.dps(ptr noundef nonnull @.str.510) #7, !inline_history !30 ; 2 uses
  %i.dpu = icmp eq ptr %i.dpt, null
  %.pr4069.pre4783 = load ptr, ptr @libGL, align 8, !tbaa !8 ; 2 uses
  br i1 %i.dpu, label %.thread.i26, label %get_proc.exit27

.thread.i26:                                      ; preds = %bb.amw, %bb.amv
  %i.dpv = phi ptr [ %.pr4067, %bb.amv ], [ %.pr4069.pre4783, %bb.amw ]
  %i.dpw = call ptr @dlsym(ptr noundef %i.dpv, ptr noundef nonnull @.str.510) #7
  %.pr4069.pre = load ptr, ptr @libGL, align 8, !tbaa !8
  br label %get_proc.exit27

get_proc.exit27:                                  ; preds = %bb.amw, %.thread.i26
  %.pr4069 = phi ptr [ %.pr4069.pre, %.thread.i26 ], [ %.pr4069.pre4783, %bb.amw ] ; 2 uses
  %.05.i23.ph = phi ptr [ %i.dpw, %.thread.i26 ], [ %i.dpt, %bb.amw ]
  store ptr %.05.i23.ph, ptr @glad_glScissorIndexedv, align 8, !tbaa !8
  %i.dpx = icmp eq ptr %.pr4069, null
  br i1 %i.dpx, label %get_proc.exit15.thread6538, label %bb.amx

bb.amx:                                           ; preds = %get_proc.exit27
  %i.dpy = load ptr, ptr @gladGetProcAddressPtr, align 8, !tbaa !8 ; 2 uses
  %.not.i16 = icmp eq ptr %i.dpy, null
  br i1 %.not.i16, label %.thread.i20, label %bb.amy

bb.amy:                                           ; preds = %bb.amx
  %i.dpz = call ptr %i.dpy(ptr noundef nonnull @.str.511) #7, !inline_history !30 ; 2 uses
  %i.dqa = icmp eq ptr %i.dpz, null
  br i1 %i.dqa, label %..thread_crit_edge.i18, label %get_proc.exit21

..thread_crit_edge.i18:                           ; preds = %bb.amy
  %.pre.i19 = load ptr, ptr @libGL, align 8, !tbaa !8
  br label %.thread.i20

.thread.i20:                                      ; preds = %..thread_crit_edge.i18, %bb.amx
  %i.dqb = phi ptr [ %.pre.i19, %..thread_crit_edge.i18 ], [ %.pr4069, %bb.amx ]
  %i.dqc = call ptr @dlsym(ptr noundef %i.dqb, ptr noundef nonnull @.str.511) #7
  br label %get_proc.exit21

get_proc.exit15.thread6538.sink.split:            ; preds = %get_proc.exit33, %get_proc.exit27.thread6535
  store ptr null, ptr @glad_glScissorIndexedv, align 8, !tbaa !8
  br label %get_proc.exit15.thread6538

get_proc.exit15.thread6538:                       ; preds = %get_proc.exit15.thread6538.sink.split, %get_proc.exit27
  store ptr null, ptr @glad_glDepthRangeArrayv, align 8, !tbaa !8
  br label %get_proc.exit9.thread.sink.split

get_proc.exit21:                                  ; preds = %bb.amy, %.thread.i20
  %.05.i17.ph = phi ptr [ %i.dpz, %bb.amy ], [ %i.dqc, %.thread.i20 ]
  %.pr4071 = load ptr, ptr @libGL, align 8, !tbaa !8 ; 2 uses
  store ptr %.05.i17.ph, ptr @glad_glDepthRangeArrayv, align 8, !tbaa !8
  %i.dqd = icmp eq ptr %.pr4071, null
  br i1 %i.dqd, label %get_proc.exit9.thread.sink.split, label %bb.amz

bb.amz:                                           ; preds = %get_proc.exit21
  %i.dqe = load ptr, ptr @gladGetProcAddressPtr, align 8, !tbaa !8 ; 2 uses
  %.not.i10 = icmp eq ptr %i.dqe, null
  br i1 %.not.i10, label %.thread.i14, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  %i.dqf = call ptr %i.dqe(ptr noundef nonnull @.str.512) #7, !inline_history !30 ; 2 uses
  %i.dqg = icmp eq ptr %i.dqf, null
  %.pr4073.pre4786 = load ptr, ptr @libGL, align 8, !tbaa !8 ; 2 uses
  br i1 %i.dqg, label %.thread.i14, label %get_proc.exit15

.thread.i14:                                      ; preds = %bb.ana, %bb.amz
  %i.dqh = phi ptr [ %.pr4071, %bb.amz ], [ %.pr4073.pre4786, %bb.ana ]
  %i.dqi = call ptr @dlsym(ptr noundef %i.dqh, ptr noundef nonnull @.str.512) #7
  %.pr4073.pre = load ptr, ptr @libGL, align 8, !tbaa !8
  br label %get_proc.exit15

get_proc.exit15:                                  ; preds = %bb.ana, %.thread.i14
  %.pr4073 = phi ptr [ %.pr4073.pre, %.thread.i14 ], [ %.pr4073.pre4786, %bb.ana ] ; 2 uses
  %.05.i11.ph = phi ptr [ %i.dqi, %.thread.i14 ], [ %i.dqf, %bb.ana ]
  store ptr %.05.i11.ph, ptr @glad_glDepthRangeIndexed, align 8, !tbaa !8
  %i.dqj = icmp eq ptr %.pr4073, null
  br i1 %i.dqj, label %get_proc.exit9.thread, label %bb.anb

bb.anb:                                           ; preds = %get_proc.exit15
  %i.dqk = load ptr, ptr @gladGetProcAddressPtr, align 8, !tbaa !8 ; 2 uses
  %.not.i4 = icmp eq ptr %i.dqk, null
  br i1 %.not.i4, label %.thread.i8, label %bb.anc

bb.anc:                                           ; preds = %bb.anb
  %i.dql = call ptr %i.dqk(ptr noundef nonnull @.str.513) #7, !inline_history !30 ; 2 uses
  %i.dqm = icmp eq ptr %i.dql, null
  br i1 %i.dqm, label %..thread_crit_edge.i6, label %get_proc.exit9

..thread_crit_edge.i6:                            ; preds = %bb.anc
  %.pre.i7 = load ptr, ptr @libGL, align 8, !tbaa !8
  br label %.thread.i8

.thread.i8:                                       ; preds = %..thread_crit_edge.i6, %bb.anb
  %i.dqn = phi ptr [ %.pre.i7, %..thread_crit_edge.i6 ], [ %.pr4073, %bb.anb ]
  %i.dqo = call ptr @dlsym(ptr noundef %i.dqn, ptr noundef nonnull @.str.513) #7
  br label %get_proc.exit9

get_proc.exit9.thread.sink.split:                 ; preds = %get_proc.exit21, %get_proc.exit15.thread6538
  store ptr null, ptr @glad_glDepthRangeIndexed, align 8, !tbaa !8
  br label %get_proc.exit9.thread

get_proc.exit9.thread:                            ; preds = %get_proc.exit9.thread.sink.split, %get_proc.exit15
  store ptr null, ptr @glad_glGetFloati_v, align 8, !tbaa !8
  br label %get_proc.exit

get_proc.exit9:                                   ; preds = %bb.anc, %.thread.i8
  %.05.i5.ph = phi ptr [ %i.dql, %bb.anc ], [ %i.dqo, %.thread.i8 ]
  %.pr4075 = load ptr, ptr @libGL, align 8, !tbaa !8 ; 2 uses
  store ptr %.05.i5.ph, ptr @glad_glGetFloati_v, align 8, !tbaa !8
  %i.dqp = icmp eq ptr %.pr4075, null
  br i1 %i.dqp, label %get_proc.exit, label %bb.and

bb.and:                                           ; preds = %get_proc.exit9
  %i.dqq = load ptr, ptr @gladGetProcAddressPtr, align 8, !tbaa !8 ; 2 uses
  %.not.i2 = icmp eq ptr %i.dqq, null
  br i1 %.not.i2, label %.thread.i, label %bb.ane

bb.ane:                                           ; preds = %bb.and
  %i.dqr = call ptr %i.dqq(ptr noundef nonnull @.str.514) #7, !inline_history !30 ; 2 uses
  %i.dqs = icmp eq ptr %i.dqr, null
  br i1 %i.dqs, label %..thread_crit_edge.i, label %get_proc.exit

..thread_crit_edge.i:                             ; preds = %bb.ane
  %.pre.i3 = load ptr, ptr @libGL, align 8, !tbaa !8
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.and
  %i.dqt = phi ptr [ %.pre.i3, %..thread_crit_edge.i ], [ %.pr4075, %bb.and ]
  %i.dqu = call ptr @dlsym(ptr noundef %i.dqt, ptr noundef nonnull @.str.514) #7
  br label %get_proc.exit

get_proc.exit:                                    ; preds = %get_proc.exit9.thread, %get_proc.exit9, %bb.ane, %.thread.i
  %.05.i = phi ptr [ null, %get_proc.exit9 ], [ %i.dqu, %.thread.i ], [ %i.dqr, %bb.ane ], [ null, %get_proc.exit9.thread ]
  store ptr %.05.i, ptr @glad_glGetDoublei_v, align 8, !tbaa !8
  br label %load_GL_VERSION_4_1.exit.i

load_GL_VERSION_4_1.exit.i:                       ; preds = %get_proc.exit, %load_GL_VERSION_4_0.exit.i
  %i.dqv = load i32, ptr @max_loaded_major, align 4, !tbaa !16
  %i.dqw = icmp slt i32 %i.dqv, 3
  br i1 %i.dqw, label %.loopexit.i.i, label %bb.anf

bb.anf:                                           ; preds = %load_GL_VERSION_4_1.exit.i
  store i32 0, ptr @num_exts_i, align 4, !tbaa !16
  %i.dqx = load ptr, ptr @glad_glGetIntegerv, align 8, !tbaa !8
  call void %i.dqx(i32 noundef 33309, ptr noundef nonnull @num_exts_i) #7, !inline_history !31
  %i.dqy = load i32, ptr @num_exts_i, align 4, !tbaa !16 ; 2 uses
  %i.dqz = icmp sgt i32 %i.dqy, 0
  br i1 %i.dqz, label %bb.ang, label %thread-pre-split.i.i.i

bb.ang:                                           ; preds = %bb.anf
  %i.dra = zext nneg i32 %i.dqy to i64
  %i.drb = shl nuw nsw i64 %i.dra, 3
  %i.drc = call noalias ptr @malloc(i64 noundef %i.drb) #9 ; 2 uses
  store ptr %i.drc, ptr @exts_i, align 8, !tbaa !32
  br label %bb.anh

thread-pre-split.i.i.i:                           ; preds = %bb.anf
  %.pr.i.i.i = load ptr, ptr @exts_i, align 8, !tbaa !32
  br label %bb.anh

bb.anh:                                           ; preds = %thread-pre-split.i.i.i, %bb.ang
  %i.drd = phi ptr [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.drc, %bb.ang ] ; 2 uses
  %i.dre = icmp eq ptr %i.drd, null
  br i1 %i.dre, label %gladLoadGLLoader.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.anh
  %0 = load i32, ptr @num_exts_i, align 4, !tbaa !16
  %.not17.i.i.i = icmp eq i32 %0, 0
  br i1 %.not17.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.anj
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.anj ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.drf = load ptr, ptr @glad_glGetStringi, align 8, !tbaa !8
  %i.drg = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.drh = call ptr %i.drf(i32 noundef 7939, i32 noundef %i.drg) #7, !inline_history !31 ; 2 uses
  %i.dri = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.drh) #8
  %i.drj = add i64 %i.dri, 1                      ; 2 uses
  %i.drk = call noalias ptr @malloc(i64 noundef %i.drj) #9 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.drk, null
  br i1 %.not.i.i.i, label %bb.anj, label %bb.ani

bb.ani:                                           ; preds = %.lr.ph.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.drk, ptr nonnull align 1 %i.drh, i64 %i.drj, i1 false)
  br label %bb.anj

bb.anj:                                           ; preds = %bb.ani, %.lr.ph.i.i.i
  %i.drl = load ptr, ptr @exts_i, align 8, !tbaa !32 ; 2 uses
  %i.drm = getelementptr inbounds nuw [8 x i8], ptr %i.drl, i64 %indvars.iv.i.i.i
  store ptr %i.drk, ptr %i.drm, align 8, !tbaa !35
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.drn = load i32, ptr @num_exts_i, align 4, !tbaa !16 ; 2 uses
  %i.dro = zext i32 %i.drn to i64
  %i.drp = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.dro
  br i1 %i.drp, label %.lr.ph.i.i.i, label %.preheader.i2.i.i, !llvm.loop !37

.loopexit.i.i:                                    ; preds = %load_GL_VERSION_4_1.exit.i
  %i.drq = load ptr, ptr @glad_glGetString, align 8, !tbaa !8
  %i.drr = call ptr %i.drq(i32 noundef 7939) #7, !inline_history !31
  store ptr %i.drr, ptr @exts, align 8, !tbaa !35
  %.pre.i.i = load ptr, ptr @exts_i, align 8, !tbaa !32 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i1.i.i, label %bb.ank, label %.preheader.i2thread-pre-split.i.i

.preheader.i2thread-pre-split.i.i:                ; preds = %.loopexit.i.i
  %.pr.i.i = load i32, ptr @num_exts_i, align 4, !tbaa !16
  br label %.preheader.i2.i.i

.preheader.i2.i.i:                                ; preds = %bb.anj, %.preheader.i2thread-pre-split.i.i
  %i.drs = phi i32 [ %.pr.i.i, %.preheader.i2thread-pre-split.i.i ], [ %i.drn, %bb.anj ]
  %i.drt = phi ptr [ %.pre.i.i, %.preheader.i2thread-pre-split.i.i ], [ %i.drl, %bb.anj ] ; 3 uses
  %i.dru = icmp sgt i32 %i.drs, 0
  br i1 %i.dru, label %.lr.ph.i3.i.i, label %._crit_edge.i.i.i

.lr.ph.i3.i.i:                                    ; preds = %.preheader.i2.i.i, %.lr.ph.i3.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i5.i.i, %.lr.ph.i3.i.i ], [ 0, %.preheader.i2.i.i ] ; 2 uses
  %i.drv = getelementptr inbounds nuw [8 x i8], ptr %i.drt, i64 %indvars.iv.i4.i.i
  %i.drw = load ptr, ptr %i.drv, align 8, !tbaa !35
  call void @free(ptr noundef %i.drw) #7
  %indvars.iv.next.i5.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 2 uses
  %i.drx = load i32, ptr @num_exts_i, align 4, !tbaa !16
  %i.dry = sext i32 %i.drx to i64
  %i.drz = icmp slt i64 %indvars.iv.next.i5.i.i, %i.dry
  br i1 %i.drz, label %.lr.ph.i3.i.i, label %._crit_edge.i.i.i, !llvm.loop !39

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i3.i.i, %.preheader.i2.i.i, %.preheader.i.i.i
  %i.dsa = phi ptr [ %i.drt, %.preheader.i2.i.i ], [ %i.drd, %.preheader.i.i.i ], [ %i.drt, %.lr.ph.i3.i.i ]
  call void @free(ptr noundef nonnull %i.dsa) #7
  store ptr null, ptr @exts_i, align 8, !tbaa !32
  br label %bb.ank

bb.ank:                                           ; preds = %._crit_edge.i.i.i, %.loopexit.i.i
  %i.dsb = load i32, ptr @GLVersion, align 4, !tbaa !10
  %i.dsc = icmp ne i32 %i.dsb, 0
  %i.dsd = load i32, ptr getelementptr inbounds nuw (i8, ptr @GLVersion, i64 4), align 4
  %i.dse = icmp ne i32 %i.dsd, 0
  %i.dsf = select i1 %i.dsc, i1 true, i1 %i.dse
  %i.dsg = zext i1 %i.dsf to i32
  br label %gladLoadGLLoader.exit

gladLoadGLLoader.exit:                            ; preds = %get_proc.exit3075, %bb.e, %bb.anh, %bb.ank
  %.0.i.ph = phi i32 [ 0, %bb.anh ], [ %i.dsg, %bb.ank ], [ 0, %get_proc.exit3075 ], [ 0, %bb.e ] ; 2 uses
  %.pr4077 = load ptr, ptr @libGL, align 8, !tbaa !8 ; 2 uses
  %.not.i1 = icmp eq ptr %.pr4077, null
  br i1 %.not.i1, label %close_gl.exit, label %bb.anl

bb.anl:                                           ; preds = %gladLoadGLLoader.exit
  %i.dsh = call i32 @dlclose(ptr noundef nonnull %.pr4077) #7 ; 0 uses
  br label %close_gl.exit.sink.split

close_gl.exit.sink.split:                         ; preds = %bb.c, %bb.anl
  %libGL.sink = phi ptr [ @libGL, %bb.anl ], [ @glad_glGetString, %bb.c ]
  %.0.ph = phi i32 [ %.0.i.ph, %bb.anl ], [ 0, %bb.c ]
  store ptr null, ptr %libGL.sink, align 8, !tbaa !8
  br label %close_gl.exit

close_gl.exit:                                    ; preds = %close_gl.exit.sink.split, %bb.b, %gladLoadGLLoader.exit, %open_gl.exit
  %.0 = phi i32 [ %.0.i.ph, %gladLoadGLLoader.exit ], [ 0, %open_gl.exit ], [ 0, %bb.b ], [ %.0.ph, %close_gl.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @gladLoadGLLoader(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 0, ptr @GLVersion, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @GLVersion, i64 4), align 4, !tbaa !12
  %i.c = tail call ptr %0(ptr noundef nonnull @.str) #7 ; 3 uses
  store ptr %i.c, ptr @glad_glGetString, align 8, !tbaa !8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %find_extensionsGL.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr %i.c(i32 noundef 7938) #7
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %find_extensionsGL.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.g = load ptr, ptr @glad_glGetString, align 8, !tbaa !8
  %i.h = tail call ptr %i.g(i32 noundef 7938) #7, !inline_history !40 ; 6 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.find_coreGL.exit_crit_edge, label %.preheader.preheader.i

.find_coreGL.exit_crit_edge:                      ; preds = %bb.c
  %.pre = load i32, ptr @GLAD_GL_VERSION_1_0, align 4, !tbaa !16
  br label %find_coreGL.exit

.preheader.preheader.i:                           ; preds = %bb.c
  %i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(14) @.str.4, i64 noundef 13) #8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.split.loop.exit.i, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(14) @.str.5, i64 noundef 13) #8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.split.loop.exit.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.m = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(11) @.str.6, i64 noundef 10) #8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.split.loop.exit.i, label %.split.loop.exit45.i

.split.loop.exit.i:                               ; preds = %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi i64 [ 13, %.preheader.preheader.i ], [ 13, %.preheader.1.i ], [ 10, %.preheader.2.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.lcssa.i
  br label %.split.loop.exit45.i

.split.loop.exit45.i:                             ; preds = %.split.loop.exit.i, %.preheader.2.i
  %.2.i = phi ptr [ %i.o, %.split.loop.exit.i ], [ %i.h, %.preheader.2.i ]
  %i.p = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %.2.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !16   ; 10 uses
  store i32 %i.q, ptr @GLVersion, align 4, !tbaa !10
  %i.r = load i32, ptr %i.b, align 4, !tbaa !16   ; 7 uses
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @GLVersion, i64 4), align 4, !tbaa !12
  store i32 %i.q, ptr @max_loaded_major, align 4, !tbaa !16
  %i.s = icmp eq i32 %i.q, 1                      ; 6 uses
  %i.t = icmp sgt i32 %i.r, -1                    ; 4 uses
  %or.cond.i = select i1 %i.s, i1 %i.t, i1 false
  %i.u = icmp sgt i32 %i.q, 1                     ; 6 uses
  %i.v = or i1 %i.u, %or.cond.i
  %i.w = zext i1 %i.v to i32                      ; 3 uses
  store i32 %i.w, ptr @GLAD_GL_VERSION_1_0, align 4, !tbaa !16
  %i.x = icmp sgt i32 %i.r, 0                     ; 4 uses
  %or.cond3.i = select i1 %i.s, i1 %i.x, i1 false
  %i.y = or i1 %i.u, %or.cond3.i
  %i.z = zext i1 %i.y to i32
  store i32 %i.z, ptr @GLAD_GL_VERSION_1_1, align 4, !tbaa !16
  %i.aa = icmp sgt i32 %i.r, 1                    ; 2 uses
  %or.cond5.i = select i1 %i.s, i1 %i.aa, i1 false
  %i.ab = or i1 %i.u, %or.cond5.i
  %i.ac = zext i1 %i.ab to i32
  store i32 %i.ac, ptr @GLAD_GL_VERSION_1_2, align 4, !tbaa !16
  %i.ad = icmp sgt i32 %i.r, 2                    ; 2 uses
  %or.cond7.i = select i1 %i.s, i1 %i.ad, i1 false
  %i.ae = or i1 %i.u, %or.cond7.i
  %i.af = zext i1 %i.ae to i32
  store i32 %i.af, ptr @GLAD_GL_VERSION_1_3, align 4, !tbaa !16
  %i.ag = icmp sgt i32 %i.r, 3
  %or.cond9.i = select i1 %i.s, i1 %i.ag, i1 false
  %i.ah = or i1 %i.u, %or.cond9.i
  %i.ai = zext i1 %i.ah to i32
  store i32 %i.ai, ptr @GLAD_GL_VERSION_1_4, align 4, !tbaa !16
  %i.aj = icmp sgt i32 %i.r, 4
  %or.cond11.i = select i1 %i.s, i1 %i.aj, i1 false
  %i.ak = or i1 %i.u, %or.cond11.i
  %i.al = zext i1 %i.ak to i32
  store i32 %i.al, ptr @GLAD_GL_VERSION_1_5, align 4, !tbaa !16
  %i.am = icmp eq i32 %i.q, 2                     ; 2 uses
  %or.cond13.i = select i1 %i.am, i1 %i.t, i1 false
  %i.an = icmp sgt i32 %i.q, 2                    ; 2 uses
  %i.ao = or i1 %i.an, %or.cond13.i
  %i.ap = zext i1 %i.ao to i32
  store i32 %i.ap, ptr @GLAD_GL_VERSION_2_0, align 4, !tbaa !16
  %or.cond15.i = select i1 %i.am, i1 %i.x, i1 false
  %i.aq = or i1 %i.an, %or.cond15.i
  %i.ar = zext i1 %i.aq to i32
  store i32 %i.ar, ptr @GLAD_GL_VERSION_2_1, align 4, !tbaa !16
  %i.as = icmp eq i32 %i.q, 3                     ; 4 uses
  %or.cond17.i = select i1 %i.as, i1 %i.t, i1 false
  %i.at = icmp sgt i32 %i.q, 3                    ; 4 uses
  %i.au = or i1 %i.at, %or.cond17.i
  %i.av = zext i1 %i.au to i32
  store i32 %i.av, ptr @GLAD_GL_VERSION_3_0, align 4, !tbaa !16
  %or.cond19.i = select i1 %i.as, i1 %i.x, i1 false
  %i.aw = or i1 %i.at, %or.cond19.i
  %i.ax = zext i1 %i.aw to i32
  store i32 %i.ax, ptr @GLAD_GL_VERSION_3_1, align 4, !tbaa !16
  %or.cond21.i = select i1 %i.as, i1 %i.aa, i1 false
  %i.ay = or i1 %i.at, %or.cond21.i
  %i.az = zext i1 %i.ay to i32
  store i32 %i.az, ptr @GLAD_GL_VERSION_3_2, align 4, !tbaa !16
  %or.cond23.i = select i1 %i.as, i1 %i.ad, i1 false
  %i.ba = or i1 %i.at, %or.cond23.i
  %i.bb = zext i1 %i.ba to i32
  store i32 %i.bb, ptr @GLAD_GL_VERSION_3_3, align 4, !tbaa !16
  %i.bc = icmp eq i32 %i.q, 4                     ; 2 uses
  %or.cond25.i = select i1 %i.bc, i1 %i.t, i1 false
  %i.bd = icmp sgt i32 %i.q, 4                    ; 3 uses
  %i.be = or i1 %i.bd, %or.cond25.i
  %i.bf = zext i1 %i.be to i32
  store i32 %i.bf, ptr @GLAD_GL_VERSION_4_0, align 4, !tbaa !16
  %or.cond27.i = select i1 %i.bc, i1 %i.x, i1 false ; 2 uses
  %i.bg = or i1 %i.bd, %or.cond27.i
  %i.bh = zext i1 %i.bg to i32
  store i32 %i.bh, ptr @GLAD_GL_VERSION_4_1, align 4, !tbaa !16
  %brmerge.i = select i1 %i.bd, i1 true, i1 %or.cond27.i
  br i1 %brmerge.i, label %bb.d, label %find_coreGL.exit

bb.d:                                             ; preds = %.split.loop.exit45.i
  store i32 4, ptr @max_loaded_major, align 4, !tbaa !16
  br label %find_coreGL.exit

find_coreGL.exit:                                 ; preds = %.find_coreGL.exit_crit_edge, %.split.loop.exit45.i, %bb.d
  %i.bi = phi i32 [ %.pre, %.find_coreGL.exit_crit_edge ], [ %i.w, %.split.loop.exit45.i ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not.i16 = icmp eq i32 %i.bi, 0
  br i1 %.not.i16, label %load_GL_VERSION_1_0.exit, label %bb.e

bb.e:                                             ; preds = %find_coreGL.exit
  %i.bj = call ptr %0(ptr noundef nonnull @.str.8) #7, !inline_history !41
  store ptr %i.bj, ptr @glad_glCullFace, align 8, !tbaa !8
  %i.bk = call ptr %0(ptr noundef nonnull @.str.9) #7, !inline_history !41
  store ptr %i.bk, ptr @glad_glFrontFace, align 8, !tbaa !8
  %i.bl = call ptr %0(ptr noundef nonnull @.str.10) #7, !inline_history !41
  store ptr %i.bl, ptr @glad_glHint, align 8, !tbaa !8
  %i.bm = call ptr %0(ptr noundef nonnull @.str.11) #7, !inline_history !41
  store ptr %i.bm, ptr @glad_glLineWidth, align 8, !tbaa !8
  %i.bn = call ptr %0(ptr noundef nonnull @.str.12) #7, !inline_history !41
  store ptr %i.bn, ptr @glad_glPointSize, align 8, !tbaa !8
  %i.bo = call ptr %0(ptr noundef nonnull @.str.13) #7, !inline_history !41
  store ptr %i.bo, ptr @glad_glPolygonMode, align 8, !tbaa !8
  %i.bp = call ptr %0(ptr noundef nonnull @.str.14) #7, !inline_history !41
  store ptr %i.bp, ptr @glad_glScissor, align 8, !tbaa !8
  %i.bq = call ptr %0(ptr noundef nonnull @.str.15) #7, !inline_history !41
  store ptr %i.bq, ptr @glad_glTexParameterf, align 8, !tbaa !8
  %i.br = call ptr %0(ptr noundef nonnull @.str.16) #7, !inline_history !41
  store ptr %i.br, ptr @glad_glTexParameterfv, align 8, !tbaa !8
  %i.bs = call ptr %0(ptr noundef nonnull @.str.17) #7, !inline_history !41
  store ptr %i.bs, ptr @glad_glTexParameteri, align 8, !tbaa !8
  %i.bt = call ptr %0(ptr noundef nonnull @.str.18) #7, !inline_history !41
end_hunk_0
begin_hunk_1_@gladLoadGLLoader:bb.a
  store ptr %i.sa, ptr @glad_glEndQueryIndexed, align 8, !tbaa !8
  %i.sb = call ptr %0(ptr noundef nonnull @.str.426) #7, !inline_history !53
  store ptr %i.sb, ptr @glad_glGetQueryIndexediv, align 8, !tbaa !8
  br label %load_GL_VERSION_4_0.exit

load_GL_VERSION_4_0.exit:                         ; preds = %load_GL_VERSION_3_3.exit, %bb.q
  %i.sc = load i32, ptr @GLAD_GL_VERSION_4_1, align 4, !tbaa !16
  %.not.i29 = icmp eq i32 %i.sc, 0
  br i1 %.not.i29, label %load_GL_VERSION_4_1.exit, label %bb.r

bb.r:                                             ; preds = %load_GL_VERSION_4_0.exit
  %i.sd = call ptr %0(ptr noundef nonnull @.str.427) #7, !inline_history !54
  store ptr %i.sd, ptr @glad_glReleaseShaderCompiler, align 8, !tbaa !8
  %i.se = call ptr %0(ptr noundef nonnull @.str.428) #7, !inline_history !54
  store ptr %i.se, ptr @glad_glShaderBinary, align 8, !tbaa !8
  %i.sf = call ptr %0(ptr noundef nonnull @.str.429) #7, !inline_history !54
  store ptr %i.sf, ptr @glad_glGetShaderPrecisionFormat, align 8, !tbaa !8
  %i.sg = call ptr %0(ptr noundef nonnull @.str.430) #7, !inline_history !54
  store ptr %i.sg, ptr @glad_glDepthRangef, align 8, !tbaa !8
  %i.sh = call ptr %0(ptr noundef nonnull @.str.431) #7, !inline_history !54
  store ptr %i.sh, ptr @glad_glClearDepthf, align 8, !tbaa !8
  %i.si = call ptr %0(ptr noundef nonnull @.str.432) #7, !inline_history !54
  store ptr %i.si, ptr @glad_glGetProgramBinary, align 8, !tbaa !8
  %i.sj = call ptr %0(ptr noundef nonnull @.str.433) #7, !inline_history !54
  store ptr %i.sj, ptr @glad_glProgramBinary, align 8, !tbaa !8
  %i.sk = call ptr %0(ptr noundef nonnull @.str.434) #7, !inline_history !54
  store ptr %i.sk, ptr @glad_glProgramParameteri, align 8, !tbaa !8
  %i.sl = call ptr %0(ptr noundef nonnull @.str.435) #7, !inline_history !54
  store ptr %i.sl, ptr @glad_glUseProgramStages, align 8, !tbaa !8
  %i.sm = call ptr %0(ptr noundef nonnull @.str.436) #7, !inline_history !54
  store ptr %i.sm, ptr @glad_glActiveShaderProgram, align 8, !tbaa !8
  %i.sn = call ptr %0(ptr noundef nonnull @.str.437) #7, !inline_history !54
  store ptr %i.sn, ptr @glad_glCreateShaderProgramv, align 8, !tbaa !8
  %i.so = call ptr %0(ptr noundef nonnull @.str.438) #7, !inline_history !54
  store ptr %i.so, ptr @glad_glBindProgramPipeline, align 8, !tbaa !8
  %i.sp = call ptr %0(ptr noundef nonnull @.str.439) #7, !inline_history !54
  store ptr %i.sp, ptr @glad_glDeleteProgramPipelines, align 8, !tbaa !8
  %i.sq = call ptr %0(ptr noundef nonnull @.str.440) #7, !inline_history !54
  store ptr %i.sq, ptr @glad_glGenProgramPipelines, align 8, !tbaa !8
  %i.sr = call ptr %0(ptr noundef nonnull @.str.441) #7, !inline_history !54
  store ptr %i.sr, ptr @glad_glIsProgramPipeline, align 8, !tbaa !8
  %i.ss = call ptr %0(ptr noundef nonnull @.str.442) #7, !inline_history !54
  store ptr %i.ss, ptr @glad_glGetProgramPipelineiv, align 8, !tbaa !8
  %i.st = call ptr %0(ptr noundef nonnull @.str.434) #7, !inline_history !54
  store ptr %i.st, ptr @glad_glProgramParameteri, align 8, !tbaa !8
  %i.su = call ptr %0(ptr noundef nonnull @.str.443) #7, !inline_history !54
  store ptr %i.su, ptr @glad_glProgramUniform1i, align 8, !tbaa !8
  %i.sv = call ptr %0(ptr noundef nonnull @.str.444) #7, !inline_history !54
  store ptr %i.sv, ptr @glad_glProgramUniform1iv, align 8, !tbaa !8
  %i.sw = call ptr %0(ptr noundef nonnull @.str.445) #7, !inline_history !54
  store ptr %i.sw, ptr @glad_glProgramUniform1f, align 8, !tbaa !8
  %i.sx = call ptr %0(ptr noundef nonnull @.str.446) #7, !inline_history !54
  store ptr %i.sx, ptr @glad_glProgramUniform1fv, align 8, !tbaa !8
  %i.sy = call ptr %0(ptr noundef nonnull @.str.447) #7, !inline_history !54
  store ptr %i.sy, ptr @glad_glProgramUniform1d, align 8, !tbaa !8
  %i.sz = call ptr %0(ptr noundef nonnull @.str.448) #7, !inline_history !54
  store ptr %i.sz, ptr @glad_glProgramUniform1dv, align 8, !tbaa !8
  %i.ta = call ptr %0(ptr noundef nonnull @.str.449) #7, !inline_history !54
  store ptr %i.ta, ptr @glad_glProgramUniform1ui, align 8, !tbaa !8
  %i.tb = call ptr %0(ptr noundef nonnull @.str.450) #7, !inline_history !54
  store ptr %i.tb, ptr @glad_glProgramUniform1uiv, align 8, !tbaa !8
  %i.tc = call ptr %0(ptr noundef nonnull @.str.451) #7, !inline_history !54
  store ptr %i.tc, ptr @glad_glProgramUniform2i, align 8, !tbaa !8
  %i.td = call ptr %0(ptr noundef nonnull @.str.452) #7, !inline_history !54
  store ptr %i.td, ptr @glad_glProgramUniform2iv, align 8, !tbaa !8
  %i.te = call ptr %0(ptr noundef nonnull @.str.453) #7, !inline_history !54
  store ptr %i.te, ptr @glad_glProgramUniform2f, align 8, !tbaa !8
  %i.tf = call ptr %0(ptr noundef nonnull @.str.454) #7, !inline_history !54
  store ptr %i.tf, ptr @glad_glProgramUniform2fv, align 8, !tbaa !8
  %i.tg = call ptr %0(ptr noundef nonnull @.str.455) #7, !inline_history !54
  store ptr %i.tg, ptr @glad_glProgramUniform2d, align 8, !tbaa !8
  %i.th = call ptr %0(ptr noundef nonnull @.str.456) #7, !inline_history !54
  store ptr %i.th, ptr @glad_glProgramUniform2dv, align 8, !tbaa !8
  %i.ti = call ptr %0(ptr noundef nonnull @.str.457) #7, !inline_history !54
  store ptr %i.ti, ptr @glad_glProgramUniform2ui, align 8, !tbaa !8
  %i.tj = call ptr %0(ptr noundef nonnull @.str.458) #7, !inline_history !54
  store ptr %i.tj, ptr @glad_glProgramUniform2uiv, align 8, !tbaa !8
  %i.tk = call ptr %0(ptr noundef nonnull @.str.459) #7, !inline_history !54
  store ptr %i.tk, ptr @glad_glProgramUniform3i, align 8, !tbaa !8
  %i.tl = call ptr %0(ptr noundef nonnull @.str.460) #7, !inline_history !54
  store ptr %i.tl, ptr @glad_glProgramUniform3iv, align 8, !tbaa !8
  %i.tm = call ptr %0(ptr noundef nonnull @.str.461) #7, !inline_history !54
  store ptr %i.tm, ptr @glad_glProgramUniform3f, align 8, !tbaa !8
  %i.tn = call ptr %0(ptr noundef nonnull @.str.462) #7, !inline_history !54
  store ptr %i.tn, ptr @glad_glProgramUniform3fv, align 8, !tbaa !8
  %i.to = call ptr %0(ptr noundef nonnull @.str.463) #7, !inline_history !54
  store ptr %i.to, ptr @glad_glProgramUniform3d, align 8, !tbaa !8
  %i.tp = call ptr %0(ptr noundef nonnull @.str.464) #7, !inline_history !54
  store ptr %i.tp, ptr @glad_glProgramUniform3dv, align 8, !tbaa !8
  %i.tq = call ptr %0(ptr noundef nonnull @.str.465) #7, !inline_history !54
  store ptr %i.tq, ptr @glad_glProgramUniform3ui, align 8, !tbaa !8
  %i.tr = call ptr %0(ptr noundef nonnull @.str.466) #7, !inline_history !54
  store ptr %i.tr, ptr @glad_glProgramUniform3uiv, align 8, !tbaa !8
  %i.ts = call ptr %0(ptr noundef nonnull @.str.467) #7, !inline_history !54
  store ptr %i.ts, ptr @glad_glProgramUniform4i, align 8, !tbaa !8
  %i.tt = call ptr %0(ptr noundef nonnull @.str.468) #7, !inline_history !54
  store ptr %i.tt, ptr @glad_glProgramUniform4iv, align 8, !tbaa !8
  %i.tu = call ptr %0(ptr noundef nonnull @.str.469) #7, !inline_history !54
  store ptr %i.tu, ptr @glad_glProgramUniform4f, align 8, !tbaa !8
  %i.tv = call ptr %0(ptr noundef nonnull @.str.470) #7, !inline_history !54
  store ptr %i.tv, ptr @glad_glProgramUniform4fv, align 8, !tbaa !8
  %i.tw = call ptr %0(ptr noundef nonnull @.str.471) #7, !inline_history !54
  store ptr %i.tw, ptr @glad_glProgramUniform4d, align 8, !tbaa !8
  %i.tx = call ptr %0(ptr noundef nonnull @.str.472) #7, !inline_history !54
  store ptr %i.tx, ptr @glad_glProgramUniform4dv, align 8, !tbaa !8
  %i.ty = call ptr %0(ptr noundef nonnull @.str.473) #7, !inline_history !54
  store ptr %i.ty, ptr @glad_glProgramUniform4ui, align 8, !tbaa !8
  %i.tz = call ptr %0(ptr noundef nonnull @.str.474) #7, !inline_history !54
  store ptr %i.tz, ptr @glad_glProgramUniform4uiv, align 8, !tbaa !8
  %i.ua = call ptr %0(ptr noundef nonnull @.str.475) #7, !inline_history !54
  store ptr %i.ua, ptr @glad_glProgramUniformMatrix2fv, align 8, !tbaa !8
  %i.ub = call ptr %0(ptr noundef nonnull @.str.476) #7, !inline_history !54
  store ptr %i.ub, ptr @glad_glProgramUniformMatrix3fv, align 8, !tbaa !8
  %i.uc = call ptr %0(ptr noundef nonnull @.str.477) #7, !inline_history !54
  store ptr %i.uc, ptr @glad_glProgramUniformMatrix4fv, align 8, !tbaa !8
  %i.ud = call ptr %0(ptr noundef nonnull @.str.478) #7, !inline_history !54
  store ptr %i.ud, ptr @glad_glProgramUniformMatrix2dv, align 8, !tbaa !8
  %i.ue = call ptr %0(ptr noundef nonnull @.str.479) #7, !inline_history !54
  store ptr %i.ue, ptr @glad_glProgramUniformMatrix3dv, align 8, !tbaa !8
  %i.uf = call ptr %0(ptr noundef nonnull @.str.480) #7, !inline_history !54
  store ptr %i.uf, ptr @glad_glProgramUniformMatrix4dv, align 8, !tbaa !8
  %i.ug = call ptr %0(ptr noundef nonnull @.str.481) #7, !inline_history !54
  store ptr %i.ug, ptr @glad_glProgramUniformMatrix2x3fv, align 8, !tbaa !8
  %i.uh = call ptr %0(ptr noundef nonnull @.str.482) #7, !inline_history !54
  store ptr %i.uh, ptr @glad_glProgramUniformMatrix3x2fv, align 8, !tbaa !8
  %i.ui = call ptr %0(ptr noundef nonnull @.str.483) #7, !inline_history !54
  store ptr %i.ui, ptr @glad_glProgramUniformMatrix2x4fv, align 8, !tbaa !8
  %i.uj = call ptr %0(ptr noundef nonnull @.str.484) #7, !inline_history !54
  store ptr %i.uj, ptr @glad_glProgramUniformMatrix4x2fv, align 8, !tbaa !8
  %i.uk = call ptr %0(ptr noundef nonnull @.str.485) #7, !inline_history !54
  store ptr %i.uk, ptr @glad_glProgramUniformMatrix3x4fv, align 8, !tbaa !8
  %i.ul = call ptr %0(ptr noundef nonnull @.str.486) #7, !inline_history !54
  store ptr %i.ul, ptr @glad_glProgramUniformMatrix4x3fv, align 8, !tbaa !8
  %i.um = call ptr %0(ptr noundef nonnull @.str.487) #7, !inline_history !54
  store ptr %i.um, ptr @glad_glProgramUniformMatrix2x3dv, align 8, !tbaa !8
  %i.un = call ptr %0(ptr noundef nonnull @.str.488) #7, !inline_history !54
  store ptr %i.un, ptr @glad_glProgramUniformMatrix3x2dv, align 8, !tbaa !8
  %i.uo = call ptr %0(ptr noundef nonnull @.str.489) #7, !inline_history !54
  store ptr %i.uo, ptr @glad_glProgramUniformMatrix2x4dv, align 8, !tbaa !8
  %i.up = call ptr %0(ptr noundef nonnull @.str.490) #7, !inline_history !54
  store ptr %i.up, ptr @glad_glProgramUniformMatrix4x2dv, align 8, !tbaa !8
  %i.uq = call ptr %0(ptr noundef nonnull @.str.491) #7, !inline_history !54
  store ptr %i.uq, ptr @glad_glProgramUniformMatrix3x4dv, align 8, !tbaa !8
  %i.ur = call ptr %0(ptr noundef nonnull @.str.492) #7, !inline_history !54
  store ptr %i.ur, ptr @glad_glProgramUniformMatrix4x3dv, align 8, !tbaa !8
  %i.us = call ptr %0(ptr noundef nonnull @.str.493) #7, !inline_history !54
  store ptr %i.us, ptr @glad_glValidateProgramPipeline, align 8, !tbaa !8
  %i.ut = call ptr %0(ptr noundef nonnull @.str.494) #7, !inline_history !54
  store ptr %i.ut, ptr @glad_glGetProgramPipelineInfoLog, align 8, !tbaa !8
  %i.uu = call ptr %0(ptr noundef nonnull @.str.495) #7, !inline_history !54
  store ptr %i.uu, ptr @glad_glVertexAttribL1d, align 8, !tbaa !8
  %i.uv = call ptr %0(ptr noundef nonnull @.str.496) #7, !inline_history !54
  store ptr %i.uv, ptr @glad_glVertexAttribL2d, align 8, !tbaa !8
  %i.uw = call ptr %0(ptr noundef nonnull @.str.497) #7, !inline_history !54
  store ptr %i.uw, ptr @glad_glVertexAttribL3d, align 8, !tbaa !8
  %i.ux = call ptr %0(ptr noundef nonnull @.str.498) #7, !inline_history !54
  store ptr %i.ux, ptr @glad_glVertexAttribL4d, align 8, !tbaa !8
  %i.uy = call ptr %0(ptr noundef nonnull @.str.499) #7, !inline_history !54
  store ptr %i.uy, ptr @glad_glVertexAttribL1dv, align 8, !tbaa !8
  %i.uz = call ptr %0(ptr noundef nonnull @.str.500) #7, !inline_history !54
  store ptr %i.uz, ptr @glad_glVertexAttribL2dv, align 8, !tbaa !8
  %i.va = call ptr %0(ptr noundef nonnull @.str.501) #7, !inline_history !54
  store ptr %i.va, ptr @glad_glVertexAttribL3dv, align 8, !tbaa !8
  %i.vb = call ptr %0(ptr noundef nonnull @.str.502) #7, !inline_history !54
  store ptr %i.vb, ptr @glad_glVertexAttribL4dv, align 8, !tbaa !8
  %i.vc = call ptr %0(ptr noundef nonnull @.str.503) #7, !inline_history !54
  store ptr %i.vc, ptr @glad_glVertexAttribLPointer, align 8, !tbaa !8
  %i.vd = call ptr %0(ptr noundef nonnull @.str.504) #7, !inline_history !54
  store ptr %i.vd, ptr @glad_glGetVertexAttribLdv, align 8, !tbaa !8
  %i.ve = call ptr %0(ptr noundef nonnull @.str.505) #7, !inline_history !54
  store ptr %i.ve, ptr @glad_glViewportArrayv, align 8, !tbaa !8
  %i.vf = call ptr %0(ptr noundef nonnull @.str.506) #7, !inline_history !54
  store ptr %i.vf, ptr @glad_glViewportIndexedf, align 8, !tbaa !8
  %i.vg = call ptr %0(ptr noundef nonnull @.str.507) #7, !inline_history !54
  store ptr %i.vg, ptr @glad_glViewportIndexedfv, align 8, !tbaa !8
  %i.vh = call ptr %0(ptr noundef nonnull @.str.508) #7, !inline_history !54
  store ptr %i.vh, ptr @glad_glScissorArrayv, align 8, !tbaa !8
  %i.vi = call ptr %0(ptr noundef nonnull @.str.509) #7, !inline_history !54
  store ptr %i.vi, ptr @glad_glScissorIndexed, align 8, !tbaa !8
  %i.vj = call ptr %0(ptr noundef nonnull @.str.510) #7, !inline_history !54
  store ptr %i.vj, ptr @glad_glScissorIndexedv, align 8, !tbaa !8
  %i.vk = call ptr %0(ptr noundef nonnull @.str.511) #7, !inline_history !54
  store ptr %i.vk, ptr @glad_glDepthRangeArrayv, align 8, !tbaa !8
  %i.vl = call ptr %0(ptr noundef nonnull @.str.512) #7, !inline_history !54
  store ptr %i.vl, ptr @glad_glDepthRangeIndexed, align 8, !tbaa !8
  %i.vm = call ptr %0(ptr noundef nonnull @.str.513) #7, !inline_history !54
  store ptr %i.vm, ptr @glad_glGetFloati_v, align 8, !tbaa !8
  %i.vn = call ptr %0(ptr noundef nonnull @.str.514) #7, !inline_history !54
  store ptr %i.vn, ptr @glad_glGetDoublei_v, align 8, !tbaa !8
  br label %load_GL_VERSION_4_1.exit

load_GL_VERSION_4_1.exit:                         ; preds = %load_GL_VERSION_4_0.exit, %bb.r
  %i.vo = load i32, ptr @max_loaded_major, align 4, !tbaa !16
  %i.vp = icmp slt i32 %i.vo, 3
  br i1 %i.vp, label %.loopexit.i, label %bb.s

bb.s:                                             ; preds = %load_GL_VERSION_4_1.exit
  store i32 0, ptr @num_exts_i, align 4, !tbaa !16
  %i.vq = load ptr, ptr @glad_glGetIntegerv, align 8, !tbaa !8
  call void %i.vq(i32 noundef 33309, ptr noundef nonnull @num_exts_i) #7, !inline_history !55
  %i.vr = load i32, ptr @num_exts_i, align 4, !tbaa !16 ; 2 uses
  %i.vs = icmp sgt i32 %i.vr, 0
  br i1 %i.vs, label %bb.t, label %thread-pre-split.i.i

bb.t:                                             ; preds = %bb.s
  %i.vt = zext nneg i32 %i.vr to i64
  %i.vu = shl nuw nsw i64 %i.vt, 3
  %i.vv = call noalias ptr @malloc(i64 noundef %i.vu) #9 ; 2 uses
  store ptr %i.vv, ptr @exts_i, align 8, !tbaa !32
  br label %bb.u

thread-pre-split.i.i:                             ; preds = %bb.s
  %.pr.i.i = load ptr, ptr @exts_i, align 8, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i, %bb.t
  %i.vw = phi ptr [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.vv, %bb.t ] ; 2 uses
  %i.vx = icmp eq ptr %i.vw, null
  br i1 %i.vx, label %find_extensionsGL.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.u
  %1 = load i32, ptr @num_exts_i, align 4, !tbaa !16
  %.not17.i.i = icmp eq i32 %1, 0
  br i1 %.not17.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.w
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.vy = load ptr, ptr @glad_glGetStringi, align 8, !tbaa !8
  %i.vz = trunc nuw i64 %indvars.iv.i.i to i32
  %i.wa = call ptr %i.vy(i32 noundef 7939, i32 noundef %i.vz) #7, !inline_history !55 ; 2 uses
  %i.wb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.wa) #8
  %i.wc = add i64 %i.wb, 1                        ; 2 uses
  %i.wd = call noalias ptr @malloc(i64 noundef %i.wc) #9 ; 3 uses
  %.not.i.i = icmp eq ptr %i.wd, null
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wd, ptr nonnull align 1 %i.wa, i64 %i.wc, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %i.we = load ptr, ptr @exts_i, align 8, !tbaa !32 ; 2 uses
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %indvars.iv.i.i
  store ptr %i.wd, ptr %i.wf, align 8, !tbaa !35
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.wg = load i32, ptr @num_exts_i, align 4, !tbaa !16 ; 2 uses
  %i.wh = zext i32 %i.wg to i64
  %i.wi = icmp samesign ult i64 %indvars.iv.next.i.i, %i.wh
  br i1 %i.wi, label %.lr.ph.i.i, label %.preheader.i2.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %load_GL_VERSION_4_1.exit
  %i.wj = load ptr, ptr @glad_glGetString, align 8, !tbaa !8
  %i.wk = call ptr %i.wj(i32 noundef 7939) #7, !inline_history !55
  store ptr %i.wk, ptr @exts, align 8, !tbaa !35
  %.pre.i = load ptr, ptr @exts_i, align 8, !tbaa !32 ; 2 uses
  %.not.i1.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i1.i, label %bb.x, label %.preheader.i2thread-pre-split.i

.preheader.i2thread-pre-split.i:                  ; preds = %.loopexit.i
  %.pr.i = load i32, ptr @num_exts_i, align 4, !tbaa !16
  br label %.preheader.i2.i

.preheader.i2.i:                                  ; preds = %bb.w, %.preheader.i2thread-pre-split.i
  %i.wl = phi i32 [ %.pr.i, %.preheader.i2thread-pre-split.i ], [ %i.wg, %bb.w ]
  %i.wm = phi ptr [ %.pre.i, %.preheader.i2thread-pre-split.i ], [ %i.we, %bb.w ] ; 3 uses
  %i.wn = icmp sgt i32 %i.wl, 0
  br i1 %i.wn, label %.lr.ph.i3.i, label %._crit_edge.i.i

.lr.ph.i3.i:                                      ; preds = %.preheader.i2.i, %.lr.ph.i3.i
  %indvars.iv.i4.i = phi i64 [ %indvars.iv.next.i5.i, %.lr.ph.i3.i ], [ 0, %.preheader.i2.i ] ; 2 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i4.i
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !35
  call void @free(ptr noundef %i.wp) #7
  %indvars.iv.next.i5.i = add nuw nsw i64 %indvars.iv.i4.i, 1 ; 2 uses
  %i.wq = load i32, ptr @num_exts_i, align 4, !tbaa !16
  %i.wr = sext i32 %i.wq to i64
  %i.ws = icmp slt i64 %indvars.iv.next.i5.i, %i.wr
  br i1 %i.ws, label %.lr.ph.i3.i, label %._crit_edge.i.i, !llvm.loop !39

._crit_edge.i.i:                                  ; preds = %.lr.ph.i3.i, %.preheader.i2.i, %.preheader.i.i
  %i.wt = phi ptr [ %i.wm, %.preheader.i2.i ], [ %i.vw, %.preheader.i.i ], [ %i.wm, %.lr.ph.i3.i ]
  call void @free(ptr noundef nonnull %i.wt) #7
  store ptr null, ptr @exts_i, align 8, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.i, %._crit_edge.i.i
  %i.wu = load i32, ptr @GLVersion, align 4, !tbaa !10
  %i.wv = icmp ne i32 %i.wu, 0
  %i.ww = load i32, ptr getelementptr inbounds nuw (i8, ptr @GLVersion, i64 4), align 4
  %i.wx = icmp ne i32 %i.ww, 0
  %i.wy = select i1 %i.wv, i1 true, i1 %i.wx
  %i.wz = zext i1 %i.wy to i32
  br label %find_extensionsGL.exit

find_extensionsGL.exit:                           ; preds = %bb.u, %bb.b, %bb.a, %bb.x
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.wz, %bb.x ], [ 0, %bb.u ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"gladGLversionStruct", !5, i64 0, !5, i64 4}
!12 = !{!11, !5, i64 4}
!13 = distinct !{null, ptr @gladLoadGLLoader}
!14 = !{ptr @gladLoadGLLoader}
!15 = distinct !{ptr @gladLoadGLLoader, null}
!16 = !{!5, !5, i64 0}
!17 = distinct !{null, ptr @gladLoadGLLoader, null}
!18 = distinct !{null, ptr @gladLoadGLLoader, null}
!19 = distinct !{null, ptr @gladLoadGLLoader, null}
!20 = distinct !{null, ptr @gladLoadGLLoader, null}
!21 = distinct !{null, ptr @gladLoadGLLoader, null}
!22 = distinct !{null, ptr @gladLoadGLLoader, null}
!23 = distinct !{null, ptr @gladLoadGLLoader, null}
!24 = distinct !{null, ptr @gladLoadGLLoader, null}
!25 = distinct !{null, ptr @gladLoadGLLoader, null}
!26 = distinct !{null, ptr @gladLoadGLLoader, null}
!27 = distinct !{null, ptr @gladLoadGLLoader, null}
!28 = distinct !{null, ptr @gladLoadGLLoader, null}
!29 = distinct !{null, ptr @gladLoadGLLoader, null}
!30 = distinct !{null, ptr @gladLoadGLLoader, null}
!31 = distinct !{ptr @gladLoadGLLoader, null, null}
!32 = !{!33, !33, i64 0}
!33 = !{!"p2 omnipotent char", !34, i64 0}
!34 = !{!"any p2 pointer", !9, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 omnipotent char", !9, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{null, null}
end_hunk_1
