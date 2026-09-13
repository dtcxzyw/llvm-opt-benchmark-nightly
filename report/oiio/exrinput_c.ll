Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/exrinput_c?download=true
inline.NumInlined: 5052
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput16read_native_tileEiiiiiPv:bb.a
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %sext157 = shl i64 %i.by, 27
  %i.bz = ashr i64 %sext157, 32
  %i.ca = icmp slt i64 %indvars.iv153, %i.bz
  br i1 %i.ca, label %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit, label %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit.thread

_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit: ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %indvars.iv153 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !112, !noalias !582
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !109, !noalias !582
  %i.cf = freeze i64 %i.ce                        ; 3 uses
  %i.cg = load i16, ptr %i.aq, align 8, !tbaa !247 ; 3 uses
  %i.ch = icmp sgt i16 %i.cg, 0
  br i1 %i.ch, label %.lr.ph, label %.loopexit

_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit
  %i.ci = load i16, ptr %i.aq, align 8, !tbaa !247 ; 2 uses
  %i.cj = icmp sgt i16 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.thread, label %.loopexit

.lr.ph.thread:                                    ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit.thread
  %i.ck = load ptr, ptr %i.ar, align 8, !tbaa !248
  br label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !248 ; 2 uses
  %i.cm = icmp eq i64 %i.cf, 0
  br i1 %i.cm, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i16 %i.cg to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph.thread, %.lr.ph
  %i.cn = phi ptr [ %i.ck, %.lr.ph.thread ], [ %i.cl, %.lr.ph ]
  %wide.trip.count151.in = phi i16 [ %i.ci, %.lr.ph.thread ], [ %i.cg, %.lr.ph ]
  %wide.trip.count151 = zext nneg i16 %wide.trip.count151.in to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.k
  %indvars.iv148 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next149, %bb.k ] ; 2 uses
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %i.cn, i64 %indvars.iv148 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !250 ; 2 uses
  %.not.i.us = icmp eq ptr %i.cp, null
  br i1 %.not.i.us, label %.thread, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us: ; preds = %.lr.ph.split.us
  %char0 = load i8, ptr %i.cp, align 1
  %i.cq = icmp eq i8 %char0, 0
  br i1 %i.cq, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !580

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %indvars.iv ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %i.cs, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %.lr.ph.split
  %i.ct = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cs) #32
  %i.cu = icmp eq i64 %i.cf, %i.ct
  br i1 %i.cu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %bcmp.i = call i32 @bcmp(ptr %i.cc, ptr nonnull %i.cs, i64 %i.cf)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i.i, label %.thread, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %.lr.ph.split.us, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us
  %.us-phi = phi ptr [ %i.co, %.lr.ph.split.us ], [ %i.co, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us ], [ %i.cr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 %.095140
  %i.cw = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !110
  %i.cx = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  store i32 %i.as, ptr %i.cx, align 8, !tbaa !251
  %i.cy = getelementptr inbounds nuw i8, ptr %.us-phi, i64 36
  store i32 %i.at, ptr %i.cy, align 4, !tbaa !252
  %i.cz = add i64 %i.bt, %.095140
  br label %.loopexit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread: ; preds = %.lr.ph.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !580

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread, %bb.k, %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit.thread, %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit, %.thread
  %.3 = phi i64 [ %i.cz, %.thread ], [ %.095140, %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit ], [ %.095140, %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit.thread ], [ %.095140, %bb.k ], [ %.095140, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.da = load i32, ptr %i.j, align 4, !tbaa !211
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next154, %i.db
  br i1 %i.dc, label %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit, label %._crit_edge, !llvm.loop !581

bb.l:                                             ; preds = %._crit_edge
  %i.dd = icmp eq i32 %i.bd, 0
  br i1 %i.dd, label %bb.m, label %.critedge116

bb.m:                                             ; preds = %bb.l
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.df = invoke i32 @exr_decoding_run(ptr noundef %i.de, i32 noundef %1, ptr noundef nonnull %8)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.q, label %.critedge116

bb.o:                                             ; preds = %bb.m, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.critedge116:                                     ; preds = %bb.l, %bb.n
  %i.di = add nsw i32 %i.g, %3
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !48
  %.sroa.speculated122 = call i32 @llvm.smin.i32(i32 %i.di, i32 %i.dj)
  %i.dk = add nsw i32 %i.i, %4
  %i.dl = load i32, ptr %i.b, align 4, !tbaa !48
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.dl)
  %i.dm = load i32, ptr %i.j, align 4, !tbaa !211
  %i.dn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_116OpenEXRCoreInput18check_fill_missingEiiiiiiiiPvll(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %3, i32 noundef %.sroa.speculated122, i32 noundef %4, i32 noundef %.sroa.speculated, i32 poison, i32 poison, i32 noundef 0, i32 noundef %i.dm, ptr noundef %6, i64 noundef %i.l, i64 noundef %i.n)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.critedge116
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %.critedge116, %.critedge, %bb.n
  %.1104 = phi i1 [ true, %bb.n ], [ %i.ba, %.critedge ], [ %i.dn, %.critedge116 ]
  %i.dp = invoke i32 @exr_decoding_destroy(ptr noundef %i.ac, ptr noundef nonnull %8)
          to label %_ZN11OpenImageIO4v3_116OpenEXRCoreInput16DecoderDestroyerD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #34
  unreachable

_ZN11OpenImageIO4v3_116OpenEXRCoreInput16DecoderDestroyerD2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.t

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.j, %bb.i
  %.pn113 = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.au, %bb.i ], [ %i.do, %bb.p ], [ %i.dh, %bb.o ]
  call void @_ZN11OpenImageIO4v3_116OpenEXRCoreInput16DecoderDestroyerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  resume { ptr, i32 } %.pn113

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_116OpenEXRCoreInput16DecoderDestroyerD2Ev.exit, %bb.d
  %.2105 = phi i1 [ %i.w, %bb.d ], [ %.1104, %_ZN11OpenImageIO4v3_116OpenEXRCoreInput16DecoderDestroyerD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.3106 = phi i1 [ %.2105, %bb.t ], [ false, %bb.b ]
  ret i1 %.3106
}

declare i32 @exr_get_level_sizes(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_116OpenEXRCoreInput18check_fill_missingEiiiiiiiiPvll(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef writeonly captures(none) %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::vector.25", align 8   ; 11 uses
  %13 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.e = icmp ne ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i, label %bb.c, !prof !253

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #35 ; 9 uses
  store ptr %i.j, ptr %12, align 8, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !142
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp sgt i64 %i.r, 4
  br i1 %i.s, label %bb.d, label %bb.e, !prof !254

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.r, 4
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load float, ptr %i.n, align 4, !tbaa !145
  store float %i.u, ptr %i.j, align 4, !tbaa !145
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.r ; 2 uses
  store ptr %i.v, ptr %i.k, align 8, !tbaa !144
  %i.w = sext i32 %8 to i64                       ; 4 uses
  %i.x = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.z = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.aa = sub nuw nsw i64 %i.w, %i.x
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr nonnull %i.v, i64 noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit_crit_edge unwind label %bb.j

._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit_crit_edge: ; preds = %bb.g
  %.pre = load ptr, ptr %12, align 8, !tbaa !141
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.ab = icmp ugt i64 %i.x, %i.w
  br i1 %i.ab, label %14, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

14:                                               ; preds = %bb.h
  %.idx = shl nuw nsw i64 %i.w, 2                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %.idx
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !144
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %14, %bb.h
  %15 = phi ptr [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit_crit_edge ], [ %i.j, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.j, %14 ], [ %i.j, %bb.h ] ; 4 uses
  %i.ad = load float, ptr %15, align 4, !tbaa !145 ; 2 uses
  %i.ae = fcmp uge float %i.ad, 0.000000e+00      ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.af = call float @llvm.fabs.f32(float %i.ad)
  store float %i.af, ptr %15, align 4, !tbaa !145
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %12, align 8, !tbaa !141  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !142
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.am = icmp slt i32 %3, %4
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge63.split.thread

.preheader.lr.ph:                                 ; preds = %bb.l
  %i.an = icmp sge i32 %1, %2
  %i.ao = icmp sge i32 %7, %8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %brmerge68 = or i1 %i.an, %i.ao
  br i1 %brmerge68, label %._crit_edge63.split.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.as = sext i32 %7 to i64
  %i.at = sext i32 %1 to i64                      ; 2 uses
  %i.au = sext i32 %3 to i64                      ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge60
  %indvars.iv75 = phi i64 [ %i.au, %.preheader.preheader ], [ %indvars.iv.next76, %._crit_edge60 ] ; 3 uses
  %i.av = sub nsw i64 %indvars.iv75, %i.au
  %i.aw = mul nsw i64 %11, %i.av
  %i.ax = getelementptr inbounds i8, ptr %9, i64 %i.aw
  br label %.lr.ph

._crit_edge63.split:                              ; preds = %._crit_edge60
  %.pre80 = load ptr, ptr %12, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %.pre80, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIfSaIfEED2Ev.exit40, label %._crit_edge63.split.thread

._crit_edge63.split.thread:                       ; preds = %bb.l, %.preheader.lr.ph, %._crit_edge63.split
  %i.ay = phi ptr [ %.pre80, %._crit_edge63.split ], [ %15, %.preheader.lr.ph ], [ %15, %bb.l ] ; 2 uses
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !142
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit40

_ZNSt6vectorIfSaIfEED2Ev.exit40:                  ; preds = %._crit_edge63.split, %._crit_edge63.split.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ac

._crit_edge60:                                    ; preds = %._crit_edge
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %lftr.wideiv78 = trunc i64 %indvars.iv.next76 to i32
  %exitcond79.not = icmp eq i32 %4, %lftr.wideiv78
  br i1 %exitcond79.not, label %._crit_edge63.split, label %.preheader, !llvm.loop !583

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv70 = phi i64 [ %i.at, %.preheader ], [ %indvars.iv.next71, %._crit_edge ] ; 3 uses
  %i.bd = sub nsw i64 %indvars.iv70, %i.at
  %i.be = mul nsw i64 %10, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.ax, i64 %i.be
  %i.bg = sub nsw i64 %indvars.iv70, %indvars.iv75
  %i.bh = and i64 %i.bg, 8
  %.not = icmp eq i64 %i.bh, 0
  %brmerge = select i1 %i.ae, i1 true, i1 %.not
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %lftr.wideiv73 = trunc i64 %indvars.iv.next71 to i32
  %exitcond74.not = icmp eq i32 %2, %lftr.wideiv73
  br i1 %exitcond74.not, label %._crit_edge60, label %.lr.ph, !llvm.loop !584

bb.m:                                             ; preds = %.lr.ph, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread
  %indvars.iv = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread ] ; 5 uses
  %.03555 = phi ptr [ %i.bf, %.lr.ph ], [ %i.ec, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread ] ; 3 uses
  %i.bi = load ptr, ptr %12, align 8, !tbaa !141
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !145
  %.0 = select i1 %brmerge, float %i.bk, float 0.000000e+00 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.bl = icmp sgt i64 %indvars.iv, -1
  br i1 %i.bl, label %bb.n, label %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !201
  %i.bn = load ptr, ptr %i.ap, align 8, !tbaa !155 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %sext = shl i64 %i.bq, 29
  %i.br = ashr i64 %sext, 32
  %i.bs = icmp slt i64 %indvars.iv, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %spec.select = select i1 %i.bs, ptr %i.bt, ptr %i.ar
  br label %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit

_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit: ; preds = %bb.n, %bb.m
  %i.bu = phi ptr [ %i.ar, %bb.m ], [ %spec.select, %bb.n ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.bu, align 4 ; 5 uses
  store i64 %.sroa.0.0.copyload.i, ptr %13, align 8
  %i.bv = trunc i64 %.sroa.0.0.copyload.i to i8
  %i.bw = lshr i64 %.sroa.0.0.copyload.i, 8       ; 2 uses
  %i.bx = trunc i64 %i.bw to i8                   ; 2 uses
  %i.by = lshr i64 %.sroa.0.0.copyload.i, 16
  %i.bz = trunc i64 %i.by to i8                   ; 2 uses
  %i.ca = lshr i64 %.sroa.0.0.copyload.i, 32      ; 3 uses
  %i.cb = trunc nuw i64 %i.ca to i32
  switch i8 %i.bv, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread [
    i8 11, label %bb.o
    i8 10, label %bb.q
  ]

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit
  %i.cc = icmp eq i8 %i.bx, 1
  %i.cd = icmp eq i8 %i.bz, 0
  %or.cond = and i1 %i.cc, %i.cd
  %i.ce = icmp eq i64 %i.ca, 0
  %or.cond48 = and i1 %or.cond, %i.ce
  br i1 %or.cond48, label %bb.p, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread

bb.p:                                             ; preds = %bb.o
  store float %.0, ptr %.03555, align 4, !tbaa !145
  br label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit
  %i.cf = icmp eq i8 %i.bx, 1
  %i.cg = icmp eq i8 %i.bz, 0
  %or.cond51 = and i1 %i.cf, %i.cg
  %i.ch = icmp eq i64 %i.ca, 0
  %or.cond54 = and i1 %or.cond51, %i.ch
  br i1 %or.cond54, label %bb.r, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread

bb.r:                                             ; preds = %bb.q
  %i.ci = bitcast float %.0 to i32
  %i.cj = call float @llvm.fabs.f32(float %.0)
  %i.ck = bitcast float %i.cj to i32              ; 10 uses
  %i.cl = lshr i32 %i.ci, 16                      ; 3 uses
  %i.cm = trunc nuw i32 %i.cl to i16
  %i.cn = and i16 %i.cm, -32768                   ; 3 uses
  %i.co = icmp samesign ugt i32 %i.ck, 947912703
  br i1 %i.co, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cp = icmp samesign ugt i32 %i.ck, 2139095039
  br i1 %i.cp, label %bb.t, label %bb.v, !prof !253

bb.t:                                             ; preds = %bb.s
  %i.cq = or disjoint i16 %i.cn, 31744            ; 2 uses
  %i.cr = icmp eq i32 %i.ck, 2139095040
  br i1 %i.cr, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = lshr i32 %i.ck, 13
  %i.ct = and i32 %i.cs, 1023                     ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i16
  %i.cw = trunc nuw nsw i32 %i.ct to i16
  %i.cx = or i16 %i.cw, %i.cv
  %i.cy = or disjoint i16 %i.cx, %i.cq
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.v:                                             ; preds = %bb.s
  %i.cz = icmp samesign ugt i32 %i.ck, 1199566847
  br i1 %i.cz, label %bb.w, label %bb.x, !prof !253

bb.w:                                             ; preds = %bb.v
  %i.da = or disjoint i16 %i.cn, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.x:                                             ; preds = %bb.v
  %i.db = add nuw nsw i32 %i.ck, 134221823
  %i.dc = lshr i32 %i.ck, 13
  %i.dd = and i32 %i.dc, 1
  %i.de = add nuw nsw i32 %i.db, %i.dd
  %i.df = lshr i32 %i.de, 13
  %i.dg = and i32 %i.cl, 32768
  %i.dh = or i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i16
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.y:                                             ; preds = %bb.r
  %i.dj = icmp samesign ult i32 %i.ck, 855638017
  br i1 %i.dj, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = lshr i32 %i.ck, 23                      ; 2 uses
  %i.dl = sub nuw nsw i32 126, %i.dk
  %i.dm = and i32 %i.ck, 8388607
  %i.dn = or disjoint i32 %i.dm, 8388608          ; 2 uses
  %i.do = add nsw i32 %i.dk, -94
  %i.dp = shl i32 %i.dn, %i.do                    ; 2 uses
  %i.dq = lshr i32 %i.dn, %i.dl                   ; 2 uses
  %i.dr = and i32 %i.cl, 32768
  %i.ds = or i32 %i.dq, %i.dr
  %i.dt = trunc nuw i32 %i.ds to i16              ; 2 uses
  %i.du = icmp ugt i32 %i.dp, -2147483648
  br i1 %i.du, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = icmp ne i32 %i.dp, -2147483648
  %i.dw = and i32 %i.dq, 1
  %.not.i.i.i42 = icmp eq i32 %i.dw, 0
  %or.cond.i.i.i = select i1 %i.dv, i1 true, i1 %.not.i.i.i42
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dx = add nuw i16 %i.dt, 1
  br label %_ZN9Imath_3_14halfaSEf.exit

_ZN9Imath_3_14halfaSEf.exit:                      ; preds = %bb.t, %bb.u, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ab
  %.033.i.i.i = phi i16 [ %i.cn, %bb.y ], [ %i.cy, %bb.u ], [ %i.da, %bb.w ], [ %i.di, %bb.x ], [ %i.cq, %bb.t ], [ %i.dx, %bb.ab ], [ %i.dt, %bb.aa ]
  store i16 %.033.i.i.i, ptr %.03555, align 2, !tbaa !586
  br label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit41.thread: ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit, %bb.o, %bb.q, %_ZN9Imath_3_14halfaSEf.exit, %bb.p
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.cb, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.dy = and i64 %i.bw, 255
  %i.dz = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %13) #32
  %i.ea = mul i64 %i.dz, %i.dy
  %i.eb = mul i64 %i.ea, %spec.select.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.03555, i64 %i.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %8, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !585

bb.ac:                                            ; preds = %bb.a, %_ZNSt6vectorIfSaIfEED2Ev.exit40
  ret i1 %i.e
}

declare i32 @exr_read_tile_chunk_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @exr_decoding_initialize(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @exr_decoding_choose_default_routines(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

end_hunk_0
