Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Assert?download=true
inline.NumInlined: 3006
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN13AssertVisitor5visitEP12AstAssertCtl:bb.a
  store i64 35, ptr %i.a, align 8, !tbaa !108
  %i.ey = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc156 unwind label %bb.as ; 3 uses

.noexc156:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  store ptr %i.ey, ptr %9, align 8, !tbaa !41
  %i.ez = load i64, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ey, ptr noundef nonnull align 1 dereferenceable(35) @.str.562, i64 35, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !42
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  store i8 0, ptr %i.fb, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN8AstCStmt3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.am unwind label %bb.at

bb.am:                                            ; preds = %.noexc156
  %i.fc = load ptr, ptr %9, align 8, !tbaa !41    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ex
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.am
  %i.fe = load i64, ptr %i.ex, align 8, !tbaa !43
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.fg = load ptr, ptr %i.k, align 8, !tbaa !166
  %i.fh = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.fg, ptr noundef null) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i, label %_ZN8AstCStmt3addEP7AstNode.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  call void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.en, ptr noundef nonnull %i.fh)
  br label %_ZN8AstCStmt3addEP7AstNode.exit

_ZN8AstCStmt3addEP7AstNode.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fi, ptr %10, align 8, !tbaa !44
  store i16 8236, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 2, ptr %i.fj, align 8, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i8 0, ptr %i.fk, align 2, !tbaa !43
  invoke void @_ZN8AstCStmt3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %_ZN8AstCStmt3addEP7AstNode.exit
  %i.fl = load ptr, ptr %10, align 8, !tbaa !41   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fi
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.ao
  %i.fn = load i64, ptr %i.fi, align 8, !tbaa !43
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !163 ; 2 uses
  %.not92 = icmp eq ptr %i.fp, null
  br i1 %.not92, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.fq = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.fp, ptr noundef null) ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i168, label %_ZN8AstCStmt3addEP7AstNode.exit169, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.en, ptr noundef nonnull %i.fq)
  br label %_ZN8AstCStmt3addEP7AstNode.exit169

bb.ar:                                            ; preds = %bb.al, %._crit_edge.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.eo
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.ar
  %i.fu = load i64, ptr %i.eo, align 8, !tbaa !43
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 160) #24
  br label %common.resume

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.at:                                            ; preds = %.noexc156
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = load ptr, ptr %9, align 8, !tbaa !41    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.ex
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.at
  %i.ga = load i64, ptr %i.ex, align 8, !tbaa !43
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.as
  %.pn88 = phi { ptr, i32 } [ %i.fw, %bb.as ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %i.fx, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %common.resume

bb.au:                                            ; preds = %_ZN8AstCStmt3addEP7AstNode.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  %i.gd = load ptr, ptr %10, align 8, !tbaa !41   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fi
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.au
  %i.gf = load i64, ptr %i.fi, align 8, !tbaa !43
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.gh, ptr %11, align 8, !tbaa !44, !alias.scope !437
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 3, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.gi = load ptr, ptr %11, align 8, !tbaa !41, !alias.scope !437 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i8 53, ptr %i.gj, align 1, !tbaa !43
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store i8 53, ptr %i.gk, align 1, !tbaa !43
  store i8 50, ptr %i.gi, align 1, !tbaa !43
  invoke void @_ZN8AstCStmt3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.aw unwind label %bb.ax

bb.av:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #25
  unreachable

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.gn = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.gh
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.aw
  %i.gp = load i64, ptr %i.gh, align 8, !tbaa !43
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZN8AstCStmt3addEP7AstNode.exit169

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gh
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.ax
  %i.gu = load i64, ptr %i.gh, align 8, !tbaa !43
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %common.resume

_ZN8AstCStmt3addEP7AstNode.exit169:               ; preds = %bb.aq, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 154
  %.sroa.0.0.copyload.i186 = load i8, ptr %i.gw, align 2, !tbaa !168 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.gx = icmp ult i8 %.sroa.0.0.copyload.i186, 10
  %i.gy = icmp ult i8 %.sroa.0.0.copyload.i186, 100
  %. = select i1 %i.gy, i32 2, i32 3              ; 2 uses
  %i.gz = zext nneg i32 %. to i64
  %i.ha = select i1 %i.gx, i64 1, i64 %i.gz       ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.hb, ptr %14, align 8, !tbaa !44, !alias.scope !438
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.ha, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i189 unwind label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i189: ; preds = %_ZN8AstCStmt3addEP7AstNode.exit169
  %i.hc = load ptr, ptr %14, align 8, !tbaa !41, !alias.scope !438 ; 4 uses
  %i.hd = icmp ugt i8 %.sroa.0.0.copyload.i186, 99
  br i1 %i.hd, label %._crit_edge.i.i190.thread, label %._crit_edge.i.i190

._crit_edge.i.i190.thread:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i189
  %i.he = urem i8 %.sroa.0.0.copyload.i186, 100
  %i.hf = shl nuw i8 %i.he, 1
  %i.hg = udiv i8 %.sroa.0.0.copyload.i186, 100
  %i.hh = zext i8 %i.hf to i64
  %i.hi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !43, !noalias !438
  %i.hl = getelementptr i8, ptr %i.hc, i64 %i.ha
  %i.hm = getelementptr i8, ptr %i.hl, i64 -1
  store i8 %i.hk, ptr %i.hm, align 1, !tbaa !43
  %i.hn = load i8, ptr %i.hi, align 2, !tbaa !43, !noalias !438
  %i.ho = zext nneg i32 %. to i64
  %i.hp = getelementptr i8, ptr %i.hc, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 -2
  store i8 %i.hn, ptr %i.hq, align 1, !tbaa !43
  br label %bb.az

._crit_edge.i.i190:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i189
  %i.hr = icmp ugt i8 %.sroa.0.0.copyload.i186, 9
  br i1 %i.hr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i190
  %i.hs = shl nuw i8 %.sroa.0.0.copyload.i186, 1
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ht ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !43, !noalias !438
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !43
  %i.hy = load i8, ptr %i.hu, align 2, !tbaa !43, !noalias !438
  br label %_ZNSt7__cxx119to_stringEi.exit195

bb.az:                                            ; preds = %._crit_edge.i.i190.thread, %._crit_edge.i.i190
  %.0.lcssa.i.i304 = phi i8 [ %i.hg, %._crit_edge.i.i190.thread ], [ %.sroa.0.0.copyload.i186, %._crit_edge.i.i190 ]
  %i.hz = or disjoint i8 %.0.lcssa.i.i304, 48
  br label %_ZNSt7__cxx119to_stringEi.exit195

bb.ba:                                            ; preds = %_ZN8AstCStmt3addEP7AstNode.exit169
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #25
  unreachable

_ZNSt7__cxx119to_stringEi.exit195:                ; preds = %bb.ay, %bb.az
  %storemerge.i.i191 = phi i8 [ %i.hz, %bb.az ], [ %i.hy, %bb.ay ]
  store i8 %storemerge.i.i191, ptr %i.hc, align 1, !tbaa !43
  %i.ic = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.541, i64 noundef 2)
          to label %.noexc197 unwind label %bb.bm ; 6 uses

.noexc197:                                        ; preds = %_ZNSt7__cxx119to_stringEi.exit195
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.id, ptr %13, align 8, !tbaa !44, !alias.scope !439
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !41 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 5 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

bb.bb:                                            ; preds = %.noexc197
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !42 ; 3 uses
  %i.ij = icmp ult i64 %i.ii, 16
  call void @llvm.assume(i1 %i.ij)
  %i.ik = add nuw nsw i64 %i.ii, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.id, ptr noundef nonnull align 8 dereferenceable(1) %i.if, i64 %i.ik, i1 false)
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %.noexc197
  store ptr %i.ie, ptr %13, align 8, !tbaa !41, !alias.scope !439
  %i.il = load i64, ptr %i.if, align 8, !tbaa !43
  store i64 %i.il, ptr %i.id, align 8, !tbaa !43, !alias.scope !439
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.bb
  %i.im = phi i64 [ %i.ii, %bb.bb ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.im, ptr %i.io, align 8, !tbaa !42, !alias.scope !439
  store ptr %i.if, ptr %i.ic, align 8, !tbaa !41
  store i64 0, ptr %i.in, align 8, !tbaa !42
  store i8 0, ptr %i.if, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !42, !noalias !440
  %i.iq = add i64 %i.ip, -4611686018427387901
  %i.ir = icmp ult i64 %i.iq, 3
  br i1 %i.ir, label %bb.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #27
          to label %.noexc201 unwind label %bb.bn

.noexc201:                                        ; preds = %bb.bd
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.bc
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.563, i64 noundef 3)
          to label %.noexc202 unwind label %bb.bn ; 6 uses

.noexc202:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.it, ptr %12, align 8, !tbaa !44, !alias.scope !440
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !41 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 5 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

bb.be:                                            ; preds = %.noexc202
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !42 ; 3 uses
  %i.iz = icmp ult i64 %i.iy, 16
  call void @llvm.assume(i1 %i.iz)
  %i.ja = add nuw nsw i64 %i.iy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.it, ptr noundef nonnull align 8 dereferenceable(1) %i.iv, i64 %i.ja, i1 false)
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %.noexc202
  store ptr %i.iu, ptr %12, align 8, !tbaa !41, !alias.scope !440
  %i.jb = load i64, ptr %i.iv, align 8, !tbaa !43
  store i64 %i.jb, ptr %i.it, align 8, !tbaa !43, !alias.scope !440
  %.phi.trans.insert.i199 = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %.pre.i200 = load i64, ptr %.phi.trans.insert.i199, align 8, !tbaa !42
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.be
  %i.jc = phi i64 [ %i.iy, %bb.be ], [ %.pre.i200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.jc, ptr %i.je, align 8, !tbaa !42, !alias.scope !440
  store ptr %i.iv, ptr %i.is, align 8, !tbaa !41
  store i64 0, ptr %i.jd, align 8, !tbaa !42
  store i8 0, ptr %i.iv, align 8, !tbaa !43
  invoke void @_ZN8AstCStmt3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.jf = load ptr, ptr %12, align 8, !tbaa !41   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.it
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.bg
  %i.jh = load i64, ptr %i.it, align 8, !tbaa !43
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  %i.jj = load ptr, ptr %13, align 8, !tbaa !41   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.id
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.jl = load i64, ptr %i.id, align 8, !tbaa !43
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  %i.jn = load ptr, ptr %14, align 8, !tbaa !41   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.hb
  br i1 %i.jo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.jp = load i64, ptr %i.hb, align 8, !tbaa !43
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.en)
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !189 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !32
  %.not.i.i222 = icmp eq ptr %i.jt, %i.jv
  br i1 %.not.i.i222, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210
  store ptr %1, ptr %i.jt, align 8, !tbaa !130
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %i.jw, ptr %i.js, align 8, !tbaa !189
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !31 ; 4 uses
  %i.jy = ptrtoint ptr %i.jt to i64
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 5 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775800
  br i1 %i.kb, label %bb.bj, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.531) #27
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bi
  %i.kc = ashr exact i64 %i.ka, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kg, 0
end_hunk_0
begin_hunk_1_@_ZN13AssertVisitor16assertCtlGetCallB5cxx11EPKc11VAssertType20VAssertDirectiveType:bb.a
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !44, !alias.scope !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !591
  store i64 63, ptr %i.a, align 8, !tbaa !108, !noalias !591
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %9, align 8, !tbaa !41, !alias.scope !591
  %i.d = load i64, ptr %i.a, align 8, !tbaa !108, !noalias !591 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !43, !alias.scope !591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.c, ptr noundef nonnull align 1 dereferenceable(63) @.str.540, i64 63, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !42, !alias.scope !591
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !591
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23, !noalias !592 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !42, !noalias !592
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #27
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %1, i64 noundef %i.g)
          to label %.noexc18 unwind label %bb.af  ; 6 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !44, !alias.scope !592
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc18
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc18
  store ptr %i.m, ptr %8, align 8, !tbaa !41, !alias.scope !592
  %i.t = load i64, ptr %i.n, align 8, !tbaa !43
  store i64 %i.t, ptr %i.l, align 8, !tbaa !43, !alias.scope !592
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = phi i64 [ %i.q, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.w, align 8, !tbaa !42, !alias.scope !592
  store ptr %i.n, ptr %i.k, align 8, !tbaa !41
  store i64 0, ptr %i.v, align 8, !tbaa !42
  store i8 0, ptr %i.n, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.x, ptr %10, align 8, !tbaa !44, !alias.scope !593
  store i16 8236, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 2, ptr %i.y, align 8, !tbaa !42, !alias.scope !593
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i8 0, ptr %i.z, align 2, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !594 ; 4 uses
  %i.ab = add i64 %i.aa, 2                        ; 2 uses
  %i.ac = load ptr, ptr %8, align 8, !tbaa !41, !noalias !594 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.l
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  %i.ae = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.d
  %i.af = load i64, ptr %i.l, align 8, !tbaa !43, !noalias !594
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ah = icmp ule i64 %i.ab, %i.ag
  %.not.i = icmp ugt i64 %i.ab, 15
  %or.cond = or i1 %.not.i, %i.ah
  br i1 %or.cond, label %bb.f, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.ac, i64 noundef %i.aa)
          to label %.noexc20 unwind label %bb.ag  ; 5 uses

.noexc20:                                         ; preds = %.critedge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !44, !alias.scope !594
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.e:                                             ; preds = %.noexc20
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !42 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc20
  store ptr %i.ak, ptr %7, align 8, !tbaa !41, !alias.scope !594
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !43
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !43, !alias.scope !594
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !42, !alias.scope !594
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !41
  store i64 0, ptr %i.as, align 8, !tbaa !42
  store i8 0, ptr %i.al, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.av = and i64 %i.aa, -2
  %i.aw = icmp eq i64 %i.av, 4611686018427387902
  br i1 %i.aw, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #27
          to label %.noexc21 unwind label %bb.ag

.noexc21:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.x, i64 noundef 2)
          to label %.noexc22 unwind label %bb.ag  ; 5 uses

.noexc22:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !44, !alias.scope !594
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.h:                                             ; preds = %.noexc22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !42 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc22
  store ptr %i.az, ptr %7, align 8, !tbaa !41, !alias.scope !594
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !43
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !43, !alias.scope !594
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !42, !alias.scope !594
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !41
  store i64 0, ptr %i.bh, align 8, !tbaa !42
  store i8 0, ptr %i.ba, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.bk = icmp ult i8 %2, 10
  %i.bl = icmp ult i8 %2, 100
  %. = select i1 %i.bl, i32 2, i32 3              ; 2 uses
  %i.bm = zext nneg i32 %. to i64
  %i.bn = select i1 %i.bk, i64 1, i64 %i.bm       ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.bo, ptr %11, align 8, !tbaa !44, !alias.scope !595
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.bn, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.bp = load ptr, ptr %11, align 8, !tbaa !41, !alias.scope !595 ; 4 uses
  %i.bq = icmp ugt i8 %2, 99
  br i1 %i.bq, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.br = urem i8 %2, 100
  %i.bs = shl nuw i8 %i.br, 1
  %i.bt = udiv i8 %2, 100
  %i.bu = zext i8 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !43, !noalias !595
  %i.by = getelementptr i8, ptr %i.bp, i64 %i.bn
  %i.bz = getelementptr i8, ptr %i.by, i64 -1
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !43
  %i.ca = load i8, ptr %i.bv, align 2, !tbaa !43, !noalias !595
  %i.cb = zext nneg i32 %. to i64
  %i.cc = getelementptr i8, ptr %i.bp, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -2
  store i8 %i.ca, ptr %i.cd, align 1, !tbaa !43
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.ce = icmp ugt i8 %2, 9
  br i1 %i.ce, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.cf = shl nuw i8 %2, 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !43, !noalias !595
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !43
  %i.cl = load i8, ptr %i.ch, align 2, !tbaa !43, !noalias !595
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.j:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i239 = phi i8 [ %i.bt, %._crit_edge.i.i.thread ], [ %2, %._crit_edge.i.i ]
  %i.cm = or disjoint i8 %.0.lcssa.i.i239, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #25
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.cm, %bb.j ], [ %i.cl, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.bp, align 1, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !42, !noalias !596 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !42, !noalias !596 ; 4 uses
  %i.ct = add i64 %i.cs, %i.cq                    ; 2 uses
  %i.cu = load ptr, ptr %7, align 8, !tbaa !41, !noalias !596 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.cx = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.cy = load i64, ptr %i.cv, align 8, !tbaa !43, !noalias !596
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35
  %i.cz = phi i64 [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35 ]
  %i.da = icmp ugt i64 %i.ct, %i.cz
  br i1 %i.da, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24
  %i.db = load ptr, ptr %11, align 8, !tbaa !41, !noalias !596
  %i.dc = icmp eq ptr %i.db, %i.bo
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i34: ; preds = %bb.l
  %i.dd = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.dd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i28: ; preds = %bb.l
  %i.de = load i64, ptr %i.bo, align 8, !tbaa !43, !noalias !596
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i34
  %i.df = phi i64 [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i28 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i34 ]
  %.not.i30 = icmp ugt i64 %i.ct, %i.df
  br i1 %.not.i30, label %bb.n, label %.critedge.i31

.critedge.i31:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i29
  %i.dg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cu, i64 noundef %i.cq)
          to label %.noexc36 unwind label %bb.ah  ; 5 uses

.noexc36:                                         ; preds = %.critedge.i31
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.dh, ptr %6, align 8, !tbaa !44, !alias.scope !596
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 5 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i32

bb.m:                                             ; preds = %.noexc36
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !42 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i64 %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 8 dereferenceable(1) %i.dj, i64 %i.do, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i32: ; preds = %.noexc36
  store ptr %i.di, ptr %6, align 8, !tbaa !41, !alias.scope !596
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !43
  store i64 %i.dp, ptr %i.dh, align 8, !tbaa !43, !alias.scope !596
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i32, %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !42
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !42, !alias.scope !596
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !41
  store i64 0, ptr %i.dq, align 8, !tbaa !42
  store i8 0, ptr %i.dj, align 8, !tbaa !43
  br label %bb.q

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24
  %i.dt = sub i64 4611686018427387903, %i.cq
  %i.du = icmp ult i64 %i.dt, %i.cs
  br i1 %i.du, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i25

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #27
          to label %.noexc37 unwind label %bb.ah

.noexc37:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i25: ; preds = %bb.n
  %i.dv = load ptr, ptr %11, align 8, !tbaa !41, !noalias !596
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.dv, i64 noundef %i.cs)
          to label %.noexc38 unwind label %bb.ah  ; 5 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i25
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.dx, ptr %6, align 8, !tbaa !44, !alias.scope !596
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !41 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i26

bb.p:                                             ; preds = %.noexc38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !42 ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i26: ; preds = %.noexc38
  store ptr %i.dy, ptr %6, align 8, !tbaa !41, !alias.scope !596
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !43
  store i64 %i.ef, ptr %i.dx, align 8, !tbaa !43, !alias.scope !596
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i26, %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !42
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !42, !alias.scope !596
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !41
  store i64 0, ptr %i.eg, align 8, !tbaa !42
  store i8 0, ptr %i.dz, align 8, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ej, ptr %12, align 8, !tbaa !44, !alias.scope !597
  store i16 8236, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.ek, align 8, !tbaa !42, !alias.scope !597
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 18
  store i8 0, ptr %i.el, align 2, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !42, !noalias !598 ; 4 uses
  %i.eo = add i64 %i.en, 2                        ; 2 uses
  %i.ep = load ptr, ptr %6, align 8, !tbaa !41, !noalias !598 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52: ; preds = %bb.q
  %i.es = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.es)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.q
  %i.et = load i64, ptr %i.eq, align 8, !tbaa !43, !noalias !598
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52
  %i.eu = phi i64 [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52 ]
  %i.ev = icmp ule i64 %i.eo, %i.eu
  %.not.i47 = icmp ugt i64 %i.eo, 15
  %or.cond157 = or i1 %.not.i47, %i.ev
  br i1 %or.cond157, label %bb.s, label %.critedge.i48

.critedge.i48:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.ep, i64 noundef %i.en)
          to label %.noexc53 unwind label %bb.ai  ; 5 uses

.noexc53:                                         ; preds = %.critedge.i48
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ex, ptr %5, align 8, !tbaa !44, !alias.scope !598
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !41 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 5 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i49

bb.r:                                             ; preds = %.noexc53
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !42 ; 2 uses
  %i.fd = icmp ult i64 %i.fc, 16
  call void @llvm.assume(i1 %i.fd)
  %i.fe = add nuw nsw i64 %i.fc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ex, ptr noundef nonnull align 8 dereferenceable(1) %i.ez, i64 %i.fe, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i49: ; preds = %.noexc53
  store ptr %i.ey, ptr %5, align 8, !tbaa !41, !alias.scope !598
  %i.ff = load i64, ptr %i.ez, align 8, !tbaa !43
  store i64 %i.ff, ptr %i.ex, align 8, !tbaa !43, !alias.scope !598
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i49, %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !42
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !42, !alias.scope !598
  store ptr %i.ez, ptr %i.ew, align 8, !tbaa !41
  store i64 0, ptr %i.fg, align 8, !tbaa !42
  store i8 0, ptr %i.ez, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit56

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41
  %i.fj = and i64 %i.en, -2
  %i.fk = icmp eq i64 %i.fj, 4611686018427387902
  br i1 %i.fk, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #27
          to label %.noexc54 unwind label %bb.ai

.noexc54:                                         ; preds = %bb.t
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42: ; preds = %bb.s
  %i.fl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.ej, i64 noundef 2)
          to label %.noexc55 unwind label %bb.ai  ; 5 uses

.noexc55:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fm, ptr %5, align 8, !tbaa !44, !alias.scope !598
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !41 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 5 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i43

bb.u:                                             ; preds = %.noexc55
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !42 ; 2 uses
  %i.fs = icmp ult i64 %i.fr, 16
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add nuw nsw i64 %i.fr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fm, ptr noundef nonnull align 8 dereferenceable(1) %i.fo, i64 %i.ft, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i43: ; preds = %.noexc55
  store ptr %i.fn, ptr %5, align 8, !tbaa !41, !alias.scope !598
  %i.fu = load i64, ptr %i.fo, align 8, !tbaa !43
  store i64 %i.fu, ptr %i.fm, align 8, !tbaa !43, !alias.scope !598
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i43, %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !42
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !42, !alias.scope !598
  store ptr %i.fo, ptr %i.fl, align 8, !tbaa !41
  store i64 0, ptr %i.fv, align 8, !tbaa !42
  store i8 0, ptr %i.fo, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit56

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i50
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.fy = icmp ult i8 %3, 10
  %i.fz = icmp ult i8 %3, 100
  %.158 = select i1 %i.fz, i32 2, i32 3           ; 2 uses
  %i.ga = zext nneg i32 %.158 to i64
  %i.gb = select i1 %i.fy, i64 1, i64 %i.ga       ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.gc, ptr %13, align 8, !tbaa !44, !alias.scope !599
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.gb, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i63 unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i63: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit56
  %i.gd = load ptr, ptr %13, align 8, !tbaa !41, !alias.scope !599 ; 4 uses
  %i.ge = icmp ugt i8 %3, 99
  br i1 %i.ge, label %._crit_edge.i.i64.thread, label %._crit_edge.i.i64

._crit_edge.i.i64.thread:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i63
  %i.gf = urem i8 %3, 100
  %i.gg = shl nuw i8 %i.gf, 1
  %i.gh = udiv i8 %3, 100
  %i.gi = zext i8 %i.gg to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !43, !noalias !599
  %i.gm = getelementptr i8, ptr %i.gd, i64 %i.gb
  %i.gn = getelementptr i8, ptr %i.gm, i64 -1
  store i8 %i.gl, ptr %i.gn, align 1, !tbaa !43
  %i.go = load i8, ptr %i.gj, align 2, !tbaa !43, !noalias !599
  %i.gp = zext nneg i32 %.158 to i64
  %i.gq = getelementptr i8, ptr %i.gd, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 -2
  store i8 %i.go, ptr %i.gr, align 1, !tbaa !43
  br label %bb.w

._crit_edge.i.i64:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i63
  %i.gs = icmp ugt i8 %3, 9
  br i1 %i.gs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i64
  %i.gt = shl nuw i8 %3, 1
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !43, !noalias !599
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !43
  %i.gz = load i8, ptr %i.gv, align 2, !tbaa !43, !noalias !599
  br label %_ZNSt7__cxx119to_stringEi.exit71

bb.w:                                             ; preds = %._crit_edge.i.i64.thread, %._crit_edge.i.i64
  %.0.lcssa.i.i65241 = phi i8 [ %i.gh, %._crit_edge.i.i64.thread ], [ %3, %._crit_edge.i.i64 ]
  %i.ha = or disjoint i8 %.0.lcssa.i.i65241, 48
  br label %_ZNSt7__cxx119to_stringEi.exit71

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit56
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #25
  unreachable

_ZNSt7__cxx119to_stringEi.exit71:                 ; preds = %bb.v, %bb.w
  %storemerge.i.i66 = phi i8 [ %i.ha, %bb.w ], [ %i.gz, %bb.v ]
  store i8 %storemerge.i.i66, ptr %i.gd, align 1, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !42, !noalias !600 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !42, !noalias !600 ; 4 uses
  %i.hh = add i64 %i.hg, %i.he                    ; 2 uses
  %i.hi = load ptr, ptr %5, align 8, !tbaa !41, !noalias !600 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84: ; preds = %_ZNSt7__cxx119to_stringEi.exit71
  %i.hl = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx119to_stringEi.exit71
  %i.hm = load i64, ptr %i.hj, align 8, !tbaa !43, !noalias !600
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84
  %i.hn = phi i64 [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84 ]
  %i.ho = icmp ugt i64 %i.hh, %i.hn
  br i1 %i.ho, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73
  %i.hp = load ptr, ptr %13, align 8, !tbaa !41, !noalias !600
  %i.hq = icmp eq ptr %i.hp, %i.gc
  br i1 %i.hq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i83: ; preds = %bb.y
  %i.hr = icmp ult i64 %i.hg, 16
  call void @llvm.assume(i1 %i.hr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i77: ; preds = %bb.y
  %i.hs = load i64, ptr %i.gc, align 8, !tbaa !43, !noalias !600
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i83
  %i.ht = phi i64 [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i77 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i83 ]
  %.not.i79 = icmp ugt i64 %i.hh, %i.ht
  br i1 %.not.i79, label %bb.aa, label %.critedge.i80

.critedge.i80:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i78
  %i.hu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.hi, i64 noundef %i.he)
          to label %.noexc85 unwind label %bb.aj  ; 5 uses

.noexc85:                                         ; preds = %.critedge.i80
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.hv, ptr %4, align 8, !tbaa !44, !alias.scope !600
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !41 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 5 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i81

bb.z:                                             ; preds = %.noexc85
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !42 ; 2 uses
  %i.ib = icmp ult i64 %i.ia, 16
  call void @llvm.assume(i1 %i.ib)
  %i.ic = add nuw nsw i64 %i.ia, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hv, ptr noundef nonnull align 8 dereferenceable(1) %i.hx, i64 %i.ic, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i81: ; preds = %.noexc85
  store ptr %i.hw, ptr %4, align 8, !tbaa !41, !alias.scope !600
  %i.id = load i64, ptr %i.hx, align 8, !tbaa !43
  store i64 %i.id, ptr %i.hv, align 8, !tbaa !43, !alias.scope !600
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i81, %bb.z
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !42
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !42, !alias.scope !600
  store ptr %i.hx, ptr %i.hu, align 8, !tbaa !41
  store i64 0, ptr %i.ie, align 8, !tbaa !42
  store i8 0, ptr %i.hx, align 8, !tbaa !43
  br label %bb.ad

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73
  %i.ih = sub i64 4611686018427387903, %i.he
  %i.ii = icmp ult i64 %i.ih, %i.hg
  br i1 %i.ii, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i74

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #27
          to label %.noexc86 unwind label %bb.aj

.noexc86:                                         ; preds = %bb.ab
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i74: ; preds = %bb.aa
  %i.ij = load ptr, ptr %13, align 8, !tbaa !41, !noalias !600
  %i.ik = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ij, i64 noundef %i.hg)
          to label %.noexc87 unwind label %bb.aj  ; 5 uses

.noexc87:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i74
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.il, ptr %4, align 8, !tbaa !44, !alias.scope !600
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !41 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 5 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i75

bb.ac:                                            ; preds = %.noexc87
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !42 ; 2 uses
  %i.ir = icmp ult i64 %i.iq, 16
  call void @llvm.assume(i1 %i.ir)
  %i.is = add nuw nsw i64 %i.iq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.il, ptr noundef nonnull align 8 dereferenceable(1) %i.in, i64 %i.is, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i75: ; preds = %.noexc87
  store ptr %i.im, ptr %4, align 8, !tbaa !41, !alias.scope !600
  %i.it = load i64, ptr %i.in, align 8, !tbaa !43
  store i64 %i.it, ptr %i.il, align 8, !tbaa !43, !alias.scope !600
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i76: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i75, %bb.ac
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !42
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !42, !alias.scope !600
  store ptr %i.in, ptr %i.ik, align 8, !tbaa !41
  store i64 0, ptr %i.iu, align 8, !tbaa !42
  store i8 0, ptr %i.in, align 8, !tbaa !43
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i76
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ix = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ix, ptr %14, align 8, !tbaa !44, !alias.scope !601
  store i8 41, ptr %i.ix, align 8, !tbaa !43
  %i.iy = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.iy, align 8, !tbaa !42, !alias.scope !601
  %i.iz = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.iz, align 1, !tbaa !43
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.ja = load ptr, ptr %14, align 8, !tbaa !41   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ix
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ae
  %i.jc = load i64, ptr %i.ix, align 8, !tbaa !43
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.je = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

end_hunk_1
