Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 906
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 287
begin_hunk_0_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.adv = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !23
  %i.adx = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.adu
  store i8 %i.adw, ptr %i.adx, align 1, !tbaa !23
  %i.ady = add nuw nsw i64 %.026.i.i75.i.i, 4     ; 2 uses
  %exitcond.not.i.i76.i.i.3 = icmp eq i64 %i.ady, %i.acr
  br i1 %exitcond.not.i.i76.i.i.3, label %.loopexit.loopexit.i77.i.i, label %.lr.ph.i.i74.i.i, !llvm.loop !435

.loopexit.loopexit.i77.i.i:                       ; preds = %.lr.ph.i.i74.i.i.prol.loopexit, %.lr.ph.i.i74.i.i, %vec.epilog.middle.block4189, %middle.block4176
  %.pre33.pre.i78.i.i = load i32, ptr %i.aca, align 8, !tbaa !67
  br label %.loopexit.i79.i.i

.loopexit.i79.i.i:                                ; preds = %.loopexit.loopexit.i77.i.i, %bb.de, %bb.dc
  %.pre33.i80.i.i = phi i32 [ %i.acb, %bb.dc ], [ %i.acb, %bb.de ], [ %.pre33.pre.i78.i.i, %.loopexit.loopexit.i77.i.i ]
  %.018.i.ph.i81.i.i = phi ptr [ %i.acm, %bb.dc ], [ %i.acq, %bb.de ], [ %i.acq, %.loopexit.loopexit.i77.i.i ] ; 2 uses
  store ptr %.018.i.ph.i81.i.i, ptr %i.abz, align 8, !tbaa !68
  store i32 %spec.select.i71.i.i, ptr %i.acc, align 4, !tbaa !120
  br label %bb.df

bb.df:                                            ; preds = %.loopexit.i79.i.i, %bb.cz
  %i.adz = phi i32 [ %.pre33.i80.i.i, %.loopexit.i79.i.i ], [ %i.acb, %bb.cz ] ; 2 uses
  %i.aea = phi ptr [ %.018.i.ph.i81.i.i, %.loopexit.i79.i.i ], [ %.pre.i69.i.i, %bb.cz ]
  %i.aeb = add i32 %i.adz, 1
  store i32 %i.aeb, ptr %i.aca, align 8, !tbaa !67
  %i.aec = zext i32 %i.adz to i64
  %i.aed = getelementptr inbounds nuw [32 x i8], ptr %i.aea, i64 %i.aec ; 5 uses
  store i32 2, ptr %i.aed, align 8, !tbaa !122
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  store i32 33, ptr %i.aee, align 4, !tbaa !123
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  store ptr @.str.77, ptr %i.aef, align 8, !tbaa !124
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  store ptr null, ptr %i.aeg, align 8, !tbaa !125
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  store i64 -1, ptr %i.aeh, align 8, !tbaa !126
  %i.aei = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  store i32 1, ptr %i.aei, align 8, !tbaa !66
  br label %tg3__load_external_file.exit.thread.i

tg3__uri_is_safe.exit.i.i:                        ; preds = %bb.cy, %.thread.i.i
  %i.aej = icmp ugt i32 %i.hz, 4095
  br i1 %i.aej, label %tg3__load_external_file.exit.thread.i, label %tg3__uri_is_safe.exit.thread99.i.i

tg3__uri_is_safe.exit.thread99.i.i:               ; preds = %tg3__uri_is_safe.exit.i.i, %bb.cp
  %i.aek = load i32, ptr %i.go, align 8, !tbaa !139 ; 8 uses
  %.not57.i.i = icmp eq i32 %i.aek, 0
  br i1 %.not57.i.i, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %tg3__uri_is_safe.exit.thread99.i.i
  %i.ael = zext i32 %i.aek to i64                 ; 10 uses
  %i.aem = sub nuw nsw i64 4095, %i.aap
  %.not58.i.i = icmp samesign ugt i64 %i.aem, %i.ael
  br i1 %.not58.i.i, label %iter.check4315, label %tg3__load_external_file.exit.thread.i

iter.check4315:                                   ; preds = %bb.dg
  %i.aen = load ptr, ptr %i.gp, align 8, !tbaa !138 ; 6 uses
  %min.iters.check4297 = icmp ult i32 %i.aek, 4
  %i.aeo = ptrtoaddr ptr %i.aen to i64
  %i.aep = sub i64 %i.aeo, %i.h
  %diff.check4296 = icmp ugt i64 %i.aep, -32
  %or.cond4533 = select i1 %min.iters.check4297, i1 true, i1 %diff.check4296
  br i1 %or.cond4533, label %.lr.ph.i83.i.i.preheader, label %vector.main.loop.iter.check4298

vector.main.loop.iter.check4298:                  ; preds = %iter.check4315
  %min.iters.check4299 = icmp ult i32 %i.aek, 32
  br i1 %min.iters.check4299, label %vec.epilog.ph4319, label %vector.ph4300

vector.ph4300:                                    ; preds = %vector.main.loop.iter.check4298
  %i.aeq = and i64 %i.ael, 28
  %n.vec4301 = and i64 %i.ael, 4294967264         ; 5 uses
  %i.aer = getelementptr i8, ptr %i.aen, i64 %n.vec4301
  %i.aes = getelementptr i8, ptr %i.g, i64 %n.vec4301
  %i.aet = and i64 %i.ael, 31
  br label %vector.body4302

vector.body4302:                                  ; preds = %vector.body4302, %vector.ph4300
  %index4303 = phi i64 [ 0, %vector.ph4300 ], [ %index.next4308, %vector.body4302 ] ; 3 uses
  %next.gep4304 = getelementptr i8, ptr %i.aen, i64 %index4303 ; 2 uses
  %next.gep4305 = getelementptr i8, ptr %i.g, i64 %index4303 ; 2 uses
  %i.aeu = getelementptr i8, ptr %next.gep4304, i64 16
  %wide.load4306 = load <16 x i8>, ptr %next.gep4304, align 1, !tbaa !23
  %wide.load4307 = load <16 x i8>, ptr %i.aeu, align 1, !tbaa !23
  %i.aev = getelementptr i8, ptr %next.gep4305, i64 16
  store <16 x i8> %wide.load4306, ptr %next.gep4305, align 16, !tbaa !23
  store <16 x i8> %wide.load4307, ptr %i.aev, align 16, !tbaa !23
  %index.next4308 = add nuw i64 %index4303, 32    ; 2 uses
  %i.aew = icmp eq i64 %index.next4308, %n.vec4301
  br i1 %i.aew, label %middle.block4309, label %vector.body4302, !llvm.loop !436

middle.block4309:                                 ; preds = %vector.body4302
  %cmp.n4310 = icmp eq i64 %n.vec4301, %i.ael
  br i1 %cmp.n4310, label %tg3__memcpy.exit.i136.i, label %vec.epilog.iter.check4317

vec.epilog.iter.check4317:                        ; preds = %middle.block4309
  %min.epilog.iters.check4318 = icmp eq i64 %i.aeq, 0
  br i1 %min.epilog.iters.check4318, label %.lr.ph.i83.i.i.preheader, label %vec.epilog.ph4319, !prof !45

vec.epilog.ph4319:                                ; preds = %vector.main.loop.iter.check4298, %vec.epilog.iter.check4317
  %vec.epilog.resume.val4311 = phi i64 [ %n.vec4301, %vec.epilog.iter.check4317 ], [ 0, %vector.main.loop.iter.check4298 ]
  %n.vec4320 = and i64 %i.ael, 4294967292         ; 4 uses
  %i.aex = getelementptr i8, ptr %i.aen, i64 %n.vec4320
  %i.aey = getelementptr i8, ptr %i.g, i64 %n.vec4320
  %i.aez = and i64 %i.ael, 3
  br label %vec.epilog.vector.body4321

vec.epilog.vector.body4321:                       ; preds = %vec.epilog.vector.body4321, %vec.epilog.ph4319
  %index4322 = phi i64 [ %vec.epilog.resume.val4311, %vec.epilog.ph4319 ], [ %index.next4326, %vec.epilog.vector.body4321 ] ; 3 uses
  %next.gep4323 = getelementptr i8, ptr %i.aen, i64 %index4322
  %next.gep4324 = getelementptr i8, ptr %i.g, i64 %index4322
  %wide.load4325 = load <4 x i8>, ptr %next.gep4323, align 1, !tbaa !23
  store <4 x i8> %wide.load4325, ptr %next.gep4324, align 4, !tbaa !23
  %index.next4326 = add nuw i64 %index4322, 4     ; 2 uses
  %i.afa = icmp eq i64 %index.next4326, %n.vec4320
  br i1 %i.afa, label %vec.epilog.middle.block4327, label %vec.epilog.vector.body4321, !llvm.loop !437

vec.epilog.middle.block4327:                      ; preds = %vec.epilog.vector.body4321
  %cmp.n4328 = icmp eq i64 %n.vec4320, %i.ael
  br i1 %cmp.n4328, label %tg3__memcpy.exit.i136.i, label %.lr.ph.i83.i.i.preheader

.lr.ph.i83.i.i.preheader:                         ; preds = %iter.check4315, %vec.epilog.iter.check4317, %vec.epilog.middle.block4327
  %.010.i.i133.i.ph = phi ptr [ %i.aen, %iter.check4315 ], [ %i.aer, %vec.epilog.iter.check4317 ], [ %i.aex, %vec.epilog.middle.block4327 ] ; 2 uses
  %.059.i.i134.i.ph = phi ptr [ %i.g, %iter.check4315 ], [ %i.aes, %vec.epilog.iter.check4317 ], [ %i.aey, %vec.epilog.middle.block4327 ] ; 2 uses
  %.068.i.i135.i.ph = phi i64 [ %i.ael, %iter.check4315 ], [ %i.aet, %vec.epilog.iter.check4317 ], [ %i.aez, %vec.epilog.middle.block4327 ] ; 4 uses
  %i.afb = add nsw i64 %.068.i.i135.i.ph, -1
  %xtraiter4649 = and i64 %.068.i.i135.i.ph, 7    ; 2 uses
  %lcmp.mod4650.not = icmp eq i64 %xtraiter4649, 0
  br i1 %lcmp.mod4650.not, label %.lr.ph.i83.i.i.prol.loopexit, label %.lr.ph.i83.i.i.prol

.lr.ph.i83.i.i.prol:                              ; preds = %.lr.ph.i83.i.i.preheader, %.lr.ph.i83.i.i.prol
  %.010.i.i133.i.prol = phi ptr [ %i.afd, %.lr.ph.i83.i.i.prol ], [ %.010.i.i133.i.ph, %.lr.ph.i83.i.i.preheader ] ; 2 uses
  %.059.i.i134.i.prol = phi ptr [ %i.aff, %.lr.ph.i83.i.i.prol ], [ %.059.i.i134.i.ph, %.lr.ph.i83.i.i.preheader ] ; 2 uses
  %.068.i.i135.i.prol = phi i64 [ %i.afc, %.lr.ph.i83.i.i.prol ], [ %.068.i.i135.i.ph, %.lr.ph.i83.i.i.preheader ]
  %prol.iter4651 = phi i64 [ %prol.iter4651.next, %.lr.ph.i83.i.i.prol ], [ 0, %.lr.ph.i83.i.i.preheader ]
  %i.afc = add nsw i64 %.068.i.i135.i.prol, -1    ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.010.i.i133.i.prol, i64 1 ; 2 uses
  %i.afe = load i8, ptr %.010.i.i133.i.prol, align 1, !tbaa !23
  %i.aff = getelementptr inbounds nuw i8, ptr %.059.i.i134.i.prol, i64 1 ; 2 uses
  store i8 %i.afe, ptr %.059.i.i134.i.prol, align 1, !tbaa !23
  %prol.iter4651.next = add i64 %prol.iter4651, 1 ; 2 uses
  %prol.iter4651.cmp.not = icmp eq i64 %prol.iter4651.next, %xtraiter4649
  br i1 %prol.iter4651.cmp.not, label %.lr.ph.i83.i.i.prol.loopexit, label %.lr.ph.i83.i.i.prol, !llvm.loop !438

.lr.ph.i83.i.i.prol.loopexit:                     ; preds = %.lr.ph.i83.i.i.prol, %.lr.ph.i83.i.i.preheader
  %.010.i.i133.i.unr = phi ptr [ %.010.i.i133.i.ph, %.lr.ph.i83.i.i.preheader ], [ %i.afd, %.lr.ph.i83.i.i.prol ]
  %.059.i.i134.i.unr = phi ptr [ %.059.i.i134.i.ph, %.lr.ph.i83.i.i.preheader ], [ %i.aff, %.lr.ph.i83.i.i.prol ]
  %.068.i.i135.i.unr = phi i64 [ %.068.i.i135.i.ph, %.lr.ph.i83.i.i.preheader ], [ %i.afc, %.lr.ph.i83.i.i.prol ]
  %i.afg = icmp ult i64 %i.afb, 7
  br i1 %i.afg, label %tg3__memcpy.exit.i136.i, label %.lr.ph.i83.i.i

.lr.ph.i83.i.i:                                   ; preds = %.lr.ph.i83.i.i.prol.loopexit, %.lr.ph.i83.i.i
  %.010.i.i133.i = phi ptr [ %i.agd, %.lr.ph.i83.i.i ], [ %.010.i.i133.i.unr, %.lr.ph.i83.i.i.prol.loopexit ] ; 9 uses
  %.059.i.i134.i = phi ptr [ %i.agf, %.lr.ph.i83.i.i ], [ %.059.i.i134.i.unr, %.lr.ph.i83.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i135.i = phi i64 [ %i.agc, %.lr.ph.i83.i.i ], [ %.068.i.i135.i.unr, %.lr.ph.i83.i.i.prol.loopexit ]
  %i.afh = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 1
  %i.afi = load i8, ptr %.010.i.i133.i, align 1, !tbaa !23
  %i.afj = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 1
  store i8 %i.afi, ptr %.059.i.i134.i, align 1, !tbaa !23
  %i.afk = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 2
  %i.afl = load i8, ptr %i.afh, align 1, !tbaa !23
  %i.afm = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 2
  store i8 %i.afl, ptr %i.afj, align 1, !tbaa !23
  %i.afn = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 3
  %i.afo = load i8, ptr %i.afk, align 1, !tbaa !23
  %i.afp = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 3
  store i8 %i.afo, ptr %i.afm, align 1, !tbaa !23
  %i.afq = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 4
  %i.afr = load i8, ptr %i.afn, align 1, !tbaa !23
  %i.afs = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 4
  store i8 %i.afr, ptr %i.afp, align 1, !tbaa !23
  %i.aft = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 5
  %i.afu = load i8, ptr %i.afq, align 1, !tbaa !23
  %i.afv = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 5
  store i8 %i.afu, ptr %i.afs, align 1, !tbaa !23
  %i.afw = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 6
  %i.afx = load i8, ptr %i.aft, align 1, !tbaa !23
  %i.afy = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 6
  store i8 %i.afx, ptr %i.afv, align 1, !tbaa !23
  %i.afz = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 7
  %i.aga = load i8, ptr %i.afw, align 1, !tbaa !23
  %i.agb = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 7
  store i8 %i.aga, ptr %i.afy, align 1, !tbaa !23
  %i.agc = add nsw i64 %.068.i.i135.i, -8         ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 8
  %i.age = load i8, ptr %i.afz, align 1, !tbaa !23
  %i.agf = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 8
  store i8 %i.age, ptr %i.agb, align 1, !tbaa !23
  %.not.i84.i.i.7 = icmp eq i64 %i.agc, 0
  br i1 %.not.i84.i.i.7, label %tg3__memcpy.exit.i136.i, label %.lr.ph.i83.i.i, !llvm.loop !439

tg3__memcpy.exit.i136.i:                          ; preds = %.lr.ph.i83.i.i.prol.loopexit, %.lr.ph.i83.i.i, %vec.epilog.middle.block4327, %middle.block4309
  %i.agg = add i32 %i.aek, -1
  %i.agh = zext i32 %i.agg to i64
  %i.agi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.agh
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !23
  switch i8 %i.agj, label %bb.dh [
    i8 47, label %bb.di
    i8 92, label %bb.di
  ]

bb.dh:                                            ; preds = %tg3__memcpy.exit.i136.i
  %i.agk = add i32 %i.aek, 1
  %i.agl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ael
  store i8 47, ptr %i.agl, align 1, !tbaa !23
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %tg3__memcpy.exit.i136.i, %tg3__memcpy.exit.i136.i, %tg3__uri_is_safe.exit.thread99.i.i
  %.0.i137.i = phi i32 [ %i.agk, %bb.dh ], [ %i.aek, %tg3__memcpy.exit.i136.i ], [ %i.aek, %tg3__memcpy.exit.i136.i ], [ 0, %tg3__uri_is_safe.exit.thread99.i.i ] ; 2 uses
  %i.agm = add i32 %.0.i137.i, %i.hz              ; 3 uses
  %i.agn = icmp ugt i32 %i.agm, 4095
  br i1 %i.agn, label %tg3__load_external_file.exit.thread.i, label %iter.check4278

iter.check4278:                                   ; preds = %bb.di
  %i.ago = zext i32 %.0.i137.i to i64             ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ago ; 6 uses
  %min.iters.check4260 = icmp ult i32 %i.hz, 4
  br i1 %min.iters.check4260, label %.lr.ph.i86.i.i.preheader, label %vector.memcheck4258

vector.memcheck4258:                              ; preds = %iter.check4278
  %i.agq = add i64 %i.h, %i.ago
  %i.agr = sub i64 %i.qm, %i.agq
  %diff.check4259 = icmp ugt i64 %i.agr, -32
  br i1 %diff.check4259, label %.lr.ph.i86.i.i.preheader, label %vector.main.loop.iter.check4261

vector.main.loop.iter.check4261:                  ; preds = %vector.memcheck4258
  %min.iters.check4262 = icmp ult i32 %i.hz, 32
  br i1 %min.iters.check4262, label %vec.epilog.ph4282, label %vector.ph4263

vector.ph4263:                                    ; preds = %vector.main.loop.iter.check4261
  %i.ags = and i64 %i.aap, 28
  %n.vec4264 = and i64 %i.aap, 4294967264         ; 5 uses
  %i.agt = getelementptr i8, ptr %i.ql, i64 %n.vec4264
  %i.agu = getelementptr i8, ptr %i.agp, i64 %n.vec4264
  %i.agv = and i64 %i.aap, 31
  br label %vector.body4265

vector.body4265:                                  ; preds = %vector.body4265, %vector.ph4263
  %index4266 = phi i64 [ 0, %vector.ph4263 ], [ %index.next4271, %vector.body4265 ] ; 3 uses
  %next.gep4267 = getelementptr i8, ptr %i.ql, i64 %index4266 ; 2 uses
  %next.gep4268 = getelementptr i8, ptr %i.agp, i64 %index4266 ; 2 uses
  %i.agw = getelementptr i8, ptr %next.gep4267, i64 16
  %wide.load4269 = load <16 x i8>, ptr %next.gep4267, align 1, !tbaa !23
  %wide.load4270 = load <16 x i8>, ptr %i.agw, align 1, !tbaa !23
  %i.agx = getelementptr i8, ptr %next.gep4268, i64 16
  store <16 x i8> %wide.load4269, ptr %next.gep4268, align 1, !tbaa !23
  store <16 x i8> %wide.load4270, ptr %i.agx, align 1, !tbaa !23
  %index.next4271 = add nuw i64 %index4266, 32    ; 2 uses
  %i.agy = icmp eq i64 %index.next4271, %n.vec4264
  br i1 %i.agy, label %middle.block4272, label %vector.body4265, !llvm.loop !440

middle.block4272:                                 ; preds = %vector.body4265
  %cmp.n4273 = icmp eq i64 %n.vec4264, %i.aap
  br i1 %cmp.n4273, label %tg3__memcpy.exit91.i.i, label %vec.epilog.iter.check4280

vec.epilog.iter.check4280:                        ; preds = %middle.block4272
  %min.epilog.iters.check4281 = icmp eq i64 %i.ags, 0
  br i1 %min.epilog.iters.check4281, label %.lr.ph.i86.i.i.preheader, label %vec.epilog.ph4282, !prof !45

vec.epilog.ph4282:                                ; preds = %vector.main.loop.iter.check4261, %vec.epilog.iter.check4280
  %vec.epilog.resume.val4274 = phi i64 [ %n.vec4264, %vec.epilog.iter.check4280 ], [ 0, %vector.main.loop.iter.check4261 ]
  %n.vec4283 = and i64 %i.aap, 4294967292         ; 4 uses
  %i.agz = getelementptr i8, ptr %i.ql, i64 %n.vec4283
  %i.aha = getelementptr i8, ptr %i.agp, i64 %n.vec4283
  %i.ahb = and i64 %i.aap, 3
  br label %vec.epilog.vector.body4284

vec.epilog.vector.body4284:                       ; preds = %vec.epilog.vector.body4284, %vec.epilog.ph4282
  %index4285 = phi i64 [ %vec.epilog.resume.val4274, %vec.epilog.ph4282 ], [ %index.next4289, %vec.epilog.vector.body4284 ] ; 3 uses
  %next.gep4286 = getelementptr i8, ptr %i.ql, i64 %index4285
  %next.gep4287 = getelementptr i8, ptr %i.agp, i64 %index4285
  %wide.load4288 = load <4 x i8>, ptr %next.gep4286, align 1, !tbaa !23
  store <4 x i8> %wide.load4288, ptr %next.gep4287, align 1, !tbaa !23
  %index.next4289 = add nuw i64 %index4285, 4     ; 2 uses
  %i.ahc = icmp eq i64 %index.next4289, %n.vec4283
  br i1 %i.ahc, label %vec.epilog.middle.block4290, label %vec.epilog.vector.body4284, !llvm.loop !441

vec.epilog.middle.block4290:                      ; preds = %vec.epilog.vector.body4284
  %cmp.n4291 = icmp eq i64 %n.vec4283, %i.aap
  br i1 %cmp.n4291, label %tg3__memcpy.exit91.i.i, label %.lr.ph.i86.i.i.preheader

.lr.ph.i86.i.i.preheader:                         ; preds = %vector.memcheck4258, %iter.check4278, %vec.epilog.iter.check4280, %vec.epilog.middle.block4290
  %.010.i87.i.i.ph = phi ptr [ %i.ql, %iter.check4278 ], [ %i.ql, %vector.memcheck4258 ], [ %i.agt, %vec.epilog.iter.check4280 ], [ %i.agz, %vec.epilog.middle.block4290 ] ; 2 uses
  %.059.i88.i.i.ph = phi ptr [ %i.agp, %iter.check4278 ], [ %i.agp, %vector.memcheck4258 ], [ %i.agu, %vec.epilog.iter.check4280 ], [ %i.aha, %vec.epilog.middle.block4290 ] ; 2 uses
  %.068.i89.i.i.ph = phi i64 [ %i.aap, %iter.check4278 ], [ %i.aap, %vector.memcheck4258 ], [ %i.agv, %vec.epilog.iter.check4280 ], [ %i.ahb, %vec.epilog.middle.block4290 ] ; 4 uses
  %i.ahd = add nsw i64 %.068.i89.i.i.ph, -1
  %xtraiter4652 = and i64 %.068.i89.i.i.ph, 7     ; 2 uses
  %lcmp.mod4653.not = icmp eq i64 %xtraiter4652, 0
  br i1 %lcmp.mod4653.not, label %.lr.ph.i86.i.i.prol.loopexit, label %.lr.ph.i86.i.i.prol

.lr.ph.i86.i.i.prol:                              ; preds = %.lr.ph.i86.i.i.preheader, %.lr.ph.i86.i.i.prol
  %.010.i87.i.i.prol = phi ptr [ %i.ahf, %.lr.ph.i86.i.i.prol ], [ %.010.i87.i.i.ph, %.lr.ph.i86.i.i.preheader ] ; 2 uses
  %.059.i88.i.i.prol = phi ptr [ %i.ahh, %.lr.ph.i86.i.i.prol ], [ %.059.i88.i.i.ph, %.lr.ph.i86.i.i.preheader ] ; 2 uses
  %.068.i89.i.i.prol = phi i64 [ %i.ahe, %.lr.ph.i86.i.i.prol ], [ %.068.i89.i.i.ph, %.lr.ph.i86.i.i.preheader ]
  %prol.iter4654 = phi i64 [ %prol.iter4654.next, %.lr.ph.i86.i.i.prol ], [ 0, %.lr.ph.i86.i.i.preheader ]
  %i.ahe = add i64 %.068.i89.i.i.prol, -1         ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.010.i87.i.i.prol, i64 1 ; 2 uses
  %i.ahg = load i8, ptr %.010.i87.i.i.prol, align 1, !tbaa !23
  %i.ahh = getelementptr inbounds nuw i8, ptr %.059.i88.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ahg, ptr %.059.i88.i.i.prol, align 1, !tbaa !23
  %prol.iter4654.next = add i64 %prol.iter4654, 1 ; 2 uses
  %prol.iter4654.cmp.not = icmp eq i64 %prol.iter4654.next, %xtraiter4652
  br i1 %prol.iter4654.cmp.not, label %.lr.ph.i86.i.i.prol.loopexit, label %.lr.ph.i86.i.i.prol, !llvm.loop !442

.lr.ph.i86.i.i.prol.loopexit:                     ; preds = %.lr.ph.i86.i.i.prol, %.lr.ph.i86.i.i.preheader
  %.010.i87.i.i.unr = phi ptr [ %.010.i87.i.i.ph, %.lr.ph.i86.i.i.preheader ], [ %i.ahf, %.lr.ph.i86.i.i.prol ]
  %.059.i88.i.i.unr = phi ptr [ %.059.i88.i.i.ph, %.lr.ph.i86.i.i.preheader ], [ %i.ahh, %.lr.ph.i86.i.i.prol ]
  %.068.i89.i.i.unr = phi i64 [ %.068.i89.i.i.ph, %.lr.ph.i86.i.i.preheader ], [ %i.ahe, %.lr.ph.i86.i.i.prol ]
  %i.ahi = icmp ult i64 %i.ahd, 7
  br i1 %i.ahi, label %tg3__memcpy.exit91.i.i, label %.lr.ph.i86.i.i

.lr.ph.i86.i.i:                                   ; preds = %.lr.ph.i86.i.i.prol.loopexit, %.lr.ph.i86.i.i
  %.010.i87.i.i = phi ptr [ %i.aif, %.lr.ph.i86.i.i ], [ %.010.i87.i.i.unr, %.lr.ph.i86.i.i.prol.loopexit ] ; 9 uses
  %.059.i88.i.i = phi ptr [ %i.aih, %.lr.ph.i86.i.i ], [ %.059.i88.i.i.unr, %.lr.ph.i86.i.i.prol.loopexit ] ; 9 uses
  %.068.i89.i.i = phi i64 [ %i.aie, %.lr.ph.i86.i.i ], [ %.068.i89.i.i.unr, %.lr.ph.i86.i.i.prol.loopexit ]
  %i.ahj = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 1
  %i.ahk = load i8, ptr %.010.i87.i.i, align 1, !tbaa !23
  %i.ahl = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 1
  store i8 %i.ahk, ptr %.059.i88.i.i, align 1, !tbaa !23
  %i.ahm = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 2
  %i.ahn = load i8, ptr %i.ahj, align 1, !tbaa !23
  %i.aho = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 2
  store i8 %i.ahn, ptr %i.ahl, align 1, !tbaa !23
  %i.ahp = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 3
  %i.ahq = load i8, ptr %i.ahm, align 1, !tbaa !23
  %i.ahr = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 3
  store i8 %i.ahq, ptr %i.aho, align 1, !tbaa !23
  %i.ahs = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 4
  %i.aht = load i8, ptr %i.ahp, align 1, !tbaa !23
  %i.ahu = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 4
  store i8 %i.aht, ptr %i.ahr, align 1, !tbaa !23
  %i.ahv = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 5
  %i.ahw = load i8, ptr %i.ahs, align 1, !tbaa !23
  %i.ahx = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 5
  store i8 %i.ahw, ptr %i.ahu, align 1, !tbaa !23
  %i.ahy = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 6
  %i.ahz = load i8, ptr %i.ahv, align 1, !tbaa !23
  %i.aia = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 6
  store i8 %i.ahz, ptr %i.ahx, align 1, !tbaa !23
  %i.aib = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 7
  %i.aic = load i8, ptr %i.ahy, align 1, !tbaa !23
  %i.aid = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 7
  store i8 %i.aic, ptr %i.aia, align 1, !tbaa !23
  %i.aie = add i64 %.068.i89.i.i, -8              ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 8
  %i.aig = load i8, ptr %i.aib, align 1, !tbaa !23
  %i.aih = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 8
  store i8 %i.aig, ptr %i.aid, align 1, !tbaa !23
  %.not.i90.i.i.7 = icmp eq i64 %i.aie, 0
  br i1 %.not.i90.i.i.7, label %tg3__memcpy.exit91.i.i, label %.lr.ph.i86.i.i, !llvm.loop !443

tg3__memcpy.exit91.i.i:                           ; preds = %.lr.ph.i86.i.i.prol.loopexit, %.lr.ph.i86.i.i, %vec.epilog.middle.block4290, %middle.block4272
  %i.aii = zext nneg i32 %i.agm to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aii
  store i8 0, ptr %i.aij, align 1, !tbaa !23
  %i.aik = load ptr, ptr %i.gq, align 8, !tbaa !540
  %i.ail = call i32 %i.yd(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.g, i32 noundef %i.agm, ptr noundef %i.aik) #21, !inline_history !444
  %.not62.i.i = icmp eq i32 %i.ail, 0
  br i1 %.not62.i.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %tg3__memcpy.exit91.i.i
  %i.aim = load ptr, ptr %i.gs, align 8, !tbaa !135
  %i.ain = load ptr, ptr %0, align 8, !tbaa !134
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.aim, ptr noundef %i.ain, i32 poison, i32 noundef 2, ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.g) #20
  br label %tg3__load_external_file.exit.thread.i

bb.dk:                                            ; preds = %tg3__memcpy.exit91.i.i
  %i.aio = load i64, ptr %i.gr, align 8, !tbaa !541 ; 3 uses
  %.not63.i.i = icmp ne i64 %i.aio, 0
  %.pre203.i = load i64, ptr %i.l, align 8, !tbaa !32 ; 8 uses
  %i.aip = icmp ugt i64 %.pre203.i, %i.aio
  %or.cond286.i = select i1 %.not63.i.i, i1 %i.aip, i1 false
  br i1 %or.cond286.i, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.aiq = load ptr, ptr %i.gt, align 8, !tbaa !542 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.aiq, null
  br i1 %.not64.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.air = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.ais = load ptr, ptr %i.gq, align 8, !tbaa !540
  call void %i.aiq(ptr noundef %i.air, i64 noundef %.pre203.i, ptr noundef %i.ais) #21, !inline_history !444
  %.pre.i138.i = load i64, ptr %i.l, align 8, !tbaa !32
  %.pre103.i.i = load i64, ptr %i.gr, align 8, !tbaa !541
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.ait = phi i64 [ %.pre103.i.i, %bb.dm ], [ %i.aio, %bb.dl ]
  %i.aiu = phi i64 [ %.pre.i138.i, %bb.dm ], [ %.pre203.i, %bb.dl ]
  %i.aiv = load ptr, ptr %i.gs, align 8, !tbaa !135
  %i.aiw = load ptr, ptr %0, align 8, !tbaa !134
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.aiv, ptr noundef %i.aiw, i32 poison, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.g, i64 noundef %i.aiu, i64 noundef %i.ait) #20
  store ptr null, ptr %i.k, align 8, !tbaa !22
  store i64 0, ptr %i.l, align 8, !tbaa !32
  br label %tg3__load_external_file.exit.thread.i

tg3__load_external_file.exit.thread.i:            ; preds = %bb.dn, %bb.dj, %bb.di, %bb.dg, %tg3__uri_is_safe.exit.i.i, %bb.df, %bb.dd, %bb.db, %.loopexit.i132.i, %bb.cj, %bb.ch, %bb.cf, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.ee

bb.do:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
end_hunk_0
begin_hunk_1_@tg3json__parse_f64_c:bb.a
  %i.ch = select i1 %.not180, double 0.000000e+00, double -0.000000e+00
  store double %i.ch, ptr %2, align 8, !tbaa !63
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.ci = uitofp i64 %.5143 to x86_fp80           ; 2 uses
  %i.cj = icmp sgt i32 %.5, 0
  br i1 %i.cj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ck = tail call fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef %.5) #20
  %i.cl = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.ci, x86_fp80 %i.ck, x86_fp80 %.5125)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi x86_fp80 [ %i.cl, %bb.aj ], [ %i.ci, %bb.ai ] ; 2 uses
  %.not179 = icmp eq i32 %.6150, 0
  br i1 %.not179, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cm = tail call fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef %.6150) #20
  %i.cn = fmul x86_fp80 %.0, %i.cm
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1 = phi x86_fp80 [ %i.cn, %bb.al ], [ %.0, %bb.ak ] ; 2 uses
  %i.co = fneg x86_fp80 %.1
  %spec.select191 = select i1 %.not180, x86_fp80 %.1, x86_fp80 %i.co
  %i.cp = fptrunc x86_fp80 %spec.select191 to double ; 2 uses
  store double %i.cp, ptr %2, align 8, !tbaa !63
  %i.cq = tail call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp une double %i.cq, +inf
  %spec.select192 = zext i1 %i.cr to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af, %bb.ac, %bb.z, %bb.aa, %bb.n, %bb.o, %bb.f, %bb.c, %bb.ah, %bb.ae
  %.0113 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.z ], [ 1, %bb.ae ], [ 0, %bb.ac ], [ 1, %bb.ah ], [ 0, %bb.af ], [ %spec.select192, %bb.am ], [ 0, %bb.o ], [ 0, %bb.aa ]
  ret i32 %.0113
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #12

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define internal fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef range(i32 -4000, -2147483648) %0) unnamed_addr #13 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader20

.preheader20:                                     ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %0, 15
  br i1 %i.b, label %.lr.ph, label %.preheader18

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 0, %0                        ; 3 uses
  %i.d = icmp samesign ugt i32 %i.c, 15
  br i1 %i.d, label %.lr.ph30, label %.lr.ph35.preheader

.preheader:                                       ; preds = %.lr.ph30
  %.not55 = icmp eq i32 %i.f, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %bb.b, %.preheader
  %.134.ph = phi x86_fp80 [ 1.000000e+00, %bb.b ], [ %i.e, %.preheader ]
  %.11333.ph = phi i32 [ %i.c, %bb.b ], [ %i.f, %.preheader ]
  br label %.lr.ph35

.lr.ph30:                                         ; preds = %bb.b, %.lr.ph30
  %.029 = phi x86_fp80 [ %i.e, %.lr.ph30 ], [ 1.000000e+00, %bb.b ]
  %.01228 = phi i32 [ %i.f, %.lr.ph30 ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = fmul x86_fp80 %.029, f0x3FC9E69594BEC44DE15B ; 3 uses
  %i.f = add nsw i32 %.01228, -16                 ; 3 uses
  %i.g = icmp samesign ugt i32 %.01228, 31
  br i1 %i.g, label %.lr.ph30, label %.preheader, !llvm.loop !913

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %.lr.ph35
  %.134 = phi x86_fp80 [ %i.i, %.lr.ph35 ], [ %.134.ph, %.lr.ph35.preheader ]
  %.11333 = phi i32 [ %i.h, %.lr.ph35 ], [ %.11333.ph, %.lr.ph35.preheader ] ; 2 uses
  %i.h = add nsw i32 %.11333, -1
  %i.i = fmul x86_fp80 %.134, 1.000000e-01        ; 2 uses
  %i.j = icmp samesign ugt i32 %.11333, 1
  br i1 %i.j, label %.lr.ph35, label %.loopexit, !llvm.loop !914

.preheader18:                                     ; preds = %.lr.ph, %.preheader20
  %.214.lcssa = phi i32 [ %0, %.preheader20 ], [ %i.o, %.lr.ph ] ; 5 uses
  %.2.lcssa = phi x86_fp80 [ 1.000000e+00, %.preheader20 ], [ %i.n, %.lr.ph ] ; 3 uses
  %.not = icmp eq i32 %.214.lcssa, 0
  br i1 %.not, label %.loopexit, label %.lr.ph26.preheader

.lr.ph26.preheader:                               ; preds = %.preheader18
  %xtraiter = and i32 %.214.lcssa, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol

.lr.ph26.prol:                                    ; preds = %.lr.ph26.preheader, %.lr.ph26.prol
  %.325.prol = phi x86_fp80 [ %i.l, %.lr.ph26.prol ], [ %.2.lcssa, %.lr.ph26.preheader ]
  %.31524.prol = phi i32 [ %i.k, %.lr.ph26.prol ], [ %.214.lcssa, %.lr.ph26.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph26.prol ], [ 0, %.lr.ph26.preheader ]
  %i.k = add nsw i32 %.31524.prol, -1             ; 2 uses
  %i.l = fmul x86_fp80 %.325.prol, 1.000000e+01   ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol, !llvm.loop !915

.lr.ph26.prol.loopexit:                           ; preds = %.lr.ph26.prol, %.lr.ph26.preheader
  %.325.unr = phi x86_fp80 [ %.2.lcssa, %.lr.ph26.preheader ], [ %i.l, %.lr.ph26.prol ]
  %.31524.unr = phi i32 [ %.214.lcssa, %.lr.ph26.preheader ], [ %i.k, %.lr.ph26.prol ]
  %.lcssa65.unr = phi x86_fp80 [ poison, %.lr.ph26.preheader ], [ %i.l, %.lr.ph26.prol ]
  %i.m = icmp ult i32 %.214.lcssa, 8
  br i1 %i.m, label %.loopexit, label %.lr.ph26

.lr.ph:                                           ; preds = %.preheader20, %.lr.ph
  %.222 = phi x86_fp80 [ %i.n, %.lr.ph ], [ 1.000000e+00, %.preheader20 ]
  %.21421 = phi i32 [ %i.o, %.lr.ph ], [ %0, %.preheader20 ] ; 2 uses
  %i.n = fmul x86_fp80 %.222, 1.000000e+16        ; 2 uses
  %i.o = add nsw i32 %.21421, -16                 ; 2 uses
  %i.p = icmp samesign ugt i32 %.21421, 31
  br i1 %i.p, label %.lr.ph, label %.preheader18, !llvm.loop !916

.lr.ph26:                                         ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26
  %.325 = phi x86_fp80 [ %i.y, %.lr.ph26 ], [ %.325.unr, %.lr.ph26.prol.loopexit ]
  %.31524 = phi i32 [ %i.x, %.lr.ph26 ], [ %.31524.unr, %.lr.ph26.prol.loopexit ] ; 2 uses
  %i.q = fmul x86_fp80 %.325, 1.000000e+01
  %i.r = fmul x86_fp80 %i.q, 1.000000e+01
  %i.s = fmul x86_fp80 %i.r, 1.000000e+01
  %i.t = fmul x86_fp80 %i.s, 1.000000e+01
  %i.u = fmul x86_fp80 %i.t, 1.000000e+01
  %i.v = fmul x86_fp80 %i.u, 1.000000e+01
  %i.w = fmul x86_fp80 %i.v, 1.000000e+01
  %i.x = add nsw i32 %.31524, -8
  %i.y = fmul x86_fp80 %i.w, 1.000000e+01         ; 2 uses
  %i.z = icmp sgt i32 %.31524, 8
  br i1 %i.z, label %.lr.ph26, label %.loopexit, !llvm.loop !917

.loopexit:                                        ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26, %.lr.ph35, %.preheader18, %.preheader
  %.4 = phi x86_fp80 [ %i.i, %.lr.ph35 ], [ %i.e, %.preheader ], [ %.2.lcssa, %.preheader18 ], [ %.lcssa65.unr, %.lr.ph26.prol.loopexit ], [ %i.y, %.lr.ph26 ]
  ret x86_fp80 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3json__indent(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59
  %i.e = add i64 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.a, ptr noundef %i.b, i64 noundef 1, i64 noundef %i.e, ptr noundef %i.f) #20
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %tg3json__buf_putc.exit.thread, label %tg3json__buf_putc.exit

tg3json__buf_putc.exit:                           ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = load i64, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 10, ptr %i.k, align 1, !tbaa !23
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.m = load i64, ptr %i.c, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !23
  %i.o = mul nsw i32 %2, %1                       ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %tg3json__buf_putc.exit.thread

.lr.ph:                                           ; preds = %tg3json__buf_putc.exit, %bb.b
  %.017 = phi i32 [ %i.ab, %bb.b ], [ 0, %tg3json__buf_putc.exit ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !60
  %i.r = load i64, ptr %i.c, align 8, !tbaa !59
  %i.s = add i64 %i.r, 2
  %i.t = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.q, ptr noundef %i.b, i64 noundef 1, i64 noundef %i.s, ptr noundef %i.f) #20
  %.not.i10 = icmp eq i32 %i.t, 0
  br i1 %.not.i10, label %tg3json__buf_putc.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.v = load i64, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.c, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 32, ptr %i.x, align 1, !tbaa !23
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.z = load i64, ptr %i.c, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !23
  %i.ab = add nuw nsw i32 %.017, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.o
  br i1 %exitcond.not, label %tg3json__buf_putc.exit.thread, label %.lr.ph, !llvm.loop !6

tg3json__buf_putc.exit.thread:                    ; preds = %bb.b, %.lr.ph, %tg3json__buf_putc.exit, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ 1, %tg3json__buf_putc.exit ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal fastcc nonnull ptr @tg3json__format_decimal_digits(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 13 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = add i32 %3, %2                           ; 11 uses
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.064 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ]  ; 18 uses
  %.064204 = ptrtoaddr ptr %.064 to i64           ; 3 uses
  %i.h = add i32 %i.e, -17
  %or.cond = icmp ult i32 %i.h, -20
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %1, align 1, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  store i8 %i.i, ptr %.064, align 1, !tbaa !23
  %i.k = icmp sgt i32 %2, 1
  br i1 %i.k, label %iter.check348, label %.loopexit

iter.check348:                                    ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 5 uses
  store i8 46, ptr %i.j, align 1, !tbaa !23
  %wide.trip.count139 = zext nneg i32 %2 to i64   ; 4 uses
  %i.m = add nsw i64 %wide.trip.count139, -1      ; 5 uses
  %min.iters.check333 = icmp ult i32 %2, 9
  %i.n = sub i64 %.064204, %i.a
  %diff.check332 = icmp ult i64 %i.n, 31
  %or.cond430.a = select i1 %min.iters.check333, i1 true, i1 %diff.check332
  br i1 %or.cond430.a, label %vec.epilog.scalar.ph349.preheader, label %vector.main.loop.iter.check334

vector.main.loop.iter.check334:                   ; preds = %iter.check348
  %min.iters.check335 = icmp ult i32 %2, 33
  br i1 %min.iters.check335, label %vec.epilog.ph352, label %vector.ph336

vector.ph336:                                     ; preds = %vector.main.loop.iter.check334
  %i.o = and i64 %i.m, 24
  %n.vec337 = and i64 %i.m, -32                   ; 5 uses
  %i.p = or disjoint i64 %n.vec337, 1
  %i.q = getelementptr i8, ptr %i.l, i64 %n.vec337 ; 2 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next343, %vector.body338 ] ; 3 uses
  %next.gep340 = getelementptr i8, ptr %i.l, i64 %index339 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index339 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %wide.load341.a = load <16 x i8>, ptr %i.s, align 1, !tbaa !23
  %wide.load342 = load <16 x i8>, ptr %i.t, align 1, !tbaa !23
  %i.u = getelementptr i8, ptr %next.gep340, i64 16
  store <16 x i8> %wide.load341.a, ptr %next.gep340, align 1, !tbaa !23
  store <16 x i8> %wide.load342, ptr %i.u, align 1, !tbaa !23
  %index.next343 = add nuw i64 %index339, 32      ; 2 uses
  %i.v = icmp eq i64 %index.next343, %n.vec337
  br i1 %i.v, label %middle.block344, label %vector.body338, !llvm.loop !918

middle.block344:                                  ; preds = %vector.body338
  %cmp.n345 = icmp eq i64 %i.m, %n.vec337
  br i1 %cmp.n345, label %.loopexit, label %vec.epilog.iter.check350

vec.epilog.iter.check350:                         ; preds = %middle.block344
  %min.epilog.iters.check351 = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check351, label %vec.epilog.scalar.ph349.preheader, label %vec.epilog.ph352, !prof !61

vec.epilog.ph352:                                 ; preds = %vector.main.loop.iter.check334, %vec.epilog.iter.check350
  %vec.epilog.resume.val346 = phi i64 [ %n.vec337, %vec.epilog.iter.check350 ], [ 0, %vector.main.loop.iter.check334 ]
  %n.vec353 = and i64 %i.m, -8                    ; 4 uses
  %i.w = or disjoint i64 %n.vec353, 1
  %i.x = getelementptr i8, ptr %i.l, i64 %n.vec353 ; 2 uses
  br label %vec.epilog.vector.body354

vec.epilog.vector.body354:                        ; preds = %vec.epilog.vector.body354, %vec.epilog.ph352
  %index355 = phi i64 [ %vec.epilog.resume.val346, %vec.epilog.ph352 ], [ %index.next358, %vec.epilog.vector.body354 ] ; 3 uses
  %next.gep356 = getelementptr i8, ptr %i.l, i64 %index355
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index355
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %wide.load357 = load <8 x i8>, ptr %i.z, align 1, !tbaa !23
  store <8 x i8> %wide.load357, ptr %next.gep356, align 1, !tbaa !23
  %index.next358 = add nuw i64 %index355, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next358, %n.vec353
  br i1 %i.aa, label %vec.epilog.middle.block359, label %vec.epilog.vector.body354, !llvm.loop !919

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body354
  %cmp.n360 = icmp eq i64 %i.m, %n.vec353
  br i1 %cmp.n360, label %.loopexit, label %vec.epilog.scalar.ph349.preheader

vec.epilog.scalar.ph349.preheader:                ; preds = %iter.check348, %vec.epilog.iter.check350, %vec.epilog.middle.block359
  %indvars.iv136.ph = phi i64 [ 1, %iter.check348 ], [ %i.p, %vec.epilog.iter.check350 ], [ %i.w, %vec.epilog.middle.block359 ] ; 4 uses
  %.165104.ph = phi ptr [ %i.l, %iter.check348 ], [ %i.q, %vec.epilog.iter.check350 ], [ %i.x, %vec.epilog.middle.block359 ] ; 2 uses
  %i.ab = sub nsw i64 %wide.trip.count139, %indvars.iv136.ph
  %xtraiter452 = and i64 %i.ab, 7                 ; 2 uses
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %vec.epilog.scalar.ph349.prol.loopexit, label %vec.epilog.scalar.ph349.prol

vec.epilog.scalar.ph349.prol:                     ; preds = %vec.epilog.scalar.ph349.preheader, %vec.epilog.scalar.ph349.prol
  %indvars.iv136.prol = phi i64 [ %indvars.iv.next137.prol, %vec.epilog.scalar.ph349.prol ], [ %indvars.iv136.ph, %vec.epilog.scalar.ph349.preheader ] ; 2 uses
  %.165104.prol = phi ptr [ %i.ae, %vec.epilog.scalar.ph349.prol ], [ %.165104.ph, %vec.epilog.scalar.ph349.preheader ] ; 2 uses
  %prol.iter454 = phi i64 [ %prol.iter454.next, %vec.epilog.scalar.ph349.prol ], [ 0, %vec.epilog.scalar.ph349.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %.165104.prol, i64 1 ; 3 uses
  store i8 %i.ad, ptr %.165104.prol, align 1, !tbaa !23
  %indvars.iv.next137.prol = add nuw nsw i64 %indvars.iv136.prol, 1 ; 2 uses
  %prol.iter454.next = add i64 %prol.iter454, 1   ; 2 uses
  %prol.iter454.cmp.not = icmp eq i64 %prol.iter454.next, %xtraiter452
  br i1 %prol.iter454.cmp.not, label %vec.epilog.scalar.ph349.prol.loopexit, label %vec.epilog.scalar.ph349.prol, !llvm.loop !920

vec.epilog.scalar.ph349.prol.loopexit:            ; preds = %vec.epilog.scalar.ph349.prol, %vec.epilog.scalar.ph349.preheader
  %.lcssa436.unr = phi ptr [ poison, %vec.epilog.scalar.ph349.preheader ], [ %i.ae, %vec.epilog.scalar.ph349.prol ]
  %indvars.iv136.unr = phi i64 [ %indvars.iv136.ph, %vec.epilog.scalar.ph349.preheader ], [ %indvars.iv.next137.prol, %vec.epilog.scalar.ph349.prol ]
  %.165104.unr = phi ptr [ %.165104.ph, %vec.epilog.scalar.ph349.preheader ], [ %i.ae, %vec.epilog.scalar.ph349.prol ]
  %i.af = sub nsw i64 %indvars.iv136.ph, %wide.trip.count139
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %.loopexit, label %vec.epilog.scalar.ph349

vec.epilog.scalar.ph349:                          ; preds = %vec.epilog.scalar.ph349.prol.loopexit, %vec.epilog.scalar.ph349
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.7, %vec.epilog.scalar.ph349 ], [ %indvars.iv136.unr, %vec.epilog.scalar.ph349.prol.loopexit ] ; 9 uses
  %.165104 = phi ptr [ %i.bl, %vec.epilog.scalar.ph349 ], [ %.165104.unr, %vec.epilog.scalar.ph349.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %.165104, i64 1
  store i8 %i.ai, ptr %.165104, align 1, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %.165104, i64 2
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %.165104, i64 3
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %.165104, i64 4
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %.165104, i64 5
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %.165104, i64 6
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %.165104, i64 7
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv136
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 7
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %.165104, i64 8 ; 2 uses
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !23
  %indvars.iv.next137.7 = add nuw nsw i64 %indvars.iv136, 8 ; 2 uses
  %exitcond140.not.7 = icmp eq i64 %indvars.iv.next137.7, %wide.trip.count139
  br i1 %exitcond140.not.7, label %.loopexit, label %vec.epilog.scalar.ph349, !llvm.loop !921

.loopexit:                                        ; preds = %vec.epilog.scalar.ph349.prol.loopexit, %vec.epilog.scalar.ph349, %middle.block344, %vec.epilog.middle.block359, %bb.d
  %.266 = phi ptr [ %i.j, %bb.d ], [ %i.x, %vec.epilog.middle.block359 ], [ %i.q, %middle.block344 ], [ %.lcssa436.unr, %vec.epilog.scalar.ph349.prol.loopexit ], [ %i.bl, %vec.epilog.scalar.ph349 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %.266, i64 1 ; 3 uses
  store i8 101, ptr %.266, align 1, !tbaa !23
  %i.bn = icmp slt i32 %i.e, 1
  br i1 %i.bn, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %.266, i64 2
  store i8 45, ptr %i.bm, align 1, !tbaa !23
  %i.bp = sub nsw i32 1, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.preheader19.i.preheader.i

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bq = icmp eq i32 %i.f, 0
  br i1 %i.bq, label %bb.f, label %.preheader19.i.preheader.i

.preheader19.i.preheader.i:                       ; preds = %bb.e, %.thread.i
  %.024.i = phi i32 [ %i.bp, %.thread.i ], [ %i.f, %bb.e ]
  %.0823.i = phi ptr [ %i.bo, %.thread.i ], [ %i.bm, %bb.e ] ; 4 uses
  %i.br = zext nneg i32 %.024.i to i64
  br label %.preheader19.i.i

bb.f:                                             ; preds = %bb.e
  store i8 48, ptr %i.c, align 16, !tbaa !23
  br label %iter.check412

.preheader.i.i.a:                                 ; preds = %.preheader19.i.i
  %.not1822.i.i = icmp eq i64 %8, 0
  br i1 %.not1822.i.i, label %tg3json__utoa.exit.thread.i, label %iter.check377

iter.check377:                                    ; preds = %.preheader.i.i.a
  %min.iters.check363 = icmp ult i64 %8, 8
  br i1 %min.iters.check363, label %.lr.ph.i.i.preheader.a, label %vector.main.loop.iter.check364

vector.main.loop.iter.check364:                   ; preds = %iter.check377
  %min.iters.check365 = icmp ult i64 %8, 32
  br i1 %min.iters.check365, label %vec.epilog.ph381, label %vector.ph366

vector.ph366:                                     ; preds = %vector.main.loop.iter.check364
  %i.bs = and i64 %8, 24
  %n.vec367 = and i64 %8, -32                     ; 5 uses
  %i.bt = and i64 %8, 31
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next373, %vector.body368 ] ; 3 uses
  %i.bu = sub i64 %.01421.i.i, %index369
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -15
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -31
  %wide.load370.a = load <16 x i8>, ptr %i.bw, align 1, !tbaa !23
  %wide.load371 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !23
  %reverse = shufflevector <16 x i8> %wide.load370.a, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse372 = shufflevector <16 x i8> %wide.load371, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 %index369 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <16 x i8> %reverse, ptr %i.by, align 16, !tbaa !23
  store <16 x i8> %reverse372, ptr %i.bz, align 16, !tbaa !23
  %index.next373 = add nuw i64 %index369, 32      ; 2 uses
  %i.ca = icmp eq i64 %index.next373, %n.vec367
  br i1 %i.ca, label %middle.block374, label %vector.body368, !llvm.loop !922

middle.block374:                                  ; preds = %vector.body368
  %cmp.n375 = icmp eq i64 %8, %n.vec367
  br i1 %cmp.n375, label %iter.check412, label %vec.epilog.iter.check379

vec.epilog.iter.check379:                         ; preds = %middle.block374
  %min.epilog.iters.check380 = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check380, label %.lr.ph.i.i.preheader.a, label %vec.epilog.ph381, !prof !61

vec.epilog.ph381:                                 ; preds = %vector.main.loop.iter.check364, %vec.epilog.iter.check379
  %vec.epilog.resume.val376 = phi i64 [ %n.vec367, %vec.epilog.iter.check379 ], [ 0, %vector.main.loop.iter.check364 ]
  %n.vec382 = and i64 %8, -8                      ; 4 uses
  %i.cb = and i64 %8, 7
  br label %vec.epilog.vector.body383

vec.epilog.vector.body383:                        ; preds = %vec.epilog.vector.body383, %vec.epilog.ph381
  %index384 = phi i64 [ %vec.epilog.resume.val376, %vec.epilog.ph381 ], [ %index.next387, %vec.epilog.vector.body383 ] ; 3 uses
  %i.cc = sub i64 %.01421.i.i, %index384
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -7
  %wide.load385 = load <8 x i8>, ptr %i.ce, align 1, !tbaa !23
  %reverse386 = shufflevector <8 x i8> %wide.load385, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %index384
  store <8 x i8> %reverse386, ptr %i.cf, align 8, !tbaa !23
  %index.next387 = add nuw i64 %index384, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next387, %n.vec382
  br i1 %i.cg, label %vec.epilog.middle.block388, label %vec.epilog.vector.body383, !llvm.loop !923

vec.epilog.middle.block388:                       ; preds = %vec.epilog.vector.body383
  %cmp.n389 = icmp eq i64 %8, %n.vec382
  br i1 %cmp.n389, label %iter.check412, label %.lr.ph.i.i.preheader.a

.lr.ph.i.i.preheader.a:                           ; preds = %iter.check377, %vec.epilog.iter.check379, %vec.epilog.middle.block388
  %.024.i.i.ph = phi i64 [ 0, %iter.check377 ], [ %n.vec367, %vec.epilog.iter.check379 ], [ %n.vec382, %vec.epilog.middle.block388 ]
  %.123.i.i.ph = phi i64 [ %8, %iter.check377 ], [ %i.bt, %vec.epilog.iter.check379 ], [ %i.cb, %vec.epilog.middle.block388 ]
  br label %.lr.ph.i.i.a

tg3json__utoa.exit.thread.i:                      ; preds = %.preheader.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %tg3json__write_exp.exit

.preheader19.i.i:                                 ; preds = %.preheader19.i.i, %.preheader19.i.preheader.i
  %.01421.i.i = phi i64 [ %8, %.preheader19.i.i ], [ 0, %.preheader19.i.preheader.i ] ; 4 uses
  %.01620.i.i = phi i64 [ %10, %.preheader19.i.i ], [ %i.br, %.preheader19.i.preheader.i ] ; 3 uses
  %5 = urem i64 %.01620.i.i, 10
  %6 = trunc nuw nsw i64 %5 to i8
  %7 = or disjoint i8 %6, 48
  %8 = add i64 %.01421.i.i, 1                     ; 12 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i.i
  store i8 %7, ptr %9, align 1, !tbaa !23
  %10 = udiv i64 %.01620.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.01620.i.i, 10
  br i1 %.not.i.i, label %.preheader.i.i.a, label %.preheader19.i.i, !llvm.loop !924

.lr.ph.i.i.a:                                     ; preds = %.lr.ph.i.i.preheader.a, %.lr.ph.i.i.a
  %.024.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.a ], [ %.024.i.i.ph, %.lr.ph.i.i.preheader.a ] ; 2 uses
  %.123.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.a ], [ %.123.i.i.ph, %.lr.ph.i.i.preheader.a ]
  %i.ch = add i64 %.123.i.i, -1                   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !23
  %i.ck = add nuw i64 %.024.i.i, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.024.i.i
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !23
  %.not18.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not18.i.i, label %iter.check412, label %.lr.ph.i.i.a, !llvm.loop !925

iter.check412:                                    ; preds = %.lr.ph.i.i.a, %middle.block374, %vec.epilog.middle.block388, %bb.f
  %.0822.i = phi ptr [ %i.bm, %bb.f ], [ %.0823.i, %middle.block374 ], [ %.0823.i, %vec.epilog.middle.block388 ], [ %.0823.i, %.lr.ph.i.i.a ] ; 10 uses
  %.0.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ %n.vec367, %middle.block374 ], [ %n.vec382, %vec.epilog.middle.block388 ], [ %i.ck, %.lr.ph.i.i.a ] ; 15 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.sink.i.i
  store i8 0, ptr %i.cm, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %min.iters.check395 = icmp ult i64 %.0.lcssa.sink.i.i, 4
  %.0822.i393 = ptrtoaddr ptr %.0822.i to i64
  %i.cn = sub i64 %i.d, %.0822.i393
  %diff.check394 = icmp ugt i64 %i.cn, -32
  %or.cond431.a = select i1 %min.iters.check395, i1 true, i1 %diff.check394
  br i1 %or.cond431.a, label %.lr.ph.i10.i.preheader, label %vector.main.loop.iter.check396

vector.main.loop.iter.check396:                   ; preds = %iter.check412
  %min.iters.check397 = icmp ult i64 %.0.lcssa.sink.i.i, 32
  br i1 %min.iters.check397, label %vec.epilog.ph416, label %vector.ph398

vector.ph398:                                     ; preds = %vector.main.loop.iter.check396
  %i.co = and i64 %.0.lcssa.sink.i.i, 28
  %n.vec399 = and i64 %.0.lcssa.sink.i.i, -32     ; 5 uses
  %i.cp = getelementptr i8, ptr %i.c, i64 %n.vec399
  %i.cq = getelementptr i8, ptr %.0822.i, i64 %n.vec399
  %i.cr = and i64 %.0.lcssa.sink.i.i, 31
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body400 ] ; 3 uses
  %next.gep402.a = getelementptr i8, ptr %i.c, i64 %index401 ; 2 uses
  %next.gep403 = getelementptr i8, ptr %.0822.i, i64 %index401 ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep402.a, i64 16
  %wide.load404.a = load <16 x i8>, ptr %next.gep402.a, align 16, !tbaa !23
  %wide.load405 = load <16 x i8>, ptr %i.cs, align 16, !tbaa !23
  %i.ct = getelementptr i8, ptr %next.gep403, i64 16
  store <16 x i8> %wide.load404.a, ptr %next.gep403, align 1, !tbaa !23
  store <16 x i8> %wide.load405, ptr %i.ct, align 1, !tbaa !23
  %index.next406 = add nuw i64 %index401, 32      ; 2 uses
  %i.cu = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.cu, label %middle.block407, label %vector.body400, !llvm.loop !926

middle.block407:                                  ; preds = %vector.body400
  %cmp.n408 = icmp eq i64 %.0.lcssa.sink.i.i, %n.vec399
  br i1 %cmp.n408, label %tg3json__write_exp.exit, label %vec.epilog.iter.check414

vec.epilog.iter.check414:                         ; preds = %middle.block407
  %min.epilog.iters.check415 = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check415, label %.lr.ph.i10.i.preheader, label %vec.epilog.ph416, !prof !45

vec.epilog.ph416:                                 ; preds = %vector.main.loop.iter.check396, %vec.epilog.iter.check414
  %vec.epilog.resume.val409 = phi i64 [ %n.vec399, %vec.epilog.iter.check414 ], [ 0, %vector.main.loop.iter.check396 ]
  %n.vec417 = and i64 %.0.lcssa.sink.i.i, -4      ; 4 uses
  %i.cv = getelementptr i8, ptr %i.c, i64 %n.vec417
  %i.cw = getelementptr i8, ptr %.0822.i, i64 %n.vec417
  %i.cx = and i64 %.0.lcssa.sink.i.i, 3
  br label %vec.epilog.vector.body418

vec.epilog.vector.body418:                        ; preds = %vec.epilog.vector.body418, %vec.epilog.ph416
  %index419 = phi i64 [ %vec.epilog.resume.val409, %vec.epilog.ph416 ], [ %index.next423, %vec.epilog.vector.body418 ] ; 3 uses
  %next.gep420.a = getelementptr i8, ptr %i.c, i64 %index419
  %next.gep421 = getelementptr i8, ptr %.0822.i, i64 %index419
  %wide.load422 = load <4 x i8>, ptr %next.gep420.a, align 4, !tbaa !23
  store <4 x i8> %wide.load422, ptr %next.gep421, align 1, !tbaa !23
  %index.next423 = add nuw i64 %index419, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next423, %n.vec417
  br i1 %i.cy, label %vec.epilog.middle.block424, label %vec.epilog.vector.body418, !llvm.loop !927

vec.epilog.middle.block424:                       ; preds = %vec.epilog.vector.body418
  %cmp.n425 = icmp eq i64 %.0.lcssa.sink.i.i, %n.vec417
  br i1 %cmp.n425, label %tg3json__write_exp.exit, label %.lr.ph.i10.i.preheader

.lr.ph.i10.i.preheader:                           ; preds = %iter.check412, %vec.epilog.iter.check414, %vec.epilog.middle.block424
  %.010.i.i.ph = phi ptr [ %i.c, %iter.check412 ], [ %i.cp, %vec.epilog.iter.check414 ], [ %i.cv, %vec.epilog.middle.block424 ] ; 2 uses
  %.059.i.i.ph = phi ptr [ %.0822.i, %iter.check412 ], [ %i.cq, %vec.epilog.iter.check414 ], [ %i.cw, %vec.epilog.middle.block424 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %.0.lcssa.sink.i.i, %iter.check412 ], [ %i.cr, %vec.epilog.iter.check414 ], [ %i.cx, %vec.epilog.middle.block424 ] ; 4 uses
  %i.cz = add i64 %.068.i.i.ph, -1
  %xtraiter455 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod456.not, label %.lr.ph.i10.i.prol.loopexit, label %.lr.ph.i10.i.prol

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.i.preheader, %.lr.ph.i10.i.prol
  %.010.i.i.prol = phi ptr [ %i.db, %.lr.ph.i10.i.prol ], [ %.010.i.i.ph, %.lr.ph.i10.i.preheader ] ; 2 uses
  %.059.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i10.i.prol ], [ %.059.i.i.ph, %.lr.ph.i10.i.preheader ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.da, %.lr.ph.i10.i.prol ], [ %.068.i.i.ph, %.lr.ph.i10.i.preheader ]
  %prol.iter457 = phi i64 [ %prol.iter457.next, %.lr.ph.i10.i.prol ], [ 0, %.lr.ph.i10.i.preheader ]
  %i.da = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 1 ; 2 uses
  %i.dc = load i8, ptr %.010.i.i.prol, align 1, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %.059.i.i.prol, i64 1 ; 2 uses
  store i8 %i.dc, ptr %.059.i.i.prol, align 1, !tbaa !23
  %prol.iter457.next = add i64 %prol.iter457, 1   ; 2 uses
  %prol.iter457.cmp.not = icmp eq i64 %prol.iter457.next, %xtraiter455
  br i1 %prol.iter457.cmp.not, label %.lr.ph.i10.i.prol.loopexit, label %.lr.ph.i10.i.prol, !llvm.loop !928

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.i.preheader
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i10.i.preheader ], [ %i.db, %.lr.ph.i10.i.prol ]
  %.059.i.i.unr = phi ptr [ %.059.i.i.ph, %.lr.ph.i10.i.preheader ], [ %i.dd, %.lr.ph.i10.i.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i10.i.preheader ], [ %i.da, %.lr.ph.i10.i.prol ]
  %i.de = icmp ult i64 %i.cz, 7
  br i1 %i.de, label %tg3json__write_exp.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.010.i.i = phi ptr [ %i.eb, %.lr.ph.i10.i ], [ %.010.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 9 uses
  %.059.i.i = phi ptr [ %i.ed, %.lr.ph.i10.i ], [ %.059.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.ea, %.lr.ph.i10.i ], [ %.068.i.i.unr, %.lr.ph.i10.i.prol.loopexit ]
  %i.df = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1
  %i.dg = load i8, ptr %.010.i.i, align 1, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 1
  store i8 %i.dg, ptr %.059.i.i, align 1, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 2
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 2
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !23
  %i.dl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 3
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !23
  %i.dn = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 3
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !23
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !23
  %i.dq = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 4
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 5
  %i.ds = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dt = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 5
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !23
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 6
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !23
  %i.dw = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 6
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 7
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 7
  store i8 %i.dy, ptr %i.dw, align 1, !tbaa !23
  %i.ea = add i64 %.068.i.i, -8                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.ec = load i8, ptr %i.dx, align 1, !tbaa !23
  %i.ed = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 8
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !23
  %.not.i11.i.7 = icmp eq i64 %i.ea, 0
  br i1 %.not.i11.i.7, label %tg3json__write_exp.exit, label %.lr.ph.i10.i, !llvm.loop !929

tg3json__write_exp.exit:                          ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %middle.block407, %vec.epilog.middle.block424, %tg3json__utoa.exit.thread.i
  %.0821.i = phi ptr [ %.0823.i, %tg3json__utoa.exit.thread.i ], [ %.0822.i, %middle.block407 ], [ %.0822.i, %vec.epilog.middle.block424 ], [ %.0822.i, %.lr.ph.i10.i ], [ %.0822.i, %.lr.ph.i10.i.prol.loopexit ]
  %.0.lcssa.sink.i14.i = phi i64 [ 0, %tg3json__utoa.exit.thread.i ], [ %.0.lcssa.sink.i.i, %middle.block407 ], [ %.0.lcssa.sink.i.i, %vec.epilog.middle.block424 ], [ %.0.lcssa.sink.i.i, %.lr.ph.i10.i ], [ %.0.lcssa.sink.i.i, %.lr.ph.i10.i.prol.loopexit ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0821.i, i64 %.0.lcssa.sink.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.loopexit76

bb.g:                                             ; preds = %bb.c
  %i.ef = icmp sgt i32 %3, -1
  br i1 %i.ef, label %.preheader77, label %bb.h

.preheader77:                                     ; preds = %bb.g
  %i.eg = icmp sgt i32 %2, 0
  br i1 %i.eg, label %iter.check289, label %.preheader

iter.check289:                                    ; preds = %.preheader77
  %wide.trip.count132 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check275 = icmp ult i32 %2, 4
  %i.eh = sub i64 %i.a, %.064204
  %diff.check274 = icmp ugt i64 %i.eh, -32
  %or.cond432.a = select i1 %min.iters.check275, i1 true, i1 %diff.check274
  br i1 %or.cond432.a, label %.lr.ph98.preheader, label %vector.main.loop.iter.check276

vector.main.loop.iter.check276:                   ; preds = %iter.check289
  %min.iters.check277 = icmp ult i32 %2, 32
  br i1 %min.iters.check277, label %vec.epilog.ph293, label %vector.ph278

vector.ph278:                                     ; preds = %vector.main.loop.iter.check276
  %i.ei = and i64 %wide.trip.count132, 28
  %n.vec279 = and i64 %wide.trip.count132, 2147483616 ; 5 uses
  %i.ej = getelementptr i8, ptr %.064, i64 %n.vec279 ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph278
  %index281 = phi i64 [ 0, %vector.ph278 ], [ %index.next285, %vector.body280 ] ; 3 uses
  %next.gep282 = getelementptr i8, ptr %.064, i64 %index281 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %index281 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load283.a = load <16 x i8>, ptr %i.ek, align 1, !tbaa !23
  %wide.load284 = load <16 x i8>, ptr %i.el, align 1, !tbaa !23
  %i.em = getelementptr i8, ptr %next.gep282, i64 16
  store <16 x i8> %wide.load283.a, ptr %next.gep282, align 1, !tbaa !23
  store <16 x i8> %wide.load284, ptr %i.em, align 1, !tbaa !23
  %index.next285 = add nuw i64 %index281, 32      ; 2 uses
  %i.en = icmp eq i64 %index.next285, %n.vec279
  br i1 %i.en, label %middle.block286, label %vector.body280, !llvm.loop !930

middle.block286:                                  ; preds = %vector.body280
  %cmp.n287 = icmp eq i64 %n.vec279, %wide.trip.count132
  br i1 %cmp.n287, label %.preheader, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block286
  %min.epilog.iters.check292 = icmp eq i64 %i.ei, 0
  br i1 %min.epilog.iters.check292, label %.lr.ph98.preheader, label %vec.epilog.ph293, !prof !45

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check276, %vec.epilog.iter.check291
  %vec.epilog.resume.val288 = phi i64 [ %n.vec279, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check276 ]
  %n.vec294 = and i64 %wide.trip.count132, 2147483644 ; 4 uses
  %i.eo = getelementptr i8, ptr %.064, i64 %n.vec294 ; 2 uses
  br label %vec.epilog.vector.body295

vec.epilog.vector.body295:                        ; preds = %vec.epilog.vector.body295, %vec.epilog.ph293
  %index296 = phi i64 [ %vec.epilog.resume.val288, %vec.epilog.ph293 ], [ %index.next299, %vec.epilog.vector.body295 ] ; 3 uses
  %next.gep297 = getelementptr i8, ptr %.064, i64 %index296
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %index296
  %wide.load298 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !23
  store <4 x i8> %wide.load298, ptr %next.gep297, align 1, !tbaa !23
  %index.next299 = add nuw i64 %index296, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next299, %n.vec294
  br i1 %i.eq, label %vec.epilog.middle.block300, label %vec.epilog.vector.body295, !llvm.loop !931

vec.epilog.middle.block300:                       ; preds = %vec.epilog.vector.body295
  %cmp.n301 = icmp eq i64 %n.vec294, %wide.trip.count132
  br i1 %cmp.n301, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check289, %vec.epilog.iter.check291, %vec.epilog.middle.block300
  %indvars.iv129.ph = phi i64 [ 0, %iter.check289 ], [ %n.vec279, %vec.epilog.iter.check291 ], [ %n.vec294, %vec.epilog.middle.block300 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check289 ], [ %i.ej, %vec.epilog.iter.check291 ], [ %i.eo, %vec.epilog.middle.block300 ] ; 2 uses
  %i.er = sub nsw i64 %wide.trip.count132, %indvars.iv129.ph
  %xtraiter449 = and i64 %i.er, 7                 ; 2 uses
  %lcmp.mod450.not = icmp eq i64 %xtraiter449, 0
  br i1 %lcmp.mod450.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv129.prol = phi i64 [ %indvars.iv.next130.prol, %.lr.ph98.prol ], [ %indvars.iv129.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.eu, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter451 = phi i64 [ %prol.iter451.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129.prol
  %i.et = load i8, ptr %i.es, align 1, !tbaa !23
  %i.eu = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.et, ptr %.36796.prol, align 1, !tbaa !23
  %indvars.iv.next130.prol = add nuw nsw i64 %indvars.iv129.prol, 1 ; 2 uses
  %prol.iter451.next = add i64 %prol.iter451, 1   ; 2 uses
  %prol.iter451.cmp.not = icmp eq i64 %prol.iter451.next, %xtraiter449
  br i1 %prol.iter451.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !932

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa438.unr = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.eu, %.lr.ph98.prol ]
  %indvars.iv129.unr = phi i64 [ %indvars.iv129.ph, %.lr.ph98.preheader ], [ %indvars.iv.next130.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.eu, %.lr.ph98.prol ]
  %i.ev = sub nsw i64 %indvars.iv129.ph, %wide.trip.count132
  %i.ew = icmp ugt i64 %i.ev, -8
  br i1 %i.ew, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block286, %vec.epilog.middle.block300, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.eo, %vec.epilog.middle.block300 ], [ %i.ej, %middle.block286 ], [ %.lcssa438.unr, %.lr.ph98.prol.loopexit ], [ %i.gk, %.lr.ph98 ] ; 6 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %iter.check317

iter.check317:                                    ; preds = %.preheader
  %i.ex = zext nneg i32 %3 to i64                 ; 5 uses
  %min.iters.check304 = icmp ult i32 %3, 8
  br i1 %min.iters.check304, label %.lr.ph102.preheader, label %vector.main.loop.iter.check305

vector.main.loop.iter.check305:                   ; preds = %iter.check317
  %min.iters.check306 = icmp ult i32 %3, 32
  br i1 %min.iters.check306, label %vec.epilog.ph321, label %vector.ph307

vector.ph307:                                     ; preds = %vector.main.loop.iter.check305
  %i.ey = and i64 %i.ex, 24
  %n.vec308 = and i64 %i.ex, 2147483616           ; 5 uses
  %i.ez = trunc nuw nsw i64 %n.vec308 to i32
  %i.fa = getelementptr i8, ptr %.367.lcssa, i64 %n.vec308 ; 2 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next312, %vector.body309 ] ; 2 uses
  %next.gep311 = getelementptr i8, ptr %.367.lcssa, i64 %index310 ; 2 uses
  %i.fb = getelementptr i8, ptr %next.gep311, i64 16
  store <16 x i8> splat (i8 48), ptr %next.gep311, align 1, !tbaa !23
  store <16 x i8> splat (i8 48), ptr %i.fb, align 1, !tbaa !23
  %index.next312 = add nuw i64 %index310, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next312, %n.vec308
  br i1 %i.fc, label %middle.block313, label %vector.body309, !llvm.loop !933

middle.block313:                                  ; preds = %vector.body309
  %cmp.n314 = icmp eq i64 %n.vec308, %i.ex
  br i1 %cmp.n314, label %.loopexit76, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block313
  %min.epilog.iters.check320 = icmp eq i64 %i.ey, 0
  br i1 %min.epilog.iters.check320, label %.lr.ph102.preheader, label %vec.epilog.ph321, !prof !61

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check305, %vec.epilog.iter.check319
  %vec.epilog.resume.val315 = phi i64 [ %n.vec308, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check305 ]
  %n.vec322 = and i64 %i.ex, 2147483640           ; 4 uses
  %i.fd = trunc nuw nsw i64 %n.vec322 to i32
  %i.fe = getelementptr i8, ptr %.367.lcssa, i64 %n.vec322 ; 2 uses
  br label %vec.epilog.vector.body323

vec.epilog.vector.body323:                        ; preds = %vec.epilog.vector.body323, %vec.epilog.ph321
  %index324 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph321 ], [ %index.next326, %vec.epilog.vector.body323 ] ; 2 uses
  %next.gep325 = getelementptr i8, ptr %.367.lcssa, i64 %index324
  store <8 x i8> splat (i8 48), ptr %next.gep325, align 1, !tbaa !23
  %index.next326 = add nuw i64 %index324, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next326, %n.vec322
  br i1 %i.ff, label %vec.epilog.middle.block327, label %vec.epilog.vector.body323, !llvm.loop !934

vec.epilog.middle.block327:                       ; preds = %vec.epilog.vector.body323
  %cmp.n328 = icmp eq i64 %n.vec322, %i.ex
  br i1 %cmp.n328, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block327
  %.2101.ph = phi i32 [ 0, %iter.check317 ], [ %i.ez, %vec.epilog.iter.check319 ], [ %i.fd, %vec.epilog.middle.block327 ]
  %.468100.ph = phi ptr [ %.367.lcssa, %iter.check317 ], [ %i.fa, %vec.epilog.iter.check319 ], [ %i.fe, %vec.epilog.middle.block327 ]
  br label %.lr.ph102

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.7, %.lr.ph98 ], [ %indvars.iv129.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.gk, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !23
  %i.fi = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.fh, ptr %.36796, align 1, !tbaa !23
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !23
  %i.fm = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !23
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.fp, ptr %i.fm, align 1, !tbaa !23
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 3
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !23
  %i.fu = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.ft, ptr %i.fq, align 1, !tbaa !23
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !23
  %i.fy = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.fx, ptr %i.fu, align 1, !tbaa !23
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 5
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !23
  %i.gc = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.gb, ptr %i.fy, align 1, !tbaa !23
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 6
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !23
  %i.gg = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.gf, ptr %i.gc, align 1, !tbaa !23
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.umax.v4i32
!722 = !{!82, !20, i64 72}
!723 = distinct !{!723, !40, !43, !44}
!724 = distinct !{!724, !40, !43, !44}
!725 = distinct !{!725, !46}
!726 = distinct !{!726, !40, !43}
!727 = distinct !{!727, !40, !43, !44}
!728 = distinct !{!728, !40, !43, !44}
!729 = distinct !{!729, !46}
!730 = distinct !{!730, !40, !43}
!731 = distinct !{!731, !40, !43, !44}
!732 = distinct !{!732, !40, !43, !44}
!733 = distinct !{!733, !46}
!734 = distinct !{!734, !40, !43}
!735 = distinct !{!735, !40, !43, !44}
!736 = distinct !{!736, !40, !43, !44}
!737 = distinct !{!737, !46}
!738 = distinct !{!738, !40, !43}
!739 = !{!287, !17, i64 28}
!740 = distinct !{!740, !40, !43, !44}
!741 = distinct !{!741, !40, !43, !44}
!742 = distinct !{!742, !46}
!743 = distinct !{!743, !40, !43}
!744 = distinct !{!744, !40, !43, !44}
!745 = distinct !{!745, !40, !43, !44}
!746 = distinct !{!746, !46}
!747 = distinct !{!747, !40, !43}
!748 = distinct !{!748, !40}
!749 = distinct !{!749, !40, !43, !44}
!750 = distinct !{!750, !46}
!751 = distinct !{!751, !40, !43, !44}
!752 = distinct !{!752, !40, !43}
!753 = distinct !{!753, !40, !43, !44}
!754 = distinct !{!754, !40, !43, !44}
!755 = distinct !{!755, !46}
!756 = distinct !{!756, !40, !43}
!757 = distinct !{!757, !40, !43, !44}
!758 = distinct !{!758, !40, !43, !44}
!759 = distinct !{!759, !46}
!760 = distinct !{!760, !40, !43}
!761 = !{!90, !17, i64 44}
!762 = distinct !{!762, !40, !43, !44}
!763 = distinct !{!763, !40, !43, !44}
!764 = distinct !{!764, !46}
!765 = distinct !{!765, !40, !43}
!766 = distinct !{!766, !40, !43, !44}
!767 = distinct !{!767, !40, !43, !44}
!768 = distinct !{!768, !40, !44, !43}
!769 = !{!96, !17, i64 32}
!770 = !{!96, !92, i64 56}
!771 = !{!96, !17, i64 64}
!772 = !{!96, !92, i64 72}
!773 = !{!96, !17, i64 80}
!774 = distinct !{!774, !40, !43, !44}
!775 = distinct !{!775, !40, !43, !44}
!776 = distinct !{!776, !46}
!777 = distinct !{!777, !40, !43}
!778 = distinct !{!778, !40}
!779 = distinct !{!779, !40}
!780 = distinct !{!780, !40, !43, !44}
!781 = distinct !{!781, !40, !43, !44}
!782 = distinct !{!782, !46}
!783 = distinct !{!783, !40, !43}
!784 = distinct !{!784, !40}
!785 = distinct !{!785, !40, !43, !44}
!786 = distinct !{!786, !40, !43, !44}
!787 = distinct !{!787, !46}
!788 = distinct !{!788, !40, !43}
!789 = distinct !{!789, !40}
!790 = !{!265, !21, i64 0}
!791 = !{!265, !17, i64 8}
!792 = !{!194, !92, i64 32}
!793 = !{!194, !17, i64 40}
!794 = distinct !{!794, !40, !43, !44}
!795 = distinct !{!795, !40, !43, !44}
!796 = distinct !{!796, !46}
!797 = distinct !{!797, !40, !43}
!798 = !{!199, !92, i64 288}
!799 = !{!199, !17, i64 296}
!800 = distinct !{!800, !40, !43, !44}
!801 = distinct !{!801, !40, !43, !44}
!802 = distinct !{!802, !46}
!803 = distinct !{!803, !40, !43}
!804 = !{!212, !62, i64 96}
!805 = !{!212, !62, i64 104}
!806 = !{!212, !17, i64 32}
!807 = !{!212, !17, i64 112}
!808 = !{!206, !17, i64 4}
!809 = !{!209, !17, i64 4}
!810 = !{!213, !21, i64 40}
!811 = !{!213, !17, i64 64}
!812 = distinct !{!812, !40, !43, !44}
!813 = distinct !{!813, !40, !43, !44}
!814 = distinct !{!814, !46}
!815 = distinct !{!815, !40, !43}
!816 = distinct !{!816, !40, !43, !44}
!817 = distinct !{!817, !40, !43, !44}
!818 = distinct !{!818, !46}
!819 = distinct !{!819, !40, !43}
!820 = distinct !{!820, !40, !43, !44}
!821 = distinct !{!821, !40, !43, !44}
!822 = distinct !{!822, !46}
!823 = distinct !{!823, !40, !43}
!824 = distinct !{!824, !40, !43, !44}
!825 = distinct !{!825, !40, !43, !44}
!826 = distinct !{!826, !46}
!827 = distinct !{!827, !40, !43}
!828 = distinct !{!828, !40, !43, !44}
!829 = distinct !{!829, !40, !43, !44}
!830 = distinct !{!830, !46}
!831 = distinct !{!831, !40, !43}
!832 = !{!"tg3_sampler", !86, i64 0, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !89, i64 32}
!833 = !{!832, !17, i64 24}
!834 = !{!832, !17, i64 28}
!835 = !{!832, !17, i64 16}
!836 = !{!832, !17, i64 20}
!837 = distinct !{!837, !40, !43, !44}
!838 = distinct !{!838, !40, !43, !44}
!839 = distinct !{!839, !46}
!840 = distinct !{!840, !40, !43}
!841 = distinct !{!841, !40, !43, !44}
!842 = distinct !{!842, !40, !43, !44}
!843 = distinct !{!843, !46}
!844 = distinct !{!844, !40, !43}
!845 = distinct !{!845, !40, !43, !44}
!846 = distinct !{!846, !40, !43, !44}
!847 = distinct !{!847, !46}
!848 = distinct !{!848, !40, !43}
!849 = distinct !{!849, !40}
!850 = distinct !{!850, !40, !43, !44}
!851 = distinct !{!851, !40, !43, !44}
!852 = distinct !{!852, !46}
!853 = distinct !{!853, !40, !43}
!854 = distinct !{!854, !40, !43, !44}
!855 = distinct !{!855, !40, !43, !44}
!856 = distinct !{!856, !46}
!857 = distinct !{!857, !40, !43}
!858 = distinct !{!858, !40}
!859 = distinct !{!859, !40, !43, !44}
!860 = distinct !{!860, !40, !43, !44}
!861 = distinct !{!861, !46}
!862 = distinct !{!862, !40, !43}
!863 = distinct !{!863, !40, !43, !44}
!864 = distinct !{!864, !40, !43, !44}
!865 = distinct !{!865, !46}
!866 = distinct !{!866, !40, !43}
!867 = distinct !{!867, !40, !43, !44}
!868 = distinct !{!868, !40, !43, !44}
!869 = distinct !{!869, !46}
!870 = distinct !{!870, !40, !43}
!871 = !{!251, !62, i64 32}
!872 = !{!251, !62, i64 40}
!873 = !{!251, !62, i64 48}
!874 = !{!251, !62, i64 56}
!875 = !{!251, !62, i64 120}
!876 = !{!251, !62, i64 128}
!877 = !{!251, !62, i64 136}
!878 = !{!251, !62, i64 144}
!879 = distinct !{!879, !40, !43, !44}
!880 = distinct !{!880, !40, !43, !44}
!881 = distinct !{!881, !46}
!882 = distinct !{!882, !40, !43}
!883 = distinct !{!883, !40, !43, !44}
!884 = distinct !{!884, !40, !43, !44}
!885 = distinct !{!885, !46}
!886 = distinct !{!886, !40, !43}
!887 = distinct !{!887, !40, !43, !44}
!888 = distinct !{!888, !40, !43, !44}
!889 = distinct !{!889, !46}
!890 = distinct !{!890, !40, !43}
!891 = !{!258, !62, i64 40}
!892 = !{!258, !62, i64 64}
!893 = !{!258, !21, i64 48}
!894 = !{!258, !62, i64 72}
!895 = !{!287, !17, i64 16}
!896 = distinct !{ptr @tg3_model_free, null}
!897 = distinct !{!897, !40, !43, !44}
!898 = distinct !{!898, !40, !43, !44}
!899 = distinct !{!899, !46}
!900 = distinct !{!900, !40, !43}
!901 = distinct !{!901, !40, !43, !44}
!902 = distinct !{!902, !40, !43, !44}
!903 = distinct !{!903, !46}
!904 = distinct !{!904, !40, !43}
!905 = distinct !{!905, !40}
!906 = distinct !{!906, !40, !43, !44}
!907 = distinct !{!907, !40, !43, !44}
!908 = distinct !{!908, !46}
!909 = distinct !{!909, !40, !43}
!910 = distinct !{!910, !40}
!911 = distinct !{!911, !40}
!912 = distinct !{!912, !40}
!913 = distinct !{!913, !40}
!914 = distinct !{!914, !40}
!915 = distinct !{!915, !46}
!916 = distinct !{!916, !40}
!917 = distinct !{!917, !40}
!918 = distinct !{!918, !40, !43, !44}
!919 = distinct !{!919, !40, !43, !44}
!920 = distinct !{!920, !46}
!921 = distinct !{!921, !40, !43}
!922 = distinct !{!922, !40, !43, !44}
!923 = distinct !{!923, !40, !43, !44}
!924 = distinct !{!924, !40}
!925 = distinct !{!925, !40, !44, !43}
!926 = distinct !{!926, !40, !43, !44}
!927 = distinct !{!927, !40, !43, !44}
!928 = distinct !{!928, !46}
!929 = distinct !{!929, !40, !43}
!930 = distinct !{!930, !40, !43, !44}
!931 = distinct !{!931, !40, !43, !44}
!932 = distinct !{!932, !46}
!933 = distinct !{!933, !40, !43, !44}
!934 = distinct !{!934, !40, !43, !44}
!935 = distinct !{!935, !40, !43}
!936 = distinct !{!936, !40, !44, !43}
!937 = distinct !{!937, !40, !43, !44}
!938 = distinct !{!938, !40, !43, !44}
!939 = distinct !{!939, !46}
!940 = distinct !{!940, !40, !43}
!941 = distinct !{!941, !40, !43, !44}
!942 = distinct !{!942, !40, !43, !44}
!943 = distinct !{!943, !40, !43}
!944 = distinct !{!944, !40, !43, !44}
!945 = distinct !{!945, !40, !43, !44}
!946 = distinct !{!946, !40, !43, !44}
!947 = distinct !{!947, !40, !43, !44}
!948 = distinct !{!948, !46}
!949 = distinct !{!949, !40, !44, !43}
!950 = distinct !{!950, !40, !43}
!951 = distinct !{!951, !40, !43, !44}
!952 = distinct !{!952, !40, !43, !44}
!953 = distinct !{!953, !46}
!954 = distinct !{!954, !40, !43}
!955 = distinct !{!955, !40}
!956 = distinct !{!956, !40, !959}
!957 = distinct !{!957, !46}
!958 = !{!116, !116, i64 0}
!959 = !{!"llvm.loop.unswitch.partial.disable"}
!960 = distinct !{!960, !40}
!961 = distinct !{!961, !40, !43, !44}
!962 = distinct !{!962, !40, !43, !44}
!963 = distinct !{!963, !46}
!964 = distinct !{!964, !40, !43}
!965 = distinct !{!965, !40}
!966 = !{!133, !17, i64 220}
!967 = !{!133, !17, i64 216}
!968 = !{!298, !17, i64 16}
!969 = distinct !{!969, !40, !43, !44}
!970 = distinct !{!970, !40, !43, !44}
!971 = distinct !{!971, !46}
!972 = distinct !{!972, !40, !43}
!973 = distinct !{!973, !40, !43, !44}
!974 = distinct !{!974, !40}
!975 = distinct !{!975, !40, !43, !44}
!976 = distinct !{!976, !40, !43, !44}
!977 = distinct !{!977, !46}
!978 = distinct !{!978, !40, !43}
!979 = distinct !{!979, !40, !44, !43}
!980 = !{!92, !92, i64 0}
!981 = distinct !{!981, !40, !43, !44}
!982 = distinct !{!982, !40, !43, !44}
!983 = distinct !{!983, !46}
!984 = distinct !{!984, !40, !43}
!985 = distinct !{!985, !40}
!986 = !{!182, !182, i64 0}
!987 = distinct !{!987, !40}
!988 = distinct !{!988, !40}
!989 = distinct !{!989, !40}
!990 = distinct !{!990, !40, !43, !44}
!991 = distinct !{!991, !40, !43, !44}
!992 = distinct !{!992, !46}
!993 = distinct !{!993, !40, !43}
!994 = distinct !{!994, !40, !43, !44}
!995 = distinct !{!995, !40, !43, !44}
!996 = distinct !{!996, !46}
!997 = distinct !{!997, !40, !43}
!998 = distinct !{!998, !40}
!999 = distinct !{!999, !40}
!1000 = !{!298, !21, i64 0}
!1001 = !{!298, !17, i64 8}
!1002 = distinct !{!1002, !40, !43, !44}
!1003 = distinct !{!1003, !40, !43, !44}
!1004 = distinct !{!1004, !46}
!1005 = distinct !{!1005, !40, !43}
!1006 = distinct !{!1006, !40}
!1007 = distinct !{!1007, !40}
!1008 = !{!297, !21, i64 16}
!1009 = !{!297, !17, i64 24}
!1010 = !{!"tg3_kv_pair", !86, i64 0, !297, i64 16}
!1011 = !{!1010, !21, i64 0}
!1012 = !{!1010, !17, i64 8}
!1013 = distinct !{!1013, !40, !43, !44}
!1014 = distinct !{!1014, !40, !43, !44}
!1015 = distinct !{!1015, !46}
!1016 = distinct !{!1016, !40, !43}
!1017 = distinct !{!1017, !40, !43, !44}
!1018 = distinct !{!1018, !40, !43, !44}
!1019 = distinct !{!1019, !46}
!1020 = distinct !{!1020, !40, !43}
!1021 = distinct !{!1021, !40}
!1022 = distinct !{!1022, !40, !43, !44}
!1023 = distinct !{!1023, !40, !43, !44}
!1024 = distinct !{!1024, !46}
!1025 = distinct !{!1025, !40, !43}
!1026 = distinct !{!1026, !40}
!1027 = !{!204, !17, i64 4}
end_hunk_2
