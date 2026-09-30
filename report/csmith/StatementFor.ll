Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/StatementFor?download=true
inline.NumInlined: 805
inline.NumDeleted: 428
begin_hunk_0_@_ZN12StatementFor14make_iterationER9CGContextRP15StatementAssignRP10ExpressionS4_Rj:bb.a
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #18
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159:     ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.fe

bb.aw:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.pr252 = load i32, ptr %4, align 4, !tbaa !21  ; 2 uses
  %.not118 = icmp eq i32 %.pr252, -1
  br i1 %.not118, label %.thread253, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.db = add i32 %.pr252, -1                     ; 11 uses
  store i32 %i.db, ptr %4, align 4, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !125
  %i.de = invoke noundef zeroext i1 @_ZNK4Type9is_signedEv(ptr noundef nonnull align 8 dereferenceable(136) %i.dd)
          to label %bb.ay unwind label %bb.bk

bb.ay:                                            ; preds = %bb.ax
  %i.df = invoke noundef i32 @_ZN9CGOptions14array_oob_probEv()
          to label %.noexc160 unwind label %bb.bk

.noexc160:                                        ; preds = %bb.ay
  %i.dg = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.df, ptr noundef null, ptr noundef null)
          to label %.noexc161 unwind label %bb.bk ; 3 uses

.noexc161:                                        ; preds = %.noexc160
  br i1 %i.de, label %bb.az, label %select.unfold.i

bb.az:                                            ; preds = %.noexc161
  %i.dh = invoke noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc162 unwind label %bb.bk

.noexc162:                                        ; preds = %bb.az
  br i1 %i.dh, label %select.unfold.i, label %bb.bd

select.unfold.i:                                  ; preds = %.noexc162, %.noexc161
  br i1 %i.dg, label %.noexc164, label %bb.ba

bb.ba:                                            ; preds = %select.unfold.i
  %i.di = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc163 unwind label %bb.bk

.noexc163:                                        ; preds = %bb.ba
  br i1 %i.di, label %.noexc164, label %bb.bb

bb.bb:                                            ; preds = %.noexc163
  %i.dj = lshr i32 %i.db, 1
  %i.dk = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.dj, ptr noundef null, ptr noundef null)
          to label %.noexc164 unwind label %bb.bk

.noexc164:                                        ; preds = %bb.bb, %.noexc163, %select.unfold.i
  %i.dl = phi i32 [ -1000, %select.unfold.i ], [ 0, %.noexc163 ], [ %i.dk, %bb.bb ] ; 2 uses
  %i.dm = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc165 unwind label %bb.bk

.noexc165:                                        ; preds = %.noexc164
  br i1 %i.dm, label %.thread35.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc165
  %i.dn = lshr i32 %i.db, 2
  %i.do = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.dn, ptr noundef null, ptr noundef null)
          to label %.noexc166 unwind label %bb.bk

.noexc166:                                        ; preds = %bb.bc
  %spec.select.i = call i32 @llvm.umax.i32(i32 %i.do, i32 1)
  br label %.thread35.i

.thread35.i:                                      ; preds = %.noexc166, %.noexc165
  %i.dp = phi i32 [ 1, %.noexc165 ], [ %spec.select.i, %.noexc166 ] ; 2 uses
  %i.dq = sub i32 %i.db, %i.dl
  %i.dr = urem i32 %i.dq, %i.dp
  %i.ds = sub i32 %i.db, %i.dr
  br label %bb.bj

bb.bd:                                            ; preds = %.noexc162
  %i.dt = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc167 unwind label %bb.bk

.noexc167:                                        ; preds = %bb.bd
  br i1 %i.dt, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.noexc167
  %i.du = lshr i32 %i.db, 1
  %i.dv = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.du, ptr noundef null, ptr noundef null)
          to label %.noexc168 unwind label %bb.bk

.noexc168:                                        ; preds = %bb.be
  %i.dw = sub i32 %i.db, %i.dv
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc168, %.noexc167
  %i.dx = phi i32 [ %i.dw, %.noexc168 ], [ %i.db, %.noexc167 ] ; 4 uses
  br i1 %i.dg, label %.noexc170, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dy = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc169 unwind label %bb.bk

.noexc169:                                        ; preds = %bb.bg
  br i1 %i.dy, label %.noexc170, label %bb.bh

bb.bh:                                            ; preds = %.noexc169
  %i.dz = lshr i32 %i.db, 1
  %i.ea = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.dz, ptr noundef null, ptr noundef null)
          to label %.noexc170 unwind label %bb.bk

.noexc170:                                        ; preds = %bb.bh, %.noexc169, %bb.bf
  %i.eb = phi i32 [ -1000, %bb.bf ], [ 0, %.noexc169 ], [ %i.ea, %bb.bh ] ; 2 uses
  %i.ec = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc171 unwind label %bb.bk

.noexc171:                                        ; preds = %.noexc170
  br i1 %i.ec, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.noexc171
  %i.ed = lshr i32 %i.db, 2
  %i.ee = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.ed, ptr noundef null, ptr noundef null)
          to label %.noexc172 unwind label %bb.bk

.noexc172:                                        ; preds = %bb.bi
  %spec.select37.i = call i32 @llvm.umax.i32(i32 %i.ee, i32 1)
  br label %bb.bj

bb.bj:                                            ; preds = %.thread35.i, %.noexc172, %.noexc171
  %.1250 = phi i32 [ %i.dl, %.thread35.i ], [ %i.dx, %.noexc172 ], [ %i.dx, %.noexc171 ]
  %.1246 = phi i32 [ %i.db, %.thread35.i ], [ %i.eb, %.noexc172 ], [ %i.eb, %.noexc171 ]
  %.1242 = phi i32 [ %i.dp, %.thread35.i ], [ %spec.select37.i, %.noexc172 ], [ 1, %.noexc171 ]
  %.1240 = phi i32 [ 8, %.thread35.i ], [ 7, %.noexc172 ], [ 7, %.noexc171 ]
  %.1 = phi i32 [ 4, %.thread35.i ], [ 5, %.noexc172 ], [ 5, %.noexc171 ]
  %.0.i = phi i32 [ %i.ds, %.thread35.i ], [ %i.dx, %.noexc172 ], [ %i.dx, %.noexc171 ]
  %i.ef = load i32, ptr @_ZN10Bookkeeper7oob_cntE, align 4
  %i.eg = zext i1 %i.dg to i32
  %i.eh = add nsw i32 %i.ef, %i.eg
  store i32 %i.eh, ptr @_ZN10Bookkeeper7oob_cntE, align 4, !tbaa !21
  store i32 %.0.i, ptr %4, align 4, !tbaa !21
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

bb.bk:                                            ; preds = %thread-pre-split52.i, %bb.ca, %.thread.i, %bb.bz, %bb.by, %bb.bx, %bb.bs, %bb.bq, %bb.bo, %.noexc176, %bb.bn, %bb.bm, %bb.bl, %bb.bi, %.noexc170, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bc, %.noexc164, %bb.bb, %bb.ba, %bb.az, %.noexc160, %bb.ay, %.thread253, %bb.ax
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

.thread253:                                       ; preds = %bb.u, %bb.aw
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !125
  %i.el = invoke noundef zeroext i1 @_ZNK4Type9is_signedEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ek)
          to label %bb.bl unwind label %bb.bk

bb.bl:                                            ; preds = %.thread253
  %i.em = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc174 unwind label %bb.bk

.noexc174:                                        ; preds = %bb.bl
  br i1 %i.em, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.noexc174
  %i.en = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 60, ptr noundef null, ptr noundef null)
          to label %.noexc175 unwind label %bb.bk

.noexc175:                                        ; preds = %bb.bm
  %i.eo = add i32 %i.en, -30
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc175, %.noexc174
  %i.ep = phi i32 [ %i.eo, %.noexc175 ], [ 0, %.noexc174 ] ; 14 uses
  %i.eq = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 60, ptr noundef null, ptr noundef null)
          to label %.noexc176 unwind label %bb.bk

.noexc176:                                        ; preds = %bb.bn
  %..i = select i1 %i.el, i32 -30, i32 1
  %i.er = add i32 %i.eq, %..i                     ; 11 uses
  %i.es = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 6, ptr noundef null, ptr noundef null)
          to label %.noexc177 unwind label %bb.bk ; 3 uses

.noexc177:                                        ; preds = %.noexc176
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.t_ops, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !127 ; 9 uses
  %i.ew = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not.i173 = icmp eq i32 %i.ew, 0
  br i1 %.not.i173, label %bb.bo, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.bo:                                            ; preds = %.noexc177
  %i.ex = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc178 unwind label %bb.bk

.noexc178:                                        ; preds = %bb.bo
  %i.ey = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not44.i = icmp eq i32 %i.ey, 0                ; 2 uses
  br i1 %i.ex, label %bb.bp, label %7

bb.bp:                                            ; preds = %.noexc178
  br i1 %.not44.i, label %bb.bq, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.bq:                                            ; preds = %bb.bp
  %i.ez = invoke noundef i32 @_Z13pure_rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 10, ptr noundef null, ptr noundef null)
          to label %.noexc179 unwind label %bb.bk ; 4 uses

.noexc179:                                        ; preds = %bb.bq
  %i.fa = icmp eq i32 %i.es, 5
  %i.fb = icmp sgt i32 %i.ez, 1
  %or.cond.i = and i1 %i.fa, %i.fb
  br i1 %or.cond.i, label %.thread255, label %bb.br

.thread255:                                       ; preds = %.noexc179
  %i.fc = sub i32 %i.er, %i.ep
  %i.fd = srem i32 %i.fc, %i.ez
  %i.fe = sub i32 %i.er, %i.fd                    ; 2 uses
  %.not45.i257 = icmp slt i32 %i.fe, %i.ep
  %i.ff = select i1 %.not45.i257, i32 5, i32 4
  br label %bb.bs

bb.br:                                            ; preds = %.noexc179
  %.not45.i = icmp slt i32 %i.er, %i.ep
  %i.fg = select i1 %.not45.i, i32 5, i32 4
  %spec.select = call i32 @llvm.umax.i32(i32 %i.ez, i32 1)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread255
  %i.fh = phi i32 [ %i.ff, %.thread255 ], [ %i.fg, %bb.br ] ; 4 uses
  %.2247258 = phi i32 [ %i.fe, %.thread255 ], [ %i.er, %bb.br ] ; 4 uses
  %.2243 = phi i32 [ %i.ez, %.thread255 ], [ %spec.select, %bb.br ] ; 4 uses
  %i.fi = invoke noundef zeroext i1 @_ZN9CGOptions14fast_executionEv()
          to label %.noexc180 unwind label %bb.bk

.noexc180:                                        ; preds = %bb.bs
  br i1 %i.fi, label %bb.bt, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

bb.bt:                                            ; preds = %.noexc180
  %i.fj = sub nsw i32 %.2247258, %i.ep
  %i.fk = srem i32 %i.fj, %.2243
  %i.fl = icmp eq i32 %i.fk, 0
  %.off.i = add i32 %i.ev, -7
  %switch.i = icmp ult i32 %.off.i, 2
  %or.cond = select i1 %i.fl, i1 %switch.i, i1 false
  br i1 %or.cond, label %bb.bu, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

bb.bu:                                            ; preds = %bb.bt
  %i.fm = icmp eq i32 %i.fh, 4
  %.v.i = select i1 %i.fm, i32 1, i32 -1
  %i.fn = add nsw i32 %.v.i, %.2247258
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

7:                                                ; preds = %.noexc178
  br i1 %.not44.i, label %bb.bv, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.bv:                                            ; preds = %7
  %i.fo = icmp slt i32 %i.er, %i.ep
  br i1 %i.fo, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fp = icmp eq i32 %i.er, %i.ep
  %i.fq = icmp eq i32 %i.es, 3
  %or.cond275 = and i1 %i.fp, %i.fq
  br i1 %or.cond275, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.fr = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %._crit_edge.i unwind label %bb.bk

bb.by:                                            ; preds = %bb.bw
  %i.fs = invoke noundef zeroext i1 @_Z17pure_rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 50, ptr noundef null, ptr noundef null)
          to label %.noexc182 unwind label %bb.bk

.noexc182:                                        ; preds = %bb.by
  br i1 %i.fs, label %bb.bz, label %.thread.i

bb.bz:                                            ; preds = %.noexc182
  %i.ft = invoke noundef zeroext i1 @_ZN9CGOptions17pre_incr_operatorEv()
          to label %.noexc183 unwind label %bb.bk

.noexc183:                                        ; preds = %bb.bz
  br i1 %i.ft, label %thread-pre-split52.i.thread, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

.thread.i:                                        ; preds = %.noexc182
  %i.fu = invoke noundef zeroext i1 @_ZN9CGOptions18post_incr_operatorEv()
          to label %.noexc184 unwind label %bb.bk

.noexc184:                                        ; preds = %.thread.i
  br i1 %i.fu, label %thread-pre-split52.i.thread, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

._crit_edge.i:                                    ; preds = %bb.bx
  br i1 %i.fr, label %bb.ca, label %thread-pre-split52.i

bb.ca:                                            ; preds = %._crit_edge.i
  %i.fv = invoke noundef zeroext i1 @_ZN9CGOptions17pre_decr_operatorEv()
          to label %.noexc185 unwind label %bb.bk

.noexc185:                                        ; preds = %bb.ca
  br i1 %i.fv, label %thread-pre-split52.i.thread, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

thread-pre-split52.i.thread:                      ; preds = %.noexc185, %.noexc183, %.noexc184
  %.2260263.ph = phi i32 [ 12, %.noexc185 ], [ 11, %.noexc183 ], [ 13, %.noexc184 ]
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

thread-pre-split52.i:                             ; preds = %._crit_edge.i
  %i.fw = invoke noundef zeroext i1 @_ZN9CGOptions18post_decr_operatorEv()
          to label %.noexc186 unwind label %bb.bk

.noexc186:                                        ; preds = %thread-pre-split52.i
  %spec.select276 = select i1 %i.fw, i32 14, i32 5
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit

_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit: ; preds = %.noexc186, %bb.bu, %bb.bt, %.noexc180, %.noexc183, %.noexc184, %.noexc185, %thread-pre-split52.i.thread, %bb.bj
  %.0249.ph = phi i32 [ %i.ep, %bb.bu ], [ %.1250, %bb.bj ], [ %i.ep, %bb.bt ], [ %i.ep, %.noexc180 ], [ %i.ep, %.noexc183 ], [ %i.ep, %.noexc184 ], [ %i.ep, %.noexc185 ], [ %i.ep, %thread-pre-split52.i.thread ], [ %i.ep, %.noexc186 ]
  %.0245.ph = phi i32 [ %i.fn, %bb.bu ], [ %.1246, %bb.bj ], [ %.2247258, %bb.bt ], [ %.2247258, %.noexc180 ], [ %i.er, %.noexc183 ], [ %i.er, %.noexc184 ], [ %i.er, %.noexc185 ], [ %i.er, %thread-pre-split52.i.thread ], [ %i.er, %.noexc186 ]
  %.0241.ph = phi i32 [ %.2243, %bb.bu ], [ %.1242, %bb.bj ], [ %.2243, %bb.bt ], [ %.2243, %.noexc180 ], [ 1, %.noexc183 ], [ 1, %.noexc184 ], [ 1, %.noexc185 ], [ 1, %thread-pre-split52.i.thread ], [ 1, %.noexc186 ]
  %.0239.ph = phi i32 [ %i.ev, %bb.bu ], [ %.1240, %bb.bj ], [ %i.ev, %bb.bt ], [ %i.ev, %.noexc180 ], [ %i.ev, %.noexc183 ], [ %i.ev, %.noexc184 ], [ %i.ev, %.noexc185 ], [ %i.ev, %thread-pre-split52.i.thread ], [ %i.ev, %.noexc186 ]
  %.0238.ph = phi i32 [ %i.fh, %bb.bu ], [ %.1, %bb.bj ], [ %i.fh, %bb.bt ], [ %i.fh, %.noexc180 ], [ 4, %.noexc183 ], [ 4, %.noexc184 ], [ 5, %.noexc185 ], [ %.2260263.ph, %thread-pre-split52.i.thread ], [ %spec.select276, %.noexc186 ] ; 3 uses
  %.pr268 = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not119 = icmp eq i32 %.pr268, 0
  br i1 %.not119, label %bb.cb, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.cb:                                            ; preds = %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit
  %i.fx = invoke noundef ptr @_ZN8Constant8make_intEi(i32 noundef %.0249.ph)
          to label %bb.cc unwind label %bb.cd     ; 9 uses

bb.cc:                                            ; preds = %bb.cb
  %i.fy = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not120 = icmp eq i32 %i.fy, 0
  br i1 %.not120, label %bb.ce, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.cd:                                            ; preds = %bb.cb
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ce:                                            ; preds = %bb.cc
  %i.ga = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
          to label %bb.cf unwind label %bb.cj     ; 9 uses

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN3LhsC1ERK8Variable(ptr noundef nonnull align 8 dereferenceable(41) %i.ga, ptr noundef nonnull align 8 dereferenceable(200) %i.v)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.gb = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not121 = icmp eq i32 %i.gb, 0
  br i1 %.not121, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gc = icmp eq ptr %i.fx, null
  br i1 %i.gc, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !57
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(64) %i.fx) #17
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.cj:                                            ; preds = %bb.ce
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ck:                                            ; preds = %bb.cf
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 48) #18
  br label %bb.fe

bb.cl:                                            ; preds = %bb.cg
  %i.gi = invoke noundef i32 @_ZN15StatementAssign22compound_to_binary_opsE10eAssignOps(i32 noundef %.0238.ph)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.gj = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !125 ; 3 uses
  %i.gl = invoke noundef ptr @_ZN11SafeOpFlags18make_random_binaryEPK4TypeS2_S2_10SafeOpKind10eBinaryOps(ptr noundef %i.gk, ptr noundef %i.gk, ptr noundef %i.gk, i32 noundef 2, i32 noundef %i.gi)
          to label %bb.cn unwind label %bb.cs     ; 4 uses

bb.cn:                                            ; preds = %bb.cm
  %i.gm = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not122 = icmp eq i32 %i.gm, 0
  br i1 %.not122, label %bb.ct, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gn = icmp eq ptr %i.fx, null
  br i1 %i.gn, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.go = load ptr, ptr %i.fx, align 8, !tbaa !57
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(64) %i.fx) #17
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.gr = load ptr, ptr %i.ga, align 8, !tbaa !57
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(41) %i.ga) #17
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.cr:                                            ; preds = %bb.cl
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.cs:                                            ; preds = %bb.ct, %bb.cm
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ct:                                            ; preds = %bb.cn
  %i.gw = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #16
          to label %bb.cu unwind label %bb.cs     ; 5 uses

bb.cu:                                            ; preds = %bb.ct
  %i.gx = invoke noundef ptr @_ZNK9CGContext17get_current_blockEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.cv unwind label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN15StatementAssignC1EP5BlockRK3LhsRK10Expression10eAssignOpsPK11SafeOpFlags(ptr noundef nonnull align 8 dereferenceable(136) %i.gw, ptr noundef %i.gx, ptr noundef nonnull align 8 dereferenceable(41) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i32 noundef 0, ptr noundef %i.gl)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  store ptr %i.gw, ptr %1, align 8, !tbaa !64
  %i.gy = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not123 = icmp eq i32 %i.gy, 0
  br i1 %.not123, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gz = load ptr, ptr %i.fx, align 8, !tbaa !57
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(64) %i.fx) #17
  %i.hc = load ptr, ptr %i.ga, align 8, !tbaa !57
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(41) %i.ga) #17
  %i.hf = icmp eq ptr %i.gl, null
  br i1 %i.hf, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN11SafeOpFlagsD1Ev(ptr noundef nonnull align 4 dead_on_return(8) dereferenceable(8) %i.gl) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 8) #18
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.cz:                                            ; preds = %bb.cv, %bb.cu
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef 136) #18
  br label %bb.fe

bb.da:                                            ; preds = %bb.cw
end_hunk_0
begin_hunk_1_@_ZN12StatementFor14make_iterationER9CGContextRP15StatementAssignRP10ExpressionS4_Rj:bb.a
  %i.ig = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not125 = icmp eq i32 %i.ig, 0
  br i1 %.not125, label %bb.dx, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ih = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !57
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(136) %i.ih) #17
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %i.im = load ptr, ptr %i.hl, align 8, !tbaa !57
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(40) %i.hl) #17
  %i.ip = icmp eq ptr %i.hr, null
  br i1 %i.ip, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.iq = load ptr, ptr %i.hr, align 8, !tbaa !57
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(64) %i.hr) #17
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.dw:                                            ; preds = %bb.dx, %bb.dq
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.dx:                                            ; preds = %bb.dr
  %i.iu = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16
          to label %bb.dy unwind label %bb.dw     ; 3 uses

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZN17ExpressionFuncallC1ERK18FunctionInvocation(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(56) %i.if)
          to label %bb.dz unwind label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  store ptr %i.iu, ptr %2, align 8, !tbaa !69
  %i.iv = load ptr, ptr %i.ga, align 8, !tbaa !57
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = invoke noundef ptr %i.ix(ptr noundef nonnull align 8 dereferenceable(41) %i.ga)
          to label %bb.ea unwind label %bb.ed     ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ja = call ptr @__dynamic_cast(ptr nonnull %i.iy, ptr nonnull @_ZTI10Expression, ptr nonnull @_ZTI3Lhs, i64 0) #17
  br label %bb.ee

bb.ec:                                            ; preds = %bb.dy
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef 32) #18
  br label %bb.fe

bb.ed:                                            ; preds = %bb.dz
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ee:                                            ; preds = %bb.ea, %bb.eb
  %i.jd = phi ptr [ %i.ja, %bb.eb ], [ null, %bb.ea ] ; 8 uses
  %i.je = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not126 = icmp eq i32 %i.je, 0
  br i1 %.not126, label %bb.el, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.jf = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !57
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(136) %i.jf) #17
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.jk = load ptr, ptr %2, align 8, !tbaa !69    ; 3 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !57
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(24) %i.jk) #17
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.jp = icmp eq ptr %i.jd, null
  br i1 %i.jp, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.jq = load ptr, ptr %i.jd, align 8, !tbaa !57
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(41) %i.jd) #17
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.el:                                            ; preds = %bb.ee
  %i.jt = invoke noundef ptr @_ZN8Constant8make_intEi(i32 noundef %.0241.ph)
          to label %bb.em unwind label %bb.et     ; 2 uses

bb.em:                                            ; preds = %bb.el
  %i.ju = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !21
  %.not127 = icmp eq i32 %i.ju, 0
  br i1 %.not127, label %bb.eu, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.jv = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !57
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(136) %i.jv) #17
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.ka = load ptr, ptr %2, align 8, !tbaa !69    ; 3 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.kc = load ptr, ptr %i.ka, align 8, !tbaa !57
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(24) %i.ka) #17
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.kf = icmp eq ptr %i.jd, null
  br i1 %i.kf, label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.kg = load ptr, ptr %i.jd, align 8, !tbaa !57
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(41) %i.jd) #17
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

bb.et:                                            ; preds = %bb.fa, %bb.ez, %bb.ev, %bb.el
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.eu:                                            ; preds = %bb.em
  %i.kk = load i32, ptr %4, align 4, !tbaa !21
  %.not128 = icmp eq i32 %i.kk, -1
  br i1 %.not128, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.kl = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #16
          to label %bb.ew unwind label %bb.et     ; 3 uses

bb.ew:                                            ; preds = %bb.ev
  %i.km = invoke noundef ptr @_ZNK9CGContext17get_current_blockEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.ex unwind label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZN15StatementAssignC1EP5BlockRK3LhsRK10Expression10eAssignOpsPK11SafeOpFlags(ptr noundef nonnull align 8 dereferenceable(136) %i.kl, ptr noundef %i.km, ptr noundef nonnull align 8 dereferenceable(41) %i.jd, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i32 noundef %.0238.ph, ptr noundef null)
          to label %bb.fb unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef 136) #18
  br label %bb.fe

bb.ez:                                            ; preds = %bb.eu
  %i.ko = load ptr, ptr %i.hl, align 8, !tbaa !57
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = invoke noundef nonnull align 8 dereferenceable(136) ptr %i.kq(ptr noundef nonnull align 8 dereferenceable(40) %i.hl)
          to label %bb.fa unwind label %bb.et

bb.fa:                                            ; preds = %bb.ez
  %i.ks = invoke noundef ptr @_ZN15StatementAssign29make_possible_compound_assignER9CGContextPK4TypeRK3Lhs10eAssignOpsRK10Expression(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %i.kr, ptr noundef nonnull align 8 dereferenceable(41) %i.jd, i32 noundef %.0238.ph, ptr noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %bb.fb unwind label %bb.et

bb.fb:                                            ; preds = %bb.fa, %bb.ex
  %storemerge = phi ptr [ %i.kl, %bb.ex ], [ %i.ks, %bb.fa ]
  store ptr %storemerge, ptr %3, align 8, !tbaa !64
  br label %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread

_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread: ; preds = %bb.h, %.noexc177, %bb.bp, %7, %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit, %bb.ci, %bb.ch, %bb.dl, %bb.ek, %bb.ej, %bb.er, %bb.es, %bb.fb, %bb.du, %bb.dv, %bb.cx, %bb.cy, %bb.cq, %bb.cc
  %.898 = phi ptr [ null, %.noexc177 ], [ null, %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit ], [ null, %bb.cc ], [ null, %bb.ch ], [ null, %bb.ci ], [ null, %bb.cq ], [ null, %bb.cx ], [ null, %bb.cy ], [ null, %bb.dl ], [ null, %bb.du ], [ null, %bb.dv ], [ null, %bb.ej ], [ null, %bb.ek ], [ %i.v, %bb.fb ], [ null, %bb.es ], [ null, %bb.er ], [ null, %7 ], [ null, %bb.bp ], [ null, %bb.h ]
  %i.kt = load ptr, ptr %5, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i187 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit188, label %bb.fc

bb.fc:                                            ; preds = %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread
  %i.ku = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kx) #18
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit188

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit188:     ; preds = %_ZL24make_random_loop_controlRiS_S_R10eBinaryOpsR10eAssignOpsb.exit.thread, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not.i.i.i189 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit188
  %i.ky = ptrtoint ptr %i.q to i64
  %i.kz = ptrtoint ptr %i.r to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.la) #18
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit188, %bb.fd
  ret ptr %.898

bb.fe:                                            ; preds = %.loopexit282, %.loopexit.split-lp283, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159, %bb.bk, %bb.cj, %bb.ck, %bb.cs, %bb.cz, %bb.dn, %bb.do, %bb.dw, %bb.ec, %bb.et, %bb.ey, %bb.ed, %bb.dp, %bb.dm, %bb.cr, %bb.cd, %bb.aa
  %.pn142 = phi { ptr, i32 } [ %i.kj, %bb.et ], [ %i.bc, %bb.aa ], [ %.pn.pn.pn, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159 ], [ %i.ei, %bb.bk ], [ %i.fz, %bb.cd ], [ %i.gg, %bb.cj ], [ %i.gh, %bb.ck ], [ %i.gu, %bb.cr ], [ %i.gv, %bb.cs ], [ %i.hg, %bb.cz ], [ %i.ib, %bb.dm ], [ %i.id, %bb.do ], [ %i.ic, %bb.dn ], [ %i.ie, %bb.dp ], [ %i.it, %bb.dw ], [ %i.jb, %bb.ec ], [ %i.jc, %bb.ed ], [ %i.kn, %bb.ey ], [ %lpad.loopexit284, %.loopexit282 ], [ %lpad.loopexit.split-lp285, %.loopexit.split-lp283 ]
  %i.lb = load ptr, ptr %5, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit191, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.lc = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.lb to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.lf) #18
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit191

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit191:     ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit191, %bb.i
  %.pn142.pn = phi { ptr, i32 } [ %.pn142, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit191 ], [ %i.x, %bb.i ]
  %.not.i.i.i192 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit193, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.lg = ptrtoint ptr %i.q to i64
  %i.lh = ptrtoint ptr %i.r to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.li) #18
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit193

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit193:         ; preds = %bb.fg, %bb.fh
  resume { ptr, i32 } %.pn142.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_Z12get_fact_mgrPK9CGContext(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK9CGContext17get_current_blockEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6Effect5clearEv(ptr noundef nonnull align 8 dereferenceable(74)) local_unnamed_addr #2

declare noundef ptr @_ZN16VariableSelector17SelectLoopCtrlVarERK9CGContextRKSt6vectorIPK8VariableSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK8Variable11is_volatileEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN9CGContext12read_indicesEPK8VariableRKSt6vectorIPK4FactSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN9CGContext9write_varEPK8Variable(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef) local_unnamed_addr #2

declare void @_ZN9CGContext8read_varEPK8Variable(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef) local_unnamed_addr #2

declare void @_ZNK11RWDirective20find_must_use_arraysERSt6vectorIPK8VariableSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZN16VariableSelector13choose_ok_varERKSt6vectorIPK8VariableSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK4Type9is_signedEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

declare noundef ptr @_ZN8Constant8make_intEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN3LhsC1ERK8Variable(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN15StatementAssign22compound_to_binary_opsE10eAssignOps(i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11SafeOpFlags18make_random_binaryEPK4TypeS2_S2_10SafeOpKind10eBinaryOps(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN15StatementAssignC1EP5BlockRK3LhsRK10Expression10eAssignOpsPK11SafeOpFlags(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11SafeOpFlagsD1Ev(ptr noundef nonnull align 4 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZN18ExpressionVariableC1ERK8Variable(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

declare void @_ZN10Bookkeeper22record_volatile_accessEPK8Variableib(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZNK18ExpressionVariable18get_indirect_levelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN18FunctionInvocation11make_binaryER9CGContext10eBinaryOpsP10ExpressionS4_(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN17ExpressionFuncallC1ERK18FunctionInvocation(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare noundef ptr @_ZN15StatementAssign29make_possible_compound_assignER9CGContextPK4TypeRK3Lhs10eAssignOpsRK10Expression(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, ptr noundef nonnull align 8 dereferenceable(41), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN12StatementFor11make_randomER9CGContext(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %1 = alloca %class.Effect, align 8              ; 7 uses
  %2 = alloca %"class.std::vector.8", align 8     ; 13 uses
  %3 = alloca %class.CGContext, align 8           ; 7 uses
  %i.e = tail call noundef ptr @_Z12get_fact_mgrPK9CGContext(ptr noundef nonnull %0) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @_ZN6Effect5clearEv(ptr noundef nonnull align 8 dereferenceable(74) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr null, ptr %i.c, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.g = call noundef ptr @_ZN12StatementFor14make_iterationER9CGContextRP15StatementAssignRP10ExpressionS4_Rj(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN6EffectC1ERKS_(ptr noundef nonnull align 8 dereferenceable(74) %1, ptr noundef nonnull align 8 dereferenceable(74) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds i8, ptr null, i64 %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !70
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ugt i64 %i.n, 9223372036854775800
  br i1 %i.r, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPK4FactE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #15
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPK4FactE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #16
          to label %.noexc27 unwind label %bb.o   ; 8 uses

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorIPK4FactE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !70
  %i.w = icmp samesign ugt i64 %i.n, 8
  br i1 %i.w, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.noexc27
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.k, i64 %i.n, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc27
  %i.x = icmp eq i64 %i.n, 8
end_hunk_1
