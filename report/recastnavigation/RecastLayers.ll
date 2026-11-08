Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastLayers?download=true
inline.NumInlined: 113
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z24rcBuildHeightfieldLayersP9rcContextRK20rcCompactHeightfieldiiR21rcHeightfieldLayerSet:bb.a

.lr.ph.i.i:                                       ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.i.i
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !75
  %i.ha = icmp eq i8 %i.gz, %i.gw
  br i1 %i.ha, label %_ZL9addUniquePhRhih.exit, label %bb.ak

.loopexit.i:                                      ; preds = %bb.ak
  %.not.i = icmp ult i8 %i.gx, 16
  br i1 %.not.i, label %.loopexit.i.thread, label %_ZL9addUniquePhRhih.exit

.loopexit.i.thread:                               ; preds = %bb.aj, %.loopexit.i
  %i.hb = zext nneg i8 %i.gx to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.hb
  store i8 %i.gw, ptr %i.hc, align 1, !tbaa !75
  %i.hd = load i8, ptr %i.gk, align 2, !tbaa !75
  %i.he = add i8 %i.hd, 1
  store i8 %i.he, ptr %i.gk, align 2, !tbaa !75
  %.pre1191.a = load i32, ptr %i.gi, align 4
  br label %_ZL9addUniquePhRhih.exit

_ZL9addUniquePhRhih.exit:                         ; preds = %.lr.ph.i.i, %.loopexit.i.thread, %.loopexit.i, %bb.ai, %bb.ah
  %.pre-phi1219.in.a = phi i32 [ %i.gl, %bb.ah ], [ %.pre1191.a, %.loopexit.i.thread ], [ %i.gl, %.loopexit.i ], [ %i.gl, %bb.ai ], [ %i.gl, %.lr.ph.i.i ] ; 5 uses
  %i.hf = lshr i32 %.pre-phi1219.in.a, 6
  %i.hg = and i32 %i.hf, 63                       ; 2 uses
  %.not701.1 = icmp eq i32 %i.hg, 63
  br i1 %.not701.1, label %_ZL9addUniquePhRhih.exit.1, label %bb.al

bb.al:                                            ; preds = %_ZL9addUniquePhRhih.exit
  %i.hh = load ptr, ptr %i.eh, align 8, !tbaa !73
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv1104
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.fc
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = and i32 %i.hk, 16777215
  %i.hm = add nuw nsw i32 %i.hl, %i.hg
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !75  ; 4 uses
  %.not702.1 = icmp eq i8 %i.hp, -1
  %.not703.1 = icmp eq i8 %i.hp, %i.ft
  %or.cond712.1 = or i1 %.not702.1, %.not703.1
  br i1 %or.cond712.1, label %_ZL9addUniquePhRhih.exit.1, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hq = load i8, ptr %i.gk, align 2, !tbaa !75  ; 4 uses
  %.not10.not.i.i.1 = icmp eq i8 %i.hq, 0
  br i1 %.not10.not.i.i.1, label %.loopexit.i.1.thread, label %.lr.ph.preheader.i.i.1

.lr.ph.preheader.i.i.1:                           ; preds = %bb.am
  %wide.trip.count.i.i.1 = zext i8 %i.hq to i64
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.an, %.lr.ph.preheader.i.i.1
  %indvars.iv.i.i.1 = phi i64 [ 0, %.lr.ph.preheader.i.i.1 ], [ %indvars.iv.next.i.i.1, %bb.an ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.i.i.1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !75
  %i.ht = icmp eq i8 %i.hs, %i.hp
  br i1 %i.ht, label %_ZL9addUniquePhRhih.exit.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.1, 1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i.1
  br i1 %exitcond.not.i.i.1, label %.loopexit.i.1, label %.lr.ph.i.i.1

.loopexit.i.1:                                    ; preds = %bb.an
  %.not.i.1 = icmp ult i8 %i.hq, 16
  br i1 %.not.i.1, label %.loopexit.i.1.thread, label %_ZL9addUniquePhRhih.exit.1

.loopexit.i.1.thread:                             ; preds = %bb.am, %.loopexit.i.1
  %i.hu = zext nneg i8 %i.hq to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.hu
  store i8 %i.hp, ptr %i.hv, align 1, !tbaa !75
  %i.hw = load i8, ptr %i.gk, align 2, !tbaa !75
  %i.hx = add i8 %i.hw, 1
  store i8 %i.hx, ptr %i.gk, align 2, !tbaa !75
  %.pre1192.a = load i32, ptr %i.gi, align 4
  br label %_ZL9addUniquePhRhih.exit.1

_ZL9addUniquePhRhih.exit.1:                       ; preds = %.lr.ph.i.i.1, %.loopexit.i.1.thread, %.loopexit.i.1, %bb.al, %_ZL9addUniquePhRhih.exit
  %.pre-phi1221.in.a = phi i32 [ %.pre1192.a, %.loopexit.i.1.thread ], [ %.pre-phi1219.in.a, %.loopexit.i.1 ], [ %.pre-phi1219.in.a, %_ZL9addUniquePhRhih.exit ], [ %.pre-phi1219.in.a, %bb.al ], [ %.pre-phi1219.in.a, %.lr.ph.i.i.1 ] ; 5 uses
  %i.hy = lshr i32 %.pre-phi1221.in.a, 12
  %i.hz = and i32 %i.hy, 63                       ; 2 uses
  %.not701.2 = icmp eq i32 %i.hz, 63
  br i1 %.not701.2, label %_ZL9addUniquePhRhih.exit.2, label %bb.ao

bb.ao:                                            ; preds = %_ZL9addUniquePhRhih.exit.1
  %i.ia = load ptr, ptr %i.eh, align 8, !tbaa !73
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv1104
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.fa
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = and i32 %i.ie, 16777215
  %i.ig = add nuw nsw i32 %i.if, %i.hz
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !75  ; 4 uses
  %.not702.2 = icmp eq i8 %i.ij, -1
  %.not703.2 = icmp eq i8 %i.ij, %i.ft
  %or.cond712.2 = or i1 %.not702.2, %.not703.2
  br i1 %or.cond712.2, label %_ZL9addUniquePhRhih.exit.2, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ik = load i8, ptr %i.gk, align 2, !tbaa !75  ; 4 uses
  %.not10.not.i.i.2 = icmp eq i8 %i.ik, 0
  br i1 %.not10.not.i.i.2, label %.loopexit.i.2.thread, label %.lr.ph.preheader.i.i.2

.lr.ph.preheader.i.i.2:                           ; preds = %bb.ap
  %wide.trip.count.i.i.2 = zext i8 %i.ik to i64
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.aq, %.lr.ph.preheader.i.i.2
  %indvars.iv.i.i.2 = phi i64 [ 0, %.lr.ph.preheader.i.i.2 ], [ %indvars.iv.next.i.i.2, %bb.aq ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.i.i.2
  %i.im = load i8, ptr %i.il, align 1, !tbaa !75
  %i.in = icmp eq i8 %i.im, %i.ij
  br i1 %i.in, label %_ZL9addUniquePhRhih.exit.2, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.2
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.2, 1 ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, %wide.trip.count.i.i.2
  br i1 %exitcond.not.i.i.2, label %.loopexit.i.2, label %.lr.ph.i.i.2

.loopexit.i.2:                                    ; preds = %bb.aq
  %.not.i.2 = icmp ult i8 %i.ik, 16
  br i1 %.not.i.2, label %.loopexit.i.2.thread, label %_ZL9addUniquePhRhih.exit.2

.loopexit.i.2.thread:                             ; preds = %bb.ap, %.loopexit.i.2
  %i.io = zext nneg i8 %i.ik to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.io
  store i8 %i.ij, ptr %i.ip, align 1, !tbaa !75
  %i.iq = load i8, ptr %i.gk, align 2, !tbaa !75
  %i.ir = add i8 %i.iq, 1
  store i8 %i.ir, ptr %i.gk, align 2, !tbaa !75
  %.pre1193.a = load i32, ptr %i.gi, align 4
  br label %_ZL9addUniquePhRhih.exit.2

_ZL9addUniquePhRhih.exit.2:                       ; preds = %.lr.ph.i.i.2, %.loopexit.i.2.thread, %.loopexit.i.2, %bb.ao, %_ZL9addUniquePhRhih.exit.1
  %.pre-phi1223.in = phi i32 [ %.pre1193.a, %.loopexit.i.2.thread ], [ %.pre-phi1221.in.a, %.loopexit.i.2 ], [ %.pre-phi1221.in.a, %_ZL9addUniquePhRhih.exit.1 ], [ %.pre-phi1221.in.a, %bb.ao ], [ %.pre-phi1221.in.a, %.lr.ph.i.i.2 ]
  %.pre-phi1223.a = lshr i32 %.pre-phi1223.in, 18
  %i.is = and i32 %.pre-phi1223.a, 63             ; 2 uses
  %.not701.3 = icmp eq i32 %i.is, 63
  br i1 %.not701.3, label %.loopexit932, label %bb.ar

bb.ar:                                            ; preds = %_ZL9addUniquePhRhih.exit.2
  %i.it = load ptr, ptr %i.eh, align 8, !tbaa !73
  %i.iu = getelementptr [4 x i8], ptr %i.it, i64 %indvars.iv1104
  %i.iv = getelementptr [4 x i8], ptr %i.iu, i64 %i.fe
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = and i32 %i.iw, 16777215
  %i.iy = add nuw nsw i32 %i.ix, %i.is
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !75  ; 4 uses
  %.not702.3 = icmp eq i8 %i.jb, -1
  %.not703.3 = icmp eq i8 %i.jb, %i.ft
  %or.cond712.3 = or i1 %.not702.3, %.not703.3
  br i1 %or.cond712.3, label %.loopexit932, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jc = load i8, ptr %i.gk, align 2, !tbaa !75  ; 4 uses
  %.not10.not.i.i.3 = icmp eq i8 %i.jc, 0
  br i1 %.not10.not.i.i.3, label %.loopexit.i.3.thread, label %.lr.ph.preheader.i.i.3

.lr.ph.preheader.i.i.3:                           ; preds = %bb.as
  %wide.trip.count.i.i.3 = zext i8 %i.jc to i64
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.at, %.lr.ph.preheader.i.i.3
  %indvars.iv.i.i.3 = phi i64 [ 0, %.lr.ph.preheader.i.i.3 ], [ %indvars.iv.next.i.i.3, %bb.at ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.i.i.3
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !75
  %i.jf = icmp eq i8 %i.je, %i.jb
  br i1 %i.jf, label %.loopexit932, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.3, 1 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i.3
  br i1 %exitcond.not.i.i.3, label %.loopexit.i.3, label %.lr.ph.i.i.3

.loopexit.i.3:                                    ; preds = %bb.at
  %.not.i.3 = icmp ult i8 %i.jc, 16
  br i1 %.not.i.3, label %.loopexit.i.3.thread, label %.loopexit932

.loopexit.i.3.thread:                             ; preds = %bb.as, %.loopexit.i.3
  %i.jg = zext nneg i8 %i.jc to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.jg
  store i8 %i.jb, ptr %i.jh, align 1, !tbaa !75
  %i.ji = load i8, ptr %i.gk, align 2, !tbaa !75
  %i.jj = add i8 %i.ji, 1
  store i8 %i.jj, ptr %i.gk, align 2, !tbaa !75
  br label %.loopexit932

.loopexit932:                                     ; preds = %.lr.ph.i.i.3, %_ZL9addUniquePhRhih.exit.2, %bb.ar, %.loopexit.i.3, %.loopexit.i.3.thread, %.lr.ph978
  %.2598 = phi i32 [ %.0596975, %.lr.ph978 ], [ %.1597, %_ZL9addUniquePhRhih.exit.2 ], [ %.1597, %.loopexit.i.3.thread ], [ %.1597, %.loopexit.i.3 ], [ %.1597, %bb.ar ], [ %.1597, %.lr.ph.i.i.3 ] ; 4 uses
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 1 ; 2 uses
  %i.jk = icmp samesign ult i64 %indvars.iv.next1090, %i.fo
  br i1 %i.jk, label %.lr.ph978, label %.critedge716.preheader

.critedge716.loopexit:                            ; preds = %_ZL9addUniquePhRhih.exit752.thread
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092.a, 1
  %exitcond1103.not = icmp eq i64 %indvars.iv.next1100, %wide.trip.count1102
  br i1 %exitcond1103.not, label %.critedge716._crit_edge, label %.lr.ph983

.lr.ph983:                                        ; preds = %.critedge716.loopexit, %.lr.ph986.preheader
  %indvars.iv1099 = phi i64 [ 0, %.lr.ph986.preheader ], [ %indvars.iv.next1100, %.critedge716.loopexit ] ; 2 uses
  %indvars.iv1092.a = phi i64 [ 1, %.lr.ph986.preheader ], [ %indvars.iv.next1093, %.critedge716.loopexit ] ; 2 uses
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv1099
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !75  ; 4 uses
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.jn ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 85 ; 3 uses
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph983, %_ZL9addUniquePhRhih.exit752.thread
  %indvars.iv1094 = phi i64 [ %indvars.iv1092.a, %.lr.ph983 ], [ %indvars.iv.next1095, %_ZL9addUniquePhRhih.exit752.thread ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv1094
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !75  ; 4 uses
  %.not675 = icmp eq i8 %i.jm, %i.jr
  br i1 %.not675, label %_ZL9addUniquePhRhih.exit752.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.js = load i8, ptr %i.jp, align 1, !tbaa !75  ; 4 uses
  %.not10.not.i.i731 = icmp eq i8 %i.js, 0
  br i1 %.not10.not.i.i731, label %.loopexit.i738.thread, label %.lr.ph.preheader.i.i732

.lr.ph.preheader.i.i732:                          ; preds = %bb.av
  %wide.trip.count.i.i733 = zext i8 %i.js to i64
  br label %.lr.ph.i.i734

bb.aw:                                            ; preds = %.lr.ph.i.i734
  %indvars.iv.next.i.i736 = add nuw nsw i64 %indvars.iv.i.i735, 1 ; 2 uses
  %exitcond.not.i.i737 = icmp eq i64 %indvars.iv.next.i.i736, %wide.trip.count.i.i733
  br i1 %exitcond.not.i.i737, label %.loopexit.i738, label %.lr.ph.i.i734

.lr.ph.i.i734:                                    ; preds = %bb.aw, %.lr.ph.preheader.i.i732
  %indvars.iv.i.i735 = phi i64 [ 0, %.lr.ph.preheader.i.i732 ], [ %indvars.iv.next.i.i736, %bb.aw ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 %indvars.iv.i.i735
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !75
  %i.jv = icmp eq i8 %i.ju, %i.jr
  br i1 %i.jv, label %.loopexit931, label %bb.aw

.loopexit.i738:                                   ; preds = %bb.aw
  %.not.i739 = icmp ult i8 %i.js, 63
  br i1 %.not.i739, label %.loopexit.i738.thread, label %bb.ay

.loopexit.i738.thread:                            ; preds = %bb.av, %.loopexit.i738
  %i.jw = zext nneg i8 %i.js to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jw
  store i8 %i.jr, ptr %i.jx, align 1, !tbaa !75
  %i.jy = load i8, ptr %i.jp, align 1, !tbaa !75
  %i.jz = add i8 %i.jy, 1
  store i8 %i.jz, ptr %i.jp, align 1, !tbaa !75
  br label %.loopexit931

.loopexit931:                                     ; preds = %.lr.ph.i.i734, %.loopexit.i738.thread
  %i.ka = zext i8 %i.jr to i64
  %i.kb = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.ka ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 85 ; 3 uses
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !75  ; 4 uses
  %.not10.not.i.i742 = icmp eq i8 %i.kd, 0
  br i1 %.not10.not.i.i742, label %.loopexit.i749.thread, label %.lr.ph.preheader.i.i743

.lr.ph.preheader.i.i743:                          ; preds = %.loopexit931
  %wide.trip.count.i.i744 = zext i8 %i.kd to i64
  br label %.lr.ph.i.i745

bb.ax:                                            ; preds = %.lr.ph.i.i745
  %indvars.iv.next.i.i747 = add nuw nsw i64 %indvars.iv.i.i746, 1 ; 2 uses
  %exitcond.not.i.i748 = icmp eq i64 %indvars.iv.next.i.i747, %wide.trip.count.i.i744
  br i1 %exitcond.not.i.i748, label %.loopexit.i749, label %.lr.ph.i.i745

.lr.ph.i.i745:                                    ; preds = %bb.ax, %.lr.ph.preheader.i.i743
  %indvars.iv.i.i746 = phi i64 [ 0, %.lr.ph.preheader.i.i743 ], [ %indvars.iv.next.i.i747, %bb.ax ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %indvars.iv.i.i746
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !75
  %i.kg = icmp eq i8 %i.kf, %i.jm
  br i1 %i.kg, label %_ZL9addUniquePhRhih.exit752.thread, label %bb.ax

.loopexit.i749:                                   ; preds = %bb.ax
  %.not.i750 = icmp ult i8 %i.kd, 63
  br i1 %.not.i750, label %.loopexit.i749.thread, label %bb.ay

.loopexit.i749.thread:                            ; preds = %.loopexit931, %.loopexit.i749
  %i.kh = zext nneg i8 %i.kd to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kh
  store i8 %i.jm, ptr %i.ki, align 1, !tbaa !75
  %i.kj = load i8, ptr %i.kc, align 1, !tbaa !75
  %i.kk = add i8 %i.kj, 1
  store i8 %i.kk, ptr %i.kc, align 1, !tbaa !75
  br label %_ZL9addUniquePhRhih.exit752.thread

_ZL9addUniquePhRhih.exit752.thread:               ; preds = %.lr.ph.i.i745, %.loopexit.i749.thread, %bb.au
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 1 ; 2 uses
  %exitcond1098.not = icmp eq i64 %indvars.iv.next1095, %wide.trip.count1097
  br i1 %exitcond1098.not, label %.critedge716.loopexit, label %bb.au

.critedge716._crit_edge:                          ; preds = %.critedge716.loopexit, %bb.ae, %.critedge716.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 1 ; 2 uses
  %exitcond1108.not = icmp eq i64 %indvars.iv.next1105, %wide.trip.count1107
  br i1 %exitcond1108.not, label %..critedge720_crit_edge, label %bb.ae

..critedge720_crit_edge:                          ; preds = %.critedge716._crit_edge
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 1 ; 2 uses
  %exitcond1113.not = icmp eq i64 %indvars.iv.next1110, %wide.trip.count1112
  br i1 %exitcond1113.not, label %.critedge722, label %.preheader933

bb.ay:                                            ; preds = %.loopexit.i738, %.loopexit.i749
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.dx

.critedge722:                                     ; preds = %..critedge720_crit_edge, %.preheader933.lr.ph, %.preheader934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  br i1 %.not1054, label %._crit_edge1018.thread, label %.lr.ph1008.preheader

.lr.ph1008.preheader:                             ; preds = %.critedge722
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %wide.trip.count1127 = zext i8 %.0615.lcssa to i64 ; 3 uses
  br label %.lr.ph1008

.lr.ph1017:                                       ; preds = %bb.bi
  %.tr = trunc i32 %3 to i16
  %i.kl = shl i16 %.tr, 2                         ; 2 uses
  %wide.trip.count1150 = zext i8 %.0615.lcssa to i64 ; 4 uses
  br label %bb.bj

.lr.ph1008:                                       ; preds = %.lr.ph1008.preheader, %bb.bi
  %indvars.iv1125 = phi i64 [ 0, %.lr.ph1008.preheader ], [ %indvars.iv.next1126, %bb.bi ] ; 3 uses
  %.05881006 = phi i8 [ 0, %.lr.ph1008.preheader ], [ %.1589.ph, %bb.bi ] ; 4 uses
  %i.km = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1125 ; 8 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 84 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 2, !tbaa !83
  %.not680 = icmp eq i8 %i.ko, -1
  br i1 %.not680, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %.lr.ph1008
  store i8 %.05881006, ptr %i.kn, align 2, !tbaa !83
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 87
  store i8 1, ptr %i.kp, align 1, !tbaa !89
  %i.kq = trunc i64 %indvars.iv1125 to i8
  store i8 %i.kq, ptr %i.c, align 16, !tbaa !75
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 85 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 80 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 82 ; 3 uses
  br label %bb.ba

_ZL8containsPKhhh.exit.loopexit:                  ; preds = %.loopexit929, %._crit_edge995
  %.1583.lcssa = phi i32 [ %i.kx, %._crit_edge995 ], [ %.4586.ph, %.loopexit929 ] ; 2 uses
  %.not681 = icmp eq i32 %.1583.lcssa, 0
  br i1 %.not681, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZL8containsPKhhh.exit.loopexit
  %.05821005 = phi i32 [ 1, %bb.az ], [ %.1583.lcssa, %_ZL8containsPKhhh.exit.loopexit ] ; 2 uses
  %i.ku = load i8, ptr %i.c, align 16, !tbaa !75
  %i.kv = zext i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.kv ; 2 uses
  %i.kx = add i32 %.05821005, -1                  ; 3 uses
  %i.ky = icmp sgt i32 %.05821005, 1
  br i1 %i.ky, label %.lr.ph994.preheader, label %._crit_edge995

.lr.ph994.preheader:                              ; preds = %bb.ba
  %i.kz = zext nneg i32 %i.kx to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %scevgep, i64 %i.kz, i1 false), !tbaa !75
  br label %._crit_edge995

._crit_edge995:                                   ; preds = %.lr.ph994.preheader, %bb.ba
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 86
  %i.lb = load i8, ptr %i.la, align 2, !tbaa !90  ; 2 uses
  %.not1057 = icmp eq i8 %i.lb, 0
  br i1 %.not1057, label %_ZL8containsPKhhh.exit.loopexit, label %.lr.ph1003

.lr.ph1003:                                       ; preds = %._crit_edge995
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 63
  %wide.trip.count1123 = zext i8 %i.lb to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph1003, %.loopexit929
  %indvars.iv1120 = phi i64 [ 0, %.lr.ph1003 ], [ %indvars.iv.next1121, %.loopexit929 ] ; 2 uses
  %.15831000 = phi i32 [ %i.kx, %.lr.ph1003 ], [ %.4586.ph, %.loopexit929 ] ; 6 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %indvars.iv1120
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !75  ; 3 uses
  %i.lf = zext i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.lf ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 84 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 2, !tbaa !83
  %.not682 = icmp eq i8 %i.li, -1
  br i1 %.not682, label %bb.bc, label %.loopexit929

bb.bc:                                            ; preds = %bb.bb
  %i.lj = load i8, ptr %i.kr, align 1, !tbaa !91  ; 3 uses
  %.not10.not.i = icmp eq i8 %i.lj, 0
  br i1 %.not10.not.i, label %.loopexit930, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bc
  %wide.trip.count.i = zext i8 %i.lj to i64
  br label %.lr.ph.i

bb.bd:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit930, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bd, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.bd ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv.i
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !75
  %i.lm = icmp eq i8 %i.ll, %i.le
  br i1 %i.lm, label %.loopexit929, label %bb.bd

.loopexit930:                                     ; preds = %bb.bd, %bb.bc
  %i.ln = load i16, ptr %i.ks, align 2, !tbaa !84
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 80 ; 2 uses
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !84
  %i.lq = tail call noundef i16 @llvm.umin.i16(i16 %i.ln, i16 %i.lp) ; 2 uses
end_hunk_0
