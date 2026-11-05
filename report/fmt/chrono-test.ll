Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIcsSt5ratioILl1ELl100EEEEEEPKT_SA_SA_OT0_:bb.a
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hn) #30
  br label %bb.bo

_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.loopexit: ; preds = %.lr.ph295, %._crit_edge.i.i.i165, %bb.w
  %.sink360 = phi i64 [ %.pre.i.i.i155, %bb.w ], [ %i.ci, %._crit_edge.i.i.i165 ], [ %i.ci, %.lr.ph295 ]
  %i.hp = load ptr, ptr %.sroa.01.0.copyload.i152, align 8, !tbaa !338
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.sink360
  %i.hr = load i8, ptr %.1, align 1, !tbaa !232
  store i8 %i.hr, ptr %i.hq, align 1, !tbaa !232
  %.pre37.i.i.i164 = load i64, ptr %i.ca, align 8, !tbaa !354
  %i.hs = add i64 %.pre37.i.i.i164, 1
  store i64 %i.hs, ptr %i.ca, align 8, !tbaa !354
  br label %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167

_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167: ; preds = %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.loopexit, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit183, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit199, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE15on_24_hour_timeEv.exit, %bb.ah, %bb.ai, %bb.aj, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE16on_duration_unitEv.exit, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.g
  %.1136 = phi ptr [ %i.hh, %bb.ba ], [ %.0135234, %bb.g ], [ %i.hh, %bb.ba ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit183 ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit199 ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.z ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.aa ], [ %i.by, %bb.ab ], [ %i.by, %bb.ac ], [ %i.by, %bb.ad ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.ae ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE15on_24_hour_timeEv.exit ], [ %i.by, %bb.ah ], [ %i.by, %bb.ai ], [ %i.by, %bb.aj ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE16on_duration_unitEv.exit ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.bb ], [ %i.hh, %bb.bc ], [ %i.hh, %bb.bd ], [ %i.hh, %bb.be ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.loopexit ] ; 2 uses
  %.3 = phi ptr [ %i.hh, %bb.ba ], [ %i.k, %bb.g ], [ %i.hh, %bb.ba ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit183 ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit199 ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.z ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.aa ], [ %i.by, %bb.ab ], [ %i.by, %bb.ac ], [ %i.by, %bb.ad ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.ae ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE15on_24_hour_timeEv.exit ], [ %i.by, %bb.ah ], [ %i.by, %bb.ai ], [ %i.by, %bb.aj ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE16on_duration_unitEv.exit ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.by, %bb.v ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.ha, %bb.as ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.ba ], [ %i.hh, %bb.bb ], [ %i.hh, %bb.bc ], [ %i.hh, %bb.bd ], [ %i.hh, %bb.be ], [ %i.by, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.loopexit ] ; 3 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.thread, label %bb.f

_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.thread: ; preds = %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167, %bb.f
  %.0135.lcssa.ph = phi ptr [ %.1136, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167 ], [ %.0135234, %bb.f ] ; 2 uses
  %.0129.lcssa.ph = phi ptr [ %.3, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167 ], [ %.0129235, %bb.f ] ; 5 uses
  %.not149 = icmp eq ptr %.0135.lcssa.ph, %.0129.lcssa.ph
  br i1 %.not149, label %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit215, label %.lr.ph34.i.i.i202

.lr.ph34.i.i.i202:                                ; preds = %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.thread
  %.sroa.01.0.copyload.i200 = load ptr, ptr %2, align 8, !tbaa !351 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i200, i64 8 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i200, i64 16 ; 2 uses
  %i.hv = ptrtoint ptr %.0129.lcssa.ph to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i200, i64 24
  %.pre.i.i.i203 = load i64, ptr %i.ht, align 8, !tbaa !354
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i.i.i213, %.lr.ph34.i.i.i202
  %i.hx = phi i64 [ %.pre.i.i.i203, %.lr.ph34.i.i.i202 ], [ %i.je, %._crit_edge.i.i.i213 ] ; 3 uses
  %.02732.i.i.i204 = phi ptr [ %.0135.lcssa.ph, %.lr.ph34.i.i.i202 ], [ %i.jf, %._crit_edge.i.i.i213 ] ; 9 uses
  %i.hy = load i64, ptr %i.hu, align 8, !tbaa !339
  %i.hz = sub i64 %i.hy, %i.hx
  %i.ia = ptrtoint ptr %.02732.i.i.i204 to i64    ; 2 uses
  %i.ib = sub i64 %i.hv, %i.ia                    ; 4 uses
  %i.ic = icmp ult i64 %i.hz, %i.ib
  br i1 %i.ic, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.id = load ptr, ptr %i.hw, align 8, !tbaa !260
  %i.ie = add i64 %i.ib, %i.hx
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i200, i64 noundef %i.ie), !inline_history !6210
  %i.if = load i64, ptr %i.ht, align 8, !tbaa !354 ; 2 uses
  %i.ig = load i64, ptr %i.hu, align 8, !tbaa !339
  %i.ih = sub i64 %i.ig, %i.if
  %i.ii = call i64 @llvm.umin.i64(i64 %i.ib, i64 %i.ih)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.026.i.i.i205 = phi i64 [ %i.if, %bb.bm ], [ %i.hx, %bb.bl ] ; 3 uses
  %.025.i.i.i206 = phi i64 [ %i.ii, %bb.bm ], [ %i.ib, %bb.bl ] ; 13 uses
  %i.ij = load ptr, ptr %.sroa.01.0.copyload.i200, align 8, !tbaa !338 ; 2 uses
  %i.ik = ptrtoaddr ptr %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.026.i.i.i205 ; 7 uses
  %.not36.i.i.i207 = icmp eq i64 %.025.i.i.i206, 0
  br i1 %.not36.i.i.i207, label %._crit_edge.i.i.i213, label %iter.check346

iter.check346:                                    ; preds = %bb.bn
  %min.iters.check332 = icmp ult i64 %.025.i.i.i206, 4
  br i1 %min.iters.check332, label %.lr.ph.i.i.i208.preheader, label %vector.memcheck333

vector.memcheck333:                               ; preds = %iter.check346
  %i.im = add i64 %.026.i.i.i205, %i.ik
  %i.in = sub i64 %i.ia, %i.im
  %diff.check334 = icmp ugt i64 %i.in, -32
  br i1 %diff.check334, label %.lr.ph.i.i.i208.preheader, label %vector.main.loop.iter.check335

vector.main.loop.iter.check335:                   ; preds = %vector.memcheck333
  %min.iters.check336 = icmp ult i64 %.025.i.i.i206, 32
  br i1 %min.iters.check336, label %vec.epilog.ph350, label %vector.ph337

vector.ph337:                                     ; preds = %vector.main.loop.iter.check335
  %i.io = and i64 %.025.i.i.i206, 28
  %n.vec338 = and i64 %.025.i.i.i206, -32         ; 4 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.ph337, %vector.body339
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next343, %vector.body339 ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %index340 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load341 = load <16 x i8>, ptr %i.ip, align 1, !tbaa !232
  %wide.load342 = load <16 x i8>, ptr %i.iq, align 1, !tbaa !232
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 %index340 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store <16 x i8> %wide.load341, ptr %i.ir, align 1, !tbaa !232
  store <16 x i8> %wide.load342, ptr %i.is, align 1, !tbaa !232
  %index.next343 = add nuw i64 %index340, 32      ; 2 uses
  %i.it = icmp eq i64 %index.next343, %n.vec338
  br i1 %i.it, label %middle.block344, label %vector.body339, !llvm.loop !6223

middle.block344:                                  ; preds = %vector.body339
  %cmp.n345 = icmp eq i64 %.025.i.i.i206, %n.vec338
  br i1 %cmp.n345, label %._crit_edge.loopexit.i.i.i211, label %vec.epilog.iter.check347

vec.epilog.iter.check347:                         ; preds = %middle.block344
  %min.epilog.iters.check349 = icmp eq i64 %i.io, 0
  br i1 %min.epilog.iters.check349, label %.lr.ph.i.i.i208.preheader, label %vec.epilog.ph350, !prof !327

vec.epilog.ph350:                                 ; preds = %vector.main.loop.iter.check335, %vec.epilog.iter.check347
  %vec.epilog.resume.val351 = phi i64 [ %n.vec338, %vec.epilog.iter.check347 ], [ 0, %vector.main.loop.iter.check335 ]
  %n.vec352 = and i64 %.025.i.i.i206, -4          ; 3 uses
  br label %vec.epilog.vector.body353

vec.epilog.vector.body353:                        ; preds = %vec.epilog.vector.body353, %vec.epilog.ph350
  %index354 = phi i64 [ %vec.epilog.resume.val351, %vec.epilog.ph350 ], [ %index.next356, %vec.epilog.vector.body353 ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %index354
  %wide.load355 = load <4 x i8>, ptr %i.iu, align 1, !tbaa !232
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 %index354
  store <4 x i8> %wide.load355, ptr %i.iv, align 1, !tbaa !232
  %index.next356 = add nuw i64 %index354, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next356, %n.vec352
  br i1 %i.iw, label %vec.epilog.middle.block357, label %vec.epilog.vector.body353, !llvm.loop !6224

vec.epilog.middle.block357:                       ; preds = %vec.epilog.vector.body353
  %cmp.n358 = icmp eq i64 %.025.i.i.i206, %n.vec352
  br i1 %cmp.n358, label %._crit_edge.loopexit.i.i.i211, label %.lr.ph.i.i.i208.preheader

.lr.ph.i.i.i208.preheader:                        ; preds = %iter.check346, %vector.memcheck333, %vec.epilog.iter.check347, %vec.epilog.middle.block357
  %.030.i.i.i209.ph = phi i64 [ 0, %iter.check346 ], [ 0, %vector.memcheck333 ], [ %n.vec338, %vec.epilog.iter.check347 ], [ %n.vec352, %vec.epilog.middle.block357 ] ; 3 uses
  %xtraiter363 = and i64 %.025.i.i.i206, 3        ; 2 uses
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %.lr.ph.i.i.i208.prol.loopexit, label %.lr.ph.i.i.i208.prol

.lr.ph.i.i.i208.prol:                             ; preds = %.lr.ph.i.i.i208.preheader, %.lr.ph.i.i.i208.prol
  %.030.i.i.i209.prol = phi i64 [ %i.ja, %.lr.ph.i.i.i208.prol ], [ %.030.i.i.i209.ph, %.lr.ph.i.i.i208.preheader ] ; 3 uses
  %prol.iter365 = phi i64 [ %prol.iter365.next, %.lr.ph.i.i.i208.prol ], [ 0, %.lr.ph.i.i.i208.preheader ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %.030.i.i.i209.prol
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !232
  %i.iz = getelementptr inbounds nuw i8, ptr %i.il, i64 %.030.i.i.i209.prol
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !232
  %i.ja = add nuw i64 %.030.i.i.i209.prol, 1      ; 2 uses
  %prol.iter365.next = add i64 %prol.iter365, 1   ; 2 uses
  %prol.iter365.cmp.not = icmp eq i64 %prol.iter365.next, %xtraiter363
  br i1 %prol.iter365.cmp.not, label %.lr.ph.i.i.i208.prol.loopexit, label %.lr.ph.i.i.i208.prol, !llvm.loop !6225

.lr.ph.i.i.i208.prol.loopexit:                    ; preds = %.lr.ph.i.i.i208.prol, %.lr.ph.i.i.i208.preheader
  %.030.i.i.i209.unr = phi i64 [ %.030.i.i.i209.ph, %.lr.ph.i.i.i208.preheader ], [ %i.ja, %.lr.ph.i.i.i208.prol ]
  %i.jb = sub i64 %.030.i.i.i209.ph, %.025.i.i.i206
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %._crit_edge.loopexit.i.i.i211, label %.lr.ph.i.i.i208

._crit_edge.loopexit.i.i.i211:                    ; preds = %.lr.ph.i.i.i208.prol.loopexit, %.lr.ph.i.i.i208, %vec.epilog.middle.block357, %middle.block344
  %.pre37.i.i.i212 = load i64, ptr %i.ht, align 8, !tbaa !354
  br label %._crit_edge.i.i.i213

._crit_edge.i.i.i213:                             ; preds = %._crit_edge.loopexit.i.i.i211, %bb.bn
  %i.jd = phi i64 [ %.pre37.i.i.i212, %._crit_edge.loopexit.i.i.i211 ], [ %.026.i.i.i205, %bb.bn ]
  %i.je = add i64 %i.jd, %.025.i.i.i206           ; 2 uses
  store i64 %i.je, ptr %i.ht, align 8, !tbaa !354
  %i.jf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %.025.i.i.i206 ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %i.jf, %.0129.lcssa.ph
  br i1 %.not.i.i.i214, label %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit215, label %bb.bl, !llvm.loop !5

.lr.ph.i.i.i208:                                  ; preds = %.lr.ph.i.i.i208.prol.loopexit, %.lr.ph.i.i.i208
  %.030.i.i.i209 = phi i64 [ %i.jv, %.lr.ph.i.i.i208 ], [ %.030.i.i.i209.unr, %.lr.ph.i.i.i208.prol.loopexit ] ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %.030.i.i.i209
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !232
  %i.ji = getelementptr inbounds nuw i8, ptr %i.il, i64 %.030.i.i.i209
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !232
  %i.jj = add nuw i64 %.030.i.i.i209, 1           ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !232
  %i.jm = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jj
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !232
  %i.jn = add nuw i64 %.030.i.i.i209, 2           ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !232
  %i.jq = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jn
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !232
  %i.jr = add nuw i64 %.030.i.i.i209, 3           ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !232
  %i.ju = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jr
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !232
  %i.jv = add nuw i64 %.030.i.i.i209, 4           ; 2 uses
  %exitcond.not.i.i.i210.3 = icmp eq i64 %i.jv, %.025.i.i.i206
  br i1 %exitcond.not.i.i.i210.3, label %._crit_edge.loopexit.i.i.i211, label %.lr.ph.i.i.i208, !llvm.loop !6226

_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit215: ; preds = %._crit_edge.i.i.i213, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.thread, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129.lcssa.ph, %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE7on_textEPKcS7_.exit167.thread ], [ %.0129.lcssa.ph, %._crit_edge.i.i.i213 ]
  ret ptr %.0134

bb.bo:                                            ; preds = %bb.n, %bb.u, %bb.ar, %bb.av, %bb.az, %bb.bh, %bb.bk, %bb.e
  %.pn150 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.br, %bb.n ], [ %i.bx, %bb.u ], [ %i.ho, %bb.bk ], [ %i.gz, %bb.ar ], [ %i.hd, %bb.av ], [ %i.hg, %bb.az ], [ %i.hm, %bb.bh ]
  resume { ptr, i32 } %.pn150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEsTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i16 noundef signext %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp slt i16 %1, 0                       ; 2 uses
  %i.b = tail call i16 @llvm.abs.i16(i16 %1, i1 false) ; 4 uses
  %spec.select = zext i16 %i.b to i32             ; 3 uses
  %i.c = or i32 %spec.select, 1
  %i.d = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.e = xor i32 %i.d, 31
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !255
  %i.i = zext i16 %i.b to i64
  %i.j = add i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc nuw i64 %i.k to i32                ; 3 uses
  %.lobit = lshr i16 %1, 15
  %i.m = zext nneg i16 %.lobit to i64
  %i.n = ashr i64 %i.j, 32
  %i.o = add nsw i64 %i.n, %i.m                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.o, %i.q                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339  ; 2 uses
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r), !inline_history !15
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 3 uses
  %.pre14.i = load i64, ptr %i.s, align 8, !tbaa !339 ; 3 uses
  %.pre15.i = add i64 %.pre.i, %i.o               ; 2 uses
  %i.x = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.x, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.y = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.t, %bb.a ]
  %i.z = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.q, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.r, %bb.a ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.p, align 8, !tbaa !354
  %i.aa = load ptr, ptr %0, align 8, !tbaa !338   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 45, ptr %i.ab, align 1, !tbaa !232
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.020 = phi ptr [ %i.ac, %bb.c ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ad = icmp ugt i16 %i.b, 99
  br i1 %i.ad, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %2 = zext i16 %i.b to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi i64 [ %i.am, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ] ; 2 uses
  %.02021.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.l, %.lr.ph.i.preheader ]
  %i.ae = add i32 %.02021.i, -2                   ; 3 uses
  %i.af = mul nuw nsw i64 %.022.i, 5497558139     ; 2 uses
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ag
  %i.ai = lshr i64 %i.af, 31
  %i.aj = and i64 %i.ai, 254
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  store i16 %i.al, ptr %i.ah, align 1
  %i.am = lshr i64 %i.af, 39                      ; 2 uses
  %i.an = icmp samesign ugt i64 %.022.i, 9999
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !29

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %3 = trunc nuw nsw i64 %i.am to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %.020.lcssa.i = phi i32 [ %i.l, %bb.d ], [ %i.ae, %._crit_edge.i.loopexit ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %spec.select, %bb.d ], [ %3, %._crit_edge.i.loopexit ] ; 3 uses
  %i.ao = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ap = add i32 %.020.lcssa.i, -2
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.020, i64 %i.aq
  %i.as = shl nuw nsw i32 %.0.lcssa.i, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  store i16 %i.av, ptr %i.ar, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.aw = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = add i32 %.020.lcssa.i, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.020, i64 %i.az
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !232
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.bb = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.y, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit ]
  %i.bc = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %.pre-phi19.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit ] ; 2 uses
  br i1 %i.a, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = icmp ugt i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !260
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bd), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.g, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.bd, %bb.g ], [ %.pre2.i.i, %bb.h ]
  %i.bh = phi i64 [ %i.bc, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.bi = load ptr, ptr %0, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 45, ptr %i.bj, align 1, !tbaa !232
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.bk = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %0, i32 noundef %spec.select, i32 noundef %i.l)
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.e, %bb.f, %bb.i
  %.sroa.018.1 = phi ptr [ %i.bk, %bb.i ], [ %0, %bb.f ], [ %0, %bb.e ]
  ret ptr %.sroa.018.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !290
  %i.d = udiv i32 %i.c, 3600
  %i.e = urem i32 %i.d, 24
  %i.f = trunc nuw nsw i32 %i.e to i16
  tail call void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE5writeEsiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !290
  %i.i = udiv i32 %i.h, 3600
  %i.j = urem i32 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !290
  %i.d = udiv i32 %i.c, 3600
  %i.e = urem i32 %i.d, 12                        ; 2 uses
  %i.f = trunc nuw nsw i32 %i.e to i16
  %i.g = icmp eq i32 %i.e, 0
  %i.h = select i1 %i.g, i16 12, i16 %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE5writeEsiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !290
  %i.k = udiv i32 %i.j, 3600
  %i.l = urem i32 %i.k, 12                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = select i1 %i.m, i32 12, i32 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !290
  %i.d = udiv i32 %i.c, 60
  %i.e = urem i32 %i.d, 60
  %i.f = trunc nuw nsw i32 %i.e to i16
  tail call void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE5writeEsiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !290
  %i.i = udiv i32 %i.h, 60
  %i.j = urem i32 %i.i, 60
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE11on_iso_timeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !290
  %i.c = udiv i32 %i.b, 3600
  %i.d = urem i32 %i.c, 24
  %i.e = trunc nuw nsw i32 %i.d to i16
  tail call void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE5writeEsiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %i.e, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !354  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !339
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE15on_24_hour_timeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !260
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i1.i, i64 noundef %i.h), !inline_history !143
  %.pre.i.i3.i = load i64, ptr %i.f, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i4.i = add i64 %.pre.i.i3.i, 1
  br label %_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE15on_24_hour_timeEv.exit

_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE15on_24_hour_timeEv.exit: ; preds = %bb.a, %bb.b
  %.pre-phi.i.i2.i = phi i64 [ %i.h, %bb.a ], [ %.pre2.i.i4.i, %bb.b ]
  %i.n = phi i64 [ %i.g, %bb.a ], [ %.pre.i.i3.i, %bb.b ]
  %i.o = load ptr, ptr %.sroa.0.0.copyload.i1.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i2.i, ptr %i.f, align 8, !tbaa !354
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 58, ptr %i.p, align 1, !tbaa !232
  %i.q = load i32, ptr %i.a, align 4, !tbaa !290
  %i.r = udiv i32 %i.q, 60
  %i.s = urem i32 %i.r, 60
  %i.t = trunc nuw nsw i32 %i.s to i16
  tail call void @_ZN3fmt3v126detail18duration_formatterIcsSt5ratioILl1ELl100EEE5writeEsiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %i.t, i32 noundef 2, i32 noundef 0)
end_hunk_0
