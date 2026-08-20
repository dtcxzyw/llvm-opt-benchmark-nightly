inline.NumInlined: 906
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 287
begin_hunk_0_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !12
  %.not14.i.i.i954.4 = icmp eq i8 %i.qx, 58
  br i1 %.not14.i.i.i954.4, label %tg3__memset.exit108.i, label %tg3_is_data_uri.exit.thread.i

tg3__memset.exit108.i:                            ; preds = %.preheader.i.i952.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  store <16 x i8> zeroinitializer, ptr %i.j, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.gu, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.gv, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.gw, align 16, !tbaa !12
  %i.qy = load ptr, ptr %0, align 8, !tbaa !207   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.qz = load i8, ptr %i.ql, align 1, !tbaa !12
  %.not14.i.i.i.i = icmp eq i8 %i.qz, 100
  br i1 %.not14.i.i.i.i, label %.preheader53.1.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader53.1.i.i.i:                             ; preds = %tg3__memset.exit108.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ql, i64 1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !12
  %.not14.i.1.i.i.i = icmp eq i8 %i.rb, 97
  br i1 %.not14.i.1.i.i.i, label %.preheader53.2.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader53.2.i.i.i:                             ; preds = %.preheader53.1.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ql, i64 2
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !12
  %.not14.i.2.i.i.i = icmp eq i8 %i.rd, 116
  br i1 %.not14.i.2.i.i.i, label %.preheader53.3.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader53.3.i.i.i:                             ; preds = %.preheader53.2.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.ql, i64 3
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !12
  %.not14.i.3.i.i.i = icmp eq i8 %i.rf, 97
  br i1 %.not14.i.3.i.i.i, label %.preheader53.4.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader53.4.i.i.i:                             ; preds = %.preheader53.3.i.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !12
  %.not14.i.4.i.i.i = icmp eq i8 %i.rh, 58
  br i1 %.not14.i.4.i.i.i, label %tg3__memcmp.exit.thread.i.i.i, label %tg3__decode_data_uri.exit.i

tg3__memcmp.exit.thread.i.i.i:                    ; preds = %.preheader53.4.i.i.i
  %.ptr51.i.i.i = getelementptr i8, ptr %i.ql, i64 5 ; 7 uses
  %i.ri = zext i32 %i.hz to i64                   ; 3 uses
  %i.rj = icmp ugt i32 %i.hz, 5
  br i1 %i.rj, label %.lr.ph.i.i110.i, label %tg3__decode_data_uri.exit.i

.lr.ph.i.i110.i:                                  ; preds = %tg3__memcmp.exit.thread.i.i.i, %bb.bb
  %.0.ptr59.i.i.i = phi ptr [ %.0.ptr.i.i.i, %bb.bb ], [ %.ptr51.i.i.i, %tg3__memcmp.exit.thread.i.i.i ] ; 10 uses
  %.0.idx58.i.i.i = phi i64 [ %.0.add.i.i.i, %bb.bb ], [ 5, %tg3__memcmp.exit.thread.i.i.i ] ; 4 uses
  %i.rk = load i8, ptr %.0.ptr59.i.i.i, align 1, !tbaa !12
  %.not36.i.i.i = icmp eq i8 %i.rk, 59
  br i1 %.not36.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i110.i
  %.0.add.i.i.i = add nuw nsw i64 %.0.idx58.i.i.i, 1 ; 3 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 %.0.add.i.i.i
  %exitcond.not.i.i111.i = icmp eq i64 %.0.add.i.i.i, %i.ri
  br i1 %exitcond.not.i.i111.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i.i110.i, !llvm.loop !276

bb.bc:                                            ; preds = %.lr.ph.i.i110.i
  %i.rl = ptrtoint ptr %.0.ptr59.i.i.i to i64
  %i.rm = ptrtoint ptr %.ptr51.i.i.i to i64
  %i.rn = sub i64 %i.rl, %i.rm                    ; 5 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.rn, i64 63) ; 7 uses
  %.not7.i.i.i.i = icmp eq i64 %.0.idx58.i.i.i, 5
  br i1 %.not7.i.i.i.i, label %tg3__memcpy.exit.i.i.i, label %iter.check4116

iter.check4116:                                   ; preds = %bb.bc
  %min.iters.check4099 = icmp ult i64 %i.rn, 4
  br i1 %min.iters.check4099, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check4100

vector.main.loop.iter.check4100:                  ; preds = %iter.check4116
  %min.iters.check4101 = icmp ult i64 %i.rn, 16
  br i1 %min.iters.check4101, label %vec.epilog.ph4120, label %vector.ph4102

vector.ph4102:                                    ; preds = %vector.main.loop.iter.check4100
  %i.ro = and i64 %spec.store.select.i.i.i, 12
  %n.vec4103 = and i64 %spec.store.select.i.i.i, 48 ; 5 uses
  %i.rp = getelementptr i8, ptr %.ptr51.i.i.i, i64 %n.vec4103
  %i.rq = getelementptr i8, ptr %i.gx, i64 %n.vec4103
  %i.rr = and i64 %spec.store.select.i.i.i, 15
  br label %vector.body4104

vector.body4104:                                  ; preds = %vector.body4104, %vector.ph4102
  %index4105 = phi i64 [ 0, %vector.ph4102 ], [ %index.next4109, %vector.body4104 ] ; 3 uses
  %next.gep4106 = getelementptr i8, ptr %.ptr51.i.i.i, i64 %index4105
  %next.gep4107 = getelementptr i8, ptr %i.gx, i64 %index4105
  %wide.load4108 = load <16 x i8>, ptr %next.gep4106, align 1, !tbaa !12
  store <16 x i8> %wide.load4108, ptr %next.gep4107, align 8, !tbaa !12
  %index.next4109 = add nuw i64 %index4105, 16    ; 2 uses
  %i.rs = icmp eq i64 %index.next4109, %n.vec4103
  br i1 %i.rs, label %middle.block4110, label %vector.body4104, !llvm.loop !277

middle.block4110:                                 ; preds = %vector.body4104
  %cmp.n4111 = icmp eq i64 %i.rn, %n.vec4103
  br i1 %cmp.n4111, label %tg3__memcpy.exit.i.i.i, label %vec.epilog.iter.check4118

vec.epilog.iter.check4118:                        ; preds = %middle.block4110
  %min.epilog.iters.check4119 = icmp eq i64 %i.ro, 0
  br i1 %min.epilog.iters.check4119, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph4120, !prof !278

vec.epilog.ph4120:                                ; preds = %vector.main.loop.iter.check4100, %vec.epilog.iter.check4118
  %vec.epilog.resume.val4112 = phi i64 [ %n.vec4103, %vec.epilog.iter.check4118 ], [ 0, %vector.main.loop.iter.check4100 ]
  %n.vec4121 = and i64 %spec.store.select.i.i.i, 60 ; 4 uses
  %i.rt = getelementptr i8, ptr %.ptr51.i.i.i, i64 %n.vec4121
  %i.ru = getelementptr i8, ptr %i.gx, i64 %n.vec4121
  %i.rv = and i64 %spec.store.select.i.i.i, 3
  br label %vec.epilog.vector.body4122

vec.epilog.vector.body4122:                       ; preds = %vec.epilog.vector.body4122, %vec.epilog.ph4120
  %index4123 = phi i64 [ %vec.epilog.resume.val4112, %vec.epilog.ph4120 ], [ %index.next4127, %vec.epilog.vector.body4122 ] ; 3 uses
  %next.gep4124 = getelementptr i8, ptr %.ptr51.i.i.i, i64 %index4123
  %next.gep4125 = getelementptr i8, ptr %i.gx, i64 %index4123
  %wide.load4126 = load <4 x i8>, ptr %next.gep4124, align 1, !tbaa !12
  store <4 x i8> %wide.load4126, ptr %next.gep4125, align 4, !tbaa !12
  %index.next4127 = add nuw i64 %index4123, 4     ; 2 uses
  %i.rw = icmp eq i64 %index.next4127, %n.vec4121
  br i1 %i.rw, label %vec.epilog.middle.block4128, label %vec.epilog.vector.body4122, !llvm.loop !279

vec.epilog.middle.block4128:                      ; preds = %vec.epilog.vector.body4122
  %cmp.n4129 = icmp eq i64 %i.rn, %n.vec4121
  br i1 %cmp.n4129, label %tg3__memcpy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check4116, %vec.epilog.iter.check4118, %vec.epilog.middle.block4128
  %.010.i.i.i.i.ph = phi ptr [ %.ptr51.i.i.i, %iter.check4116 ], [ %i.rp, %vec.epilog.iter.check4118 ], [ %i.rt, %vec.epilog.middle.block4128 ]
  %.059.i.i.i.i.ph = phi ptr [ %i.gx, %iter.check4116 ], [ %i.rq, %vec.epilog.iter.check4118 ], [ %i.ru, %vec.epilog.middle.block4128 ]
  %.068.i.i.i.i.ph = phi i64 [ %spec.store.select.i.i.i, %iter.check4116 ], [ %i.rr, %vec.epilog.iter.check4118 ], [ %i.rv, %vec.epilog.middle.block4128 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ry, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.059.i.i.i.i = phi ptr [ %i.sa, %.lr.ph.i.i.i.i ], [ %.059.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.rx, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %i.rx = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 1
  %i.rz = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !12
  %i.sa = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 1
  store i8 %i.rz, ptr %.059.i.i.i.i, align 1, !tbaa !12
  %.not.i39.i.i.i = icmp eq i64 %i.rx, 0
  br i1 %.not.i39.i.i.i, label %tg3__memcpy.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !280

tg3__memcpy.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %middle.block4110, %vec.epilog.middle.block4128, %bb.bc
  %i.sb = getelementptr inbounds nuw i8, ptr %i.gx, i64 %spec.store.select.i.i.i
  store i8 0, ptr %i.sb, align 1, !tbaa !12
  %i.sc = sub nsw i64 %.0.idx58.i.i.i, %i.ri
  %i.sd = icmp ugt i64 %i.sc, -8
  br i1 %i.sd, label %tg3__decode_data_uri.exit.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %tg3__memcpy.exit.i.i.i
  %.0916.i42.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 1
  %i.se = load i8, ptr %.0916.i42.i.i.i, align 1, !tbaa !12
  %.not14.i43.i.i.i = icmp eq i8 %i.se, 98
  br i1 %.not14.i43.i.i.i, label %.preheader.1.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %.0916.i42.1.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 2
  %i.sf = load i8, ptr %.0916.i42.1.i.i.i, align 1, !tbaa !12
  %.not14.i43.1.i.i.i = icmp eq i8 %i.sf, 97
  br i1 %.not14.i43.1.i.i.i, label %.preheader.2.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %.0916.i42.2.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 3
  %i.sg = load i8, ptr %.0916.i42.2.i.i.i, align 1, !tbaa !12
  %.not14.i43.2.i.i.i = icmp eq i8 %i.sg, 115
  br i1 %.not14.i43.2.i.i.i, label %.preheader.3.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %.0916.i42.3.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 4
  %i.sh = load i8, ptr %.0916.i42.3.i.i.i, align 1, !tbaa !12
  %.not14.i43.3.i.i.i = icmp eq i8 %i.sh, 101
  br i1 %.not14.i43.3.i.i.i, label %.preheader.4.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.4.i.i.i:                               ; preds = %.preheader.3.i.i.i
  %.0916.i42.4.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 5
  %i.si = load i8, ptr %.0916.i42.4.i.i.i, align 1, !tbaa !12
  %.not14.i43.4.i.i.i = icmp eq i8 %i.si, 54
  br i1 %.not14.i43.4.i.i.i, label %.preheader.5.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.5.i.i.i:                               ; preds = %.preheader.4.i.i.i
  %.0916.i42.5.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 6
  %i.sj = load i8, ptr %.0916.i42.5.i.i.i, align 1, !tbaa !12
  %.not14.i43.5.i.i.i = icmp eq i8 %i.sj, 52
  br i1 %.not14.i43.5.i.i.i, label %.preheader.6.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.6.i.i.i:                               ; preds = %.preheader.5.i.i.i
  %.0916.i42.6.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 7
  %i.sk = load i8, ptr %.0916.i42.6.i.i.i, align 1, !tbaa !12
  %.not14.i43.6.i.i.i = icmp eq i8 %i.sk, 44
  br i1 %.not14.i43.6.i.i.i, label %bb.bd, label %tg3__decode_data_uri.exit.i

bb.bd:                                            ; preds = %.preheader.6.i.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 8 ; 3 uses
  store ptr %i.sl, ptr %6, align 8, !tbaa !281
  %.neg.i.i.i = add nsw i64 %i.ri, -8
  %gepdiff.i.i.i = sub i64 %.neg.i.i.i, %.0.idx58.i.i.i ; 3 uses
  store i64 %gepdiff.i.i.i, ptr %i.gy, align 8, !tbaa !283
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.0.i.idx.i.i = phi i64 [ 16, %bb.bd ], [ %.0.i.add.i.i, %bb.be ] ; 4 uses
  %.0.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %6, i64 %.0.i.idx.i.i
  %i.sm = load i8, ptr %.0.i.ptr.i.i, align 1, !tbaa !12
  %.not.i.i112.i = icmp eq i8 %i.sm, 0
  %.0.i.add.i.i = add nuw nsw i64 %.0.i.idx.i.i, 1
  br i1 %.not.i.i112.i, label %tg3__strlen.exit.i.i, label %bb.be, !llvm.loop !169

tg3__strlen.exit.i.i:                             ; preds = %bb.be
  %gepdiff.i.i = add nsw i64 %.0.i.idx.i.i, -16   ; 5 uses
  %spec.select.i113.i = call i64 @llvm.umin.i64(i64 %gepdiff.i.i, i64 63) ; 7 uses
  %.not7.i.i.i = icmp eq i64 %.0.i.idx.i.i, 16
  br i1 %.not7.i.i.i, label %tg3__memcpy.exit.i.i, label %iter.check4082

iter.check4082:                                   ; preds = %tg3__strlen.exit.i.i
  %min.iters.check4065 = icmp ult i64 %gepdiff.i.i, 4
  br i1 %min.iters.check4065, label %.lr.ph.i19.i.i.preheader, label %vector.main.loop.iter.check4066

vector.main.loop.iter.check4066:                  ; preds = %iter.check4082
  %min.iters.check4067 = icmp ult i64 %gepdiff.i.i, 16
  br i1 %min.iters.check4067, label %vec.epilog.ph4086, label %vector.ph4068

vector.ph4068:                                    ; preds = %vector.main.loop.iter.check4066
  %i.sn = and i64 %spec.select.i113.i, 12
  %n.vec4069 = and i64 %spec.select.i113.i, 48    ; 5 uses
  %i.so = getelementptr i8, ptr %i.gx, i64 %n.vec4069
  %i.sp = getelementptr i8, ptr %i.j, i64 %n.vec4069
  %i.sq = and i64 %spec.select.i113.i, 15
  br label %vector.body4070

vector.body4070:                                  ; preds = %vector.body4070, %vector.ph4068
  %index4071 = phi i64 [ 0, %vector.ph4068 ], [ %index.next4075, %vector.body4070 ] ; 3 uses
  %next.gep4072.a = getelementptr i8, ptr %i.gx, i64 %index4071
  %next.gep4073 = getelementptr i8, ptr %i.j, i64 %index4071
  %wide.load4074.a = load <16 x i8>, ptr %next.gep4072.a, align 8, !tbaa !12
  store <16 x i8> %wide.load4074.a, ptr %next.gep4073, align 16, !tbaa !12
  %index.next4075 = add nuw i64 %index4071, 16    ; 2 uses
  %i.sr = icmp eq i64 %index.next4075, %n.vec4069
  br i1 %i.sr, label %middle.block4076, label %vector.body4070, !llvm.loop !284

middle.block4076:                                 ; preds = %vector.body4070
  %cmp.n4077 = icmp eq i64 %gepdiff.i.i, %n.vec4069
  br i1 %cmp.n4077, label %tg3__memcpy.exit.i.i, label %vec.epilog.iter.check4084

vec.epilog.iter.check4084:                        ; preds = %middle.block4076
  %min.epilog.iters.check4085 = icmp eq i64 %i.sn, 0
  br i1 %min.epilog.iters.check4085, label %.lr.ph.i19.i.i.preheader, label %vec.epilog.ph4086, !prof !278

vec.epilog.ph4086:                                ; preds = %vector.main.loop.iter.check4066, %vec.epilog.iter.check4084
  %vec.epilog.resume.val4078 = phi i64 [ %n.vec4069, %vec.epilog.iter.check4084 ], [ 0, %vector.main.loop.iter.check4066 ]
  %n.vec4087 = and i64 %spec.select.i113.i, 60    ; 4 uses
  %i.ss = getelementptr i8, ptr %i.gx, i64 %n.vec4087
  %i.st = getelementptr i8, ptr %i.j, i64 %n.vec4087
  %i.su = and i64 %spec.select.i113.i, 3
  br label %vec.epilog.vector.body4088

vec.epilog.vector.body4088:                       ; preds = %vec.epilog.vector.body4088, %vec.epilog.ph4086
  %index4089 = phi i64 [ %vec.epilog.resume.val4078, %vec.epilog.ph4086 ], [ %index.next4093, %vec.epilog.vector.body4088 ] ; 3 uses
  %next.gep4090 = getelementptr i8, ptr %i.gx, i64 %index4089
  %next.gep4091 = getelementptr i8, ptr %i.j, i64 %index4089
  %wide.load4092 = load <4 x i8>, ptr %next.gep4090, align 4, !tbaa !12
  store <4 x i8> %wide.load4092, ptr %next.gep4091, align 4, !tbaa !12
  %index.next4093 = add nuw i64 %index4089, 4     ; 2 uses
  %i.sv = icmp eq i64 %index.next4093, %n.vec4087
  br i1 %i.sv, label %vec.epilog.middle.block4094, label %vec.epilog.vector.body4088, !llvm.loop !285

vec.epilog.middle.block4094:                      ; preds = %vec.epilog.vector.body4088
  %cmp.n4095 = icmp eq i64 %gepdiff.i.i, %n.vec4087
  br i1 %cmp.n4095, label %tg3__memcpy.exit.i.i, label %.lr.ph.i19.i.i.preheader

.lr.ph.i19.i.i.preheader:                         ; preds = %iter.check4082, %vec.epilog.iter.check4084, %vec.epilog.middle.block4094
  %.010.i.i.i.ph = phi ptr [ %i.gx, %iter.check4082 ], [ %i.so, %vec.epilog.iter.check4084 ], [ %i.ss, %vec.epilog.middle.block4094 ]
  %.059.i.i.i.ph = phi ptr [ %i.j, %iter.check4082 ], [ %i.sp, %vec.epilog.iter.check4084 ], [ %i.st, %vec.epilog.middle.block4094 ]
  %.068.i.i.i.ph = phi i64 [ %spec.select.i113.i, %iter.check4082 ], [ %i.sq, %vec.epilog.iter.check4084 ], [ %i.su, %vec.epilog.middle.block4094 ]
  br label %.lr.ph.i19.i.i

.lr.ph.i19.i.i:                                   ; preds = %.lr.ph.i19.i.i.preheader, %.lr.ph.i19.i.i
  %.010.i.i.i = phi ptr [ %i.sx, %.lr.ph.i19.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i19.i.i.preheader ] ; 2 uses
  %.059.i.i.i = phi ptr [ %i.sz, %.lr.ph.i19.i.i ], [ %.059.i.i.i.ph, %.lr.ph.i19.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi i64 [ %i.sw, %.lr.ph.i19.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i19.i.i.preheader ]
  %i.sw = add i64 %.068.i.i.i, -1                 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 1
  %i.sy = load i8, ptr %.010.i.i.i, align 1, !tbaa !12
  %i.sz = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 1
  store i8 %i.sy, ptr %.059.i.i.i, align 1, !tbaa !12
  %.not.i20.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not.i20.i.i, label %tg3__memcpy.exit.i.i, label %.lr.ph.i19.i.i, !llvm.loop !286

tg3__memcpy.exit.i.i:                             ; preds = %.lr.ph.i19.i.i, %middle.block4076, %vec.epilog.middle.block4094, %tg3__strlen.exit.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.i113.i
  store i8 0, ptr %i.ta, align 1, !tbaa !12
  %i.tb = icmp eq i64 %gepdiff.i.i.i, 0
  br i1 %i.tb, label %tg3__decode_data_uri.exit.i, label %.preheader48.i.i.i

.preheader48.i.i.i:                               ; preds = %tg3__memcpy.exit.i.i, %bb.bf
  %.03649.i.i.i = phi i64 [ %i.tg, %bb.bf ], [ %gepdiff.i.i.i, %tg3__memcpy.exit.i.i ] ; 3 uses
  %i.tc = getelementptr i8, ptr %i.sl, i64 %.03649.i.i.i
  %i.td = getelementptr i8, ptr %i.tc, i64 -1
  %i.te = load i8, ptr %i.td, align 1, !tbaa !12
  %i.tf = icmp eq i8 %i.te, 61
  br i1 %i.tf, label %bb.bf, label %.critedge.i.i.i

bb.bf:                                            ; preds = %.preheader48.i.i.i
  %i.tg = add i64 %.03649.i.i.i, -1               ; 2 uses
  %.not.i23.i.i = icmp eq i64 %i.tg, 0
  br i1 %.not.i23.i.i, label %.critedge.i.i.i, label %.preheader48.i.i.i, !llvm.loop !287

.critedge.i.i.i:                                  ; preds = %bb.bf, %.preheader48.i.i.i
  %.036.lcssa.i.i.i = phi i64 [ 0, %bb.bf ], [ %.03649.i.i.i, %.preheader48.i.i.i ] ; 3 uses
  %i.th = mul i64 %.036.lcssa.i.i.i, 3
  %i.ti = lshr i64 %i.th, 2                       ; 2 uses
  %i.tj = icmp eq ptr %i.qy, null
  br i1 %i.tj, label %tg3__decode_data_uri.exit.i, label %bb.bg

bb.bg:                                            ; preds = %.critedge.i.i.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.tl, 0
  %i.tm = add i64 %i.tl, -1
  %or.cond28.i.i.i.i = icmp ult i64 %i.tm, %i.ti
  br i1 %or.cond28.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tn = add nuw nsw i64 %i.ti, 8
  %i.to = and i64 %i.tn, 9223372036854775800      ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 3 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !241 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.tq, null
  br i1 %.not26.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16 ; 2 uses
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !242 ; 2 uses
  %i.tt = add i64 %i.ts, %i.to                    ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !244
  %i.tw = icmp ugt i64 %i.tt, %i.tv
  br i1 %i.tw, label %bb.bj, label %tg3__arena_alloc.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.tx = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !223
  %spec.select.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ty, i64 range(i64 0, -7) %i.to) ; 3 uses
  %i.tz = icmp ugt i64 %spec.select.i.i.i.i.i, %i.tl
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.tz, i1 false
  br i1 %or.cond.i.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ua = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 3 uses
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !245
  %i.uc = add i64 %spec.select.i.i.i.i.i, 32      ; 3 uses
  %i.ud = add i64 %i.ub, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !226
  %i.ug = icmp ugt i64 %i.ud, %i.uf
  br i1 %i.ug, label %tg3__decode_data_uri.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uh = getelementptr inbounds nuw i8, ptr %i.qy, i64 48
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !246
  %i.uj = getelementptr inbounds nuw i8, ptr %i.qy, i64 72
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !247
  %i.ul = call ptr %i.ui(i64 noundef %i.uc, ptr noundef %i.uk) #21, !inline_history !288 ; 8 uses
  %.not37.i.i.i.i.i = icmp eq ptr %i.ul, null
  br i1 %.not37.i.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %tg3__arena_alloc.exit.thread62.i.i.i

tg3__arena_alloc.exit.thread62.i.i.i:             ; preds = %bb.bl
  store ptr null, ptr %i.ul, align 8, !tbaa !249
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 32 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  store ptr %i.um, ptr %i.un, align 8, !tbaa !250
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  store i64 %spec.select.i.i.i.i.i, ptr %i.uo, align 8, !tbaa !244
  %i.up = load i64, ptr %i.ua, align 8, !tbaa !245
  %i.uq = add i64 %i.up, %i.uc
  store i64 %i.uq, ptr %i.ua, align 8, !tbaa !245
  %i.ur = load ptr, ptr %i.tp, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i.i.i.i = icmp eq ptr %i.ur, null
  %..i.i.i.i.i = select i1 %.not38.i.i.i.i.i, ptr %i.qy, ptr %i.ur
  store ptr %i.ul, ptr %..i.i.i.i.i, align 8, !tbaa !251
  store ptr %i.ul, ptr %i.tp, align 8, !tbaa !241
  %i.us = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  store i64 %i.to, ptr %i.us, align 8, !tbaa !242
  br label %.preheader.i.i.i

tg3__arena_alloc.exit.i.i.i:                      ; preds = %bb.bi
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !250 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %i.ts
  store i64 %i.tt, ptr %i.tr, align 8, !tbaa !242
  %.not42.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not42.i.i.i, label %tg3__decode_data_uri.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %tg3__arena_alloc.exit.i.i.i, %tg3__arena_alloc.exit.thread62.i.i.i
  %i.uu = phi ptr [ %i.um, %tg3__arena_alloc.exit.thread62.i.i.i ], [ %i.ut, %tg3__arena_alloc.exit.i.i.i ] ; 3 uses
  %.not54.i.i.i = icmp eq i64 %.036.lcssa.i.i.i, 0
  br i1 %.not54.i.i.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.preheader.i.i.i, %bb.bt
  %.053.i.i.i = phi i32 [ %.2.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %.02952.i.i.i = phi i32 [ %.130.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %.03151.i.i.i = phi i64 [ %.233.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %.03450.i.i.i = phi i64 [ %i.vn, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.03450.i.i.i
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !12  ; 5 uses
  %i.ux = zext i8 %i.uw to i32                    ; 3 uses
  %i.uy = add i8 %i.uw, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.uy, 26
  br i1 %or.cond.i.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i21.i.i
  %i.uz = add nsw i32 %i.ux, -65
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i21.i.i
  %i.va = add i8 %i.uw, -97
  %or.cond5.i.i.i.i = icmp ult i8 %i.va, 26
  br i1 %or.cond5.i.i.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.vb = add nsw i32 %i.ux, -71
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.vc = add i8 %i.uw, -48
  %or.cond8.i.i.i.i = icmp ult i8 %i.vc, 10
  br i1 %or.cond8.i.i.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.vd = add nuw nsw i32 %i.ux, 4
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.br:                                            ; preds = %bb.bp
  switch i8 %i.uw, label %bb.bt [
    i8 43, label %tg3__b64_decode_char.exit.thread.i.i.i
    i8 47, label %tg3__b64_decode_char.exit.thread.fold.split.i.i.i
  ]

tg3__b64_decode_char.exit.thread.fold.split.i.i.i: ; preds = %bb.br
  br label %tg3__b64_decode_char.exit.thread.i.i.i

tg3__b64_decode_char.exit.thread.i.i.i:           ; preds = %tg3__b64_decode_char.exit.thread.fold.split.i.i.i, %bb.br, %bb.bq, %bb.bo, %bb.bm
  %.0.i4347.i.i.i = phi i32 [ 62, %bb.br ], [ %i.uz, %bb.bm ], [ %i.vd, %bb.bq ], [ %i.vb, %bb.bo ], [ 63, %tg3__b64_decode_char.exit.thread.fold.split.i.i.i ]
  %i.ve = shl i32 %.02952.i.i.i, 6
  %i.vf = or i32 %.0.i4347.i.i.i, %i.ve           ; 3 uses
  %i.vg = add nuw nsw i32 %.053.i.i.i, 6
  %i.vh = icmp sgt i32 %.053.i.i.i, 1
  br i1 %i.vh, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %tg3__b64_decode_char.exit.thread.i.i.i
  %i.vi = add nsw i32 %.053.i.i.i, -2             ; 2 uses
  %i.vj = lshr i32 %i.vf, %i.vi
  %i.vk = trunc i32 %i.vj to i8
  %i.vl = add i64 %.03151.i.i.i, 1
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uu, i64 %.03151.i.i.i
  store i8 %i.vk, ptr %i.vm, align 1, !tbaa !12
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %tg3__b64_decode_char.exit.thread.i.i.i, %bb.br
  %.233.i.i.i = phi i64 [ %.03151.i.i.i, %bb.br ], [ %i.vl, %bb.bs ], [ %.03151.i.i.i, %tg3__b64_decode_char.exit.thread.i.i.i ] ; 2 uses
  %.130.i.i.i = phi i32 [ %.02952.i.i.i, %bb.br ], [ %i.vf, %bb.bs ], [ %i.vf, %tg3__b64_decode_char.exit.thread.i.i.i ]
  %.2.i.i.i = phi i32 [ %.053.i.i.i, %bb.br ], [ %i.vi, %bb.bs ], [ %i.vg, %tg3__b64_decode_char.exit.thread.i.i.i ]
  %i.vn = add nuw i64 %.03450.i.i.i, 1            ; 2 uses
  %exitcond.not.i22.i.i = icmp eq i64 %i.vn, %.036.lcssa.i.i.i
  br i1 %exitcond.not.i22.i.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i21.i.i, !llvm.loop !289

tg3__decode_data_uri.exit.i:                      ; preds = %bb.bb, %bb.bt, %.preheader.i.i.i, %tg3__arena_alloc.exit.i.i.i, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %.critedge.i.i.i, %tg3__memcpy.exit.i.i, %.preheader.6.i.i.i, %.preheader.5.i.i.i, %.preheader.4.i.i.i, %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.preheader.preheader.i.i.i, %tg3__memcpy.exit.i.i.i, %tg3__memcmp.exit.thread.i.i.i, %.preheader53.4.i.i.i, %.preheader53.3.i.i.i, %.preheader53.2.i.i.i, %.preheader53.1.i.i.i, %tg3__memset.exit108.i
  %storemerge.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %.233.i.i.i, %bb.bt ], [ 0, %tg3__memcpy.exit.i.i.i ], [ 0, %tg3__memcmp.exit.thread.i.i.i ], [ 0, %.preheader.preheader.i.i.i ], [ 0, %tg3__memset.exit108.i ], [ 0, %.preheader.6.i.i.i ], [ 0, %.preheader.5.i.i.i ], [ 0, %.preheader.4.i.i.i ], [ 0, %.preheader.3.i.i.i ], [ 0, %.preheader.2.i.i.i ], [ 0, %.preheader.1.i.i.i ], [ 0, %.preheader53.4.i.i.i ], [ 0, %.preheader53.3.i.i.i ], [ 0, %.preheader53.2.i.i.i ], [ 0, %.preheader53.1.i.i.i ], [ 0, %tg3__arena_alloc.exit.i.i.i ], [ 0, %tg3__memcpy.exit.i.i ], [ 0, %bb.bl ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %.critedge.i.i.i ], [ 0, %bb.bg ], [ 0, %bb.bb ]
  %.015.i.i = phi ptr [ %i.uu, %.preheader.i.i.i ], [ %i.uu, %bb.bt ], [ null, %tg3__memcpy.exit.i.i.i ], [ null, %tg3__memcmp.exit.thread.i.i.i ], [ null, %.preheader.preheader.i.i.i ], [ null, %tg3__memset.exit108.i ], [ null, %.preheader.6.i.i.i ], [ null, %.preheader.5.i.i.i ], [ null, %.preheader.4.i.i.i ], [ null, %.preheader.3.i.i.i ], [ null, %.preheader.2.i.i.i ], [ null, %.preheader.1.i.i.i ], [ null, %.preheader53.4.i.i.i ], [ null, %.preheader53.3.i.i.i ], [ null, %.preheader53.2.i.i.i ], [ null, %.preheader53.1.i.i.i ], [ null, %tg3__arena_alloc.exit.i.i.i ], [ null, %tg3__memcpy.exit.i.i ], [ null, %bb.bl ], [ null, %bb.bj ], [ null, %bb.bk ], [ null, %.critedge.i.i.i ], [ null, %bb.bg ], [ null, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.vo = icmp ne ptr %.015.i.i, null
  %i.vp = icmp eq i64 %i.hu, 0
  %or.cond8.not.i = select i1 %i.vo, i1 true, i1 %i.vp
  br i1 %or.cond8.not.i, label %tg3__error_push.exit129.i, label %bb.bu

bb.bu:                                            ; preds = %tg3__decode_data_uri.exit.i
  %i.vq = load ptr, ptr %i.gs, align 8, !tbaa !210 ; 6 uses
  %.not.i114.i = icmp eq ptr %i.vq, null
  br i1 %.not.i114.i, label %tg3__error_push.exit129.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 3 uses
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !136 ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 12 ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !191 ; 3 uses
  %.not27.i115.i = icmp ult i32 %i.vs, %i.vu
  %.pre.i116.i = load ptr, ptr %i.vq, align 8, !tbaa !137 ; 11 uses
  %.pre.i116.i4037 = ptrtoaddr ptr %.pre.i116.i to i64
  br i1 %.not27.i115.i, label %bb.cb, label %bb.bw

end_hunk_0
