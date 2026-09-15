Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  store float %i.ail, ptr %i.aio, align 4
  %i.aip = icmp sgt i32 %i.aab, 0
  br i1 %i.aip, label %.lr.ph34.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i

.lr.ph34.i.i.i.i.i.i:                             ; preds = %bb.en
  %i.aiq = sitofp i32 %i.zx to float
  %i.air = icmp ne i32 %i.aaa, 0
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aij, i64 4 ; 2 uses
  %i.ait = shl nsw i64 %i.aii, 2
  %i.aiu = add nsw i32 %i.zy, 1
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = shl nsw i64 %i.aiv, 2
  %i.aix = icmp sgt i32 %i.zy, 0                  ; 2 uses
  %i.aiy = sitofp i32 %i.zy to float              ; 3 uses
  %wide.trip.count.i.i92.i.i.i.i.i = zext nneg i32 %i.zy to i64
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge26.i.i.i.i.i.i, %.lr.ph34.i.i.i.i.i.i
  %.0..i.i.i.i.i.i = phi ptr [ null, %.lr.ph34.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %.032.i.i.i.i.i.i = phi ptr [ %i.agn, %.lr.ph34.i.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 3 uses
  %.07531.i.i.i.i.i.i = phi i32 [ %i.aaa, %.lr.ph34.i.i.i.i.i.i ], [ %i.bsw, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %.07630.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph34.i.i.i.i.i.i ], [ %i.bsx, %._crit_edge26.i.i.i.i.i.i ] ; 3 uses
  %.sroa.11.029.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph34.i.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.028.i.i.i.i.i.i = phi ptr [ null, %.lr.ph34.i.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.027.i.i.i.i.i.i = phi ptr [ null, %.lr.ph34.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %i.aiz = sitofp i32 %.07531.i.i.i.i.i.i to float ; 68 uses
  %i.aja = fadd float %i.aiz, 1.000000e+00        ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i.i, i8 0, i64 %i.ait, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aij, i8 0, i64 %i.aiw, i1 false)
  %.not908.i.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i.i, label %.preheader7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.preheader7.i.i.i.i.i.i:                          ; preds = %bb.eq, %bb.eo
  %.sroa.7.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.028.i.i.i.i.i.i, %bb.eo ], [ %.sroa.7.2.i.i.i.i.i.i, %bb.eq ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.032.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ajc = load float, ptr %i.ajb, align 4        ; 2 uses
  %i.ajd = fcmp ugt float %i.ajc, %i.aja
  br i1 %i.ajd, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i.i

.lr.ph15.i.i.i.i.i.i:                             ; preds = %.preheader7.i.i.i.i.i.i
  %i.aje = icmp eq i32 %.07630.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.air, %i.aje
  br label %bb.er

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.eo, %bb.eq
  %i.ajf = phi ptr [ %i.ajl, %bb.eq ], [ %.0..i.i.i.i.i.i, %bb.eo ] ; 6 uses
  %.07810.i.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i.i, %bb.eq ], [ %i.f, %bb.eo ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i.i, %bb.eq ], [ %.sroa.7.028.i.i.i.i.i.i, %bb.eo ] ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 28
  %i.ajh = load float, ptr %i.ajg, align 4
  %i.aji = fcmp ugt float %i.ajh, %i.aiz
  br i1 %i.aji, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ajj = load ptr, ptr %i.ajf, align 8
  store ptr %i.ajj, ptr %.07810.i.i.i.i.i.i, align 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajf, i64 20
  store float 0.000000e+00, ptr %i.ajk, align 4
  store ptr %.sroa.7.19.i.i.i.i.i.i, ptr %i.ajf, align 8
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.lr.ph.i.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ajf, %bb.ep ] ; 2 uses
  %.179.i.i.i.i.i.i = phi ptr [ %i.ajf, %.lr.ph.i.i.i.i.i.i ], [ %.07810.i.i.i.i.i.i, %bb.ep ] ; 2 uses
  %i.ajl = load ptr, ptr %.179.i.i.i.i.i.i, align 8 ; 2 uses
  %.not90.i.i.i.i.i.i = icmp eq ptr %i.ajl, null
  br i1 %.not90.i.i.i.i.i.i, label %.preheader7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.er:                                            ; preds = %stbtt__new_active.exit.thread.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i
  %i.ajm = phi float [ %i.ajc, %.lr.ph15.i.i.i.i.i.i ], [ %i.alf, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.ajn = phi ptr [ %i.ajb, %.lr.ph15.i.i.i.i.i.i ], [ %i.ale, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.114.i.i.i.i.i.i = phi ptr [ %.032.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i ], [ %i.ald, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 7 uses
  %.sroa.11.113.i.i.i.i.i.i = phi i32 [ %.sroa.11.029.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i.i = phi ptr [ %.sroa.0.027.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 5 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.ajp = load float, ptr %i.ajo, align 4        ; 3 uses
  %i.ajq = fcmp une float %i.ajm, %i.ajp
  br i1 %i.ajq, label %bb.es, label %stbtt__new_active.exit.thread.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ajr = load ptr, ptr %.sroa.7.312.i.i.i.i.i.i, align 8
  br label %bb.ex

bb.eu:                                            ; preds = %bb.es
  %i.ajs = icmp eq i32 %.sroa.11.113.i.i.i.i.i.i, 0
  br i1 %i.ajs, label %bb.ev, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.eu
  %i.ajt = add nsw i32 %.sroa.11.113.i.i.i.i.i.i, -1
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aju = call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #42 ; 3 uses
  %i.ajv = icmp eq ptr %i.aju, null
  br i1 %i.ajv, label %stbtt__new_active.exit.thread.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.ev
  store ptr %.sroa.0.111.i.i.i.i.i.i, ptr %i.aju, align 8
  %.pre41.pre.i.i.i.i.i.i = load float, ptr %i.ajo, align 4
  %.pre42.pre.i.i.i.i.i.i = load float, ptr %i.ajn, align 4
  br label %bb.ew

bb.ew:                                            ; preds = %.thread.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.pre42.i.i.i.i.i.i = phi float [ %.pre42.pre.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajm, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.pre41.i.i.i.i.i.i = phi float [ %.pre41.pre.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajp, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.sroa.0.2.i.i.i.i.i.i = phi ptr [ %i.aju, %.thread.i.i.i.i.i.i.i.i ], [ %.sroa.0.111.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajw = phi i32 [ 799, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajt, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i.i.i, i64 8
  %i.ajy = zext nneg i32 %i.ajw to i64
  %i.ajz = shl nuw nsw i64 %i.ajy, 5
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.ajz
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.et
  %i.akb = phi float [ %.pre42.i.i.i.i.i.i, %bb.ew ], [ %i.ajm, %bb.et ]
  %i.akc = phi float [ %.pre41.i.i.i.i.i.i, %bb.ew ], [ %i.ajp, %bb.et ]
  %.sroa.0.3.i.i.i.i.i.i = phi ptr [ %.sroa.0.2.i.i.i.i.i.i, %bb.ew ], [ %.sroa.0.111.i.i.i.i.i.i, %bb.et ]
  %.sroa.7.4.i.i.i.i.i.i = phi ptr [ null, %bb.ew ], [ %i.ajr, %bb.et ]
  %.sroa.11.2.i.i.i.i.i.i = phi i32 [ %i.ajw, %bb.ew ], [ %.sroa.11.113.i.i.i.i.i.i, %bb.et ]
  %.1.i.ph.i.i.i.i.i.i.i = phi ptr [ %i.aka, %bb.ew ], [ %.sroa.7.312.i.i.i.i.i.i, %bb.et ] ; 9 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 8
  %i.ake = load float, ptr %i.akd, align 4
  %i.akf = load float, ptr %.114.i.i.i.i.i.i, align 4
  %i.akg = fsub float %i.ake, %i.akf
  %i.akh = fsub float %i.akc, %i.akb
  %i.aki = fdiv float %i.akg, %i.akh              ; 4 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 12
  store float %i.aki, ptr %i.akj, align 4
  %i.akk = fcmp une float %i.aki, 0.000000e+00
  %i.akl = fdiv float 1.000000e+00, %i.aki
  %i.akm = select i1 %i.akk, float %i.akl, float 0.000000e+00
  %i.akn = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 16
  store float %i.akm, ptr %i.akn, align 8
  %i.ako = load float, ptr %.114.i.i.i.i.i.i, align 4
  %i.akp = load float, ptr %i.ajn, align 4
  %i.akq = fsub float %i.aiz, %i.akp
  %i.akr = call float @llvm.fmuladd.f32(float %i.aki, float %i.akq, float %i.ako)
  %i.aks = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 8
  %i.akt = fsub float %i.akr, %i.aiq
  store float %i.akt, ptr %i.aks, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 16
  %i.akv = load i32, ptr %i.aku, align 4
  %.not28.i.i.i.i.i.i.i = icmp eq i32 %i.akv, 0
  %i.akw = select i1 %.not28.i.i.i.i.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.akx = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 20
  store float %i.akw, ptr %i.akx, align 4
  %i.aky = load float, ptr %i.ajn, align 4
  %i.akz = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 24
  store float %i.aky, ptr %i.akz, align 8
  %i.ala = load float, ptr %i.ajo, align 4        ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 28 ; 2 uses
  store float %i.ala, ptr %i.alb, align 4
  store ptr null, ptr %.1.i.ph.i.i.i.i.i.i.i, align 8
  %i.alc = fcmp olt float %i.ala, %i.aiz
  %or.cond135.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 %i.alc, i1 false
  br i1 %or.cond135.i.i.i.i.i.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  store float %i.aiz, ptr %i.alb, align 4
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, ptr %.1.i.ph.i.i.i.i.i.i.i, align 8
  store ptr %.1.i.ph.i.i.i.i.i.i.i, ptr %i.f, align 8
  br label %stbtt__new_active.exit.thread.i.i.i.i.i.i

stbtt__new_active.exit.thread.i.i.i.i.i.i:        ; preds = %bb.ez, %bb.ev, %bb.er
  %.sroa.0.5.i.i.i.i.i.i = phi ptr [ %.sroa.0.111.i.i.i.i.i.i, %bb.er ], [ %.sroa.0.3.i.i.i.i.i.i, %bb.ez ], [ %.sroa.0.111.i.i.i.i.i.i, %bb.ev ] ; 2 uses
  %.sroa.7.6.i.i.i.i.i.i = phi ptr [ %.sroa.7.312.i.i.i.i.i.i, %bb.er ], [ %.sroa.7.4.i.i.i.i.i.i, %bb.ez ], [ null, %bb.ev ] ; 2 uses
  %.sroa.11.4.i.i.i.i.i.i = phi i32 [ %.sroa.11.113.i.i.i.i.i.i, %bb.er ], [ %.sroa.11.2.i.i.i.i.i.i, %bb.ez ], [ 0, %bb.ev ] ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.alf = load float, ptr %i.ale, align 4        ; 2 uses
  %i.alg = fcmp ugt float %i.alf, %i.aja
  br i1 %i.alg, label %._crit_edge.i.i.i.i.i.i, label %bb.er

._crit_edge.i.i.i.i.i.i:                          ; preds = %stbtt__new_active.exit.thread.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.027.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.sroa.11.1.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.11.029.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i.i = phi ptr [ %.032.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i ], [ %i.ald, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i = load ptr, ptr %i.f, align 8 ; 4 uses
  %.not91.i.i.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, null ; 2 uses
  br i1 %.not91.i.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.alh = fcmp oeq float %i.aja, %i.aiz          ; 3 uses
  %i.ali = fsub float %i.aja, %i.aiz              ; 4 uses
  %i.alj = insertelement <2 x float> poison, float %i.aiz, i64 0
  %i.alk = shufflevector <2 x float> %i.alj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.fb

bb.fb:                                            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %bb.fa
  %.0293468.i.i.i.i.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %bb.fa ], [ %i.bsa, %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i ] ; 19 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 8
  %10 = load <2 x float>, ptr %i.all, align 8     ; 10 uses
  %11 = extractelement <2 x float> %10, i64 0     ; 40 uses
  %12 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %i.alm = fcmp oeq float %12, 0.000000e+00
  br i1 %i.alm, label %bb.fc, label %bb.gk

bb.fc:                                            ; preds = %bb.fb
  %i.aln = fcmp olt float %11, %i.aiy
  br i1 %i.aln, label %bb.fd, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %bb.fc
  %i.alo = fcmp ult float %11, 0.000000e+00
  br i1 %i.alo, label %bb.fz, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.alp = fptosi float %11 to i32                ; 6 uses
  br i1 %i.alh, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.alq = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.alr = load float, ptr %i.alq, align 4        ; 4 uses
  %i.als = fcmp olt float %i.alr, %i.aiz
  br i1 %i.als, label %bb.fp, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.alt = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %i.alu = load float, ptr %i.alt, align 8        ; 4 uses
  %i.alv = fcmp olt float %i.aja, %i.alu
  br i1 %i.alv, label %bb.fp, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.alw = fcmp ogt float %i.alu, %i.aiz
  br i1 %i.alw, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %foldExtExtBinop = fsub <2 x float> %10, %10
  %13 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.alx = fsub float %i.alu, %i.aiz
  %i.aly = fmul float %13, %i.alx
  %i.alz = fdiv float %i.aly, %i.ali
  %i.ama = fadd float %11, %i.alz
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.055.i.i.i.i.i.i.i.i = phi float [ %i.ama, %bb.fi ], [ %11, %bb.fh ] ; 4 uses
  %.054.i.i.i.i.i.i.i.i = phi float [ %i.alu, %bb.fi ], [ %i.aiz, %bb.fh ] ; 3 uses
  %i.amb = fcmp ogt float %i.aja, %i.alr
  br i1 %i.amb, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.amc = fsub float %11, %.055.i.i.i.i.i.i.i.i
  %i.amd = fsub float %i.alr, %i.aja
  %i.ame = fmul float %i.amd, %i.amc
  %i.amf = fsub float %i.aja, %.054.i.i.i.i.i.i.i.i
  %i.amg = fdiv float %i.ame, %i.amf
  %i.amh = fadd float %11, %i.amg
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.053.i.i.i.i.i.i.i.i = phi float [ %i.amh, %bb.fk ], [ %11, %bb.fj ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i = phi float [ %i.alr, %bb.fk ], [ %i.aja, %bb.fj ] ; 2 uses
  %i.ami = sitofp i32 %i.alp to float             ; 4 uses
  %i.amj = fcmp ugt float %.055.i.i.i.i.i.i.i.i, %i.ami
  %i.amk = fcmp ugt float %.053.i.i.i.i.i.i.i.i, %i.ami
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.amj, i1 true, i1 %i.amk
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aml = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.amm = load float, ptr %i.aml, align 4
  %i.amn = fsub float %.0.i.i.i.i.i.i.i.i, %.054.i.i.i.i.i.i.i.i
  %i.amo = zext nneg i32 %i.alp to i64
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.amo ; 2 uses
  %i.amq = load float, ptr %i.amp, align 4
  %i.amr = call float @llvm.fmuladd.f32(float %i.amm, float %i.amn, float %i.amq)
  store float %i.amr, ptr %i.amp, align 4
  br label %bb.fp

bb.fn:                                            ; preds = %bb.fl
  %i.ams = add nuw nsw i32 %i.alp, 1
  %i.amt = sitofp i32 %i.ams to float             ; 2 uses
  %i.amu = fcmp ult float %.055.i.i.i.i.i.i.i.i, %i.amt
  %i.amv = fcmp ult float %.053.i.i.i.i.i.i.i.i, %i.amt
  %or.cond62.i.i.i.i.i.i.i.i = select i1 %i.amu, i1 true, i1 %i.amv
  br i1 %or.cond62.i.i.i.i.i.i.i.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.amw = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.amx = load float, ptr %i.amw, align 4
  %i.amy = fsub float %.0.i.i.i.i.i.i.i.i, %.054.i.i.i.i.i.i.i.i
  %i.amz = fmul float %i.amy, %i.amx
  %i.ana = fsub float %.055.i.i.i.i.i.i.i.i, %i.ami
  %i.anb = fsub float %.053.i.i.i.i.i.i.i.i, %i.ami
  %i.anc = fadd float %i.ana, %i.anb
  %i.and = fmul float %i.anc, 5.000000e-01
  %i.ane = fsub float 1.000000e+00, %i.and
  %i.anf = zext nneg i32 %i.alp to i64
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.anf ; 2 uses
  %i.anh = load float, ptr %i.ang, align 4
  %i.ani = call float @llvm.fmuladd.f32(float %i.amz, float %i.ane, float %i.anh)
  store float %i.ani, ptr %i.ang, align 4
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fg, %bb.ff
  %i.anj = add nuw nsw i32 %i.alp, 1              ; 3 uses
  %i.ank = load float, ptr %i.alq, align 4        ; 4 uses
  %i.anl = fcmp olt float %i.ank, %i.aiz
  br i1 %i.anl, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.anm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %i.ann = load float, ptr %i.anm, align 8        ; 4 uses
  %i.ano = fcmp olt float %i.aja, %i.ann
  br i1 %i.ano, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.anp = fcmp ogt float %i.ann, %i.aiz
  br i1 %i.anp, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %foldExtExtBinop729 = fsub <2 x float> %10, %10
  %14 = extractelement <2 x float> %foldExtExtBinop729, i64 0
  %i.anq = fsub float %i.ann, %i.aiz
  %i.anr = fmul float %14, %i.anq
  %i.ans = fdiv float %i.anr, %i.ali
  %i.ant = fadd float %11, %i.ans
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.055.i345.i.i.i.i.i.i.i = phi float [ %i.ant, %bb.fs ], [ %11, %bb.fr ] ; 4 uses
  %.054.i346.i.i.i.i.i.i.i = phi float [ %i.ann, %bb.fs ], [ %i.aiz, %bb.fr ] ; 3 uses
  %i.anu = fcmp ogt float %i.aja, %i.ank
  br i1 %i.anu, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.anv = fsub float %11, %.055.i345.i.i.i.i.i.i.i
  %i.anw = fsub float %i.ank, %i.aja
  %i.anx = fmul float %i.anw, %i.anv
  %i.any = fsub float %i.aja, %.054.i346.i.i.i.i.i.i.i
  %i.anz = fdiv float %i.anx, %i.any
  %i.aoa = fadd float %11, %i.anz
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.053.i347.i.i.i.i.i.i.i = phi float [ %i.aoa, %bb.fu ], [ %11, %bb.ft ] ; 3 uses
  %.0.i348.i.i.i.i.i.i.i = phi float [ %i.ank, %bb.fu ], [ %i.aja, %bb.ft ] ; 2 uses
  %i.aob = sitofp i32 %i.anj to float             ; 4 uses
  %i.aoc = fcmp ugt float %.055.i345.i.i.i.i.i.i.i, %i.aob
  %i.aod = fcmp ugt float %.053.i347.i.i.i.i.i.i.i, %i.aob
  %or.cond.i349.i.i.i.i.i.i.i = select i1 %i.aoc, i1 true, i1 %i.aod
  br i1 %or.cond.i349.i.i.i.i.i.i.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aoe = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aof = load float, ptr %i.aoe, align 4
  %i.aog = fsub float %.0.i348.i.i.i.i.i.i.i, %.054.i346.i.i.i.i.i.i.i
  %i.aoh = zext nneg i32 %i.anj to i64
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %i.aoh ; 2 uses
  %i.aoj = load float, ptr %i.aoi, align 4
  %i.aok = call float @llvm.fmuladd.f32(float %i.aof, float %i.aog, float %i.aoj)
  store float %i.aok, ptr %i.aoi, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fv
  %i.aol = add nuw nsw i32 %i.alp, 2
  %i.aom = sitofp i32 %i.aol to float             ; 2 uses
  %i.aon = fcmp ult float %.055.i345.i.i.i.i.i.i.i, %i.aom
  %i.aoo = fcmp ult float %.053.i347.i.i.i.i.i.i.i, %i.aom
  %or.cond62.i350.i.i.i.i.i.i.i = select i1 %i.aon, i1 true, i1 %i.aoo
  br i1 %or.cond62.i350.i.i.i.i.i.i.i, label %bb.fy, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.aop = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aoq = load float, ptr %i.aop, align 4
  %i.aor = fsub float %.0.i348.i.i.i.i.i.i.i, %.054.i346.i.i.i.i.i.i.i
  %i.aos = fmul float %i.aor, %i.aoq
  %i.aot = fsub float %.055.i345.i.i.i.i.i.i.i, %i.aob
  %i.aou = fsub float %.053.i347.i.i.i.i.i.i.i, %i.aob
  %i.aov = fadd float %i.aot, %i.aou
  %i.aow = fmul float %i.aov, 5.000000e-01
  %i.aox = fsub float 1.000000e+00, %i.aow
  %i.aoy = zext nneg i32 %i.anj to i64
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %i.aoy ; 2 uses
  %i.apa = load float, ptr %i.aoz, align 4
  %i.apb = call float @llvm.fmuladd.f32(float %i.aos, float %i.aox, float %i.apa)
  store float %i.apb, ptr %i.aoz, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fd
  br i1 %i.alh, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.apc = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 28
  %i.apd = load float, ptr %i.apc, align 4        ; 4 uses
  %i.ape = fcmp olt float %i.apd, %i.aiz
  br i1 %i.ape, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.apf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %i.apg = load float, ptr %i.apf, align 8        ; 4 uses
  %i.aph = fcmp olt float %i.aja, %i.apg
  br i1 %i.aph, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.api = fcmp ogt float %i.apg, %i.aiz
  br i1 %i.api, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %foldExtExtBinop731 = fsub <2 x float> %10, %10
  %15 = extractelement <2 x float> %foldExtExtBinop731, i64 0
  %i.apj = fsub float %i.apg, %i.aiz
  %i.apk = fmul float %15, %i.apj
  %i.apl = fdiv float %i.apk, %i.ali
  %i.apm = fadd float %11, %i.apl
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.055.i352.i.i.i.i.i.i.i = phi float [ %i.apm, %bb.gd ], [ %11, %bb.gc ] ; 4 uses
  %.054.i353.i.i.i.i.i.i.i = phi float [ %i.apg, %bb.gd ], [ %i.aiz, %bb.gc ] ; 3 uses
  %i.apn = fcmp ogt float %i.aja, %i.apd
  br i1 %i.apn, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.apo = fsub float %11, %.055.i352.i.i.i.i.i.i.i
  %i.app = fsub float %i.apd, %i.aja
  %i.apq = fmul float %i.app, %i.apo
  %i.apr = fsub float %i.aja, %.054.i353.i.i.i.i.i.i.i
  %i.aps = fdiv float %i.apq, %i.apr
  %i.apt = fadd float %11, %i.aps
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.053.i354.i.i.i.i.i.i.i = phi float [ %i.apt, %bb.gf ], [ %11, %bb.ge ] ; 3 uses
  %.0.i355.i.i.i.i.i.i.i = phi float [ %i.apd, %bb.gf ], [ %i.aja, %bb.ge ] ; 2 uses
  %i.apu = fcmp ugt float %.055.i352.i.i.i.i.i.i.i, 0.000000e+00
  %i.apv = fcmp ugt float %.053.i354.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i.i.i.i.i = select i1 %i.apu, i1 true, i1 %i.apv
  br i1 %or.cond.i356.i.i.i.i.i.i.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.apw = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.apx = load float, ptr %i.apw, align 4
  %i.apy = fsub float %.0.i355.i.i.i.i.i.i.i, %.054.i353.i.i.i.i.i.i.i
  %i.apz = load float, ptr %i.aij, align 4
  %i.aqa = call float @llvm.fmuladd.f32(float %i.apx, float %i.apy, float %i.apz)
  store float %i.aqa, ptr %i.aij, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gi:                                            ; preds = %bb.gg
  %i.aqb = fcmp ult float %.055.i352.i.i.i.i.i.i.i, 1.000000e+00
  %i.aqc = fcmp ult float %.053.i354.i.i.i.i.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i.i.i.i.i = select i1 %i.aqb, i1 true, i1 %i.aqc
  br i1 %or.cond62.i357.i.i.i.i.i.i.i, label %bb.gj, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gj:                                            ; preds = %bb.gi
  %i.aqd = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aqe = load float, ptr %i.aqd, align 4
  %i.aqf = fsub float %.0.i355.i.i.i.i.i.i.i, %.054.i353.i.i.i.i.i.i.i
  %i.aqg = fmul float %i.aqf, %i.aqe
  %i.aqh = fadd float %.055.i352.i.i.i.i.i.i.i, %.053.i354.i.i.i.i.i.i.i
  %i.aqi = fmul float %i.aqh, 5.000000e-01
  %i.aqj = fsub float 1.000000e+00, %i.aqi
  %i.aqk = load float, ptr %i.aij, align 4
  %i.aql = call float @llvm.fmuladd.f32(float %i.aqg, float %i.aqj, float %i.aqk)
  store float %i.aql, ptr %i.aij, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gk:                                            ; preds = %bb.fb
  %i.aqm = fadd float %12, %11                    ; 34 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 16
  %i.aqo = load float, ptr %i.aqn, align 8        ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24 ; 16 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 28 ; 15 uses
  %i.aqr = load <2 x float>, ptr %i.aqp, align 8  ; 3 uses
  %i.aqs = extractelement <2 x float> %i.aqr, i64 0 ; 2 uses
  %i.aqt = fcmp ogt float %i.aqs, %i.aiz          ; 2 uses
  %i.aqu = fsub <2 x float> %i.aqr, %i.alk
  %16 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aqv = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.aqu, <2 x float> %i.aqv) ; 2 uses
  %i.aqx = extractelement <2 x float> %i.aqw, i64 0
  %.0305.i.i.i.i.i.i.i = select i1 %i.aqt, float %i.aqx, float %11 ; 7 uses
  %.0301.i.i.i.i.i.i.i = select i1 %i.aqt, float %i.aqs, float %i.aiz ; 3 uses
  %i.aqy = extractelement <2 x float> %i.aqr, i64 1 ; 2 uses
  %i.aqz = fcmp olt float %i.aqy, %i.aja          ; 2 uses
  %i.ara = extractelement <2 x float> %i.aqw, i64 1
  %.0303.i.i.i.i.i.i.i = select i1 %i.aqz, float %i.ara, float %i.aqm ; 7 uses
  %.0299.i.i.i.i.i.i.i = select i1 %i.aqz, float %i.aqy, float %i.aja ; 3 uses
  %i.arb = fcmp oge float %.0305.i.i.i.i.i.i.i, 0.000000e+00
  %i.arc = fcmp oge float %.0303.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.arb, i1 %i.arc, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.gl, label %bb.gr

bb.gl:                                            ; preds = %bb.gk
  %i.ard = fcmp olt float %.0305.i.i.i.i.i.i.i, %i.aiy
  %i.are = fcmp olt float %.0303.i.i.i.i.i.i.i, %i.aiy
  %or.cond338.i.i.i.i.i.i.i = select i1 %i.ard, i1 %i.are, i1 false
  br i1 %or.cond338.i.i.i.i.i.i.i, label %bb.gm, label %bb.gr

bb.gm:                                            ; preds = %bb.gl
  %i.arf = fptosi float %.0305.i.i.i.i.i.i.i to i32 ; 5 uses
  %i.arg = fptosi float %.0303.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.arh = icmp eq i32 %i.arf, %i.arg
  br i1 %i.arh, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.ari = fsub float %.0299.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.arj = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.ark = load float, ptr %i.arj, align 4
  %i.arl = fmul float %i.ari, %i.ark              ; 2 uses
  %i.arm = sitofp i32 %i.arf to float
  %i.arn = fadd float %i.arm, 1.000000e+00        ; 2 uses
  %i.aro = fsub float %i.arn, %.0305.i.i.i.i.i.i.i
  %i.arp = fsub float %i.arn, %.0303.i.i.i.i.i.i.i
  %i.arq = fadd float %i.aro, %i.arp
  %i.arr = fmul float %i.arq, 5.000000e-01
  %i.ars = fmul float %i.arr, %i.arl
  %i.art = zext nneg i32 %i.arf to i64            ; 2 uses
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.art ; 2 uses
  %i.arv = load float, ptr %i.aru, align 4
  %i.arw = fadd float %i.arv, %i.ars
  store float %i.arw, ptr %i.aru, align 4
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %i.art ; 2 uses
  %i.ary = load float, ptr %i.arx, align 4
  %i.arz = fadd float %i.arl, %i.ary
  store float %i.arz, ptr %i.arx, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.go:                                            ; preds = %bb.gm
  %i.asa = fcmp ogt float %.0305.i.i.i.i.i.i.i, %.0303.i.i.i.i.i.i.i
  br i1 %i.asa, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.asb = fsub float %i.aiz, %.0301.i.i.i.i.i.i.i
  %i.asc = fadd float %i.aja, %i.asb
  %i.asd = fsub float %i.aiz, %.0299.i.i.i.i.i.i.i
  %i.ase = fadd float %i.aja, %i.asd
  %i.asf = fneg float %i.aqo
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.pre-phi474.i.i.i.i.i.i.i = phi i32 [ %i.arf, %bb.gp ], [ %i.arg, %bb.go ] ; 7 uses
  %.pre-phi.i.i.i.i.i.i.i = phi i32 [ %i.arg, %bb.gp ], [ %i.arf, %bb.go ] ; 4 uses
  %.0307.i.i.i.i.i.i.i = phi float [ %i.aqm, %bb.gp ], [ %11, %bb.go ] ; 2 uses
  %.1306.i.i.i.i.i.i.i = phi float [ %.0303.i.i.i.i.i.i.i, %bb.gp ], [ %.0305.i.i.i.i.i.i.i, %bb.go ]
  %.1304.i.i.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i.i.i, %bb.gp ], [ %.0303.i.i.i.i.i.i.i, %bb.go ]
  %.1302.i.i.i.i.i.i.i = phi float [ %i.ase, %bb.gp ], [ %.0301.i.i.i.i.i.i.i, %bb.go ] ; 2 uses
  %.1300.i.i.i.i.i.i.i = phi float [ %i.asc, %bb.gp ], [ %.0299.i.i.i.i.i.i.i, %bb.go ] ; 2 uses
  %.0298.i.i.i.i.i.i.i = phi float [ %i.asf, %bb.gp ], [ %i.aqo, %bb.go ] ; 3 uses
  %i.asg = add nuw nsw i32 %.pre-phi.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ash = uitofp nneg i32 %i.asg to float        ; 2 uses
  %i.asi = fsub float %i.ash, %.0307.i.i.i.i.i.i.i
  %i.asj = call float @llvm.fmuladd.f32(float %.0298.i.i.i.i.i.i.i, float %i.asi, float %i.aiz) ; 2 uses
  %i.ask = uitofp nneg i32 %.pre-phi474.i.i.i.i.i.i.i to float ; 3 uses
  %i.asl = fsub float %i.ask, %.0307.i.i.i.i.i.i.i
  %i.asm = call float @llvm.fmuladd.f32(float %.0298.i.i.i.i.i.i.i, float %i.asl, float %i.aiz) ; 2 uses
  %i.asn = fcmp ogt float %i.asj, %i.aja
  %.0296.i.i.i.i.i.i.i = select i1 %i.asn, float %i.aja, float %i.asj ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.asp = load float, ptr %i.aso, align 4        ; 4 uses
  %i.asq = fsub float %.0296.i.i.i.i.i.i.i, %.1302.i.i.i.i.i.i.i
  %i.asr = fmul float %i.asp, %i.asq              ; 5 uses
  %i.ass = fsub nnan float %i.ash, %.1306.i.i.i.i.i.i.i
  %i.ast = fmul float %i.ass, %i.asr
  %i.asu = fmul float %i.ast, 5.000000e-01
  %i.asv = zext nneg i32 %.pre-phi.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.asv ; 2 uses
  %i.asx = load float, ptr %i.asw, align 4
  %i.asy = fadd float %i.asx, %i.asu
  store float %i.asy, ptr %i.asw, align 4
  %i.asz = fcmp ogt float %i.asm, %i.aja          ; 2 uses
  %i.ata = fsub float %i.aja, %.0296.i.i.i.i.i.i.i
  %i.atb = sub nsw i32 %.pre-phi474.i.i.i.i.i.i.i, %i.asg
  %i.atc = sitofp i32 %i.atb to float
  %i.atd = fdiv float %i.ata, %i.atc
  %.1.i.i.i.i.i.i.i = select i1 %i.asz, float %i.atd, float %.0298.i.i.i.i.i.i.i
  %.0295.i.i.i.i.i.i.i = select i1 %i.asz, float %i.aja, float %i.asm
  %i.ate = fmul float %i.asp, %.1.i.i.i.i.i.i.i   ; 4 uses
  %i.atf = icmp slt i32 %i.asg, %.pre-phi474.i.i.i.i.i.i.i
  br i1 %i.atf, label %.lr.ph467.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph467.i.i.i.i.i.i.i:                          ; preds = %bb.gq
  %i.atg = fmul float %i.ate, 5.000000e-01        ; 3 uses
  %i.ath = add nuw nsw i64 %i.asv, 1              ; 2 uses
  %i.ati = add nsw i32 %.pre-phi474.i.i.i.i.i.i.i, -2
  %i.atj = sub nsw i32 %.pre-phi.i.i.i.i.i.i.i, %.pre-phi474.i.i.i.i.i.i.i
  %i.atk = and i32 %i.atj, 1
  %lcmp.mod828.not.not = icmp eq i32 %i.atk, 0
  br i1 %lcmp.mod828.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i.i.i.i.i
  %i.atl = fadd float %i.atg, %i.asr
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.ath ; 2 uses
  %i.atn = load float, ptr %i.atm, align 4
  %i.ato = fadd float %i.atl, %i.atn
  store float %i.ato, ptr %i.atm, align 4
  %i.atp = fadd float %i.ate, %i.asr              ; 2 uses
  %indvars.iv.next472.i.i.i.i.i.i.i.prol = add nuw nsw i64 %i.asv, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i.i.i.i.i
  %indvars.iv471.i.i.i.i.i.i.i.unr = phi i64 [ %i.ath, %.lr.ph467.i.i.i.i.i.i.i ], [ %indvars.iv.next472.i.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.i.i.i.i.unr = phi float [ %i.asr, %.lr.ph467.i.i.i.i.i.i.i ], [ %i.atp, %.prol.loopexit.unr-lcssa ]
  %.lcssa746.unr = phi float [ poison, %.lr.ph467.i.i.i.i.i.i.i ], [ %i.atp, %.prol.loopexit.unr-lcssa ]
  %i.atq = icmp eq i32 %i.ati, %.pre-phi.i.i.i.i.i.i.i
  br i1 %i.atq, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph467.i.i.i.i.i.i.i.new

.lr.ph467.i.i.i.i.i.i.i.new:                      ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.i.i.i.i.new
  %indvars.iv471.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.i.i.i.i.1, %.lr.ph467.i.i.i.i.i.i.i.new ], [ %indvars.iv471.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i.i.i.i.i = phi float [ %i.aub, %.lr.ph467.i.i.i.i.i.i.i.new ], [ %.0294466.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.atr = fadd float %i.atg, %.0294466.i.i.i.i.i.i.i
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv471.i.i.i.i.i.i.i ; 2 uses
  %i.att = load float, ptr %i.ats, align 4
  %i.atu = fadd float %i.atr, %i.att
  store float %i.atu, ptr %i.ats, align 4
  %i.atv = fadd float %i.ate, %.0294466.i.i.i.i.i.i.i ; 2 uses
  %i.atw = fadd float %i.atg, %i.atv
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv471.i.i.i.i.i.i.i
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 4 ; 2 uses
  %i.atz = load float, ptr %i.aty, align 4
  %i.aua = fadd float %i.atw, %i.atz
  store float %i.aua, ptr %i.aty, align 4
  %i.aub = fadd float %i.ate, %i.atv              ; 2 uses
  %indvars.iv.next472.i.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv471.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.auc = trunc nuw i64 %indvars.iv.next472.i.i.i.i.i.i.i.1 to i32
  %i.aud = icmp sgt i32 %.pre-phi474.i.i.i.i.i.i.i, %i.auc
  br i1 %i.aud, label %.lr.ph467.i.i.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.i.i.i.i.new, %bb.gq
  %.0294.lcssa.i.i.i.i.i.i.i = phi float [ %i.asr, %bb.gq ], [ %.lcssa746.unr, %.prol.loopexit ], [ %i.aub, %.lr.ph467.i.i.i.i.i.i.i.new ]
  %i.aue = fsub float %.1300.i.i.i.i.i.i.i, %.0295.i.i.i.i.i.i.i
  %i.auf = fadd float %i.ask, 1.000000e+00        ; 2 uses
  %i.aug = fsub nnan float %i.auf, %i.ask
  %i.auh = fsub float %i.auf, %.1304.i.i.i.i.i.i.i
  %i.aui = fadd float %i.aug, %i.auh
  %i.auj = fmul float %i.aui, 5.000000e-01
  %i.auk = fmul float %i.auj, %i.aue
  %i.aul = call float @llvm.fmuladd.f32(float %i.asp, float %i.auk, float %.0294.lcssa.i.i.i.i.i.i.i)
  %i.aum = zext nneg i32 %.pre-phi474.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.aum ; 2 uses
  %i.auo = load float, ptr %i.aun, align 4
  %i.aup = fadd float %i.aul, %i.auo
  store float %i.aup, ptr %i.aun, align 4
  %i.auq = fsub float %.1300.i.i.i.i.i.i.i, %.1302.i.i.i.i.i.i.i
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %i.aum ; 2 uses
  %i.aus = load float, ptr %i.aur, align 4
  %i.aut = call float @llvm.fmuladd.f32(float %i.asp, float %i.auq, float %i.aus)
  store float %i.aut, ptr %i.aur, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gr:                                            ; preds = %bb.gl, %bb.gk
  br i1 %i.aix, label %.lr.ph.i.i94.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i.i:                           ; preds = %bb.gr
  %i.auu = fsub float %i.aqm, %11
  %i.auv = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20 ; 30 uses
  br label %bb.gs

bb.gs:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i.i, %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i.i, 1 ; 3 uses
  %i.auw = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i.i to i32
  %i.aux = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i.i to i32
  %i.auy = uitofp nneg i32 %i.auw to float        ; 60 uses
  %i.auz = uitofp nneg i32 %i.aux to float        ; 90 uses
  %i.ava = insertelement <2 x float> poison, float %i.auz, i64 0
  %i.avb = insertelement <2 x float> %i.ava, float %i.auy, i64 1
  %i.avc = fsub <2 x float> %i.avb, %i.aqv        ; 7 uses
  %i.avd = fdiv <2 x float> %i.avc, %16           ; 2 uses
  %i.ave = extractelement <2 x float> %i.avd, i64 0
  %i.avf = fadd float %i.ave, %i.aiz              ; 52 uses
  %i.avg = extractelement <2 x float> %i.avd, i64 1
  %i.avh = fadd float %i.avg, %i.aiz              ; 52 uses
  %i.avi = fcmp olt float %11, %i.auz             ; 2 uses
  %i.avj = fcmp ogt float %i.aqm, %i.auy          ; 2 uses
  %or.cond339.i.i.i.i.i.i.i = select i1 %i.avi, i1 %i.avj, i1 false
  br i1 %or.cond339.i.i.i.i.i.i.i, label %bb.gt, label %bb.hy

bb.gt:                                            ; preds = %bb.gs
  %i.avk = fcmp oeq float %i.avf, %i.aiz
  br i1 %i.avk, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.avl = load float, ptr %i.aqq, align 4        ; 4 uses
  %i.avm = fcmp olt float %i.avl, %i.aiz
  br i1 %i.avm, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.avn = load float, ptr %i.aqp, align 8        ; 4 uses
  %i.avo = fcmp olt float %i.avf, %i.avn
  br i1 %i.avo, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.avp = fcmp ogt float %i.avn, %i.aiz
  br i1 %i.avp, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.avq = fsub float %i.avn, %i.aiz
  %i.avr = extractelement <2 x float> %i.avc, i64 0
  %i.avs = fmul float %i.avr, %i.avq
  %i.avt = fsub float %i.avf, %i.aiz
  %i.avu = fdiv float %i.avs, %i.avt
  %i.avv = fadd float %11, %i.avu
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.055.i359.i.i.i.i.i.i.i = phi float [ %i.avv, %bb.gx ], [ %11, %bb.gw ] ; 4 uses
  %.054.i360.i.i.i.i.i.i.i = phi float [ %i.avn, %bb.gx ], [ %i.aiz, %bb.gw ] ; 3 uses
  %i.avw = fcmp ogt float %i.avf, %i.avl
  br i1 %i.avw, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.avx = fsub float %i.auz, %.055.i359.i.i.i.i.i.i.i
  %i.avy = fsub float %i.avl, %i.avf
  %i.avz = fmul float %i.avy, %i.avx
  %i.awa = fsub float %i.avf, %.054.i360.i.i.i.i.i.i.i
  %i.awb = fdiv float %i.avz, %i.awa
  %i.awc = fadd float %i.awb, %i.auz
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.053.i361.i.i.i.i.i.i.i = phi float [ %i.awc, %bb.gz ], [ %i.auz, %bb.gy ] ; 3 uses
  %.0.i362.i.i.i.i.i.i.i = phi float [ %i.avl, %bb.gz ], [ %i.avf, %bb.gy ] ; 2 uses
  %i.awd = fcmp ugt float %.055.i359.i.i.i.i.i.i.i, %i.auz
  %i.awe = fcmp ugt float %.053.i361.i.i.i.i.i.i.i, %i.auz
  %or.cond.i363.i.i.i.i.i.i.i = select i1 %i.awd, i1 true, i1 %i.awe
  br i1 %or.cond.i363.i.i.i.i.i.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.awf = load float, ptr %i.auv, align 4
  %i.awg = fsub float %.0.i362.i.i.i.i.i.i.i, %.054.i360.i.i.i.i.i.i.i
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.awi = load float, ptr %i.awh, align 4
  %i.awj = call float @llvm.fmuladd.f32(float %i.awf, float %i.awg, float %i.awi)
  store float %i.awj, ptr %i.awh, align 4
  br label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

bb.hc:                                            ; preds = %bb.ha
  %i.awk = fcmp ult float %.055.i359.i.i.i.i.i.i.i, %i.auy
  %i.awl = fcmp ult float %.053.i361.i.i.i.i.i.i.i, %i.auy
  %or.cond62.i364.i.i.i.i.i.i.i = select i1 %i.awk, i1 true, i1 %i.awl
  br i1 %or.cond62.i364.i.i.i.i.i.i.i, label %bb.hd, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hc
  %i.awm = load float, ptr %i.auv, align 4
  %i.awn = fsub float %.0.i362.i.i.i.i.i.i.i, %.054.i360.i.i.i.i.i.i.i
  %i.awo = fmul float %i.awn, %i.awm
  %i.awp = fsub float %.055.i359.i.i.i.i.i.i.i, %i.auz
  %i.awq = fsub float %.053.i361.i.i.i.i.i.i.i, %i.auz
  %i.awr = fadd float %i.awp, %i.awq
  %i.aws = fmul float %i.awr, 5.000000e-01
  %i.awt = fsub float 1.000000e+00, %i.aws
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.awv = load float, ptr %i.awu, align 4
  %i.aww = call float @llvm.fmuladd.f32(float %i.awo, float %i.awt, float %i.awv)
  store float %i.aww, ptr %i.awu, align 4
  br label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i: ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.gv, %bb.gu, %bb.gt
  %i.awx = fcmp oeq float %i.avf, %i.avh
  br i1 %i.awx, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i, label %bb.he

bb.he:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i
  %i.awy = load float, ptr %i.aqq, align 4        ; 4 uses
  %i.awz = fcmp ogt float %i.avf, %i.awy
  br i1 %i.awz, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.axa = load float, ptr %i.aqp, align 8        ; 4 uses
  %i.axb = fcmp olt float %i.avh, %i.axa
  br i1 %i.axb, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.axc = fcmp olt float %i.avf, %i.axa
  br i1 %i.axc, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.axd = fsub nnan float %i.auy, %i.auz
  %i.axe = fsub float %i.axa, %i.avf
  %i.axf = fmul float %i.axd, %i.axe
  %i.axg = fsub float %i.avh, %i.avf
  %i.axh = fdiv float %i.axf, %i.axg
  %i.axi = fadd float %i.axh, %i.auz
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.055.i366.i.i.i.i.i.i.i = phi float [ %i.axi, %bb.hh ], [ %i.auz, %bb.hg ] ; 4 uses
  %.054.i367.i.i.i.i.i.i.i = phi float [ %i.axa, %bb.hh ], [ %i.avf, %bb.hg ] ; 3 uses
  %i.axj = fcmp ogt float %i.avh, %i.awy
  br i1 %i.axj, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.axk = fsub float %i.auy, %.055.i366.i.i.i.i.i.i.i
  %i.axl = fsub float %i.awy, %i.avh
  %i.axm = fmul float %i.axl, %i.axk
  %i.axn = fsub float %i.avh, %.054.i367.i.i.i.i.i.i.i
  %i.axo = fdiv float %i.axm, %i.axn
  %i.axp = fadd float %i.axo, %i.auy
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.053.i368.i.i.i.i.i.i.i = phi float [ %i.axp, %bb.hj ], [ %i.auy, %bb.hi ] ; 3 uses
  %.0.i369.i.i.i.i.i.i.i = phi float [ %i.awy, %bb.hj ], [ %i.avh, %bb.hi ] ; 2 uses
  %i.axq = fcmp ugt float %.055.i366.i.i.i.i.i.i.i, %i.auz
  %i.axr = fcmp ugt float %.053.i368.i.i.i.i.i.i.i, %i.auz
  %or.cond.i370.i.i.i.i.i.i.i = select i1 %i.axq, i1 true, i1 %i.axr
  br i1 %or.cond.i370.i.i.i.i.i.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.axs = load float, ptr %i.auv, align 4
  %i.axt = fsub float %.0.i369.i.i.i.i.i.i.i, %.054.i367.i.i.i.i.i.i.i
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.axv = load float, ptr %i.axu, align 4
  %i.axw = call float @llvm.fmuladd.f32(float %i.axs, float %i.axt, float %i.axv)
  store float %i.axw, ptr %i.axu, align 4
  br label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.axx = fcmp ult float %.055.i366.i.i.i.i.i.i.i, %i.auy
  %i.axy = fcmp ult float %.053.i368.i.i.i.i.i.i.i, %i.auy
  %or.cond62.i371.i.i.i.i.i.i.i = select i1 %i.axx, i1 true, i1 %i.axy
  br i1 %or.cond62.i371.i.i.i.i.i.i.i, label %bb.hn, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

bb.hn:                                            ; preds = %bb.hm
  %i.axz = load float, ptr %i.auv, align 4
  %i.aya = fsub float %.0.i369.i.i.i.i.i.i.i, %.054.i367.i.i.i.i.i.i.i
  %i.ayb = fmul float %i.aya, %i.axz
  %i.ayc = fsub float %.055.i366.i.i.i.i.i.i.i, %i.auz
  %i.ayd = fsub float %.053.i368.i.i.i.i.i.i.i, %i.auz
  %i.aye = fadd float %i.ayc, %i.ayd
  %i.ayf = fmul float %i.aye, 5.000000e-01
  %i.ayg = fsub float 1.000000e+00, %i.ayf
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.ayi = load float, ptr %i.ayh, align 4
  %i.ayj = call float @llvm.fmuladd.f32(float %i.ayb, float %i.ayg, float %i.ayi)
  store float %i.ayj, ptr %i.ayh, align 4
  br label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i: ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hf, %bb.he, %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i
  %i.ayk = fcmp oeq float %i.avh, %i.aja
  br i1 %i.ayk, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.ho

bb.ho:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %i.ayl = load float, ptr %i.aqq, align 4        ; 4 uses
  %i.aym = fcmp ogt float %i.avh, %i.ayl
  br i1 %i.aym, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ayn = load float, ptr %i.aqp, align 8        ; 4 uses
  %i.ayo = fcmp olt float %i.aja, %i.ayn
  br i1 %i.ayo, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ayp = fcmp olt float %i.avh, %i.ayn
  br i1 %i.ayp, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.ayq = fsub float %i.aqm, %i.auy
  %i.ayr = fsub float %i.ayn, %i.avh
  %i.ays = fmul float %i.ayq, %i.ayr
  %i.ayt = fsub float %i.aja, %i.avh
  %i.ayu = fdiv float %i.ays, %i.ayt
  %i.ayv = fadd float %i.ayu, %i.auy
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.055.i373.i.i.i.i.i.i.i = phi float [ %i.ayv, %bb.hr ], [ %i.auy, %bb.hq ] ; 4 uses
  %.054.i374.i.i.i.i.i.i.i = phi float [ %i.ayn, %bb.hr ], [ %i.avh, %bb.hq ] ; 3 uses
  %i.ayw = fcmp ogt float %i.aja, %i.ayl
end_hunk_0
