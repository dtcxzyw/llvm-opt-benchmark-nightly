Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfCheckFile?download=true
inline.NumInlined: 710
inline.NumDeleted: 299
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7Imf_3_416checkOpenEXRFileEPKcmbbb:bb.a
  invoke void @_ZN7Imf_3_421CompositeDeepScanLine21setMaximumSampleCountEl(i64 noundef %i.w)
          to label %bb.eh unwind label %bb.as

bb.eh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit146.i
  %i.la = load i32, ptr %i.a, align 4, !tbaa !14
  %i.lb = load i32, ptr %i.b, align 4, !tbaa !14
  invoke void @_ZN7Imf_3_46Header15setMaxImageSizeEii(i32 noundef %i.la, i32 noundef %i.lb)
          to label %bb.ei unwind label %bb.as

bb.ei:                                            ; preds = %bb.eh
  %i.lc = load i32, ptr %i.c, align 4, !tbaa !14
  %i.ld = load i32, ptr %i.d, align 4, !tbaa !14
  invoke void @_ZN7Imf_3_46Header14setMaxTileSizeEii(i32 noundef %i.lc, i32 noundef %i.ld)
          to label %bb.ej unwind label %bb.as

bb.ej:                                            ; preds = %bb.ei
  %i.le = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.y
  br i1 %i.lf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ej
  %i.lg = load i64, ptr %i.y, align 8, !tbaa !22
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.ek:                                            ; preds = %bb.eb, %bb.dg, %bb.ck, %bb.bo, %bb.at, %bb.as
  %.pn89.i = phi { ptr, i32 } [ %i.cr, %bb.as ], [ %i.ko, %bb.eb ], [ %i.ip, %bb.dg ], [ %i.gq, %bb.ck ], [ %i.er, %bb.bo ], [ %i.cs, %bb.at ]
  %i.li = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.y
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i: ; preds = %bb.ek
  %i.lk = load i64, ptr %i.y, align 8, !tbaa !22
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN7Imf_3_47IStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.em

bb.el:                                            ; preds = %.invoke, %.noexc14, %bb.g, %.noexc12, %.noexc, %bb.f
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i, %bb.el
  %eh.lpad-body = phi { ptr, i32 } [ %i.lm, %bb.el ], [ %.pn89.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i ]
  call void @_ZN7Imf_3_47IStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  resume { ptr, i32 } %eh.lpad-body

bb.em:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7Imf_3_412_GLOBAL__N_113runCoreChecksEPKcmbb.exit
  %.0 = phi i1 [ %.0.i, %_ZN7Imf_3_412_GLOBAL__N_113runCoreChecksEPKcmbb.exit ], [ %.9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare void @_ZN7Imf_3_47IStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define internal void @_ZN7Imf_3_412_GLOBAL__N_121core_error_handler_cbEPK19_priv_exr_context_tiPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.7) #25
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = call i32 @exr_get_file_name(ptr noundef %0, ptr noundef nonnull %i.a)
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !130
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @.str.8, ptr %i.a, align 8, !tbaa !130
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.d = phi ptr [ %.pre, %._crit_edge ], [ @.str.8, %bb.c ]
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.f = call ptr @exr_get_error_code_as_string(i32 noundef %1)
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.9, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %2) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare i32 @exr_start_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7Imf_3_412_GLOBAL__N_113checkCoreFileEP19_priv_exr_context_tbb(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.exr_attr_box2i_t, align 1   ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %struct.exr_chunk_info_t, align 8   ; 7 uses
  %6 = alloca %struct._exr_decode_pipeline, align 8 ; 13 uses
  %7 = alloca %struct.exr_attr_box2i_t, align 4   ; 9 uses
  %8 = alloca %"class.std::vector", align 8       ; 12 uses
  %9 = alloca %struct._exr_decode_pipeline, align 8 ; 13 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %10 = alloca %struct.exr_chunk_info_t, align 8  ; 9 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  %i.n = call i32 @exr_get_count(ptr noundef %0, ptr noundef nonnull %i.l)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.preheader, label %.loopexit55

.preheader:                                       ; preds = %bb.a
  %i.o = load i32, ptr %i.l, align 4, !tbaa !14
  %.not2662 = icmp sgt i32 %i.o, 0
  br i1 %.not2662, label %.lr.ph, label %.loopexit55

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %not..i30 = xor i1 %1, true                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 22 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 248
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.cb
  %.063 = phi i32 [ 0, %.lr.ph ], [ %i.ko, %bb.cb ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  %i.ag = call i32 @exr_get_storage(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %i.m)
  %.not25 = icmp eq i32 %i.ag, 0
  br i1 %.not25, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !144
  %i.ai = and i32 %i.ah, -3
  switch i32 %i.ai, label %bb.cb [
    i32 0, label %bb.d
    i32 1, label %bb.an
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.aj = call i32 @exr_get_data_window(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %7)
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.e, label %_ZN7Imf_3_412_GLOBAL__N_120readCoreScanlinePartEP19_priv_exr_context_tibb.exit.thread

_ZN7Imf_3_412_GLOBAL__N_120readCoreScanlinePartEP19_priv_exr_context_tibb.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.w, align 4, !tbaa !147
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %7, align 4, !tbaa !148
  %i.an = sext i32 %i.am to i64
  %i.ao = sub nsw i64 %i.al, %i.an
  %i.ap = add nsw i64 %i.ao, 1                    ; 3 uses
  %i.aq = load i32, ptr %i.x, align 4, !tbaa !149
  %i.ar = sext i32 %i.aq to i64
  %i.as = load i32, ptr %i.y, align 4, !tbaa !150
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = add nsw i64 %i.ar, 1                    ; 2 uses
  %i.av = sub nsw i64 %i.au, %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.z, i8 0, i64 496, i1 false)
  store i64 504, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  %i.aw = invoke i32 @exr_get_scanlines_per_chunk(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %i.k)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not92.i = icmp eq i32 %i.aw, 0
  br i1 %.not92.i, label %.preheader121.i, label %bb.aj

.preheader121.i:                                  ; preds = %bb.f
  %.not138.i = icmp eq i64 %i.au, %i.at
  br i1 %.not138.i, label %.loopexit122.i, label %.lr.ph136.i

.lr.ph136.i:                                      ; preds = %.preheader121.i
  %11 = trunc i64 %i.ap to i32                    ; 2 uses
  br label %.lr.ph136.i.a

bb.g:                                             ; preds = %.loopexit122.i, %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph136.i.a:                                    ; preds = %.thread115.i, %.lr.ph136.i
  %.075135.i = phi i64 [ 0, %.lr.ph136.i ], [ %i.ec, %.thread115.i ] ; 2 uses
  %.080134.i = phi i1 [ false, %.lr.ph136.i ], [ %.2.ph.i, %.thread115.i ] ; 3 uses
  %.084133.i = phi i32 [ 0, %.lr.ph136.i ], [ %.4.ph114.i, %.thread115.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  %i.ay = trunc i64 %.075135.i to i32
  %i.az = load i32, ptr %i.y, align 4, !tbaa !150
  %i.ba = add nsw i32 %i.az, %i.ay
  %i.bb = invoke i32 @exr_read_scanline_chunk_info(ptr noundef %0, i32 noundef %.063, i32 noundef %i.ba, ptr noundef nonnull %10)
          to label %bb.h unwind label %bb.j       ; 3 uses

bb.h:                                             ; preds = %.lr.ph136.i.a
  %.not93.i = icmp eq i32 %i.bb, 0
  br i1 %.not93.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %2, label %.loopexit122.sink.split.i, label %.thread115.i

bb.j:                                             ; preds = %.loopexit.i, %bb.ab, %bb.l, %.lr.ph136.i.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.k:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.l, label %bb.ab

bb.l:                                             ; preds = %bb.k
  %i.bf = invoke i32 @exr_decoding_initialize(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %10, ptr noundef nonnull %9)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %.not95.i = icmp eq i32 %i.bf, 0
  br i1 %.not95.i, label %.preheader.i, label %.loopexit122.sink.split.i

.preheader.i:                                     ; preds = %bb.m
  %i.bg = load i16, ptr %i.aa, align 8, !tbaa !51
  %i.bh = icmp sgt i16 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.074.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.bv, %.lr.ph.i ] ; 6 uses
  %i.bi = icmp ult i64 %.074.lcssa.i, 8000000
  %or.cond.i = select i1 %not..i30, i1 true, i1 %i.bi ; 2 uses
  %i.bj = load i8, ptr %i.ab, align 2, !tbaa !151
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %bb.n, label %bb.o

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %.074127.i = phi i64 [ %i.bv, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %i.bl, i64 %indvars.iv.i ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr inttoptr (i64 4096 to ptr), ptr %i.bn, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !53 ; 2 uses
  %i.bq = sext i16 %i.bp to i32                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !54
  %12 = mul i32 %i.bq, %11
  %13 = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 %12, ptr %13, align 4, !tbaa !55
  %14 = sext i16 %i.bp to i64
  %15 = mul nsw i64 %i.ap, %14
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !14
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %15, %i.bt
  %i.bv = add i64 %i.bu, %.074127.i               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bw = load i16, ptr %i.aa, align 8, !tbaa !51
  %i.bx = sext i16 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next.i, %i.bx
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !133

bb.n:                                             ; preds = %._crit_edge.i
  store ptr %8, ptr %i.ad, align 8, !tbaa !57
  store ptr @_ZN7Imf_3_412_GLOBAL__N_116realloc_deepdataEP20_exr_decode_pipeline, ptr %i.ae, align 8, !tbaa !152
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.o:                                             ; preds = %._crit_edge.i
  br i1 %or.cond.i, label %bb.p, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 6 uses
  %i.ca = load ptr, ptr %8, align 8, !tbaa !60    ; 6 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 9 uses
  %i.ce = icmp ugt i64 %.074.lcssa.i, %i.cd
  br i1 %i.ce, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.cf = sub nuw i64 %.074.lcssa.i, %i.cd        ; 6 uses
  %i.cg = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cb                    ; 2 uses
  %i.cj = icmp sgt i64 %i.cd, -1
  call void @llvm.assume(i1 %i.cj)
  %i.ck = xor i64 %i.cd, 9223372036854775807      ; 2 uses
  %i.cl = icmp ule i64 %i.ci, %i.ck
  call void @llvm.assume(i1 %i.cl)
  %.not28.i = icmp ult i64 %i.ci, %i.cf
  br i1 %.not28.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.bz, align 1, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.cn = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr i8, ptr %i.bz, i64 %i.cf
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cm, i8 0, i64 %i.cn, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi ptr [ %i.cp, %bb.s ], [ %i.cm, %bb.r ]
  store ptr %.0.i.i.i.i, ptr %i.ac, align 8, !tbaa !59
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.t:                                             ; preds = %bb.q
  %i.cq = icmp ult i64 %i.ck, %i.cf
  br i1 %i.cq, label %bb.u, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.cf)
  %i.cr = add nuw i64 %.sroa.speculated.i.i, %i.cd
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cr, i64 9223372036854775807) ; 2 uses
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #29
          to label %.noexc45 unwind label %.loopexit ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cd ; 2 uses
  store i8 0, ptr %i.cu, align 1, !tbaa !22
  %i.cv = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.v

bb.v:                                             ; preds = %.noexc45
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cx, i8 0, i64 %i.cv, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.v, %.noexc45
  %.not35.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.ca, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.w, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.ca, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.cy = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.da) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.x, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.ct, ptr %8, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.074.lcssa.i
  store ptr %i.db, ptr %i.ac, align 8, !tbaa !59
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store ptr %i.dc, ptr %i.af, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.y:                                             ; preds = %bb.p
  %i.dd = icmp ult i64 %.074.lcssa.i, %i.cd
  br i1 %i.dd, label %bb.z, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.074.lcssa.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, %i.de
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.z
  store ptr %i.de, ptr %i.ac, align 8, !tbaa !59
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.z, %bb.y, %bb.o, %bb.n
  %i.df = invoke i32 @exr_decoding_choose_default_routines(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %9)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %.not96.i = icmp eq i32 %i.df, 0
  br i1 %.not96.i, label %bb.ae, label %.loopexit122.sink.split.i

bb.ab:                                            ; preds = %bb.k
  %i.dg = invoke i32 @exr_decoding_update(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %10, ptr noundef nonnull %9)
          to label %bb.ac unwind label %bb.j      ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  %.not94.i = icmp eq i32 %i.dg, 0
  br i1 %.not94.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %2, label %.loopexit122.sink.split.i, label %.thread115.i

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  %.181.i = phi i1 [ %or.cond.i, %bb.aa ], [ %.080134.i, %bb.ac ]
  br i1 %.181.i, label %bb.af, label %.thread115.i

bb.af:                                            ; preds = %bb.ae
  %i.dh = load i8, ptr %i.ab, align 2, !tbaa !151
  %.not97.i = icmp ne i8 %i.dh, 2
  %i.di = load i16, ptr %i.aa, align 8
  %i.dj = icmp sgt i16 %i.di, 0
  %or.cond153.i = select i1 %.not97.i, i1 %i.dj, i1 false
  br i1 %or.cond153.i, label %.lr.ph132.preheader.i, label %.loopexit.i

.lr.ph132.preheader.i:                            ; preds = %bb.af
  %i.dk = load ptr, ptr %8, align 8, !tbaa !60
  br label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i, %.lr.ph132.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph132.preheader.i ], [ %indvars.iv.next141.i, %.lr.ph132.i ] ; 2 uses
  %.072129.i = phi ptr [ %i.dk, %.lr.ph132.preheader.i ], [ %i.dv, %.lr.ph132.i ] ; 2 uses
  %i.dl = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %i.dl, i64 %indvars.iv140.i ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr %.072129.i, ptr %i.dn, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !53 ; 2 uses
  %i.dq = sext i16 %i.dp to i32                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !54
  %16 = mul i32 %i.dq, %11
  %17 = getelementptr inbounds nuw i8, ptr %i.dm, i64 36
  store i32 %16, ptr %17, align 4, !tbaa !55
  %18 = sext i16 %i.dp to i64
  %19 = mul nsw i64 %i.ap, %18
  %i.ds = load i32, ptr %i.k, align 4, !tbaa !14
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %19, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.072129.i, i64 %i.du
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.dw = load i16, ptr %i.aa, align 8, !tbaa !51
  %i.dx = sext i16 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next141.i, %i.dx
  br i1 %i.dy, label %.lr.ph132.i, label %.loopexit.i, !llvm.loop !134

.loopexit.i:                                      ; preds = %.lr.ph132.i, %bb.af
  %i.dz = invoke i32 @exr_decoding_run(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %9)
          to label %bb.ag unwind label %bb.j      ; 3 uses

bb.ag:                                            ; preds = %.loopexit.i
  %.not99.i = icmp ne i32 %i.dz, 0                ; 2 uses
  %brmerge.not.i = and i1 %2, %.not99.i
  %.286.mux.i = select i1 %.not99.i, i32 %i.dz, i32 %.084133.i
  br i1 %brmerge.not.i, label %.loopexit122.sink.split.i, label %.thread115.i

.thread115.i:                                     ; preds = %bb.ag, %bb.ae, %bb.ad, %bb.i
  %.4.ph114.i = phi i32 [ %i.bb, %bb.i ], [ %i.dg, %bb.ad ], [ %.084133.i, %bb.ae ], [ %.286.mux.i, %bb.ag ] ; 2 uses
  %.2.ph.i = phi i1 [ %.080134.i, %bb.i ], [ %.080134.i, %bb.ad ], [ false, %bb.ae ], [ true, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ea = load i32, ptr %i.k, align 4, !tbaa !14
  %i.eb = sext i32 %i.ea to i64
  %i.ec = add i64 %.075135.i, %i.eb               ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.av
  br i1 %i.ed, label %.lr.ph136.i.a, label %.loopexit122.i, !llvm.loop !135

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.al

.loopexit122.sink.split.i:                        ; preds = %bb.ag, %bb.ad, %bb.aa, %bb.m, %bb.i
  %.5.ph.i = phi i32 [ %i.dg, %bb.ad ], [ %i.bb, %bb.i ], [ %.084133.i, %bb.m ], [ %i.dz, %bb.ag ], [ 1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.loopexit122.i

.loopexit122.i:                                   ; preds = %.thread115.i, %.loopexit122.sink.split.i, %.preheader121.i
  %.5.i = phi i32 [ 0, %.preheader121.i ], [ %.5.ph.i, %.loopexit122.sink.split.i ], [ %.4.ph114.i, %.thread115.i ]
  %i.ee = invoke i32 @exr_decoding_destroy(ptr noundef %0, ptr noundef nonnull %9)
          to label %bb.ai unwind label %bb.g      ; 0 uses

bb.ai:                                            ; preds = %.loopexit122.i
  %i.ef = icmp ne i32 %.5.i, 0
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.f
  %.0.i = phi i1 [ %i.ef, %bb.ai ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.eg = load ptr, ptr %8, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i, label %_ZN7Imf_3_412_GLOBAL__N_120readCoreScanlinePartEP19_priv_exr_context_tibb.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #26
  br label %_ZN7Imf_3_412_GLOBAL__N_120readCoreScanlinePartEP19_priv_exr_context_tibb.exit

bb.al:                                            ; preds = %bb.ah, %bb.g
  %.pn100.i = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %.pn.i, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.el = load ptr, ptr %8, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i106.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i106.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit107.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.em = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ep) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit107.i

common.resume:                                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit169.i, %_ZNSt6vectorIhSaIhEED2Ev.exit107.i
  %common.resume.op = phi { ptr, i32 } [ %.pn100.i, %_ZNSt6vectorIhSaIhEED2Ev.exit107.i ], [ %.pn.pn.i, %_ZNSt6vectorIhSaIhEED2Ev.exit169.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIhSaIhEED2Ev.exit107.i:               ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZN7Imf_3_412_GLOBAL__N_120readCoreScanlinePartEP19_priv_exr_context_tibb.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i, label %.critedge, label %bb.cb

bb.an:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.eq = call i32 @exr_get_data_window(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %3)
  %.not.i27 = icmp eq i32 %i.eq, 0
  br i1 %.not.i27, label %bb.ao, label %_ZN7Imf_3_412_GLOBAL__N_117readCoreTiledPartEP19_priv_exr_context_tibb.exit.thread

_ZN7Imf_3_412_GLOBAL__N_117readCoreTiledPartEP19_priv_exr_context_tibb.exit.thread: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.critedge

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.er = call i32 @exr_get_tile_descriptor(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not149.i = icmp eq i32 %i.er, 0
  br i1 %.not149.i, label %bb.ap, label %_ZN7Imf_3_412_GLOBAL__N_117readCoreTiledPartEP19_priv_exr_context_tibb.exit.thread48

_ZN7Imf_3_412_GLOBAL__N_117readCoreTiledPartEP19_priv_exr_context_tibb.exit.thread48: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.critedge

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.es = call i32 @exr_get_tile_levels(ptr noundef %0, i32 noundef %.063, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %.not150.i = icmp eq i32 %i.es, 0
  br i1 %.not150.i, label %.preheader190.i, label %_ZN7Imf_3_412_GLOBAL__N_117readCoreTiledPartEP19_priv_exr_context_tibb.exit.thread52

_ZN7Imf_3_412_GLOBAL__N_117readCoreTiledPartEP19_priv_exr_context_tibb.exit.thread52: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.critedge

.preheader190.i:                                  ; preds = %bb.ap
  %i.et = load i32, ptr %i.f, align 4             ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  %i.ev = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  %or.cond = select i1 %i.eu, i1 %i.ew, i1 false
  br i1 %or.cond, label %.preheader188.i, label %_ZN7Imf_3_412_GLOBAL__N_117readCoreTiledPartEP19_priv_exr_context_tibb.exit.thread50

.preheader188.i:                                  ; preds = %.preheader190.i, %.loopexit189.i
  %.pr.i71 = phi i32 [ %.pr.i, %.loopexit189.i ], [ %i.ev, %.preheader190.i ] ; 2 uses
  %i.ex = phi i32 [ %i.kk, %.loopexit189.i ], [ %i.et, %.preheader190.i ]
  %.0121264.i = phi i32 [ %i.kl, %.loopexit189.i ], [ 0, %.preheader190.i ] ; 7 uses
  %.0130263.i = phi i32 [ %.13.i, %.loopexit189.i ], [ 0, %.preheader190.i ] ; 2 uses
  %i.ey = icmp sgt i32 %.pr.i71, 0
  br i1 %i.ey, label %.lr.ph260.i, label %.loopexit189.i

._crit_edge266.loopexit.sink.split.i:             ; preds = %bb.aq, %bb.bx
  %.13298.ph.i = phi i32 [ %.3133.i, %bb.bx ], [ %.2132.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %_ZN7Imf_3_412_GLOBAL__N_117readCoreTiledPartEP19_priv_exr_context_tibb.exit

.lr.ph260.i:                                      ; preds = %.preheader188.i, %.thread175.i
  %.0120257.i = phi i32 [ %i.ka, %.thread175.i ], [ 0, %.preheader188.i ] ; 7 uses
  %.1131255.i = phi i32 [ %.12179.i, %.thread175.i ], [ %.0130263.i, %.preheader188.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ez = call i32 @exr_get_level_sizes(ptr noundef %0, i32 noundef %.063, i32 noundef %.0120257.i, i32 noundef %.0121264.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) ; 2 uses
  %.not151.i = icmp eq i32 %i.ez, 0
  br i1 %.not151.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph260.i
  %i.fa = load i32, ptr %i.c, align 4, !tbaa !154
  %i.fb = icmp eq i32 %i.fa, 2
  %i.fc = icmp eq i32 %.0120257.i, %.0121264.i
  %or.cond161.i = select i1 %i.fb, i1 true, i1 %i.fc
  %.2132.i = select i1 %or.cond161.i, i32 %i.ez, i32 %.1131255.i ; 2 uses
  br i1 %2, label %._crit_edge266.loopexit.sink.split.i, label %.thread175.i

bb.ar:                                            ; preds = %.lr.ph260.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %i.fd = call i32 @exr_get_tile_sizes(ptr noundef %0, i32 noundef %.063, i32 noundef %.0120257.i, i32 noundef %.0121264.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) ; 2 uses
  %.not152.i = icmp eq i32 %i.fd, 0
  br i1 %.not152.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fe = load i32, ptr %i.c, align 4, !tbaa !154
  %i.ff = icmp eq i32 %i.fe, 2
  %i.fg = icmp eq i32 %.0120257.i, %.0121264.i
  %or.cond162.i = select i1 %i.ff, i1 true, i1 %i.fg
  %.3133.i = select i1 %or.cond162.i, i32 %i.fd, i32 %.1131255.i ; 2 uses
  br i1 %2, label %bb.bx, label %.thread182.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.p, i8 0, i64 496, i1 false)
  store i64 504, ptr %6, align 8
  %i.fh = load i32, ptr %i.h, align 4             ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.preheader186.lr.ph.i, label %._crit_edge252.i
end_hunk_0
