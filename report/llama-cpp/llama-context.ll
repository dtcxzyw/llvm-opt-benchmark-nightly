Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-context?download=true
inline.NumInlined: 3997
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN13llama_contextC2ERK11llama_model20llama_context_params:bb.a

bb.cv:                                            ; preds = %bb.ct, %bb.cu, %bb.cp
  %i.nz = load i32, ptr %i.br, align 8, !tbaa !200
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.nz)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  %i.oa = load i32, ptr %i.a, align 8, !tbaa !238
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.oa)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !309
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.oc)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  %i.od = load i32, ptr %i.lj, align 8, !tbaa !300
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.od)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  %i.oe = load i32, ptr %i.lp, align 4, !tbaa !301
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.oe)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz
  %i.of = load i8, ptr %i.kr, align 1, !tbaa !294, !range !226, !noundef !227
  %i.og = zext nneg i8 %i.of to i32
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.og)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  %i.oh = invoke ptr @llama_flash_attn_type_name(i32 noundef %i.kt)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, ptr noundef %i.oh)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  %i.oi = load i8, ptr %i.nb, align 1, !tbaa !307, !range !226, !noundef !227
  %i.oj = trunc nuw i8 %i.oi to i1
  %i.ok = select i1 %i.oj, ptr @.str.20, ptr @.str.21
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, ptr noundef nonnull %i.ok)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dd
  %i.ol = load float, ptr %i.gg, align 4, !tbaa !669
  %i.om = fpext float %i.ol to double
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, double noundef %i.om)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  %i.on = load float, ptr %i.gn, align 8, !tbaa !672
  %i.oo = fpext float %i.on to double
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, double noundef %i.oo)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df
  %i.op = load i32, ptr %i.cm, align 4, !tbaa !648
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.op)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  %i.oq = load i32, ptr %i.lv, align 8, !tbaa !302
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.oq)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.dh
  %i.or = load i32, ptr %i.mb, align 4, !tbaa !303
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.or)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.di
  %i.os = load i32, ptr %i.ob, align 4, !tbaa !309 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !666 ; 3 uses
  %i.ov = icmp ult i32 %i.os, %i.ou
  br i1 %i.ov, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.os, i32 noundef %i.ou)
          to label %._crit_edge495 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge495:                                   ; preds = %bb.dk
  %.pre496 = load i32, ptr %i.ob, align 4, !tbaa !309
  %.pre497 = load i32, ptr %i.ot, align 8, !tbaa !666
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge495, %bb.dj
  %i.ow = phi i32 [ %.pre497, %._crit_edge495 ], [ %i.ou, %bb.dj ] ; 2 uses
  %i.ox = phi i32 [ %.pre496, %._crit_edge495 ], [ %i.os, %bb.dj ] ; 2 uses
  %i.oy = icmp ugt i32 %i.ox, %i.ow
  br i1 %i.oy, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__._ZN13llama_contextC2ERK11llama_model20llama_context_params, i32 noundef %i.ox, i32 noundef %i.ow)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.oz = load i8, ptr %i.aj, align 8, !tbaa !695, !range !226, !noundef !227
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %.thread636, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 36616
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !696 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 36624
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !696 ; 2 uses
  %.not413446 = icmp eq ptr %i.pc, %i.pe
  br i1 %.not413446, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.do
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  br label %bb.dp

.preheader:                                       ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit, %bb.do
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 7 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  br label %bb.eb

bb.dp:                                            ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit
  %.sroa.0371.0447 = phi ptr [ %i.pc, %.lr.ph ], [ %i.rg, %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit ] ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0371.0447, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !699
  %i.pl = invoke ptr @ggml_backend_dev_init(ptr noundef %i.pk, ptr noundef null)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.dq:                                            ; preds = %bb.dp
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0371.0447, i64 8
  %i.po = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.pp = load ptr, ptr %i.pn, align 8, !tbaa !699
  %i.pq = invoke ptr @ggml_backend_dev_name(ptr noundef %i.pp)
          to label %bb.ds unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.thread

bb.ds:                                            ; preds = %bb.dr
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.29, ptr noundef %i.pq)
          to label %bb.dt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.thread

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.po, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %bb.dt
  invoke void @__cxa_throw(ptr nonnull %i.po, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %bb.if unwind label %bb.dv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.thread: ; preds = %bb.dr, %bb.ds
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.dw

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.0134 = phi i1 [ false, %bb.du ], [ true, %bb.dt ] ; 2 uses
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pt = load ptr, ptr %8, align 8, !tbaa !204   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %bb.dv
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !205
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.0134, label %bb.dw, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.0134, label %bb.dw, label %.loopexit.split-lp

bb.dw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %.pn215393 = phi { ptr, i32 } [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.thread ], [ %i.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %i.ps, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ]
  call void @__cxa_free_exception(ptr %i.po) #30
  br label %.loopexit.split-lp

bb.dx:                                            ; preds = %bb.dq
  %i.py = load ptr, ptr %i.pf, align 8, !tbaa !310 ; 6 uses
  %i.pz = load ptr, ptr %i.pg, align 8, !tbaa !311
  %.not.i258 = icmp eq ptr %i.py, %i.pz
  br i1 %.not.i258, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store ptr %i.pl, ptr %i.py, align 8, !tbaa !312
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store ptr %i.qa, ptr %i.pf, align 8, !tbaa !310
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit

bb.dz:                                            ; preds = %bb.dx
  %i.qb = load ptr, ptr %i.at, align 8, !tbaa !313 ; 10 uses
  %i.qc = ptrtoint ptr %i.py to i64               ; 2 uses
  %i.qd = ptrtoint ptr %i.qb to i64               ; 2 uses
  %i.qe = sub i64 %i.qc, %i.qd                    ; 4 uses
  %i.qf = icmp eq i64 %i.qe, 9223372036854775800
  br i1 %i.qf, label %.invoke650, label %_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dz
  %i.qg = ashr exact i64 %i.qe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.qg, i64 1)
  %i.qh = add nsw i64 %.sroa.speculated.i.i.i, %i.qg ; 2 uses
  %i.qi = icmp ult i64 %i.qh, %i.qg
  %i.qj = call i64 @llvm.umin.i64(i64 %i.qh, i64 1152921504606846975)
  %i.qk = select i1 %i.qi, i64 1152921504606846975, i64 %i.qj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.qk, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ql = shl nuw nsw i64 %i.qk, 3
  %i.qm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ql) #31
          to label %.noexc260 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qe
  store ptr %i.pl, ptr %i.qn, align 8, !tbaa !312
  %.not10.i.i.i.i.i = icmp eq ptr %i.qb, %i.py
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc260
  %i.qo = add i64 %i.qc, -8
  %i.qp = sub i64 %i.qo, %i.qd                    ; 3 uses
  %i.qq = lshr i64 %i.qp, 3
  %i.qr = add nuw nsw i64 %i.qq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.qp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader762, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.qs = and i64 %i.qp, -8
  %12 = add i64 %i.qs, 8                          ; 2 uses
  %scevgep680 = getelementptr i8, ptr %i.qm, i64 %12
  %scevgep681 = getelementptr i8, ptr %i.qb, i64 %12
  %bound0 = icmp ult ptr %i.qm, %scevgep681
  %bound1 = icmp ult ptr %i.qb, %scevgep680
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader762, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qr, 4611686018427387900     ; 3 uses
  %i.qt = shl i64 %n.vec, 3                       ; 2 uses
  %i.qu = getelementptr i8, ptr %i.qm, i64 %i.qt  ; 2 uses
  %i.qv = getelementptr i8, ptr %i.qb, i64 %i.qt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qm, i64 %i.qw ; 2 uses
  %next.gep682 = getelementptr i8, ptr %i.qb, i64 %i.qw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.qx = getelementptr i8, ptr %next.gep682, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep682, align 8, !tbaa !312, !alias.scope !702
  %wide.load683 = load <2 x i64>, ptr %i.qx, align 8, !tbaa !312, !alias.scope !702
  %i.qy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !312, !alias.scope !703, !noalias !704
  store <2 x i64> %wide.load683, ptr %i.qy, align 8, !tbaa !312, !alias.scope !703, !noalias !704
  %i.qz = getelementptr i8, ptr %next.gep682, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep682, align 8, !tbaa !312, !alias.scope !702
  store <2 x ptr> splat (ptr null), ptr %i.qz, align 8, !tbaa !312, !alias.scope !702
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ra = icmp eq i64 %index.next, %n.vec
  br i1 %i.ra, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader762

.lr.ph.i.i.i.i.i.preheader762:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.qm, %vector.memcheck ], [ %i.qm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.qu, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.qb, %vector.memcheck ], [ %i.qb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.qv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader762, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.rd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader762 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.rc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader762 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.rb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !312, !alias.scope !701
  store i64 %i.rb, ptr %.012.i.i.i.i.i, align 8, !tbaa !312, !alias.scope !700
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !312, !alias.scope !701
  %i.rc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.rc, %i.py
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !608

_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc260
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.qm, %.noexc260 ], [ %i.qu, %middle.block ], [ %i.rd, %.lr.ph.i.i.i.i.i ]
  %i.re = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.qb, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qe) #32
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ea, %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.qm, ptr %i.at, align 8, !tbaa !313
  store ptr %i.re, ptr %i.pf, align 8, !tbaa !310
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qk
  store ptr %i.rf, ptr %i.pg, align 8, !tbaa !311
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.dy
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0371.0447, i64 16 ; 2 uses
  %.not413 = icmp eq ptr %i.rg, %i.pe
  br i1 %.not413, label %.preheader, label %bb.dp

bb.eb:                                            ; preds = %.preheader, %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit279
  %.0133 = phi i64 [ %i.tg, %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit279 ], [ 0, %.preheader ] ; 3 uses
  %i.rh = invoke i64 @ggml_backend_dev_count()
          to label %bb.ec unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %bb.eb
  %i.ri = icmp ult i64 %.0133, %i.rh
  br i1 %i.ri, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rj = invoke ptr @ggml_backend_init_by_type(i32 noundef 0, ptr noundef null)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ee:                                            ; preds = %bb.ec
  %i.rk = invoke ptr @ggml_backend_dev_get(i64 noundef %.0133)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ef:                                            ; preds = %bb.ee
  %i.rl = invoke i32 @ggml_backend_dev_type(ptr noundef %i.rk)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ef
  %i.rm = icmp eq i32 %i.rl, 3
  br i1 %i.rm, label %bb.eh, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit279

bb.eh:                                            ; preds = %bb.eg
  %i.rn = invoke ptr @ggml_backend_dev_init(ptr noundef %i.rk, ptr noundef null)
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ei:                                            ; preds = %bb.eh
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %bb.ej, label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  %i.rp = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.rq = invoke ptr @ggml_backend_dev_name(ptr noundef %i.rk)
          to label %bb.ek unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread

bb.ek:                                            ; preds = %bb.ej
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.29, ptr noundef %i.rq)
          to label %bb.el unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.rp, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %bb.el
  invoke void @__cxa_throw(ptr nonnull %i.rp, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %bb.if unwind label %bb.en

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread: ; preds = %bb.ej, %bb.ek
  %i.rr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.eo

bb.en:                                            ; preds = %bb.em, %bb.el
  %.0131 = phi i1 [ false, %bb.em ], [ true, %bb.el ] ; 2 uses
  %i.rs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rt = load ptr, ptr %9, align 8, !tbaa !204   ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.en
  %i.rw = load i64, ptr %i.ru, align 8, !tbaa !205
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rx) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %.0131, label %bb.eo, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %.0131, label %bb.eo, label %.loopexit.split-lp

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %.pn210396 = phi { ptr, i32 } [ %i.rr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread ], [ %i.rs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.rs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ]
  call void @__cxa_free_exception(ptr %i.rp) #30
  br label %.loopexit.split-lp

bb.ep:                                            ; preds = %bb.ei
  %i.ry = load ptr, ptr %i.ph, align 8, !tbaa !310 ; 6 uses
  %i.rz = load ptr, ptr %i.pi, align 8, !tbaa !311
  %.not.i264 = icmp eq ptr %i.ry, %i.rz
  br i1 %.not.i264, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  store ptr %i.rn, ptr %i.ry, align 8, !tbaa !312
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store ptr %i.sa, ptr %i.ph, align 8, !tbaa !310
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit279

bb.er:                                            ; preds = %bb.ep
  %i.sb = load ptr, ptr %i.at, align 8, !tbaa !313 ; 10 uses
  %i.sc = ptrtoint ptr %i.ry to i64               ; 2 uses
  %i.sd = ptrtoint ptr %i.sb to i64               ; 2 uses
  %i.se = sub i64 %i.sc, %i.sd                    ; 4 uses
  %i.sf = icmp eq i64 %i.se, 9223372036854775800
  br i1 %i.sf, label %.invoke650, label %_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i265

_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i265: ; preds = %bb.er
  %i.sg = ashr exact i64 %i.se, 3                 ; 3 uses
  %.sroa.speculated.i.i.i266 = call i64 @llvm.umax.i64(i64 %i.sg, i64 1)
  %i.sh = add nsw i64 %.sroa.speculated.i.i.i266, %i.sg ; 2 uses
  %i.si = icmp ult i64 %i.sh, %i.sg
  %i.sj = call i64 @llvm.umin.i64(i64 %i.sh, i64 1152921504606846975)
  %i.sk = select i1 %i.si, i64 1152921504606846975, i64 %i.sj ; 3 uses
  %.not.i.i.i267 = icmp ne i64 %i.sk, 0
  call void @llvm.assume(i1 %.not.i.i.i267)
  %i.sl = shl nuw nsw i64 %i.sk, 3
  %i.sm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sl) #31
          to label %.noexc278 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc278:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i265
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.se
  store ptr %i.rn, ptr %i.sn, align 8, !tbaa !312
  %.not10.i.i.i.i.i268 = icmp eq ptr %i.sb, %i.ry
  br i1 %.not10.i.i.i.i.i268, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i273, label %.lr.ph.i.i.i.i.i269.preheader

.lr.ph.i.i.i.i.i269.preheader:                    ; preds = %.noexc278
  %i.so = add i64 %i.sc, -8
  %i.sp = sub i64 %i.so, %i.sd                    ; 3 uses
  %i.sq = lshr i64 %i.sp, 3
  %i.sr = add nuw nsw i64 %i.sq, 1                ; 2 uses
  %min.iters.check694 = icmp ult i64 %i.sp, 56
  br i1 %min.iters.check694, label %.lr.ph.i.i.i.i.i269.preheader754, label %vector.memcheck685

vector.memcheck685:                               ; preds = %.lr.ph.i.i.i.i.i269.preheader
  %i.ss = and i64 %i.sp, -8
  %13 = add i64 %i.ss, 8                          ; 2 uses
  %scevgep688 = getelementptr i8, ptr %i.sm, i64 %13
  %scevgep689 = getelementptr i8, ptr %i.sb, i64 %13
  %bound0690 = icmp ult ptr %i.sm, %scevgep689
  %bound1691 = icmp ult ptr %i.sb, %scevgep688
  %found.conflict692 = and i1 %bound0690, %bound1691
  br i1 %found.conflict692, label %.lr.ph.i.i.i.i.i269.preheader754, label %vector.ph695

vector.ph695:                                     ; preds = %vector.memcheck685
  %n.vec696 = and i64 %i.sr, 4611686018427387900  ; 3 uses
  %i.st = shl i64 %n.vec696, 3                    ; 2 uses
  %i.su = getelementptr i8, ptr %i.sm, i64 %i.st  ; 2 uses
  %i.sv = getelementptr i8, ptr %i.sb, i64 %i.st
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph695
  %index698 = phi i64 [ 0, %vector.ph695 ], [ %index.next703, %vector.body697 ] ; 2 uses
  %i.sw = shl i64 %index698, 3                    ; 2 uses
  %next.gep699 = getelementptr i8, ptr %i.sm, i64 %i.sw ; 2 uses
  %next.gep700 = getelementptr i8, ptr %i.sb, i64 %i.sw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.sx = getelementptr i8, ptr %next.gep700, i64 16
  %wide.load701 = load <2 x i64>, ptr %next.gep700, align 8, !tbaa !312, !alias.scope !707
  %wide.load702 = load <2 x i64>, ptr %i.sx, align 8, !tbaa !312, !alias.scope !707
  %i.sy = getelementptr i8, ptr %next.gep699, i64 16
  store <2 x i64> %wide.load701, ptr %next.gep699, align 8, !tbaa !312, !alias.scope !708, !noalias !709
  store <2 x i64> %wide.load702, ptr %i.sy, align 8, !tbaa !312, !alias.scope !708, !noalias !709
  %i.sz = getelementptr i8, ptr %next.gep700, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep700, align 8, !tbaa !312, !alias.scope !707
  store <2 x ptr> splat (ptr null), ptr %i.sz, align 8, !tbaa !312, !alias.scope !707
  %index.next703 = add nuw i64 %index698, 4       ; 2 uses
  %i.ta = icmp eq i64 %index.next703, %n.vec696
  br i1 %i.ta, label %middle.block704, label %vector.body697, !llvm.loop !615

middle.block704:                                  ; preds = %vector.body697
  %cmp.n705 = icmp eq i64 %i.sr, %n.vec696
  br i1 %cmp.n705, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i273, label %.lr.ph.i.i.i.i.i269.preheader754

.lr.ph.i.i.i.i.i269.preheader754:                 ; preds = %vector.memcheck685, %.lr.ph.i.i.i.i.i269.preheader, %middle.block704
  %.012.i.i.i.i.i270.ph = phi ptr [ %i.sm, %vector.memcheck685 ], [ %i.sm, %.lr.ph.i.i.i.i.i269.preheader ], [ %i.su, %middle.block704 ]
  %.0911.i.i.i.i.i271.ph = phi ptr [ %i.sb, %vector.memcheck685 ], [ %i.sb, %.lr.ph.i.i.i.i.i269.preheader ], [ %i.sv, %middle.block704 ]
  br label %.lr.ph.i.i.i.i.i269

.lr.ph.i.i.i.i.i269:                              ; preds = %.lr.ph.i.i.i.i.i269.preheader754, %.lr.ph.i.i.i.i.i269
  %.012.i.i.i.i.i270 = phi ptr [ %i.td, %.lr.ph.i.i.i.i.i269 ], [ %.012.i.i.i.i.i270.ph, %.lr.ph.i.i.i.i.i269.preheader754 ] ; 2 uses
  %.0911.i.i.i.i.i271 = phi ptr [ %i.tc, %.lr.ph.i.i.i.i.i269 ], [ %.0911.i.i.i.i.i271.ph, %.lr.ph.i.i.i.i.i269.preheader754 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.tb = load i64, ptr %.0911.i.i.i.i.i271, align 8, !tbaa !312, !alias.scope !706
  store i64 %i.tb, ptr %.012.i.i.i.i.i270, align 8, !tbaa !312, !alias.scope !705
  store ptr null, ptr %.0911.i.i.i.i.i271, align 8, !tbaa !312, !alias.scope !706
  %i.tc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i271, i64 8 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i270, i64 8 ; 2 uses
  %.not.i.i.i.i.i272 = icmp eq ptr %i.tc, %i.ry
  br i1 %.not.i.i.i.i.i272, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i273, label %.lr.ph.i.i.i.i.i269, !llvm.loop !616

_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i273: ; preds = %.lr.ph.i.i.i.i.i269, %middle.block704, %.noexc278
  %.0.lcssa.i.i.i.i.i274 = phi ptr [ %i.sm, %.noexc278 ], [ %i.su, %middle.block704 ], [ %i.td, %.lr.ph.i.i.i.i.i269 ]
  %i.te = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i274, i64 8
  %.not.i23.i.i275 = icmp eq ptr %i.sb, null
  br i1 %.not.i23.i.i275, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i276, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i273
  call void @_ZdlPvm(ptr noundef nonnull %i.sb, i64 noundef %i.se) #32
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i276

_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i276: ; preds = %bb.es, %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i273
  store ptr %i.sm, ptr %i.at, align 8, !tbaa !313
  store ptr %i.te, ptr %i.ph, align 8, !tbaa !310
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.sk
  store ptr %i.tf, ptr %i.pi, align 8, !tbaa !311
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit279

_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit279: ; preds = %bb.eq, %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i276, %bb.eg
  %i.tg = add nuw i64 %.0133, 1
  br label %bb.eb, !llvm.loop !617

bb.et:                                            ; preds = %bb.ed
  store ptr %i.rj, ptr %i.as, align 8, !tbaa !316
  %i.th = icmp eq ptr %i.rj, null
  br i1 %i.th, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.ti = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ti, ptr noundef nonnull @.str.30)
          to label %.invoke unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.tj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ti) #30
  br label %.loopexit.split-lp

bb.ew:                                            ; preds = %bb.et
  %i.tk = load ptr, ptr %i.ph, align 8, !tbaa !310 ; 6 uses
  %i.tl = load ptr, ptr %i.pi, align 8, !tbaa !311
  %.not.i280 = icmp eq ptr %i.tk, %i.tl
  br i1 %.not.i280, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store ptr %i.rj, ptr %i.tk, align 8, !tbaa !312
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 8 ; 2 uses
  store ptr %i.tm, ptr %i.ph, align 8, !tbaa !310
  %.pre498 = load ptr, ptr %i.at, align 8, !tbaa !317
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit295

bb.ey:                                            ; preds = %bb.ew
  %i.tn = load ptr, ptr %i.at, align 8, !tbaa !313 ; 10 uses
  %i.to = ptrtoint ptr %i.tk to i64               ; 2 uses
  %i.tp = ptrtoint ptr %i.tn to i64               ; 2 uses
  %i.tq = sub i64 %i.to, %i.tp                    ; 4 uses
  %i.tr = icmp eq i64 %i.tq, 9223372036854775800
  br i1 %i.tr, label %.invoke650, label %_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i281

.invoke650:                                       ; preds = %bb.dz, %bb.er, %bb.fk, %bb.gj, %bb.gn, %bb.gr, %bb.ey
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.222) #33
          to label %.cont651 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont651:                                         ; preds = %.invoke650
  unreachable

_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i281: ; preds = %bb.ey
  %i.ts = ashr exact i64 %i.tq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i282 = call i64 @llvm.umax.i64(i64 %i.ts, i64 1)
  %i.tt = add nsw i64 %.sroa.speculated.i.i.i282, %i.ts ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %i.ts
  %i.tv = call i64 @llvm.umin.i64(i64 %i.tt, i64 1152921504606846975)
  %i.tw = select i1 %i.tu, i64 1152921504606846975, i64 %i.tv ; 3 uses
  %.not.i.i.i283 = icmp ne i64 %i.tw, 0
  call void @llvm.assume(i1 %.not.i.i.i283)
  %i.tx = shl nuw nsw i64 %i.tw, 3
  %i.ty = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tx) #31
          to label %.noexc294 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc294:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i281
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.tq
  store ptr %i.rj, ptr %i.tz, align 8, !tbaa !312
  %.not10.i.i.i.i.i284 = icmp eq ptr %i.tn, %i.tk
  br i1 %.not10.i.i.i.i.i284, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i289, label %.lr.ph.i.i.i.i.i285.preheader

.lr.ph.i.i.i.i.i285.preheader:                    ; preds = %.noexc294
  %i.ua = add i64 %i.to, -8
  %i.ub = sub i64 %i.ua, %i.tp                    ; 3 uses
  %i.uc = lshr i64 %i.ub, 3
  %i.ud = add nuw nsw i64 %i.uc, 1                ; 2 uses
  %min.iters.check715 = icmp ult i64 %i.ub, 136
  br i1 %min.iters.check715, label %.lr.ph.i.i.i.i.i285.preheader752, label %vector.memcheck716

vector.memcheck716:                               ; preds = %.lr.ph.i.i.i.i.i285.preheader
  %i.ue = and i64 %i.ub, -8
  %i.uf = add i64 %i.ue, 8                        ; 2 uses
  %i.ug = getelementptr i8, ptr %i.ty, i64 %i.uf
  %i.uh = getelementptr i8, ptr %i.tn, i64 %i.uf
  %bound0717 = icmp ult ptr %i.ty, %i.uh
  %bound1718 = icmp ult ptr %i.tn, %i.ug
  %found.conflict719 = and i1 %bound0717, %bound1718
  br i1 %found.conflict719, label %.lr.ph.i.i.i.i.i285.preheader752, label %vector.ph720

vector.ph720:                                     ; preds = %vector.memcheck716
  %n.vec721 = and i64 %i.ud, 4611686018427387900  ; 3 uses
  %i.ui = shl i64 %n.vec721, 3                    ; 2 uses
  %i.uj = getelementptr i8, ptr %i.ty, i64 %i.ui  ; 2 uses
  %i.uk = getelementptr i8, ptr %i.tn, i64 %i.ui
  br label %vector.body722

vector.body722:                                   ; preds = %vector.body722, %vector.ph720
  %index723 = phi i64 [ 0, %vector.ph720 ], [ %index.next728, %vector.body722 ] ; 2 uses
  %i.ul = shl i64 %index723, 3                    ; 2 uses
  %next.gep724 = getelementptr i8, ptr %i.ty, i64 %i.ul ; 2 uses
  %next.gep725 = getelementptr i8, ptr %i.tn, i64 %i.ul ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.um = getelementptr i8, ptr %next.gep725, i64 16
  %wide.load726 = load <2 x i64>, ptr %next.gep725, align 8, !tbaa !312, !alias.scope !712
  %wide.load727 = load <2 x i64>, ptr %i.um, align 8, !tbaa !312, !alias.scope !712
  %i.un = getelementptr i8, ptr %next.gep724, i64 16
  store <2 x i64> %wide.load726, ptr %next.gep724, align 8, !tbaa !312, !alias.scope !713, !noalias !714
  store <2 x i64> %wide.load727, ptr %i.un, align 8, !tbaa !312, !alias.scope !713, !noalias !714
  %i.uo = getelementptr i8, ptr %next.gep725, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep725, align 8, !tbaa !312, !alias.scope !712
  store <2 x ptr> splat (ptr null), ptr %i.uo, align 8, !tbaa !312, !alias.scope !712
  %index.next728 = add nuw i64 %index723, 4       ; 2 uses
  %i.up = icmp eq i64 %index.next728, %n.vec721
  br i1 %i.up, label %middle.block729, label %vector.body722, !llvm.loop !624

middle.block729:                                  ; preds = %vector.body722
  %cmp.n730 = icmp eq i64 %i.ud, %n.vec721
  br i1 %cmp.n730, label %_ZNSt6vectorISt10unique_ptrI12ggml_backend20ggml_backend_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i289, label %.lr.ph.i.i.i.i.i285.preheader752

.lr.ph.i.i.i.i.i285.preheader752:                 ; preds = %vector.memcheck716, %.lr.ph.i.i.i.i.i285.preheader, %middle.block729
  %.012.i.i.i.i.i286.ph = phi ptr [ %i.ty, %vector.memcheck716 ], [ %i.ty, %.lr.ph.i.i.i.i.i285.preheader ], [ %i.uj, %middle.block729 ]
  %.0911.i.i.i.i.i287.ph = phi ptr [ %i.tn, %vector.memcheck716 ], [ %i.tn, %.lr.ph.i.i.i.i.i285.preheader ], [ %i.uk, %middle.block729 ]
  br label %.lr.ph.i.i.i.i.i285

.lr.ph.i.i.i.i.i285:                              ; preds = %.lr.ph.i.i.i.i.i285.preheader752, %.lr.ph.i.i.i.i.i285
  %.012.i.i.i.i.i286 = phi ptr [ %i.us, %.lr.ph.i.i.i.i.i285 ], [ %.012.i.i.i.i.i286.ph, %.lr.ph.i.i.i.i.i285.preheader752 ] ; 2 uses
  %.0911.i.i.i.i.i287 = phi ptr [ %i.ur, %.lr.ph.i.i.i.i.i285 ], [ %.0911.i.i.i.i.i287.ph, %.lr.ph.i.i.i.i.i285.preheader752 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.uq = load i64, ptr %.0911.i.i.i.i.i287, align 8, !tbaa !312, !alias.scope !711
  store i64 %i.uq, ptr %.012.i.i.i.i.i286, align 8, !tbaa !312, !alias.scope !710
  store ptr null, ptr %.0911.i.i.i.i.i287, align 8, !tbaa !312, !alias.scope !711
  %i.ur = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i287, i64 8 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i286, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13llama_context14output_reorderEv:bb.a
  br label %scalar.ph268.prol.loopexit

scalar.ph268.prol.loopexit:                       ; preds = %scalar.ph268.prol, %scalar.ph268.preheader
  %.086109.unr = phi i64 [ %.086109.ph, %scalar.ph268.preheader ], [ %i.cd, %scalar.ph268.prol ]
  %i.ce = icmp eq i64 %.086109.ph, %i.aw
  br i1 %i.ce, label %.loopexit106, label %scalar.ph268

scalar.ph268:                                     ; preds = %scalar.ph268.prol.loopexit, %scalar.ph268
  %.086109 = phi i64 [ %i.co, %scalar.ph268 ], [ %.086109.unr, %scalar.ph268.prol.loopexit ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.086109 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.086109 ; 2 uses
  %i.ch = load float, ptr %i.cf, align 4, !tbaa !414
  %i.ci = load float, ptr %i.cg, align 4, !tbaa !414
  store float %i.ci, ptr %i.cf, align 4, !tbaa !414
  store float %i.ch, ptr %i.cg, align 4, !tbaa !414
  %i.cj = add nuw nsw i64 %.086109, 1             ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cj ; 2 uses
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !414
  %i.cn = load float, ptr %i.cl, align 4, !tbaa !414
  store float %i.cn, ptr %i.ck, align 4, !tbaa !414
  store float %i.cm, ptr %i.cl, align 4, !tbaa !414
  %i.co = add nuw nsw i64 %.086109, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.co, %i.d
  br i1 %exitcond.not.1, label %.loopexit106, label %scalar.ph268, !llvm.loop !780

.loopexit106:                                     ; preds = %scalar.ph268.prol.loopexit, %scalar.ph268, %middle.block279, %bb.b
  br i1 %brmerge131, label %.loopexit104, label %.lr.ph111

.lr.ph111:                                        ; preds = %.loopexit106
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !358 ; 4 uses
  %i.cq = mul nuw i64 %i.bf, %i.k
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq ; 5 uses
  %i.cs = mul nuw i64 %i.bi, %i.k
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cs ; 5 uses
  br i1 %min.iters.check249, label %scalar.ph248.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph111
  %i.cu = shl nuw nsw i64 %i.bf, 2
  %i.cv = add nuw nsw i64 %i.cu, 4
  %i.cw = mul i64 %i.cv, %i.k
  %scevgep243 = getelementptr i8, ptr %i.cp, i64 %i.cw
  %i.cx = shl nuw nsw i64 %i.bi, 2
  %i.cy = add nuw nsw i64 %i.cx, 4
  %i.cz = mul i64 %i.cy, %i.k
  %scevgep244 = getelementptr i8, ptr %i.cp, i64 %i.cz
  %bound0245 = icmp ult ptr %i.cr, %scevgep244
  %bound1246 = icmp ult ptr %i.ct, %scevgep243
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %scalar.ph248.preheader, label %vector.body252

vector.body252:                                   ; preds = %vector.memcheck242, %vector.body252
  %index253 = phi i64 [ %index.next258, %vector.body252 ], [ 0, %vector.memcheck242 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index253 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index253 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load254 = load <4 x float>, ptr %i.da, align 4, !tbaa !414, !alias.scope !816, !noalias !817
  %wide.load255 = load <4 x float>, ptr %i.dc, align 4, !tbaa !414, !alias.scope !816, !noalias !817
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %wide.load256 = load <4 x float>, ptr %i.db, align 4, !tbaa !414, !alias.scope !817
  %wide.load257 = load <4 x float>, ptr %i.dd, align 4, !tbaa !414, !alias.scope !817
  store <4 x float> %wide.load256, ptr %i.da, align 4, !tbaa !414, !alias.scope !816, !noalias !817
  store <4 x float> %wide.load257, ptr %i.dc, align 4, !tbaa !414, !alias.scope !816, !noalias !817
  store <4 x float> %wide.load254, ptr %i.db, align 4, !tbaa !414, !alias.scope !817
  store <4 x float> %wide.load255, ptr %i.dd, align 4, !tbaa !414, !alias.scope !817
  %index.next258 = add nuw i64 %index253, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next258, %n.vec251
  br i1 %i.de, label %middle.block259, label %vector.body252, !llvm.loop !784

middle.block259:                                  ; preds = %vector.body252
  br i1 %cmp.n260, label %.loopexit104, label %scalar.ph248.preheader

scalar.ph248.preheader:                           ; preds = %vector.memcheck242, %.lr.ph111, %middle.block259
  %.085110.ph = phi i64 [ 0, %vector.memcheck242 ], [ 0, %.lr.ph111 ], [ %n.vec251, %middle.block259 ] ; 5 uses
  br i1 %lcmp.mod283.not, label %scalar.ph248.prol.loopexit, label %scalar.ph248.prol

scalar.ph248.prol:                                ; preds = %scalar.ph248.preheader
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.085110.ph ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.085110.ph ; 2 uses
  %i.dh = load float, ptr %i.df, align 4, !tbaa !414
  %i.di = load float, ptr %i.dg, align 4, !tbaa !414
  store float %i.di, ptr %i.df, align 4, !tbaa !414
  store float %i.dh, ptr %i.dg, align 4, !tbaa !414
  %i.dj = or disjoint i64 %.085110.ph, 1
  br label %scalar.ph248.prol.loopexit

scalar.ph248.prol.loopexit:                       ; preds = %scalar.ph248.prol, %scalar.ph248.preheader
  %.085110.unr = phi i64 [ %.085110.ph, %scalar.ph248.preheader ], [ %i.dj, %scalar.ph248.prol ]
  %i.dk = icmp eq i64 %.085110.ph, %i.ax
  br i1 %i.dk, label %.loopexit104, label %scalar.ph248

scalar.ph248:                                     ; preds = %scalar.ph248.prol.loopexit, %scalar.ph248
  %.085110 = phi i64 [ %i.du, %scalar.ph248 ], [ %.085110.unr, %scalar.ph248.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.085110 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.085110 ; 2 uses
  %i.dn = load float, ptr %i.dl, align 4, !tbaa !414
  %i.do = load float, ptr %i.dm, align 4, !tbaa !414
  store float %i.do, ptr %i.dl, align 4, !tbaa !414
  store float %i.dn, ptr %i.dm, align 4, !tbaa !414
  %i.dp = add nuw nsw i64 %.085110, 1             ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dp ; 2 uses
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !414
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !414
  store float %i.dt, ptr %i.dq, align 4, !tbaa !414
  store float %i.ds, ptr %i.dr, align 4, !tbaa !414
  %i.du = add nuw nsw i64 %.085110, 2             ; 2 uses
  %exitcond146.not.1 = icmp eq i64 %i.du, %i.k
  br i1 %exitcond146.not.1, label %.loopexit104, label %scalar.ph248, !llvm.loop !785

.loopexit104:                                     ; preds = %scalar.ph248.prol.loopexit, %scalar.ph248, %middle.block259, %.loopexit106
  br i1 %brmerge133, label %.loopexit102, label %.lr.ph113

.lr.ph113:                                        ; preds = %.loopexit104
  %i.dv = load ptr, ptr %i.z, align 8, !tbaa !359 ; 4 uses
  %i.dw = mul nuw i64 %i.bf, %i.k
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dw ; 5 uses
  %i.dy = mul nuw i64 %i.bi, %i.k
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dy ; 5 uses
  br i1 %min.iters.check229, label %scalar.ph228.preheader, label %vector.memcheck222

vector.memcheck222:                               ; preds = %.lr.ph113
  %i.ea = shl nuw nsw i64 %i.bf, 2
  %i.eb = add nuw nsw i64 %i.ea, 4
  %i.ec = mul i64 %i.eb, %i.k
  %scevgep223 = getelementptr i8, ptr %i.dv, i64 %i.ec
  %i.ed = shl nuw nsw i64 %i.bi, 2
  %i.ee = add nuw nsw i64 %i.ed, 4
  %i.ef = mul i64 %i.ee, %i.k
  %scevgep224 = getelementptr i8, ptr %i.dv, i64 %i.ef
  %bound0225 = icmp ult ptr %i.dx, %scevgep224
  %bound1226 = icmp ult ptr %i.dz, %scevgep223
  %found.conflict227 = and i1 %bound0225, %bound1226
  br i1 %found.conflict227, label %scalar.ph228.preheader, label %vector.body232

vector.body232:                                   ; preds = %vector.memcheck222, %vector.body232
  %index233 = phi i64 [ %index.next238, %vector.body232 ], [ 0, %vector.memcheck222 ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index233 ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index233 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load234 = load <4 x float>, ptr %i.eg, align 4, !tbaa !414, !alias.scope !818, !noalias !819
  %wide.load235 = load <4 x float>, ptr %i.ei, align 4, !tbaa !414, !alias.scope !818, !noalias !819
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load236 = load <4 x float>, ptr %i.eh, align 4, !tbaa !414, !alias.scope !819
  %wide.load237 = load <4 x float>, ptr %i.ej, align 4, !tbaa !414, !alias.scope !819
  store <4 x float> %wide.load236, ptr %i.eg, align 4, !tbaa !414, !alias.scope !818, !noalias !819
  store <4 x float> %wide.load237, ptr %i.ei, align 4, !tbaa !414, !alias.scope !818, !noalias !819
  store <4 x float> %wide.load234, ptr %i.eh, align 4, !tbaa !414, !alias.scope !819
  store <4 x float> %wide.load235, ptr %i.ej, align 4, !tbaa !414, !alias.scope !819
  %index.next238 = add nuw i64 %index233, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next238, %n.vec231
  br i1 %i.ek, label %middle.block239, label %vector.body232, !llvm.loop !789

middle.block239:                                  ; preds = %vector.body232
  br i1 %cmp.n240, label %.loopexit102, label %scalar.ph228.preheader

scalar.ph228.preheader:                           ; preds = %vector.memcheck222, %.lr.ph113, %middle.block239
  %.084112.ph = phi i64 [ 0, %vector.memcheck222 ], [ 0, %.lr.ph113 ], [ %n.vec231, %middle.block239 ] ; 5 uses
  br i1 %lcmp.mod285.not, label %scalar.ph228.prol.loopexit, label %scalar.ph228.prol

scalar.ph228.prol:                                ; preds = %scalar.ph228.preheader
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.084112.ph ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.084112.ph ; 2 uses
  %i.en = load float, ptr %i.el, align 4, !tbaa !414
  %i.eo = load float, ptr %i.em, align 4, !tbaa !414
  store float %i.eo, ptr %i.el, align 4, !tbaa !414
  store float %i.en, ptr %i.em, align 4, !tbaa !414
  %i.ep = or disjoint i64 %.084112.ph, 1
  br label %scalar.ph228.prol.loopexit

scalar.ph228.prol.loopexit:                       ; preds = %scalar.ph228.prol, %scalar.ph228.preheader
  %.084112.unr = phi i64 [ %.084112.ph, %scalar.ph228.preheader ], [ %i.ep, %scalar.ph228.prol ]
  %i.eq = icmp eq i64 %.084112.ph, %i.ay
  br i1 %i.eq, label %.loopexit102, label %scalar.ph228

scalar.ph228:                                     ; preds = %scalar.ph228.prol.loopexit, %scalar.ph228
  %.084112 = phi i64 [ %i.fa, %scalar.ph228 ], [ %.084112.unr, %scalar.ph228.prol.loopexit ] ; 4 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.084112 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.084112 ; 2 uses
  %i.et = load float, ptr %i.er, align 4, !tbaa !414
  %i.eu = load float, ptr %i.es, align 4, !tbaa !414
  store float %i.eu, ptr %i.er, align 4, !tbaa !414
  store float %i.et, ptr %i.es, align 4, !tbaa !414
  %i.ev = add nuw nsw i64 %.084112, 1             ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ev ; 2 uses
  %i.ey = load float, ptr %i.ew, align 4, !tbaa !414
  %i.ez = load float, ptr %i.ex, align 4, !tbaa !414
  store float %i.ez, ptr %i.ew, align 4, !tbaa !414
  store float %i.ey, ptr %i.ex, align 4, !tbaa !414
  %i.fa = add nuw nsw i64 %.084112, 2             ; 2 uses
  %exitcond147.not.1 = icmp eq i64 %i.fa, %i.k
  br i1 %exitcond147.not.1, label %.loopexit102, label %scalar.ph228, !llvm.loop !790

.loopexit102:                                     ; preds = %scalar.ph228.prol.loopexit, %scalar.ph228, %middle.block239, %.loopexit104
  br i1 %brmerge135, label %.loopexit100, label %.lr.ph117

.lr.ph117:                                        ; preds = %.loopexit102
  %i.fb = mul nuw i64 %i.bf, %i.i
  %i.fc = mul nuw i64 %i.bi, %i.i
  %i.fd = shl nuw nsw i64 %i.bi, 2
  %i.fe = add nuw nsw i64 %i.fd, 4
  %i.ff = mul i64 %i.fe, %i.i
  %i.fg = shl nuw nsw i64 %i.bf, 2
  %i.fh = add nuw nsw i64 %i.fg, 4
  %i.fi = mul i64 %i.fh, %i.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph117, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !415
  %.not95 = icmp eq i64 %i.fl, 0
  %brmerge137 = select i1 %.not95, i1 true, i1 %.not142
  br i1 %brmerge137, label %.loopexit, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.c
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !416 ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fb ; 5 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fc ; 5 uses
  br i1 %min.iters.check209, label %scalar.ph208.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph115
  %scevgep203 = getelementptr i8, ptr %i.fm, i64 %i.fi
  %scevgep204 = getelementptr i8, ptr %i.fm, i64 %i.ff
  %bound0205 = icmp ult ptr %i.fn, %scevgep204
  %bound1206 = icmp ult ptr %i.fo, %scevgep203
  %found.conflict207 = and i1 %bound0205, %bound1206
  br i1 %found.conflict207, label %scalar.ph208.preheader, label %vector.body212

vector.body212:                                   ; preds = %vector.memcheck202, %vector.body212
  %index213 = phi i64 [ %index.next218, %vector.body212 ], [ 0, %vector.memcheck202 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %index213 ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index213 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load214 = load <4 x float>, ptr %i.fp, align 4, !tbaa !414, !alias.scope !820, !noalias !821
  %wide.load215 = load <4 x float>, ptr %i.fr, align 4, !tbaa !414, !alias.scope !820, !noalias !821
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %wide.load216 = load <4 x float>, ptr %i.fq, align 4, !tbaa !414, !alias.scope !821
  %wide.load217 = load <4 x float>, ptr %i.fs, align 4, !tbaa !414, !alias.scope !821
  store <4 x float> %wide.load216, ptr %i.fp, align 4, !tbaa !414, !alias.scope !820, !noalias !821
  store <4 x float> %wide.load217, ptr %i.fr, align 4, !tbaa !414, !alias.scope !820, !noalias !821
  store <4 x float> %wide.load214, ptr %i.fq, align 4, !tbaa !414, !alias.scope !821
  store <4 x float> %wide.load215, ptr %i.fs, align 4, !tbaa !414, !alias.scope !821
  %index.next218 = add nuw i64 %index213, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.ft, label %middle.block219, label %vector.body212, !llvm.loop !794

middle.block219:                                  ; preds = %vector.body212
  br i1 %cmp.n220, label %.loopexit, label %scalar.ph208.preheader

scalar.ph208.preheader:                           ; preds = %vector.memcheck202, %.lr.ph115, %middle.block219
  %.082114.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %.lr.ph115 ], [ %n.vec211, %middle.block219 ] ; 5 uses
  br i1 %lcmp.mod287.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol

scalar.ph208.prol:                                ; preds = %scalar.ph208.preheader
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.082114.ph ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.082114.ph ; 2 uses
  %i.fw = load float, ptr %i.fu, align 4, !tbaa !414
  %i.fx = load float, ptr %i.fv, align 4, !tbaa !414
  store float %i.fx, ptr %i.fu, align 4, !tbaa !414
  store float %i.fw, ptr %i.fv, align 4, !tbaa !414
  %i.fy = or disjoint i64 %.082114.ph, 1
  br label %scalar.ph208.prol.loopexit

scalar.ph208.prol.loopexit:                       ; preds = %scalar.ph208.prol, %scalar.ph208.preheader
  %.082114.unr = phi i64 [ %.082114.ph, %scalar.ph208.preheader ], [ %i.fy, %scalar.ph208.prol ]
  %i.fz = icmp eq i64 %.082114.ph, %i.az
  br i1 %i.fz, label %.loopexit, label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208
  %.082114 = phi i64 [ %i.gj, %scalar.ph208 ], [ %.082114.unr, %scalar.ph208.prol.loopexit ] ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.082114 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.082114 ; 2 uses
  %i.gc = load float, ptr %i.ga, align 4, !tbaa !414
  %i.gd = load float, ptr %i.gb, align 4, !tbaa !414
  store float %i.gd, ptr %i.ga, align 4, !tbaa !414
  store float %i.gc, ptr %i.gb, align 4, !tbaa !414
  %i.ge = add nuw nsw i64 %.082114, 1             ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ge ; 2 uses
  %i.gh = load float, ptr %i.gf, align 4, !tbaa !414
  %i.gi = load float, ptr %i.gg, align 4, !tbaa !414
  store float %i.gi, ptr %i.gf, align 4, !tbaa !414
  store float %i.gh, ptr %i.gg, align 4, !tbaa !414
  %i.gj = add nuw nsw i64 %.082114, 2             ; 2 uses
  %exitcond148.not.1 = icmp eq i64 %i.gj, %i.i
  br i1 %exitcond148.not.1, label %.loopexit, label %scalar.ph208, !llvm.loop !795

.loopexit:                                        ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208, %middle.block219, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond150.not, label %.loopexit100, label %bb.c, !llvm.loop !796

.loopexit100:                                     ; preds = %.loopexit, %.loopexit102
  br i1 %i.ao, label %bb.d, label %.preheader98

.preheader98:                                     ; preds = %.loopexit100
  br i1 %.not139, label %._crit_edge, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader98
  %i.gk = load ptr, ptr %i.ap, align 8, !tbaa !417 ; 4 uses
  %i.gl = mul nuw i64 %i.bf, %i.d
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gl ; 5 uses
  %i.gn = mul nuw i64 %i.bi, %i.d
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gn ; 5 uses
  br i1 %min.iters.check189, label %scalar.ph188.preheader, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph119
  %i.gp = shl nuw nsw i64 %i.bf, 2
  %i.gq = add nuw nsw i64 %i.gp, 4
  %i.gr = mul i64 %i.gq, %i.d
  %scevgep183 = getelementptr i8, ptr %i.gk, i64 %i.gr
  %i.gs = shl nuw nsw i64 %i.bi, 2
  %i.gt = add nuw nsw i64 %i.gs, 4
  %i.gu = mul i64 %i.gt, %i.d
  %scevgep184 = getelementptr i8, ptr %i.gk, i64 %i.gu
  %bound0185 = icmp ult ptr %i.gm, %scevgep184
  %bound1186 = icmp ult ptr %i.go, %scevgep183
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %scalar.ph188.preheader, label %vector.body192

vector.body192:                                   ; preds = %vector.memcheck182, %vector.body192
  %index193 = phi i64 [ %index.next198, %vector.body192 ], [ 0, %vector.memcheck182 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index193 ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index193 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %wide.load194 = load <4 x float>, ptr %i.gv, align 4, !tbaa !414, !alias.scope !822, !noalias !823
  %wide.load195 = load <4 x float>, ptr %i.gx, align 4, !tbaa !414, !alias.scope !822, !noalias !823
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load196 = load <4 x float>, ptr %i.gw, align 4, !tbaa !414, !alias.scope !823
  %wide.load197 = load <4 x float>, ptr %i.gy, align 4, !tbaa !414, !alias.scope !823
  store <4 x float> %wide.load196, ptr %i.gv, align 4, !tbaa !414, !alias.scope !822, !noalias !823
  store <4 x float> %wide.load197, ptr %i.gx, align 4, !tbaa !414, !alias.scope !822, !noalias !823
  store <4 x float> %wide.load194, ptr %i.gw, align 4, !tbaa !414, !alias.scope !823
  store <4 x float> %wide.load195, ptr %i.gy, align 4, !tbaa !414, !alias.scope !823
  %index.next198 = add nuw i64 %index193, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.gz, label %middle.block199, label %vector.body192, !llvm.loop !800

middle.block199:                                  ; preds = %vector.body192
  br i1 %cmp.n200, label %.lr.ph121, label %scalar.ph188.preheader

scalar.ph188.preheader:                           ; preds = %vector.memcheck182, %.lr.ph119, %middle.block199
  %.081118.ph = phi i64 [ 0, %vector.memcheck182 ], [ 0, %.lr.ph119 ], [ %n.vec191, %middle.block199 ] ; 5 uses
  br i1 %lcmp.mod289.not, label %scalar.ph188.prol.loopexit, label %scalar.ph188.prol

scalar.ph188.prol:                                ; preds = %scalar.ph188.preheader
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.081118.ph ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.081118.ph ; 2 uses
  %i.hc = load float, ptr %i.ha, align 4, !tbaa !414
  %i.hd = load float, ptr %i.hb, align 4, !tbaa !414
  store float %i.hd, ptr %i.ha, align 4, !tbaa !414
  store float %i.hc, ptr %i.hb, align 4, !tbaa !414
  %i.he = or disjoint i64 %.081118.ph, 1
  br label %scalar.ph188.prol.loopexit

scalar.ph188.prol.loopexit:                       ; preds = %scalar.ph188.prol, %scalar.ph188.preheader
  %.081118.unr = phi i64 [ %.081118.ph, %scalar.ph188.preheader ], [ %i.he, %scalar.ph188.prol ]
  %i.hf = icmp eq i64 %.081118.ph, %i.ba
  br i1 %i.hf, label %.lr.ph121, label %scalar.ph188

.lr.ph121:                                        ; preds = %scalar.ph188.prol.loopexit, %scalar.ph188, %middle.block199
  %i.hg = load ptr, ptr %i.aq, align 8, !tbaa !418 ; 4 uses
  %i.hh = mul nuw i64 %i.bf, %i.d
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hh ; 5 uses
  %i.hj = mul nuw i64 %i.bi, %i.d
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hj ; 5 uses
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph121
  %i.hl = shl nuw nsw i64 %i.bf, 2
  %i.hm = add nuw nsw i64 %i.hl, 4
  %i.hn = mul i64 %i.hm, %i.d
  %scevgep163 = getelementptr i8, ptr %i.hg, i64 %i.hn
  %i.ho = shl nuw nsw i64 %i.bi, 2
  %i.hp = add nuw nsw i64 %i.ho, 4
  %i.hq = mul i64 %i.hp, %i.d
  %scevgep164 = getelementptr i8, ptr %i.hg, i64 %i.hq
  %bound0165 = icmp ult ptr %i.hi, %scevgep164
  %bound1166 = icmp ult ptr %i.hk, %scevgep163
  %found.conflict167 = and i1 %bound0165, %bound1166
  br i1 %found.conflict167, label %scalar.ph168.preheader, label %vector.body172

vector.body172:                                   ; preds = %vector.memcheck162, %vector.body172
  %index173 = phi i64 [ %index.next178, %vector.body172 ], [ 0, %vector.memcheck162 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %index173 ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %index173 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  %wide.load174 = load <4 x float>, ptr %i.hr, align 4, !tbaa !414, !alias.scope !824, !noalias !825
  %wide.load175 = load <4 x float>, ptr %i.ht, align 4, !tbaa !414, !alias.scope !824, !noalias !825
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %wide.load176 = load <4 x float>, ptr %i.hs, align 4, !tbaa !414, !alias.scope !825
  %wide.load177 = load <4 x float>, ptr %i.hu, align 4, !tbaa !414, !alias.scope !825
  store <4 x float> %wide.load176, ptr %i.hr, align 4, !tbaa !414, !alias.scope !824, !noalias !825
  store <4 x float> %wide.load177, ptr %i.ht, align 4, !tbaa !414, !alias.scope !824, !noalias !825
  store <4 x float> %wide.load174, ptr %i.hs, align 4, !tbaa !414, !alias.scope !825
  store <4 x float> %wide.load175, ptr %i.hu, align 4, !tbaa !414, !alias.scope !825
  %index.next178 = add nuw i64 %index173, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.hv, label %middle.block179, label %vector.body172, !llvm.loop !804

middle.block179:                                  ; preds = %vector.body172
  br i1 %cmp.n180, label %.lr.ph123, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %vector.memcheck162, %.lr.ph121, %middle.block179
  %.080120.ph = phi i64 [ 0, %vector.memcheck162 ], [ 0, %.lr.ph121 ], [ %n.vec171, %middle.block179 ] ; 5 uses
  br i1 %lcmp.mod291.not, label %scalar.ph168.prol.loopexit, label %scalar.ph168.prol

scalar.ph168.prol:                                ; preds = %scalar.ph168.preheader
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.080120.ph ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %.080120.ph ; 2 uses
  %i.hy = load float, ptr %i.hw, align 4, !tbaa !414
  %i.hz = load float, ptr %i.hx, align 4, !tbaa !414
  store float %i.hz, ptr %i.hw, align 4, !tbaa !414
  store float %i.hy, ptr %i.hx, align 4, !tbaa !414
  %i.ia = or disjoint i64 %.080120.ph, 1
  br label %scalar.ph168.prol.loopexit

scalar.ph168.prol.loopexit:                       ; preds = %scalar.ph168.prol, %scalar.ph168.preheader
  %.080120.unr = phi i64 [ %.080120.ph, %scalar.ph168.preheader ], [ %i.ia, %scalar.ph168.prol ]
  %i.ib = icmp eq i64 %.080120.ph, %i.bb
  br i1 %i.ib, label %.lr.ph123, label %scalar.ph168

scalar.ph188:                                     ; preds = %scalar.ph188.prol.loopexit, %scalar.ph188
end_hunk_1
