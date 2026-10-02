Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AssxmlFileWriter?download=true
inline.NumInlined: 169
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp17DumpSceneToAssxmlEPKcS1_PNS_8IOSystemEPK7aiSceneb:bb.a
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.gh, ptr noundef nonnull %.0426.i, ptr noundef %i.gg, i32 noundef %i.gj)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gk = load i32, ptr %i.ga, align 8
  switch i32 %i.gk, label %.loopexit609.i [
    i32 1, label %bb.ay
    i32 4, label %bb.bd
    i32 5, label %bb.bh
    i32 3, label %bb.bl
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 1036 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = lshr i32 %i.gm, 2
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.24, i32 noundef %i.gn)
          to label %.preheader608.i unwind label %bb.az

.preheader608.i:                                  ; preds = %bb.ay
  %i.go = load i32, ptr %i.gl, align 4
  %.not721.i = icmp ult i32 %i.go, 4
  br i1 %.not721.i, label %.loopexit609.i, label %.lr.ph659.i

.lr.ph659.i:                                      ; preds = %.preheader608.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 1048
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw, %bb.ay, %bb.bd, %bb.bh, %.loopexit609.i, %.fold.split.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.ba:                                            ; preds = %bb.bb, %.lr.ph659.i
  %indvars.iv768.i = phi i64 [ 0, %.lr.ph659.i ], [ %indvars.iv.next769.i, %bb.bb ] ; 2 uses
  %i.gr = load ptr, ptr %i.gp, align 8
  %i.gs = shl nuw nsw i64 %indvars.iv768.i, 2
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4
  %i.gv = fpext float %i.gu to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.25, double noundef %i.gv)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %indvars.iv.next769.i = add nuw nsw i64 %indvars.iv768.i, 1 ; 2 uses
  %i.gw = load i32, ptr %i.gl, align 4
  %i.gx = lshr i32 %i.gw, 2
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = icmp samesign ult i64 %indvars.iv.next769.i, %i.gy
  br i1 %i.gz, label %bb.ba, label %.loopexit609.i, !llvm.loop !10

bb.bc:                                            ; preds = %bb.ba
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.bd:                                            ; preds = %bb.ax
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1036 ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = lshr i32 %i.hc, 2
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.24, i32 noundef %i.hd)
          to label %.preheader610.i unwind label %bb.az

.preheader610.i:                                  ; preds = %bb.bd
  %i.he = load i32, ptr %i.hb, align 4
  %.not720.i = icmp ult i32 %i.he, 4
  br i1 %.not720.i, label %.loopexit609.i, label %.lr.ph657.i

.lr.ph657.i:                                      ; preds = %.preheader610.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fz, i64 1048
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %.lr.ph657.i
  %indvars.iv765.i = phi i64 [ 0, %.lr.ph657.i ], [ %indvars.iv.next766.i, %bb.bf ] ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = shl nuw nsw i64 %indvars.iv765.i, 2
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.26, i32 noundef %i.hj)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %indvars.iv.next766.i = add nuw nsw i64 %indvars.iv765.i, 1 ; 2 uses
  %i.hk = load i32, ptr %i.hb, align 4
  %i.hl = lshr i32 %i.hk, 2
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = icmp samesign ult i64 %indvars.iv.next766.i, %i.hm
  br i1 %i.hn, label %bb.be, label %.loopexit609.i, !llvm.loop !11

bb.bg:                                            ; preds = %bb.be
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.bh:                                            ; preds = %bb.ax
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fz, i64 1036 ; 4 uses
  %i.hq = load i32, ptr %i.hp, align 4
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.24, i32 noundef %i.hq)
          to label %.preheader612.i unwind label %bb.az

.preheader612.i:                                  ; preds = %bb.bh
  %i.hr = load i32, ptr %i.hp, align 4
  %.not719.i = icmp eq i32 %i.hr, 0
  br i1 %.not719.i, label %.loopexit609.i, label %.lr.ph655.i

.lr.ph655.i:                                      ; preds = %.preheader612.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fz, i64 1048 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = sext i8 %i.hu to i32
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.27, i32 noundef %i.hv)
          to label %._crit_edge865.i unwind label %.loopexit.split-lp761.i

._crit_edge865.i:                                 ; preds = %.lr.ph655.i
  %.pre866.i = load i32, ptr %i.hp, align 4
  %i.hw = icmp ugt i32 %.pre866.i, 1
  br i1 %i.hw, label %.peel.next758.i, label %.loopexit609.i

.peel.next758.i:                                  ; preds = %._crit_edge865.i, %bb.bk
  %indvars.iv754.i = phi i64 [ %indvars.iv.next755.i, %bb.bk ], [ 1, %._crit_edge865.i ] ; 3 uses
  %i.hx = load ptr, ptr %i.hs, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv754.i
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = sext i8 %i.hz to i32
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.27, i32 noundef %i.ia)
          to label %bb.bi unwind label %.loopexit760.i

bb.bi:                                            ; preds = %.peel.next758.i
  %i.ib = trunc nuw i64 %indvars.iv754.i to i32
  %i.ic = urem i32 %i.ib, 30
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.28)
          to label %bb.bk unwind label %.loopexit760.i

.loopexit760.i:                                   ; preds = %.peel.next758.i, %bb.bj
  %lpad.loopexit762.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit.split-lp761.i:                          ; preds = %.lr.ph655.i
  %lpad.loopexit.split-lp763.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next755.i = add nuw nsw i64 %indvars.iv754.i, 1 ; 2 uses
  %i.ie = load i32, ptr %i.hp, align 4
  %i.if = zext i32 %i.ie to i64
  %i.ig = icmp samesign ult i64 %indvars.iv.next755.i, %i.if
  br i1 %i.ig, label %.peel.next758.i, label %.loopexit609.i, !llvm.loop !12

bb.bl:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fz, i64 1048
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 3 uses
  store ptr %i.fm, ptr %11, align 8
  %i.ik = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ij) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.ik, ptr %i.a, align 8
  %i.il = icmp ugt i64 %i.ik, 15
  br i1 %i.il, label %.noexc.i538.i, label %._crit_edge.i.i537.i

.noexc.i538.i:                                    ; preds = %bb.bl
  %i.im = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc539.i unwind label %bb.by ; 2 uses

.noexc539.i:                                      ; preds = %.noexc.i538.i
  store ptr %i.im, ptr %11, align 8
  %i.in = load i64, ptr %i.a, align 8
  store i64 %i.in, ptr %i.fm, align 8
  br label %._crit_edge.i.i537.i

._crit_edge.i.i537.i:                             ; preds = %.noexc539.i, %bb.bl
  %i.io = phi ptr [ %i.im, %.noexc539.i ], [ %i.fm, %bb.bl ] ; 2 uses
  switch i64 %i.ik, label %bb.bn [
    i64 1, label %bb.bm
    i64 0, label %bb.bo
  ]

bb.bm:                                            ; preds = %._crit_edge.i.i537.i
  %i.ip = load i8, ptr %i.ij, align 1
  store i8 %i.ip, ptr %i.io, align 1
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i.i537.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.io, ptr nonnull align 1 %i.ij, i64 %i.ik, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %._crit_edge.i.i537.i
  %i.iq = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.iq, ptr %i.fn, align 8
  %i.ir = load ptr, ptr %11, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iq
  store i8 0, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  store ptr %i.fo, ptr %10, align 8, !alias.scope !39
  store i64 0, ptr %i.fp, align 8, !alias.scope !39
  store i8 0, ptr %i.fo, align 8, !alias.scope !39
  %i.it = load i64, ptr %i.fn, align 8, !noalias !39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.it)
          to label %.preheader.i.i unwind label %bb.bp

.preheader.i.i:                                   ; preds = %bb.bo
  %i.iu = load i64, ptr %i.fn, align 8, !noalias !39
  %.not33.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not33.i.i, label %_ZN6Assimp16AssxmlFileWriterL9encodeXMLERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %.034.i.i = phi i64 [ %i.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.iw = load ptr, ptr %11, align 8, !noalias !39
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.034.i.i ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = load i64, ptr %i.fp, align 8, !alias.scope !39 ; 6 uses
  switch i8 %i.iy, label %bb.bv [
    i8 38, label %bb.bq
    i8 34, label %bb.br
    i8 39, label %bb.bs
    i8 60, label %bb.bt
    i8 62, label %bb.bu
  ]

bb.bq:                                            ; preds = %.lr.ph.i.i
  %i.ja = add i64 %i.iz, -4611686018427387899
  %i.jb = icmp ult i64 %i.ja, 5
  br i1 %i.jb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #16
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i: ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.jc = phi ptr [ %i.ix, %bb.bv ], [ @.str.97, %bb.bu ], [ @.str.94, %bb.br ], [ @.str.95, %bb.bs ], [ @.str.96, %bb.bt ], [ @.str.93, %bb.bq ]
  %i.jd = phi i64 [ 1, %bb.bv ], [ 4, %bb.bu ], [ 6, %bb.br ], [ 6, %bb.bs ], [ 4, %bb.bt ], [ 5, %bb.bq ]
  %i.je = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.jc, i64 noundef %i.jd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i unwind label %.loopexit.i.i ; 0 uses

.loopexit.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.br:                                            ; preds = %.lr.ph.i.i
  %i.jf = add i64 %i.iz, -4611686018427387898
  %i.jg = icmp ult i64 %i.jf, 6
  br i1 %i.jg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i
  %i.jh = add i64 %i.iz, -4611686018427387898
  %i.ji = icmp ult i64 %i.jh, 6
  br i1 %i.ji, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i

bb.bt:                                            ; preds = %.lr.ph.i.i
  %i.jj = and i64 %i.iz, -4
  %i.jk = icmp eq i64 %i.jj, 4611686018427387900
  br i1 %i.jk, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i
  %i.jl = and i64 %i.iz, -4
  %i.jm = icmp eq i64 %i.jl, 4611686018427387900
  br i1 %i.jm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i

bb.bv:                                            ; preds = %.lr.ph.i.i
  %i.jn = icmp eq i64 %i.iz, 4611686018427387903
  br i1 %i.jn, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.invoke.i.i
  %i.jo = add i64 %.034.i.i, 1                    ; 2 uses
  %i.jp = load i64, ptr %i.fn, align 8, !noalias !39
  %.not.i.i = icmp eq i64 %i.jo, %i.jp
  br i1 %.not.i.i, label %_ZN6Assimp16AssxmlFileWriterL9encodeXMLERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i, !llvm.loop !15

bb.bw:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.bp
  %.pn.i.i = phi { ptr, i32 } [ %i.iv, %bb.bp ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.jq = load ptr, ptr %10, align 8, !alias.scope !39 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.fo
  br i1 %i.jr, label %.body.i, label %.body.i.sink.split

_ZN6Assimp16AssxmlFileWriterL9encodeXMLERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %.preheader.i.i
  %i.js = load ptr, ptr %10, align 8
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.29, ptr noundef %i.js)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %_ZN6Assimp16AssxmlFileWriterL9encodeXMLERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.jt = load ptr, ptr %10, align 8              ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.fo
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541.i: ; preds = %bb.bx
  %i.jv = load i64, ptr %i.fo, align 8
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541.i
  %i.jx = load ptr, ptr %11, align 8              ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.fm
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543.i
  %i.jz = load i64, ptr %i.fm, align 8
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.loopexit609.i

bb.by:                                            ; preds = %.noexc.i538.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552.i

bb.bz:                                            ; preds = %_ZN6Assimp16AssxmlFileWriterL9encodeXMLERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load ptr, ptr %10, align 8              ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.fo
  br i1 %i.ke, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.bz, %bb.bw
  %.sink = phi ptr [ %i.jq, %bb.bw ], [ %i.kd, %bb.bz ]
  %.pn500.i.ph = phi { ptr, i32 } [ %.pn.i.i, %bb.bw ], [ %i.kc, %bb.bz ]
  %i.kf = load i64, ptr %i.fo, align 8
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.kg) #17
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.bz, %bb.bw
  %.pn500.i = phi { ptr, i32 } [ %.pn.i.i, %bb.bw ], [ %i.kc, %bb.bz ], [ %.pn500.i.ph, %.body.i.sink.split ] ; 2 uses
  %i.kh = load ptr, ptr %11, align 8              ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.fm
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550.i: ; preds = %.body.i
  %i.kj = load i64, ptr %i.fm, align 8
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550.i, %bb.by
  %.pn500.pn.i = phi { ptr, i32 } [ %i.kb, %bb.by ], [ %.pn500.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550.i ], [ %.pn500.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.loopexit.split-lp833.i

.loopexit609.i:                                   ; preds = %bb.bk, %bb.bf, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546.i, %._crit_edge865.i, %.preheader612.i, %.preheader610.i, %.preheader608.i, %bb.ax
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.30)
          to label %bb.ca unwind label %bb.az

bb.ca:                                            ; preds = %.loopexit609.i
  %indvars.iv.next772.i = add nuw nsw i64 %indvars.iv771.i, 1 ; 2 uses
  %i.kl = load i32, ptr %i.ft, align 8
  %i.km = zext i32 %i.kl to i64
  %i.kn = icmp samesign ult i64 %indvars.iv.next772.i, %i.km
  br i1 %i.kn, label %.lr.ph661.i, label %._crit_edge662.i, !llvm.loop !16

bb.cb:                                            ; preds = %._crit_edge662.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.32)
          to label %bb.cc unwind label %bb.av

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next775.i = add nuw nsw i64 %indvars.iv774.i, 1 ; 2 uses
  %i.ko = load i32, ptr %i.fi, align 8
  %i.kp = zext i32 %i.ko to i64
  %i.kq = icmp samesign ult i64 %indvars.iv.next775.i, %i.kp
  br i1 %i.kq, label %bb.at, label %._crit_edge665.i, !llvm.loop !17

bb.cd:                                            ; preds = %._crit_edge665.i, %bb.ar
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.ks = load i32, ptr %i.kr, align 8            ; 2 uses
  %.not474.i = icmp eq i32 %i.ks, 0
  br i1 %.not474.i, label %bb.ds, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.34, i32 noundef %i.ks)
          to label %.preheader607.i unwind label %bb.z

.preheader607.i:                                  ; preds = %bb.ce
  %i.kt = load i32, ptr %i.kr, align 8
  %.not722.i = icmp eq i32 %i.kt, 0
  br i1 %.not722.i, label %._crit_edge680.i, label %.lr.ph679.i

.lr.ph679.i:                                      ; preds = %.preheader607.i
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 9 uses
  br label %bb.cf

._crit_edge680.i:                                 ; preds = %bb.dr, %.preheader607.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.50)
          to label %bb.ds unwind label %bb.z

bb.cf:                                            ; preds = %bb.dr, %.lr.ph679.i
  %indvars.iv789.i = phi i64 [ 0, %.lr.ph679.i ], [ %indvars.iv.next790.i, %bb.dr ] ; 2 uses
  %i.kw = load ptr, ptr %i.ku, align 8
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv789.i
  %i.ky = load ptr, ptr %i.kx, align 8            ; 5 uses
  call fastcc void @_ZN6Assimp16AssxmlFileWriterL11ConvertNameER8aiStringRKS1_(ptr noundef nonnull align 4 dereferenceable(1028) %8, ptr noundef nonnull align 4 dereferenceable(1028) %i.ky)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1032
  %i.la = load double, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 1040
  %i.lc = load double, ptr %i.lb, align 8
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.kv, double noundef %i.la, double noundef %i.lc)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 1048 ; 3 uses
  %i.le = load i32, ptr %i.ld, align 8            ; 2 uses
  %.not493.i = icmp eq i32 %i.le, 0
  br i1 %.not493.i, label %bb.dq, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.36, i32 noundef %i.le)
          to label %.preheader606.i unwind label %bb.ci

.preheader606.i:                                  ; preds = %bb.ch
  %i.lf = load i32, ptr %i.ld, align 8
  %.not723.i = icmp eq i32 %i.lf, 0
  br i1 %.not723.i, label %._crit_edge677.i, label %.lr.ph676.i

.lr.ph676.i:                                      ; preds = %.preheader606.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 1056
  br label %bb.cj

._crit_edge677.i:                                 ; preds = %bb.dp, %.preheader606.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.48)
          to label %bb.dq unwind label %bb.ci

bb.ci:                                            ; preds = %bb.cf, %bb.ch, %._crit_edge677.i, %bb.dq
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.cj:                                            ; preds = %bb.dp, %.lr.ph676.i
  %indvars.iv786.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next787.i, %bb.dp ] ; 2 uses
  %i.li = load ptr, ptr %i.lg, align 8
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv786.i
  %i.lk = load ptr, ptr %i.lj, align 8            ; 9 uses
  store i32 0, ptr %8, align 4
  %i.ll = load i32, ptr %i.lk, align 4
  %.not.i553.i = icmp eq i32 %i.ll, 0
  br i1 %.not.i553.i, label %bb.cw, label %.lr.ph.i554.i

.lr.ph.i554.i:                                    ; preds = %bb.cj
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  br label %bb.ck

._crit_edge.loopexit.i.i:                         ; preds = %_ZN8aiString6AppendEPKc.exit.i.i
  %i.ln = zext i32 %i.ms to i64
  br label %bb.cw

bb.ck:                                            ; preds = %_ZN8aiString6AppendEPKc.exit.i.i, %.lr.ph.i554.i
  %i.lo = phi i32 [ 0, %.lr.ph.i554.i ], [ %i.ms, %_ZN8aiString6AppendEPKc.exit.i.i ] ; 13 uses
  %i.lp = phi i32 [ 0, %.lr.ph.i554.i ], [ %i.mt, %_ZN8aiString6AppendEPKc.exit.i.i ] ; 9 uses
  %i.lq = phi i32 [ 0, %.lr.ph.i554.i ], [ %i.mu, %_ZN8aiString6AppendEPKc.exit.i.i ] ; 7 uses
  %i.lr = phi i32 [ 0, %.lr.ph.i554.i ], [ %i.mv, %_ZN8aiString6AppendEPKc.exit.i.i ] ; 5 uses
  %i.ls = phi i32 [ 0, %.lr.ph.i554.i ], [ %i.mw, %_ZN8aiString6AppendEPKc.exit.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i554.i ], [ %indvars.iv.next.i.i, %_ZN8aiString6AppendEPKc.exit.i.i ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lm, i64 %indvars.iv.i.i
  %i.lu = load i8, ptr %i.lt, align 1             ; 2 uses
  switch i8 %i.lu, label %bb.cv [
    i8 60, label %bb.cl
    i8 62, label %bb.cn
    i8 38, label %bb.cp
    i8 34, label %bb.cr
    i8 39, label %bb.ct
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.lv = add i32 %i.lo, 4                        ; 7 uses
  %i.lw = icmp ugt i32 %i.lv, 1023
  br i1 %i.lw, label %_ZN8aiString6AppendEPKc.exit.i.i, label %bb.cm

end_hunk_0
begin_hunk_1_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_:bb.a
  store i64 %i.l, ptr %i.n, align 8
  store ptr %i.e, ptr %i.b, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.99) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @aiGetVersionMajor() local_unnamed_addr #3

declare i32 @aiGetVersionMinor() local_unnamed_addr #3

declare i32 @aiGetVersionRevision() local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @asctime(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4095, ptr noundef %1, ptr noundef nonnull %2) #15
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp16AssxmlFileWriterL9WriteNodeEPK6aiNodePNS_8IOStreamEj(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 17 uses
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not60 = icmp eq i32 %2, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %2 to i64                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 9, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %.lr.ph.preheader
  %.pre-phi = phi i64 [ %i.b, %.lr.ph.preheader ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1028
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false)
  call fastcc void @_ZN6Assimp16AssxmlFileWriterL11ConvertNameER8aiStringRKS1_(ptr noundef nonnull align 4 dereferenceable(1028) %3, ptr noundef nonnull align 4 dereferenceable(1028) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load <4 x float>, ptr %i.d, align 4
  %i.h = fpext <4 x float> %i.g to <4 x double>   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.j = load <4 x float>, ptr %i.i, align 4
  %i.k = fpext <4 x float> %i.j to <4 x double>   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.m = load <4 x float>, ptr %i.l, align 4
  %i.n = fpext <4 x float> %i.m to <4 x double>   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.p = load <4 x float>, ptr %i.o, align 4
  %i.q = fpext <4 x float> %i.p to <4 x double>   ; 4 uses
  %i.r = extractelement <4 x double> %i.h, i64 0
  %i.s = extractelement <4 x double> %i.h, i64 1
  %i.t = extractelement <4 x double> %i.h, i64 2
  %i.u = extractelement <4 x double> %i.h, i64 3
  %i.v = extractelement <4 x double> %i.k, i64 0
  %i.w = extractelement <4 x double> %i.k, i64 1
  %i.x = extractelement <4 x double> %i.k, i64 2
  %i.y = extractelement <4 x double> %i.k, i64 3
  %i.z = extractelement <4 x double> %i.n, i64 0
  %i.aa = extractelement <4 x double> %i.n, i64 1
  %i.ab = extractelement <4 x double> %i.n, i64 2
  %i.ac = extractelement <4 x double> %i.n, i64 3
  %i.ad = extractelement <4 x double> %i.q, i64 0
  %i.ae = extractelement <4 x double> %i.q, i64 1
  %i.af = extractelement <4 x double> %i.q, i64 2
  %i.ag = extractelement <4 x double> %i.q, i64 3
  call void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, double noundef %i.r, double noundef %i.s, double noundef %i.t, double noundef %i.u, ptr noundef nonnull %i.a, double noundef %i.v, double noundef %i.w, double noundef %i.x, double noundef %i.y, ptr noundef nonnull %i.a, double noundef %i.z, double noundef %i.aa, double noundef %i.ab, double noundef %i.ac, ptr noundef nonnull %i.a, double noundef %i.ad, double noundef %i.ae, double noundef %i.af, double noundef %i.ag, ptr noundef nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %1, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.a, i32 noundef %i.ai, ptr noundef nonnull %i.a)
  %i.aj = load i32, ptr %i.ah, align 8
  %.not61 = icmp eq i32 %i.aj, 0
  br i1 %.not61, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1128
  br label %bb.c

._crit_edge55:                                    ; preds = %bb.c, %bb.b
  call void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %1, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph54, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4
  call void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %i.an)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.ah, align 8
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.c, label %._crit_edge55, !llvm.loop !40

bb.d:                                             ; preds = %._crit_edge55, %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %.not50 = icmp eq i32 %i.as, 0
  br i1 %.not50, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %1, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.a, i32 noundef %i.as)
  %i.at = load i32, ptr %i.ar, align 8
  %.not62 = icmp eq i32 %i.at, 0
  br i1 %.not62, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.av = add nuw i32 %2, 2
  br label %bb.f

._crit_edge59:                                    ; preds = %bb.f, %bb.e
  call void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %1, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph58, %bb.f
  %indvars.iv65 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next66, %bb.f ] ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv65
  %i.ay = load ptr, ptr %i.ax, align 8
  call fastcc void @_ZN6Assimp16AssxmlFileWriterL9WriteNodeEPK6aiNodePNS_8IOStreamEj(ptr noundef %i.ay, ptr noundef %1, i32 noundef %i.av)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.az = load i32, ptr %i.ar, align 8
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next66, %i.ba
  br i1 %i.bb, label %bb.f, label %._crit_edge59, !llvm.loop !41

bb.g:                                             ; preds = %._crit_edge59, %bb.d
  call void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare ptr @aiTextureTypeToString(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN6Assimp16AssxmlFileWriterL11ConvertNameER8aiStringRKS1_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(1028) initializes((0, 4)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(1028) %1) unnamed_addr #6 {
bb.a:
  store i32 0, ptr %0, align 4
  %i.a = load i32, ptr %1, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZN8aiString6AppendEPKc.exit
  %i.d = zext i32 %i.al to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi i64 [ %i.d, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  store i8 0, ptr %i.g, align 1
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN8aiString6AppendEPKc.exit
  %i.h = phi i32 [ 0, %.lr.ph ], [ %i.al, %_ZN8aiString6AppendEPKc.exit ] ; 13 uses
  %i.i = phi i32 [ 0, %.lr.ph ], [ %i.am, %_ZN8aiString6AppendEPKc.exit ] ; 9 uses
  %i.j = phi i32 [ 0, %.lr.ph ], [ %i.an, %_ZN8aiString6AppendEPKc.exit ] ; 7 uses
  %i.k = phi i32 [ 0, %.lr.ph ], [ %i.ao, %_ZN8aiString6AppendEPKc.exit ] ; 5 uses
  %i.l = phi i32 [ 0, %.lr.ph ], [ %i.ap, %_ZN8aiString6AppendEPKc.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8aiString6AppendEPKc.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  switch i8 %i.n, label %bb.m [
    i8 60, label %bb.c
    i8 62, label %bb.e
    i8 38, label %bb.g
    i8 34, label %bb.i
    i8 39, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %i.h, 4                          ; 7 uses
  %i.p = icmp ugt i32 %i.o, 1023
  br i1 %i.p, label %_ZN8aiString6AppendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i32 %i.h to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.r, ptr noundef nonnull align 1 dereferenceable(5) @.str.96, i64 5, i1 false)
  store i32 %i.o, ptr %0, align 4
  br label %_ZN8aiString6AppendEPKc.exit

bb.e:                                             ; preds = %bb.b
  %i.s = add i32 %i.i, 4                          ; 7 uses
  %i.t = icmp ugt i32 %i.s, 1023
  br i1 %i.t, label %_ZN8aiString6AppendEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %i.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.v, ptr noundef nonnull align 1 dereferenceable(5) @.str.97, i64 5, i1 false)
  store i32 %i.s, ptr %0, align 4
  br label %_ZN8aiString6AppendEPKc.exit

bb.g:                                             ; preds = %bb.b
  %i.w = add i32 %i.j, 5                          ; 7 uses
  %i.x = icmp ugt i32 %i.w, 1023
  br i1 %i.x, label %_ZN8aiString6AppendEPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext i32 %i.j to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.z, ptr noundef nonnull align 1 dereferenceable(6) @.str.93, i64 6, i1 false)
  store i32 %i.w, ptr %0, align 4
  br label %_ZN8aiString6AppendEPKc.exit

bb.i:                                             ; preds = %bb.b
  %i.aa = add i32 %i.k, 6                         ; 7 uses
  %i.ab = icmp ugt i32 %i.aa, 1023
  br i1 %i.ab, label %_ZN8aiString6AppendEPKc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = zext i32 %i.k to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ad, ptr noundef nonnull align 1 dereferenceable(7) @.str.94, i64 7, i1 false)
  store i32 %i.aa, ptr %0, align 4
  br label %_ZN8aiString6AppendEPKc.exit

bb.k:                                             ; preds = %bb.b
  %i.ae = add i32 %i.l, 6                         ; 7 uses
  %i.af = icmp ugt i32 %i.ae, 1023
  br i1 %i.af, label %_ZN8aiString6AppendEPKc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = zext i32 %i.l to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ah, ptr noundef nonnull align 1 dereferenceable(7) @.str.95, i64 7, i1 false)
  store i32 %i.ae, ptr %0, align 4
  br label %_ZN8aiString6AppendEPKc.exit

bb.m:                                             ; preds = %bb.b
  %i.ai = add i32 %i.h, 1                         ; 6 uses
  store i32 %i.ai, ptr %0, align 4
  %i.aj = zext i32 %i.h to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  store i8 %i.n, ptr %i.ak, align 1
  br label %_ZN8aiString6AppendEPKc.exit

_ZN8aiString6AppendEPKc.exit:                     ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.m
  %i.al = phi i32 [ %i.ae, %bb.l ], [ %i.h, %bb.k ], [ %i.aa, %bb.j ], [ %i.h, %bb.i ], [ %i.w, %bb.h ], [ %i.h, %bb.g ], [ %i.s, %bb.f ], [ %i.h, %bb.e ], [ %i.o, %bb.d ], [ %i.h, %bb.c ], [ %i.ai, %bb.m ] ; 2 uses
  %i.am = phi i32 [ %i.ae, %bb.l ], [ %i.i, %bb.k ], [ %i.aa, %bb.j ], [ %i.i, %bb.i ], [ %i.w, %bb.h ], [ %i.i, %bb.g ], [ %i.s, %bb.f ], [ %i.i, %bb.e ], [ %i.o, %bb.d ], [ %i.h, %bb.c ], [ %i.ai, %bb.m ]
  %i.an = phi i32 [ %i.ae, %bb.l ], [ %i.j, %bb.k ], [ %i.aa, %bb.j ], [ %i.j, %bb.i ], [ %i.w, %bb.h ], [ %i.j, %bb.g ], [ %i.s, %bb.f ], [ %i.i, %bb.e ], [ %i.o, %bb.d ], [ %i.h, %bb.c ], [ %i.ai, %bb.m ]
  %i.ao = phi i32 [ %i.ae, %bb.l ], [ %i.k, %bb.k ], [ %i.aa, %bb.j ], [ %i.k, %bb.i ], [ %i.w, %bb.h ], [ %i.j, %bb.g ], [ %i.s, %bb.f ], [ %i.i, %bb.e ], [ %i.o, %bb.d ], [ %i.h, %bb.c ], [ %i.ai, %bb.m ]
  %i.ap = phi i32 [ %i.ae, %bb.l ], [ %i.l, %bb.k ], [ %i.aa, %bb.j ], [ %i.k, %bb.i ], [ %i.w, %bb.h ], [ %i.j, %bb.g ], [ %i.s, %bb.f ], [ %i.i, %bb.e ], [ %i.o, %bb.d ], [ %i.h, %bb.c ], [ %i.ai, %bb.m ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %1, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !0
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4, !37}
!7 = distinct !{!7, !4, !38}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4, !37}
!13 = distinct !{!13, i1 false, !"_ZN6Assimp16AssxmlFileWriterL9encodeXMLERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!14 = distinct !{!14, !13, !"_ZN6Assimp16AssxmlFileWriterL9encodeXMLERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = distinct !{null, null}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = !{!"llvm.loop.unswitch.partial.disable"}
!39 = !{!14}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !4}
end_hunk_1
