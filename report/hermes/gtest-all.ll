Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/gtest-all?download=true
inline.NumInlined: 6243
inline.NumDeleted: 1690
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorImSaImEES6_:bb.a

.noexc92:                                         ; preds = %bb.c
  store ptr %i.r, ptr %4, align 8, !tbaa !293
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !296
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !297
  %i.u = getelementptr i8, ptr %i.r, i64 8        ; 3 uses
  %i.v = icmp eq ptr %i.i, %i.j
  br i1 %i.v, label %bb.d, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc92
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.m, i1 false), !tbaa !297
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  br label %bb.d

bb.d:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc92, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.u, %.noexc92 ], [ %i.w, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !299
  %i.y = add nsw i64 %i.g, 1                      ; 6 uses
  %i.z = icmp ugt i64 %i.y, 384307168202282325
  br i1 %i.z, label %bb.e, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #56
          to label %.noexc94 unwind label %bb.s

.noexc94:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i93 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i93, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.aa = mul nuw nsw i64 %i.y, 24
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #57
          to label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.s

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ac = phi ptr [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ab, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i ] ; 14 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !300
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !303
  %i.ag = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.ac, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.h unwind label %bb.f       ; 3 uses

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.idx = mul nuw nsw i64 %i.y, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.idx) #54
  br label %.body

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !304
  %i.ai = load ptr, ptr %4, align 8, !tbaa !293   ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !296
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #54
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.ap = load ptr, ptr %1, align 8, !tbaa !292
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !289 ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !292   ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, 1                    ; 4 uses
  %i.bb = icmp ugt i64 %i.ba, 2305843009213693951
  br i1 %i.bb, label %bb.j, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #56
          to label %.noexc99 unwind label %bb.u

.noexc99:                                         ; preds = %bb.j
  unreachable

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.not.i.i.i.i97 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i97, label %_ZNSt12_Vector_baseIN7testing8internal13edit_distance8EditTypeESaIS3_EEC2EmRKS4_.exit.thread.i, label %bb.k

_ZNSt12_Vector_baseIN7testing8internal13edit_distance8EditTypeESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.bc = shl nuw nsw i64 %i.ba, 2
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #57
          to label %.noexc100 unwind label %bb.u  ; 4 uses

.noexc100:                                        ; preds = %bb.k
  store ptr %i.bd, ptr %6, align 8, !tbaa !305
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !307
  store i32 0, ptr %i.bd, align 4, !tbaa !308
  %i.bg = getelementptr i8, ptr %i.bd, i64 4      ; 3 uses
  %i.bh = icmp eq ptr %i.au, %i.av
  br i1 %i.bh, label %bb.l, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc100
  %.idx.i.i.i.i.i.i.i = ashr exact i64 %i.ay, 1   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !308
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc100, %_ZNSt12_Vector_baseIN7testing8internal13edit_distance8EditTypeESaIS3_EEC2EmRKS4_.exit.thread.i
  %.0.i.i.i.i.i98 = phi ptr [ null, %_ZNSt12_Vector_baseIN7testing8internal13edit_distance8EditTypeESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.bg, %.noexc100 ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i98, ptr %i.bj, align 8, !tbaa !310
  %i.bk = add nsw i64 %i.at, 1                    ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, 384307168202282325
  br i1 %i.bl, label %bb.m, label %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #56
          to label %.noexc103 unwind label %bb.v

.noexc103:                                        ; preds = %bb.m
  unreachable

_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.l
  %.not.i.i.i.i101 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i101, label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.bm = mul nuw nsw i64 %i.bk, 24
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #57
          to label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i unwind label %bb.v

_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.pre175 = phi ptr [ null, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %i.bn, %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 12 uses
  store ptr %.pre175, ptr %5, align 8, !tbaa !311
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %.pre175, i64 %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !314
  %i.br = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEmS6_ET_S8_T0_RKT1_(ptr noundef %.pre175, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %.pre175, null
  br i1 %.not.i.i.i102, label %.body105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.idx203 = mul nuw nsw i64 %i.bk, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pre175, i64 noundef %.idx203) #54
  br label %.body105

bb.p:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !315
  %i.bt = load ptr, ptr %6, align 8, !tbaa !305   ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !307
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #54
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  %.not = icmp eq ptr %i.ag, %i.ac
  br i1 %.not, label %.preheader133, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit
  %i.bz = ptrtoint ptr %i.ag to i64
  %i.ca = ptrtoint ptr %i.ac to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = sdiv exact i64 %i.cb, 24                ; 3 uses
  %xtraiter = and i64 %i.cc, 1
  %7 = icmp eq i64 %i.cb, 24
  br i1 %7, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cc, -2
  br label %bb.x

.preheader133.loopexit.unr-lcssa:                 ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader133, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader133.loopexit.unr-lcssa, %.lr.ph
  %.080141.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dz, %.preheader133.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod233 = trunc i64 %i.cc to i1
  call void @llvm.assume(i1 %lcmp.mod233)
  %i.cd = uitofp i64 %.080141.epil.init to double
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.080141.epil.init
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !293
  store double %i.cd, ptr %i.cf, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.pre175, i64 %.080141.epil.init
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !305
  store i32 2, ptr %i.ch, align 4, !tbaa !308
  br label %.preheader133

.preheader133:                                    ; preds = %.epil.preheader, %.preheader133.loopexit.unr-lcssa, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !299
  %i.ck = load ptr, ptr %i.ac, align 8, !tbaa !293 ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = ashr exact i64 %i.cn, 3                 ; 3 uses
  %i.cp = icmp ugt i64 %i.co, 1
  br i1 %i.cp, label %.lr.ph143, label %.preheader132

.lr.ph143:                                        ; preds = %.preheader133
  %i.cq = load ptr, ptr %.pre175, align 8, !tbaa !305 ; 2 uses
  %i.cr = add nsw i64 %i.co, -1                   ; 3 uses
  %min.iters.check = icmp eq i64 %i.cn, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph143
  %n.vec = and i64 %i.cr, -2                      ; 2 uses
  %i.cs = or i64 %i.cr, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ct = or disjoint i64 %index, 1               ; 2 uses
  %i.cu = uitofp <2 x i64> %vec.ind to <2 x double>
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ct
  store <2 x double> %i.cu, ptr %i.cv, align 8, !tbaa !297
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ct
  store <2 x i32> splat (i32 1), ptr %i.cw, align 4, !tbaa !308
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.preheader132, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph143, %middle.block
  %.079142.ph = phi i64 [ 1, %.lr.ph143 ], [ %i.cs, %middle.block ]
  br label %scalar.ph

bb.r:                                             ; preds = %bb.c, %bb.b
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit109

bb.s:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %bb.e
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.cz, %bb.s ], [ %i.ah, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !293   ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIdSaIdEED2Ev.exit109, label %bb.t

bb.t:                                             ; preds = %.body
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !296
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #54
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit109

_ZNSt6vectorIdSaIdEED2Ev.exit109:                 ; preds = %bb.t, %.body, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.r ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %bb.at

bb.u:                                             ; preds = %bb.k, %bb.j
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111

bb.v:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.body105:                                         ; preds = %bb.n, %bb.o, %bb.v
  %eh.lpad-body106 = phi { ptr, i32 } [ %i.dh, %bb.v ], [ %i.bs, %bb.o ], [ %i.bs, %bb.n ] ; 2 uses
  %i.di = load ptr, ptr %6, align 8, !tbaa !305   ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111, label %bb.w

bb.w:                                             ; preds = %.body105
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !307
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #54
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111: ; preds = %bb.w, %.body105, %bb.u
  %.pn84 = phi { ptr, i32 } [ %i.dg, %bb.u ], [ %eh.lpad-body106, %.body105 ], [ %eh.lpad-body106, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %bb.as

bb.x:                                             ; preds = %bb.x, %.lr.ph.new
  %.080141 = phi i64 [ 0, %.lr.ph.new ], [ %i.dz, %bb.x ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.x ]
  %i.do = uitofp i64 %.080141 to double
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.080141
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !293
  store double %i.do, ptr %i.dq, align 8, !tbaa !297
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %.pre175, i64 %.080141
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !305
  store i32 2, ptr %i.ds, align 4, !tbaa !308
  %i.dt = or disjoint i64 %.080141, 1             ; 3 uses
  %i.du = uitofp i64 %i.dt to double
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.dt
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !293
  store double %i.du, ptr %i.dw, align 8, !tbaa !297
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %.pre175, i64 %i.dt
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !305
  store i32 2, ptr %i.dy, align 4, !tbaa !308
  %i.dz = add nuw i64 %.080141, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader133.loopexit.unr-lcssa, label %bb.x, !llvm.loop !319

.preheader132:                                    ; preds = %scalar.ph, %middle.block, %.preheader133
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !289 ; 3 uses
  %i.eb = load ptr, ptr %1, align 8, !tbaa !292   ; 4 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 2 uses
  %.not158 = icmp eq ptr %i.ea, %i.eb
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !289 ; 4 uses
  %.pre173 = load ptr, ptr %2, align 8, !tbaa !292 ; 5 uses
  %.not159 = icmp eq ptr %.pre, %.pre173
  %or.cond216 = select i1 %.not158, i1 true, i1 %.not159
  br i1 %or.cond216, label %._crit_edge147.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader132
  %i.eg = ptrtoint ptr %.pre to i64
  %i.eh = ptrtoint ptr %.pre173 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 3
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.079142 = phi i64 [ %i.en, %scalar.ph ], [ %.079142.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ek = uitofp i64 %.079142 to double
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.079142
  store double %i.ek, ptr %i.el, align 8, !tbaa !297
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.079142
  store i32 1, ptr %i.em, align 4, !tbaa !308
  %i.en = add nuw i64 %.079142, 1                 ; 2 uses
  %exitcond168.not = icmp eq i64 %i.en, %i.co
  br i1 %exitcond168.not, label %.preheader132, label %scalar.ph, !llvm.loop !320

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.078146 = phi i64 [ %i.eq, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.078146
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !15
  %i.eq = add nuw i64 %.078146, 1                 ; 4 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.078146 ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %.pre175, i64 %i.eq
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !305
  br label %bb.y

._crit_edge147.split:                             ; preds = %._crit_edge, %.preheader132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ev = icmp ne ptr %i.ea, %i.eb
  %i.ew = icmp ne ptr %.pre, %.pre173
  %i.ex = select i1 %i.ev, i1 true, i1 %i.ew
  br i1 %i.ex, label %.lr.ph155, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph155:                                        ; preds = %._crit_edge147.split
  %i.ey = ptrtoint ptr %.pre173 to i64
  %i.ez = ptrtoint ptr %.pre to i64
  %i.fa = sub i64 %i.ez, %i.ey
  %i.fb = ashr exact i64 %i.fa, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.af
  %exitcond172.not = icmp eq i64 %i.eq, %i.ef
  br i1 %exitcond172.not, label %._crit_edge147.split, label %.preheader, !llvm.loop !321

end_hunk_0
