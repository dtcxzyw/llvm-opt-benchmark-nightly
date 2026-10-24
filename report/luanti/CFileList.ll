Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CFileList?download=true
inline.NumInlined: 467
inline.NumDeleted: 165
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2io9CFileListC2ERKN4core6stringIcEEbb:bb.a

pred.store.if61:                                  ; preds = %pred.store.continue60
  store i8 47, ptr %next.gep23, align 1, !tbaa !18
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.by = extractelement <16 x i1> %i.bo, i64 8
  br i1 %i.by, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  store i8 47, ptr %next.gep24, align 1, !tbaa !18
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.bz = extractelement <16 x i1> %i.bo, i64 9
  br i1 %i.bz, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  store i8 47, ptr %next.gep25, align 1, !tbaa !18
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.ca = extractelement <16 x i1> %i.bo, i64 10
  br i1 %i.ca, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  store i8 47, ptr %next.gep26, align 1, !tbaa !18
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.cb = extractelement <16 x i1> %i.bo, i64 11
  br i1 %i.cb, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  store i8 47, ptr %next.gep27, align 1, !tbaa !18
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.cc = extractelement <16 x i1> %i.bo, i64 12
  br i1 %i.cc, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  store i8 47, ptr %next.gep28, align 1, !tbaa !18
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %i.cd = extractelement <16 x i1> %i.bo, i64 13
  br i1 %i.cd, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue72
  store i8 47, ptr %next.gep29, align 1, !tbaa !18
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue72
  %i.ce = extractelement <16 x i1> %i.bo, i64 14
  br i1 %i.ce, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue74
  store i8 47, ptr %next.gep30, align 1, !tbaa !18
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %i.cf = extractelement <16 x i1> %i.bo, i64 15
  br i1 %i.cf, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  store i8 47, ptr %next.gep31, align 1, !tbaa !18
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.cg = extractelement <16 x i1> %i.bp, i64 0
  br i1 %i.cg, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  store i8 47, ptr %next.gep32, align 1, !tbaa !18
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.ch = extractelement <16 x i1> %i.bp, i64 1
  br i1 %i.ch, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  store i8 47, ptr %next.gep33, align 1, !tbaa !18
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.ci = extractelement <16 x i1> %i.bp, i64 2
  br i1 %i.ci, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  store i8 47, ptr %next.gep34, align 1, !tbaa !18
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.cj = extractelement <16 x i1> %i.bp, i64 3
  br i1 %i.cj, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  store i8 47, ptr %next.gep35, align 1, !tbaa !18
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.ck = extractelement <16 x i1> %i.bp, i64 4
  br i1 %i.ck, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  store i8 47, ptr %next.gep36, align 1, !tbaa !18
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %i.cl = extractelement <16 x i1> %i.bp, i64 5
  br i1 %i.cl, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  store i8 47, ptr %next.gep37, align 1, !tbaa !18
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.cm = extractelement <16 x i1> %i.bp, i64 6
  br i1 %i.cm, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  store i8 47, ptr %next.gep38, align 1, !tbaa !18
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %i.cn = extractelement <16 x i1> %i.bp, i64 7
  br i1 %i.cn, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  store i8 47, ptr %next.gep39, align 1, !tbaa !18
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %i.co = extractelement <16 x i1> %i.bp, i64 8
  br i1 %i.co, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  store i8 47, ptr %next.gep40, align 1, !tbaa !18
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.cp = extractelement <16 x i1> %i.bp, i64 9
  br i1 %i.cp, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  store i8 47, ptr %next.gep41, align 1, !tbaa !18
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.cq = extractelement <16 x i1> %i.bp, i64 10
  br i1 %i.cq, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  store i8 47, ptr %next.gep42, align 1, !tbaa !18
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.cr = extractelement <16 x i1> %i.bp, i64 11
  br i1 %i.cr, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  store i8 47, ptr %next.gep43, align 1, !tbaa !18
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.cs = extractelement <16 x i1> %i.bp, i64 12
  br i1 %i.cs, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 47, ptr %next.gep44, align 1, !tbaa !18
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.ct = extractelement <16 x i1> %i.bp, i64 13
  br i1 %i.ct, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 47, ptr %next.gep45, align 1, !tbaa !18
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.cu = extractelement <16 x i1> %i.bp, i64 14
  br i1 %i.cu, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  store i8 47, ptr %next.gep46, align 1, !tbaa !18
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.cv = extractelement <16 x i1> %i.bp, i64 15
  br i1 %i.cv, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  store i8 47, ptr %next.gep47, align 1, !tbaa !18
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %pred.store.continue110
  %cmp.n = icmp eq i64 %.pr, %n.vec
  br i1 %cmp.n, label %_ZN4core6stringIcE7replaceEcc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %.pr, -8                    ; 3 uses
  %i.cx = getelementptr i8, ptr %i.ae, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue137, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %pred.store.continue137 ] ; 9 uses
  %next.gep113 = getelementptr i8, ptr %i.ae, i64 %index112 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ae, i64 %index112
  %next.gep114 = getelementptr i8, ptr %i.cy, i64 1
  %i.cz = getelementptr i8, ptr %i.ae, i64 %index112
  %next.gep115 = getelementptr i8, ptr %i.cz, i64 2
  %i.da = getelementptr i8, ptr %i.ae, i64 %index112
  %next.gep116 = getelementptr i8, ptr %i.da, i64 3
  %i.db = getelementptr i8, ptr %i.ae, i64 %index112
  %next.gep117 = getelementptr i8, ptr %i.db, i64 4
  %i.dc = getelementptr i8, ptr %i.ae, i64 %index112
  %next.gep118 = getelementptr i8, ptr %i.dc, i64 5
  %i.dd = getelementptr i8, ptr %i.ae, i64 %index112
  %next.gep119 = getelementptr i8, ptr %i.dd, i64 6
  %i.de = getelementptr i8, ptr %i.ae, i64 %index112
  %next.gep120 = getelementptr i8, ptr %i.de, i64 7
  %wide.load121 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !18
  %i.df = icmp eq <8 x i8> %wide.load121, splat (i8 92) ; 8 uses
  %i.dg = extractelement <8 x i1> %i.df, i64 0
  br i1 %i.dg, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep113, align 1, !tbaa !18
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %vec.epilog.vector.body
  %i.dh = extractelement <8 x i1> %i.df, i64 1
  br i1 %i.dh, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 47, ptr %next.gep114, align 1, !tbaa !18
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.di = extractelement <8 x i1> %i.df, i64 2
  br i1 %i.di, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 47, ptr %next.gep115, align 1, !tbaa !18
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.dj = extractelement <8 x i1> %i.df, i64 3
  br i1 %i.dj, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 47, ptr %next.gep116, align 1, !tbaa !18
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.dk = extractelement <8 x i1> %i.df, i64 4
  br i1 %i.dk, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 47, ptr %next.gep117, align 1, !tbaa !18
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.dl = extractelement <8 x i1> %i.df, i64 5
  br i1 %i.dl, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 47, ptr %next.gep118, align 1, !tbaa !18
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.dm = extractelement <8 x i1> %i.df, i64 6
  br i1 %i.dm, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  store i8 47, ptr %next.gep119, align 1, !tbaa !18
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.dn = extractelement <8 x i1> %i.df, i64 7
  br i1 %i.dn, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  store i8 47, ptr %next.gep120, align 1, !tbaa !18
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %index.next138 = add nuw i64 %index112, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next138, %n.vec111
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !55

vec.epilog.middle.block:                          ; preds = %pred.store.continue137
  %cmp.n139 = icmp eq i64 %.pr, %n.vec111
  br i1 %cmp.n139, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.ph = phi ptr [ %i.ae, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.e
  %.sroa.02.07.i.i = phi ptr [ %i.dr, %bb.e ], [ %.sroa.02.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dp = load i8, ptr %.sroa.02.07.i.i, align 1, !tbaa !18
  %i.dq = icmp eq i8 %i.dp, 92
  br i1 %i.dq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  store i8 47, ptr %.sroa.02.07.i.i, align 1, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dr, %i.af
  br i1 %.not.i.i, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i, !llvm.loop !56

_ZN4core6stringIcE7replaceEcc.exit:               ; preds = %bb.e, %middle.block, %vec.epilog.middle.block, %_ZN4core6stringIcEC2ERKS1_.exit, %_ZN4core6stringIcEC2ERKS1_.exit.thread
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.x
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN2io9CFileListC1ERKN4core6stringIcEEbb(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 10), (80, 92)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %i.d, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-24, 104) (i8, ptr @_ZTVN2io9CFileListE, i64 24), ptr %0, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2io9CFileListE, i64 152), ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.a, ptr %i.f, align 1, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !34
  store i8 0, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp eq ptr %i.g, %1
  br i1 %i.j, label %_ZN4core6stringIcEC2ERKS1_.exit.thread, label %bb.b

_ZN4core6stringIcEC2ERKS1_.exit.thread:           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.k, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.l, align 8, !tbaa !35
  br label %_ZN4core6stringIcE7replaceEcc.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4core6stringIcEC2ERKS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.h, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #25
  br label %.body

_ZN4core6stringIcEC2ERKS1_.exit:                  ; preds = %bb.b
  %.pr = load i64, ptr %i.i, align 8, !tbaa !34   ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.r, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !35
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !17   ; 44 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pr
  %.not6.i.i = icmp samesign eq i64 %.pr, 0
  br i1 %.not6.i.i, label %_ZN4core6stringIcE7replaceEcc.exit, label %iter.check

iter.check:                                       ; preds = %_ZN4core6stringIcEC2ERKS1_.exit
  %min.iters.check = icmp ult i64 %.pr, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %.pr, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %.pr, 24
  %n.vec = and i64 %.pr, -32                      ; 4 uses
  %i.w = getelementptr i8, ptr %i.t, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue109
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue109 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %index ; 3 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %index
  %next.gep16 = getelementptr i8, ptr %i.x, i64 1
  %i.y = getelementptr i8, ptr %i.t, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.y, i64 2
  %i.z = getelementptr i8, ptr %i.t, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.z, i64 3
  %i.aa = getelementptr i8, ptr %i.t, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.aa, i64 4
  %i.ab = getelementptr i8, ptr %i.t, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.ab, i64 5
  %i.ac = getelementptr i8, ptr %i.t, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.ac, i64 6
  %i.ad = getelementptr i8, ptr %i.t, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.ad, i64 7
  %i.ae = getelementptr i8, ptr %i.t, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.ae, i64 8
  %i.af = getelementptr i8, ptr %i.t, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.af, i64 9
  %i.ag = getelementptr i8, ptr %i.t, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.ag, i64 10
  %i.ah = getelementptr i8, ptr %i.t, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.ah, i64 11
  %i.ai = getelementptr i8, ptr %i.t, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.ai, i64 12
  %i.aj = getelementptr i8, ptr %i.t, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.aj, i64 13
  %i.ak = getelementptr i8, ptr %i.t, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.ak, i64 14
  %i.al = getelementptr i8, ptr %i.t, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.al, i64 15
  %i.am = getelementptr i8, ptr %i.t, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.am, i64 16
  %i.an = getelementptr i8, ptr %i.t, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.an, i64 17
  %i.ao = getelementptr i8, ptr %i.t, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.ao, i64 18
  %i.ap = getelementptr i8, ptr %i.t, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.ap, i64 19
  %i.aq = getelementptr i8, ptr %i.t, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.aq, i64 20
  %i.ar = getelementptr i8, ptr %i.t, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.ar, i64 21
  %i.as = getelementptr i8, ptr %i.t, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.as, i64 22
  %i.at = getelementptr i8, ptr %i.t, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.at, i64 23
  %i.au = getelementptr i8, ptr %i.t, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.au, i64 24
  %i.av = getelementptr i8, ptr %i.t, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.av, i64 25
  %i.aw = getelementptr i8, ptr %i.t, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.aw, i64 26
  %i.ax = getelementptr i8, ptr %i.t, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.ax, i64 27
  %i.ay = getelementptr i8, ptr %i.t, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.ay, i64 28
  %i.az = getelementptr i8, ptr %i.t, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.az, i64 29
  %i.ba = getelementptr i8, ptr %i.t, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.ba, i64 30
  %i.bb = getelementptr i8, ptr %i.t, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.bb, i64 31
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18
  %wide.load47 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !18
  %i.bd = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.be = icmp eq <16 x i8> %wide.load47, splat (i8 92) ; 16 uses
  %i.bf = extractelement <16 x i1> %i.bd, i64 0
  br i1 %i.bf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !18
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bg = extractelement <16 x i1> %i.bd, i64 1
  br i1 %i.bg, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue
  store i8 47, ptr %next.gep16, align 1, !tbaa !18
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue
  %i.bh = extractelement <16 x i1> %i.bd, i64 2
  br i1 %i.bh, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  store i8 47, ptr %next.gep17, align 1, !tbaa !18
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.bi = extractelement <16 x i1> %i.bd, i64 3
  br i1 %i.bi, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  store i8 47, ptr %next.gep18, align 1, !tbaa !18
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.bj = extractelement <16 x i1> %i.bd, i64 4
  br i1 %i.bj, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  store i8 47, ptr %next.gep19, align 1, !tbaa !18
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.bk = extractelement <16 x i1> %i.bd, i64 5
  br i1 %i.bk, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  store i8 47, ptr %next.gep20, align 1, !tbaa !18
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.bl = extractelement <16 x i1> %i.bd, i64 6
  br i1 %i.bl, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i8 47, ptr %next.gep21, align 1, !tbaa !18
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.bm = extractelement <16 x i1> %i.bd, i64 7
  br i1 %i.bm, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i8 47, ptr %next.gep22, align 1, !tbaa !18
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.bn = extractelement <16 x i1> %i.bd, i64 8
  br i1 %i.bn, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i8 47, ptr %next.gep23, align 1, !tbaa !18
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.bo = extractelement <16 x i1> %i.bd, i64 9
  br i1 %i.bo, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  store i8 47, ptr %next.gep24, align 1, !tbaa !18
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.bp = extractelement <16 x i1> %i.bd, i64 10
  br i1 %i.bp, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  store i8 47, ptr %next.gep25, align 1, !tbaa !18
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.bq = extractelement <16 x i1> %i.bd, i64 11
  br i1 %i.bq, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  store i8 47, ptr %next.gep26, align 1, !tbaa !18
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.br = extractelement <16 x i1> %i.bd, i64 12
  br i1 %i.br, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  store i8 47, ptr %next.gep27, align 1, !tbaa !18
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.bs = extractelement <16 x i1> %i.bd, i64 13
  br i1 %i.bs, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i8 47, ptr %next.gep28, align 1, !tbaa !18
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.bt = extractelement <16 x i1> %i.bd, i64 14
  br i1 %i.bt, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  store i8 47, ptr %next.gep29, align 1, !tbaa !18
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.bu = extractelement <16 x i1> %i.bd, i64 15
  br i1 %i.bu, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  store i8 47, ptr %next.gep30, align 1, !tbaa !18
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.bv = extractelement <16 x i1> %i.be, i64 0
  br i1 %i.bv, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store i8 47, ptr %next.gep31, align 1, !tbaa !18
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.bw = extractelement <16 x i1> %i.be, i64 1
  br i1 %i.bw, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  store i8 47, ptr %next.gep32, align 1, !tbaa !18
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bx = extractelement <16 x i1> %i.be, i64 2
  br i1 %i.bx, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i8 47, ptr %next.gep33, align 1, !tbaa !18
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.by = extractelement <16 x i1> %i.be, i64 3
  br i1 %i.by, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i8 47, ptr %next.gep34, align 1, !tbaa !18
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.bz = extractelement <16 x i1> %i.be, i64 4
  br i1 %i.bz, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i8 47, ptr %next.gep35, align 1, !tbaa !18
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.ca = extractelement <16 x i1> %i.be, i64 5
  br i1 %i.ca, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 47, ptr %next.gep36, align 1, !tbaa !18
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.cb = extractelement <16 x i1> %i.be, i64 6
  br i1 %i.cb, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 47, ptr %next.gep37, align 1, !tbaa !18
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.cc = extractelement <16 x i1> %i.be, i64 7
  br i1 %i.cc, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 47, ptr %next.gep38, align 1, !tbaa !18
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.cd = extractelement <16 x i1> %i.be, i64 8
  br i1 %i.cd, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 47, ptr %next.gep39, align 1, !tbaa !18
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.ce = extractelement <16 x i1> %i.be, i64 9
  br i1 %i.ce, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 47, ptr %next.gep40, align 1, !tbaa !18
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.cf = extractelement <16 x i1> %i.be, i64 10
  br i1 %i.cf, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 47, ptr %next.gep41, align 1, !tbaa !18
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.cg = extractelement <16 x i1> %i.be, i64 11
  br i1 %i.cg, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 47, ptr %next.gep42, align 1, !tbaa !18
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.ch = extractelement <16 x i1> %i.be, i64 12
  br i1 %i.ch, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 47, ptr %next.gep43, align 1, !tbaa !18
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.ci = extractelement <16 x i1> %i.be, i64 13
  br i1 %i.ci, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 47, ptr %next.gep44, align 1, !tbaa !18
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.cj = extractelement <16 x i1> %i.be, i64 14
  br i1 %i.cj, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 47, ptr %next.gep45, align 1, !tbaa !18
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.ck = extractelement <16 x i1> %i.be, i64 15
  br i1 %i.ck, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 47, ptr %next.gep46, align 1, !tbaa !18
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %pred.store.continue109
  %cmp.n = icmp eq i64 %.pr, %n.vec
  br i1 %cmp.n, label %_ZN4core6stringIcE7replaceEcc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %.pr, -8                    ; 3 uses
  %i.cm = getelementptr i8, ptr %i.t, i64 %n.vec110
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue136, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %pred.store.continue136 ] ; 9 uses
  %next.gep112 = getelementptr i8, ptr %i.t, i64 %index111 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.t, i64 %index111
  %next.gep113 = getelementptr i8, ptr %i.cn, i64 1
  %i.co = getelementptr i8, ptr %i.t, i64 %index111
  %next.gep114 = getelementptr i8, ptr %i.co, i64 2
  %i.cp = getelementptr i8, ptr %i.t, i64 %index111
  %next.gep115 = getelementptr i8, ptr %i.cp, i64 3
  %i.cq = getelementptr i8, ptr %i.t, i64 %index111
  %next.gep116 = getelementptr i8, ptr %i.cq, i64 4
  %i.cr = getelementptr i8, ptr %i.t, i64 %index111
  %next.gep117 = getelementptr i8, ptr %i.cr, i64 5
  %i.cs = getelementptr i8, ptr %i.t, i64 %index111
  %next.gep118 = getelementptr i8, ptr %i.cs, i64 6
  %i.ct = getelementptr i8, ptr %i.t, i64 %index111
  %next.gep119 = getelementptr i8, ptr %i.ct, i64 7
  %wide.load120 = load <8 x i8>, ptr %next.gep112, align 1, !tbaa !18
  %i.cu = icmp eq <8 x i8> %wide.load120, splat (i8 92) ; 8 uses
  %i.cv = extractelement <8 x i1> %i.cu, i64 0
  br i1 %i.cv, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep112, align 1, !tbaa !18
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %vec.epilog.vector.body
  %i.cw = extractelement <8 x i1> %i.cu, i64 1
  br i1 %i.cw, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  store i8 47, ptr %next.gep113, align 1, !tbaa !18
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %i.cx = extractelement <8 x i1> %i.cu, i64 2
  br i1 %i.cx, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  store i8 47, ptr %next.gep114, align 1, !tbaa !18
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %i.cy = extractelement <8 x i1> %i.cu, i64 3
  br i1 %i.cy, label %pred.store.if127, label %pred.store.continue128

pred.store.if127:                                 ; preds = %pred.store.continue126
  store i8 47, ptr %next.gep115, align 1, !tbaa !18
  br label %pred.store.continue128

pred.store.continue128:                           ; preds = %pred.store.if127, %pred.store.continue126
  %i.cz = extractelement <8 x i1> %i.cu, i64 4
  br i1 %i.cz, label %pred.store.if129, label %pred.store.continue130

pred.store.if129:                                 ; preds = %pred.store.continue128
  store i8 47, ptr %next.gep116, align 1, !tbaa !18
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.if129, %pred.store.continue128
  %i.da = extractelement <8 x i1> %i.cu, i64 5
  br i1 %i.da, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue130
  store i8 47, ptr %next.gep117, align 1, !tbaa !18
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue130
  %i.db = extractelement <8 x i1> %i.cu, i64 6
  br i1 %i.db, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  store i8 47, ptr %next.gep118, align 1, !tbaa !18
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %i.dc = extractelement <8 x i1> %i.cu, i64 7
  br i1 %i.dc, label %pred.store.if135, label %pred.store.continue136

pred.store.if135:                                 ; preds = %pred.store.continue134
  store i8 47, ptr %next.gep119, align 1, !tbaa !18
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.if135, %pred.store.continue134
  %index.next137 = add nuw i64 %index111, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next137, %n.vec110
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %pred.store.continue136
  %cmp.n138 = icmp eq i64 %.pr, %n.vec110
  br i1 %cmp.n138, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.e
  %.sroa.02.07.i.i = phi ptr [ %i.dg, %bb.e ], [ %.sroa.02.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.de = load i8, ptr %.sroa.02.07.i.i, align 1, !tbaa !18
  %i.df = icmp eq i8 %i.de, 92
  br i1 %i.df, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  store i8 47, ptr %.sroa.02.07.i.i, align 1, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dg, %i.u
  br i1 %.not.i.i, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i, !llvm.loop !59

_ZN4core6stringIcE7replaceEcc.exit:               ; preds = %bb.e, %middle.block, %vec.epilog.middle.block, %_ZN4core6stringIcEC2ERKS1_.exit, %_ZN4core6stringIcEC2ERKS1_.exit.thread
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2io9CFileListD2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i ], [ %i.h, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i

_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !18
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i, %bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZN4core5arrayIN2io14SFileListEntryEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.aa) #25
  br label %_ZN4core5arrayIN2io14SFileListEntryEE5clearEv.exit

_ZN4core5arrayIN2io14SFileListEntryEE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.ab, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !40  ; 3 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !41  ; 2 uses
  %.not4.i.i.i.i2 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not4.i.i.i.i2, label %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i10, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %_ZN4core5arrayIN2io14SFileListEntryEE5clearEv.exit, %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i8
  %.05.i.i.i.i4 = phi ptr [ %i.ap, %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i8 ], [ %i.ac, %_ZN4core5arrayIN2io14SFileListEntryEE5clearEv.exit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i4, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i4, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i5: ; preds = %.lr.ph.i.i.i.i3
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
  br label %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i6

_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i6:         ; preds = %.lr.ph.i.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i5
  %i.ak = load ptr, ptr %.05.i.i.i.i4, align 8, !tbaa !17 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i7: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i6
  %i.an = load i64, ptr %i.al, align 8, !tbaa !18
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i8

_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i8: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i7
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i4, i64 80 ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ap, %i.ad
  br i1 %.not.i.i.i.i9, label %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i3, !llvm.loop !0

_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i.i.i8
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i10

_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i10: ; preds = %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4core5arrayIN2io14SFileListEntryEE5clearEv.exit
  %i.aq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ac, %_ZN4core5arrayIN2io14SFileListEntryEE5clearEv.exit ] ; 3 uses
  %.not.i.i1.i.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i11, label %_ZN4core5arrayIN2io14SFileListEntryEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i10
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #25
  br label %_ZN4core5arrayIN2io14SFileListEntryEED2Ev.exit

_ZN4core5arrayIN2io14SFileListEntryEED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2io14SFileListEntryES1_EvT_S3_RSaIT0_E.exit.i.i10, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core5arrayIN2io14SFileListEntryEED2Ev.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !18
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #25
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %_ZN4core5arrayIN2io14SFileListEntryEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2io9CFileListD1Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2io9CFileListD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZTTN2io9CFileListE) #26
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N2io9CFileListD1Ev(ptr nofree noundef captures(address) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN2io9CFileListD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull @_ZTTN2io9CFileListE) #26, !inline_history !43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2io9CFileListD0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2io9CFileListD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZTTN2io9CFileListE) #26, !inline_history !43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #25
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N2io9CFileListD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN2io9CFileListD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull @_ZTTN2io9CFileListE) #26, !inline_history !62
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 96) #25, !inline_history !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK2io9CFileList12getFileCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN2io9CFileList4sortEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4core5arrayIN2io14SFileListEntryEE4sortEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 80
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.e, ptr %i.g, i64 noundef %i.n)
  %i.o = icmp sgt i64 %i.j, 1280
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 1280 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.e, ptr nonnull %i.p)
  %.not4.i.i.i.i.i = icmp eq ptr %i.p, %i.g
  br i1 %.not4.i.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.e, ptr %i.g)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.d, %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !35
  br label %_ZN4core5arrayIN2io14SFileListEntryEE4sortEv.exit

_ZN4core5arrayIN2io14SFileListEntryEE4sortEv.exit: ; preds = %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK2io9CFileList11getFileNameEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %.not = icmp ult i32 %1, %i.i
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIN2io14SFileListEntryEEixEj) #27
  unreachable

_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit:  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit
  %.0 = phi ptr [ %i.l, %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit ], [ @_ZN2ioL18emptyFileListEntryE, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK2io9CFileList15getFullFileNameEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %.not = icmp ult i32 %1, %i.i
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIN2io14SFileListEntryEEixEj) #27
  unreachable

_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit:  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit
  %.0 = phi ptr [ %i.m, %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit ], [ @_ZN2ioL18emptyFileListEntryE, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN2io9CFileList7addItemERKN4core6stringIcEEjjbj(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.io::SFileListEntry", align 8 ; 27 uses
  %7 = alloca %"class.core::string", align 8      ; 17 uses
  %i.a = zext i1 %4 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !34
  store i8 0, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !18
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 80
  %i.o = trunc i64 %i.n to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %i.o, %bb.b ], [ %5, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.p, ptr %i.q, align 4, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %2, ptr %i.r, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %3, ptr %i.s, align 8, !tbaa !50
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4core6stringIcEaSERKS1_.exit unwind label %bb.h

_ZN4core6stringIcEaSERKS1_.exit:                  ; preds = %bb.c
  %i.t = load ptr, ptr %6, align 8, !tbaa !17     ; 44 uses
  %i.u = load i64, ptr %i.c, align 8, !tbaa !34   ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %.not6.i.i = icmp samesign eq i64 %i.u, 0
  br i1 %.not6.i.i, label %_ZN4core6stringIcE7replaceEcc.exit.thread, label %iter.check

iter.check:                                       ; preds = %_ZN4core6stringIcEaSERKS1_.exit
  %min.iters.check = icmp ult i64 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.u, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.u, 24
  %n.vec = and i64 %i.u, -32                      ; 4 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue137
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue137 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %index ; 3 uses
  %i.y = getelementptr i8, ptr %i.t, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.y, i64 1
  %i.z = getelementptr i8, ptr %i.t, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.z, i64 2
  %i.aa = getelementptr i8, ptr %i.t, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.aa, i64 3
  %i.ab = getelementptr i8, ptr %i.t, i64 %index
  %next.gep47 = getelementptr i8, ptr %i.ab, i64 4
  %i.ac = getelementptr i8, ptr %i.t, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.ac, i64 5
  %i.ad = getelementptr i8, ptr %i.t, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.ad, i64 6
  %i.ae = getelementptr i8, ptr %i.t, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.ae, i64 7
  %i.af = getelementptr i8, ptr %i.t, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.af, i64 8
  %i.ag = getelementptr i8, ptr %i.t, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.ag, i64 9
  %i.ah = getelementptr i8, ptr %i.t, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.ah, i64 10
  %i.ai = getelementptr i8, ptr %i.t, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.ai, i64 11
  %i.aj = getelementptr i8, ptr %i.t, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.aj, i64 12
  %i.ak = getelementptr i8, ptr %i.t, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.ak, i64 13
  %i.al = getelementptr i8, ptr %i.t, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.al, i64 14
  %i.am = getelementptr i8, ptr %i.t, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.am, i64 15
  %i.an = getelementptr i8, ptr %i.t, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.an, i64 16
  %i.ao = getelementptr i8, ptr %i.t, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.ao, i64 17
  %i.ap = getelementptr i8, ptr %i.t, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.ap, i64 18
  %i.aq = getelementptr i8, ptr %i.t, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.aq, i64 19
  %i.ar = getelementptr i8, ptr %i.t, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.ar, i64 20
  %i.as = getelementptr i8, ptr %i.t, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.as, i64 21
  %i.at = getelementptr i8, ptr %i.t, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.at, i64 22
  %i.au = getelementptr i8, ptr %i.t, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.au, i64 23
  %i.av = getelementptr i8, ptr %i.t, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.av, i64 24
  %i.aw = getelementptr i8, ptr %i.t, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.aw, i64 25
  %i.ax = getelementptr i8, ptr %i.t, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.ax, i64 26
end_hunk_0
begin_hunk_1_@_ZN2io9CFileList7addItemERKN4core6stringIcEEjjbj:bb.a

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 47, ptr %next.gep50, align 1, !tbaa !18
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.bo = extractelement <16 x i1> %i.be, i64 8
  br i1 %i.bo, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 47, ptr %next.gep51, align 1, !tbaa !18
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.bp = extractelement <16 x i1> %i.be, i64 9
  br i1 %i.bp, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 47, ptr %next.gep52, align 1, !tbaa !18
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.bq = extractelement <16 x i1> %i.be, i64 10
  br i1 %i.bq, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 47, ptr %next.gep53, align 1, !tbaa !18
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.br = extractelement <16 x i1> %i.be, i64 11
  br i1 %i.br, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 47, ptr %next.gep54, align 1, !tbaa !18
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.bs = extractelement <16 x i1> %i.be, i64 12
  br i1 %i.bs, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 47, ptr %next.gep55, align 1, !tbaa !18
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.bt = extractelement <16 x i1> %i.be, i64 13
  br i1 %i.bt, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 47, ptr %next.gep56, align 1, !tbaa !18
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.bu = extractelement <16 x i1> %i.be, i64 14
  br i1 %i.bu, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 47, ptr %next.gep57, align 1, !tbaa !18
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.bv = extractelement <16 x i1> %i.be, i64 15
  br i1 %i.bv, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 47, ptr %next.gep58, align 1, !tbaa !18
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.bw = extractelement <16 x i1> %i.bf, i64 0
  br i1 %i.bw, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 47, ptr %next.gep59, align 1, !tbaa !18
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.bx = extractelement <16 x i1> %i.bf, i64 1
  br i1 %i.bx, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 47, ptr %next.gep60, align 1, !tbaa !18
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.by = extractelement <16 x i1> %i.bf, i64 2
  br i1 %i.by, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  store i8 47, ptr %next.gep61, align 1, !tbaa !18
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.bz = extractelement <16 x i1> %i.bf, i64 3
  br i1 %i.bz, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  store i8 47, ptr %next.gep62, align 1, !tbaa !18
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.ca = extractelement <16 x i1> %i.bf, i64 4
  br i1 %i.ca, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  store i8 47, ptr %next.gep63, align 1, !tbaa !18
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.cb = extractelement <16 x i1> %i.bf, i64 5
  br i1 %i.cb, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  store i8 47, ptr %next.gep64, align 1, !tbaa !18
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.cc = extractelement <16 x i1> %i.bf, i64 6
  br i1 %i.cc, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  store i8 47, ptr %next.gep65, align 1, !tbaa !18
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.cd = extractelement <16 x i1> %i.bf, i64 7
  br i1 %i.cd, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  store i8 47, ptr %next.gep66, align 1, !tbaa !18
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.ce = extractelement <16 x i1> %i.bf, i64 8
  br i1 %i.ce, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  store i8 47, ptr %next.gep67, align 1, !tbaa !18
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.cf = extractelement <16 x i1> %i.bf, i64 9
  br i1 %i.cf, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 47, ptr %next.gep68, align 1, !tbaa !18
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.cg = extractelement <16 x i1> %i.bf, i64 10
  br i1 %i.cg, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 47, ptr %next.gep69, align 1, !tbaa !18
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.ch = extractelement <16 x i1> %i.bf, i64 11
  br i1 %i.ch, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 47, ptr %next.gep70, align 1, !tbaa !18
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.ci = extractelement <16 x i1> %i.bf, i64 12
  br i1 %i.ci, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 47, ptr %next.gep71, align 1, !tbaa !18
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.cj = extractelement <16 x i1> %i.bf, i64 13
  br i1 %i.cj, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 47, ptr %next.gep72, align 1, !tbaa !18
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.ck = extractelement <16 x i1> %i.bf, i64 14
  br i1 %i.ck, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  store i8 47, ptr %next.gep73, align 1, !tbaa !18
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.cl = extractelement <16 x i1> %i.bf, i64 15
  br i1 %i.cl, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  store i8 47, ptr %next.gep74, align 1, !tbaa !18
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %pred.store.continue137
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN4core6stringIcE7replaceEcc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.u, -8                    ; 3 uses
  %i.cn = getelementptr i8, ptr %i.t, i64 %n.vec138
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue164, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next165, %pred.store.continue164 ] ; 9 uses
  %next.gep140 = getelementptr i8, ptr %i.t, i64 %index139 ; 2 uses
  %i.co = getelementptr i8, ptr %i.t, i64 %index139
  %next.gep141 = getelementptr i8, ptr %i.co, i64 1
  %i.cp = getelementptr i8, ptr %i.t, i64 %index139
  %next.gep142 = getelementptr i8, ptr %i.cp, i64 2
  %i.cq = getelementptr i8, ptr %i.t, i64 %index139
  %next.gep143 = getelementptr i8, ptr %i.cq, i64 3
  %i.cr = getelementptr i8, ptr %i.t, i64 %index139
  %next.gep144 = getelementptr i8, ptr %i.cr, i64 4
  %i.cs = getelementptr i8, ptr %i.t, i64 %index139
  %next.gep145 = getelementptr i8, ptr %i.cs, i64 5
  %i.ct = getelementptr i8, ptr %i.t, i64 %index139
  %next.gep146 = getelementptr i8, ptr %i.ct, i64 6
  %i.cu = getelementptr i8, ptr %i.t, i64 %index139
  %next.gep147 = getelementptr i8, ptr %i.cu, i64 7
  %wide.load148 = load <8 x i8>, ptr %next.gep140, align 1, !tbaa !18
  %i.cv = icmp eq <8 x i8> %wide.load148, splat (i8 92) ; 8 uses
  %i.cw = extractelement <8 x i1> %i.cv, i64 0
  br i1 %i.cw, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep140, align 1, !tbaa !18
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %vec.epilog.vector.body
  %i.cx = extractelement <8 x i1> %i.cv, i64 1
  br i1 %i.cx, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  store i8 47, ptr %next.gep141, align 1, !tbaa !18
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.cy = extractelement <8 x i1> %i.cv, i64 2
  br i1 %i.cy, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  store i8 47, ptr %next.gep142, align 1, !tbaa !18
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.cz = extractelement <8 x i1> %i.cv, i64 3
  br i1 %i.cz, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  store i8 47, ptr %next.gep143, align 1, !tbaa !18
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.da = extractelement <8 x i1> %i.cv, i64 4
  br i1 %i.da, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  store i8 47, ptr %next.gep144, align 1, !tbaa !18
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.db = extractelement <8 x i1> %i.cv, i64 5
  br i1 %i.db, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  store i8 47, ptr %next.gep145, align 1, !tbaa !18
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.dc = extractelement <8 x i1> %i.cv, i64 6
  br i1 %i.dc, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  store i8 47, ptr %next.gep146, align 1, !tbaa !18
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.dd = extractelement <8 x i1> %i.cv, i64 7
  br i1 %i.dd, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  store i8 47, ptr %next.gep147, align 1, !tbaa !18
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %index.next165 = add nuw i64 %index139, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next165, %n.vec138
  br i1 %i.de, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %pred.store.continue164
  %cmp.n166 = icmp eq i64 %i.u, %n.vec138
  br i1 %cmp.n166, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

_ZN4core6stringIcE7replaceEcc.exit.thread:        ; preds = %_ZN4core6stringIcEaSERKS1_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 76
  store i8 %i.a, ptr %i.df, align 4, !tbaa !51
  br label %_ZN4core6stringIcE8validateEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.e
  %.sroa.02.07.i.i = phi ptr [ %i.di, %bb.e ], [ %.sroa.02.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dg = load i8, ptr %.sroa.02.07.i.i, align 1, !tbaa !18
  %i.dh = icmp eq i8 %i.dg, 92
  br i1 %i.dh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  store i8 47, ptr %.sroa.02.07.i.i, align 1, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, %i.v
  br i1 %.not.i.i, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i, !llvm.loop !67

_ZN4core6stringIcE7replaceEcc.exit:               ; preds = %bb.e, %vec.epilog.middle.block, %middle.block
  %.pr = load i64, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 76 ; 2 uses
  store i8 %i.a, ptr %i.dj, align 4, !tbaa !51
  %i.dk = icmp eq i64 %.pr, 0
  br i1 %i.dk, label %_ZN4core6stringIcE8validateEv.exit, label %_ZNK4core6stringIcE8lastCharEv.exit

_ZNK4core6stringIcE8lastCharEv.exit:              ; preds = %_ZN4core6stringIcE7replaceEcc.exit
  %i.dl = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 %.pr
  %i.dn = getelementptr i8, ptr %i.dm, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = icmp eq i8 %i.do, 47
  br i1 %i.dp, label %bb.f, label %_ZN4core6stringIcE8validateEv.exit

bb.f:                                             ; preds = %_ZNK4core6stringIcE8lastCharEv.exit
  store i8 1, ptr %i.dj, align 4, !tbaa !51
  %i.dq = add i64 %.pr, 4294967295
  %i.dr = and i64 %i.dq, 4294967295
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dr
  store i8 0, ptr %i.ds, align 1, !tbaa !18
  %i.dt = load ptr, ptr %6, align 8, !tbaa !17
  %i.du = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dt) #28 ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = load i64, ptr %i.c, align 8, !tbaa !34
  %i.dx = trunc i64 %i.dw to i32
  %.not.i = icmp eq i32 %i.dv, %i.dx
  br i1 %.not.i, label %_ZN4core6stringIcE8validateEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dy = and i64 %i.du, 4294967295
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.dy, i8 noundef signext 0)
          to label %_ZN4core6stringIcE8validateEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN4core6stringIcEaSERKS1_.exit24, %bb.r, %_ZN4core6stringIcE10make_lowerEv.exit, %bb.g, %bb.c
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZN4core6stringIcE8validateEv.exit:               ; preds = %_ZN4core6stringIcE7replaceEcc.exit.thread, %_ZN4core6stringIcE7replaceEcc.exit, %bb.f, %bb.g, %_ZNK4core6stringIcE8lastCharEv.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !32, !range !44, !noundef !45
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.i, label %_ZN4core6stringIcE10make_lowerEv.exit

bb.i:                                             ; preds = %_ZN4core6stringIcE8validateEv.exit
  %i.ed = load ptr, ptr %6, align 8, !tbaa !17    ; 6 uses
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !34  ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  %.not6.i.i14 = icmp samesign eq i64 %i.ee, 0
  br i1 %.not6.i.i14, label %_ZN4core6stringIcE10make_lowerEv.exit, label %iter.check179

iter.check179:                                    ; preds = %bb.i
  %min.iters.check167 = icmp ult i64 %i.ee, 4
  br i1 %min.iters.check167, label %.lr.ph.i.i15.preheader, label %vector.main.loop.iter.check168

vector.main.loop.iter.check168:                   ; preds = %iter.check179
  %min.iters.check169 = icmp ult i64 %i.ee, 16
  br i1 %min.iters.check169, label %vec.epilog.ph183, label %vector.ph170

vector.ph170:                                     ; preds = %vector.main.loop.iter.check168
  %i.eg = and i64 %i.ee, 12
  %n.vec171 = and i64 %i.ee, -16                  ; 4 uses
  %i.eh = getelementptr i8, ptr %i.ed, i64 %n.vec171
  br label %vector.body172

vector.body172:                                   ; preds = %vector.ph170, %vector.body172
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 2 uses
  %next.gep174.a = getelementptr i8, ptr %i.ed, i64 %index173 ; 2 uses
  %wide.load175.a = load <16 x i8>, ptr %next.gep174.a, align 1, !tbaa !18 ; 3 uses
  %8 = sext <16 x i8> %wide.load175.a to <16 x i32>
  %9 = add nsw <16 x i32> %8, splat (i32 -65)
  %i.ei = icmp ult <16 x i32> %9, splat (i32 26)
  %i.ej = add <16 x i8> %wide.load175.a, splat (i8 32)
  %i.ek = select <16 x i1> %i.ei, <16 x i8> %i.ej, <16 x i8> %wide.load175.a
  store <16 x i8> %i.ek, ptr %next.gep174.a, align 1, !tbaa !18
  %index.next176 = add nuw i64 %index173, 16      ; 2 uses
  %i.el = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.el, label %middle.block177, label %vector.body172, !llvm.loop !68

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %i.ee, %n.vec171
  br i1 %cmp.n178, label %_ZN4core6stringIcE10make_lowerEv.exit, label %vec.epilog.iter.check180

vec.epilog.iter.check180:                         ; preds = %middle.block177
  %min.epilog.iters.check182 = icmp eq i64 %i.eg, 0
  br i1 %min.epilog.iters.check182, label %.lr.ph.i.i15.preheader, label %vec.epilog.ph183, !prof !52

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check168, %vec.epilog.iter.check180
  %vec.epilog.resume.val184 = phi i64 [ %n.vec171, %vec.epilog.iter.check180 ], [ 0, %vector.main.loop.iter.check168 ]
  %n.vec185 = and i64 %i.ee, -4                   ; 3 uses
  %i.em = getelementptr i8, ptr %i.ed, i64 %n.vec185
  br label %vec.epilog.vector.body186

vec.epilog.vector.body186:                        ; preds = %vec.epilog.vector.body186, %vec.epilog.ph183
  %index187 = phi i64 [ %vec.epilog.resume.val184, %vec.epilog.ph183 ], [ %index.next190, %vec.epilog.vector.body186 ] ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.ed, i64 %index187 ; 2 uses
  %wide.load189 = load <4 x i8>, ptr %next.gep188, align 1, !tbaa !18 ; 3 uses
  %10 = sext <4 x i8> %wide.load189 to <4 x i32>
  %11 = add nsw <4 x i32> %10, splat (i32 -65)
  %12 = icmp ult <4 x i32> %11, splat (i32 26)
  %13 = add <4 x i8> %wide.load189, splat (i8 32)
  %14 = select <4 x i1> %12, <4 x i8> %13, <4 x i8> %wide.load189
  store <4 x i8> %14, ptr %next.gep188, align 1, !tbaa !18
  %index.next190 = add nuw i64 %index187, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next190, %n.vec185
  br i1 %i.en, label %vec.epilog.middle.block191, label %vec.epilog.vector.body186, !llvm.loop !69

vec.epilog.middle.block191:                       ; preds = %vec.epilog.vector.body186
  %cmp.n192 = icmp eq i64 %i.ee, %n.vec185
  br i1 %cmp.n192, label %_ZN4core6stringIcE10make_lowerEv.exit, label %.lr.ph.i.i15.preheader

.lr.ph.i.i15.preheader:                           ; preds = %iter.check179, %vec.epilog.iter.check180, %vec.epilog.middle.block191
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ed, %iter.check179 ], [ %i.eh, %vec.epilog.iter.check180 ], [ %i.em, %vec.epilog.middle.block191 ]
  br label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i.i15.preheader, %.lr.ph.i.i15
  %.sroa.0.08.i.i = phi ptr [ %i.er, %.lr.ph.i.i15 ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i15.preheader ] ; 3 uses
  %i.eo = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !18 ; 3 uses
  %15 = sext i8 %i.eo to i32
  %16 = add nsw i32 %15, -65
  %or.cond.i.i.i.i = icmp ult i32 %16, 26
  %i.ep = add i8 %i.eo, 32
  %i.eq = select i1 %or.cond.i.i.i.i, i8 %i.ep, i8 %i.eo
  store i8 %i.eq, ptr %.sroa.0.08.i.i, align 1, !tbaa !18
  %i.er = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.er, %i.ef
  br i1 %.not.i.i16, label %_ZN4core6stringIcE10make_lowerEv.exit, label %.lr.ph.i.i15, !llvm.loop !70

_ZN4core6stringIcE10make_lowerEv.exit:            ; preds = %.lr.ph.i.i15, %middle.block177, %vec.epilog.middle.block191, %bb.i, %_ZN4core6stringIcE8validateEv.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN4core6stringIcEaSERKS1_.exit18 unwind label %bb.h

_ZN4core6stringIcEaSERKS1_.exit18:                ; preds = %_ZN4core6stringIcE10make_lowerEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.es = load ptr, ptr %6, align 8, !tbaa !17, !noalias !74 ; 4 uses
  %i.et = load i64, ptr %i.c, align 8, !tbaa !34, !noalias !74
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eu
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_ZN4core6stringIcEaSERKS1_.exit18
  %.0.i = phi ptr [ %i.ev, %_ZN4core6stringIcEaSERKS1_.exit18 ], [ %i.ex, %bb.l ] ; 5 uses
  %i.ew = load i8, ptr %.0.i, align 1, !tbaa !18, !noalias !74
  switch i8 %i.ew, label %bb.k [
    i8 47, label %bb.m
    i8 92, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %.not14.i = icmp eq ptr %.0.i, %i.es
  br i1 %.not14.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ex = getelementptr inbounds i8, ptr %.0.i, i64 -1
  br label %bb.j, !llvm.loop !1

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.j
  %.0.lcssa.i = phi ptr [ %i.es, %bb.k ], [ %.0.i, %bb.j ], [ %.0.i, %bb.j ] ; 2 uses
  %.not15.i = icmp ne ptr %.0.lcssa.i, %i.es
  %spec.select.idx.i = zext i1 %.not15.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %spec.select.idx.i ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.ey, ptr %7, align 8, !tbaa !33, !alias.scope !74
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ez, align 8, !tbaa !34, !alias.scope !74
  store i8 0, ptr %i.ey, align 8, !tbaa !18, !alias.scope !74
  %i.fa = icmp eq ptr %spec.select.i, %i.ey
  br i1 %i.fa, label %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #28 ; 3 uses
  %i.fc = and i64 %i.fb, 4294967295               ; 5 uses
  %.not.i19 = icmp eq i64 %i.fc, 0
  br i1 %.not.i19, label %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.fc, i8 noundef signext 0)
          to label %.lr.ph.i.i20.preheader unwind label %bb.q

.lr.ph.i.i20.preheader:                           ; preds = %bb.o
  %xtraiter = and i64 %i.fb, 3                    ; 3 uses
  %i.fd = icmp samesign ult i64 %i.fc, 4
  br i1 %i.fd, label %.lr.ph.i.i20.epil.preheader, label %.lr.ph.i.i20.preheader.new

.lr.ph.i.i20.preheader.new:                       ; preds = %.lr.ph.i.i20.preheader
  %unroll_iter = and i64 %i.fb, 4294967292
  br label %.lr.ph.i.i20

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i20
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i20.epil.preheader

.lr.ph.i.i20.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i20.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i20.preheader ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod196 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph.i.i20.epil

.lr.ph.i.i20.epil:                                ; preds = %.lr.ph.i.i20.epil, %.lr.ph.i.i20.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i20.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i20.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i20.epil ], [ 0, %.lr.ph.i.i20.epil.preheader ]
  %i.fe = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.i.i.epil
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !18
  %i.fg = load ptr, ptr %7, align 8, !tbaa !17, !alias.scope !74
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv.i.i.epil
  store i8 %i.ff, ptr %i.fh, align 1, !tbaa !18
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i20.epil, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i20.epil, %._crit_edge.i.i.unr-lcssa
  %.pre.i = load i64, ptr %i.ez, align 8, !tbaa !34, !alias.scope !74
  %i.fi = icmp ugt i64 %.pre.i, %i.fc
  br i1 %i.fi, label %bb.p, label %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i.i20, %.lr.ph.i.i20.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i20.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i20 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i20.preheader.new ], [ %niter.next.3, %.lr.ph.i.i20 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.i.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !18
  %i.fl = load ptr, ptr %7, align 8, !tbaa !17, !alias.scope !74
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.i.i
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !18
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.next.i.i
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !18
  %i.fp = load ptr, ptr %7, align 8, !tbaa !17, !alias.scope !74
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv.next.i.i
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !18
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.next.i.i.1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !18
  %i.ft = load ptr, ptr %7, align 8, !tbaa !17, !alias.scope !74
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvars.iv.next.i.i.1
  store i8 %i.fs, ptr %i.fu, align 1, !tbaa !18
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.next.i.i.2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !18
  %i.fx = load ptr, ptr %7, align 8, !tbaa !17, !alias.scope !74
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv.next.i.i.2
  store i8 %i.fw, ptr %i.fy, align 1, !tbaa !18
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i20, !llvm.loop !2

bb.p:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.fc, i8 noundef signext 0)
          to label %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %7, align 8, !tbaa !17, !alias.scope !74 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ey
  br i1 %i.gb, label %.body, label %.body.sink.split

_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit: ; preds = %bb.p, %._crit_edge.i.i, %bb.n, %bb.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN4core6stringIcEaSERKS1_.exit22 unwind label %bb.s

_ZN4core6stringIcEaSERKS1_.exit22:                ; preds = %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit
  %i.gc = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ey
  br i1 %i.gd, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIcEaSERKS1_.exit22
  %i.ge = load i64, ptr %i.ey, align 8, !tbaa !18
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #25
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %_ZN4core6stringIcEaSERKS1_.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !31, !range !44, !noundef !45
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.r, label %_ZN4core6stringIcEaSERKS1_.exit24

bb.r:                                             ; preds = %_ZN4core6stringIcED2Ev.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN4core6stringIcEaSERKS1_.exit24 unwind label %bb.h

bb.s:                                             ; preds = %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.ey
  br i1 %i.gl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.q
  %.sink = phi ptr [ %i.ga, %bb.q ], [ %i.gk, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.fz, %bb.q ], [ %i.gj, %bb.s ]
  %i.gm = load i64, ptr %i.ey, align 8, !tbaa !18
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gn) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.q
  %.pn = phi { ptr, i32 } [ %i.fz, %bb.q ], [ %i.gj, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.u

_ZN4core6stringIcEaSERKS1_.exit24:                ; preds = %bb.r, %_ZN4core6stringIcED2Ev.exit
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZNSt6vectorIN2io14SFileListEntryESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.go, ptr noundef nonnull align 8 dereferenceable(77) %6)
          to label %bb.t unwind label %bb.h

bb.t:                                             ; preds = %_ZN4core6stringIcEaSERKS1_.exit24
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.gp, align 8, !tbaa !35
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !41
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !40
  %i.gt = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.e
  br i1 %i.gu, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.t
  %i.gv = load i64, ptr %i.e, align 8, !tbaa !18
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  %i.gx = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.b
  br i1 %i.gy, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.gz = load i64, ptr %i.b, align 8, !tbaa !18
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.hb = ptrtoint ptr %i.gr to i64
  %i.hc = ptrtoint ptr %i.gs to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sdiv exact i64 %i.hd, 80
  %i.hf = trunc i64 %i.he to i32
  %i.hg = add i32 %i.hf, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret i32 %i.hg

bb.u:                                             ; preds = %.body, %bb.h
  %.pn12 = phi { ptr, i32 } [ %i.dz, %bb.h ], [ %.pn, %.body ]
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4core6stringIcED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZN4core6stringIcED2Ev.exit3

_ZN4core6stringIcED2Ev.exit3:                     ; preds = %_ZN4core6stringIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZNK2io9CFileList5getIDEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ult i32 %1, %i.i
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = icmp ugt i64 %i.h, %i.k
  br i1 %i.l, label %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIN2io14SFileListEntryEEixEj) #27
  unreachable

_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit:  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit
  %i.p = phi i32 [ %i.o, %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit ], [ 0, %bb.a ]
  ret i32 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK2io9CFileList11isDirectoryEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ult i32 %1, %i.i
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = icmp ugt i64 %i.h, %i.k
  br i1 %i.l, label %_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIN2io14SFileListEntryEEixEj) #27
  unreachable

_ZNK4core5arrayIN2io14SFileListEntryEEixEj.exit:  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  %i.o = load i8, ptr %i.n, align 4, !tbaa !51, !range !44, !noundef !45
  %i.p = trunc nuw i8 %i.o to i1
  br label %bb.d
end_hunk_1
begin_hunk_2_@_ZNK2io9CFileList8findFileERKN4core6stringIcEEb:bb.a

pred.store.if80:                                  ; preds = %pred.store.continue79
  store i8 47, ptr %next.gep42, align 1, !tbaa !18
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bc = extractelement <16 x i1> %i.as, i64 8
  br i1 %i.bc, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i8 47, ptr %next.gep43, align 1, !tbaa !18
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.bd = extractelement <16 x i1> %i.as, i64 9
  br i1 %i.bd, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i8 47, ptr %next.gep44, align 1, !tbaa !18
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.be = extractelement <16 x i1> %i.as, i64 10
  br i1 %i.be, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i8 47, ptr %next.gep45, align 1, !tbaa !18
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.bf = extractelement <16 x i1> %i.as, i64 11
  br i1 %i.bf, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 47, ptr %next.gep46, align 1, !tbaa !18
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.bg = extractelement <16 x i1> %i.as, i64 12
  br i1 %i.bg, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 47, ptr %next.gep47, align 1, !tbaa !18
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.bh = extractelement <16 x i1> %i.as, i64 13
  br i1 %i.bh, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 47, ptr %next.gep48, align 1, !tbaa !18
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.bi = extractelement <16 x i1> %i.as, i64 14
  br i1 %i.bi, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 47, ptr %next.gep49, align 1, !tbaa !18
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.bj = extractelement <16 x i1> %i.as, i64 15
  br i1 %i.bj, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 47, ptr %next.gep50, align 1, !tbaa !18
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.bk = extractelement <16 x i1> %i.at, i64 0
  br i1 %i.bk, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 47, ptr %next.gep51, align 1, !tbaa !18
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.bl = extractelement <16 x i1> %i.at, i64 1
  br i1 %i.bl, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 47, ptr %next.gep52, align 1, !tbaa !18
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.bm = extractelement <16 x i1> %i.at, i64 2
  br i1 %i.bm, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 47, ptr %next.gep53, align 1, !tbaa !18
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.bn = extractelement <16 x i1> %i.at, i64 3
  br i1 %i.bn, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 47, ptr %next.gep54, align 1, !tbaa !18
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.bo = extractelement <16 x i1> %i.at, i64 4
  br i1 %i.bo, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 47, ptr %next.gep55, align 1, !tbaa !18
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.bp = extractelement <16 x i1> %i.at, i64 5
  br i1 %i.bp, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 47, ptr %next.gep56, align 1, !tbaa !18
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.bq = extractelement <16 x i1> %i.at, i64 6
  br i1 %i.bq, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  store i8 47, ptr %next.gep57, align 1, !tbaa !18
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.br = extractelement <16 x i1> %i.at, i64 7
  br i1 %i.br, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  store i8 47, ptr %next.gep58, align 1, !tbaa !18
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.bs = extractelement <16 x i1> %i.at, i64 8
  br i1 %i.bs, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  store i8 47, ptr %next.gep59, align 1, !tbaa !18
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.bt = extractelement <16 x i1> %i.at, i64 9
  br i1 %i.bt, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  store i8 47, ptr %next.gep60, align 1, !tbaa !18
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.bu = extractelement <16 x i1> %i.at, i64 10
  br i1 %i.bu, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  store i8 47, ptr %next.gep61, align 1, !tbaa !18
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.bv = extractelement <16 x i1> %i.at, i64 11
  br i1 %i.bv, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  store i8 47, ptr %next.gep62, align 1, !tbaa !18
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.bw = extractelement <16 x i1> %i.at, i64 12
  br i1 %i.bw, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  store i8 47, ptr %next.gep63, align 1, !tbaa !18
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.bx = extractelement <16 x i1> %i.at, i64 13
  br i1 %i.bx, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 47, ptr %next.gep64, align 1, !tbaa !18
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.by = extractelement <16 x i1> %i.at, i64 14
  br i1 %i.by, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 47, ptr %next.gep65, align 1, !tbaa !18
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.bz = extractelement <16 x i1> %i.at, i64 15
  br i1 %i.bz, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 47, ptr %next.gep66, align 1, !tbaa !18
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %pred.store.continue129
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN4core6stringIcE7replaceEcc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.i, -8                    ; 3 uses
  %i.cb = getelementptr i8, ptr %i.h, i64 %n.vec130
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue156, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %pred.store.continue156 ] ; 9 uses
  %next.gep132 = getelementptr i8, ptr %i.h, i64 %index131 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.h, i64 %index131
  %next.gep133 = getelementptr i8, ptr %i.cc, i64 1
  %i.cd = getelementptr i8, ptr %i.h, i64 %index131
  %next.gep134 = getelementptr i8, ptr %i.cd, i64 2
  %i.ce = getelementptr i8, ptr %i.h, i64 %index131
  %next.gep135 = getelementptr i8, ptr %i.ce, i64 3
  %i.cf = getelementptr i8, ptr %i.h, i64 %index131
  %next.gep136 = getelementptr i8, ptr %i.cf, i64 4
  %i.cg = getelementptr i8, ptr %i.h, i64 %index131
  %next.gep137 = getelementptr i8, ptr %i.cg, i64 5
  %i.ch = getelementptr i8, ptr %i.h, i64 %index131
  %next.gep138 = getelementptr i8, ptr %i.ch, i64 6
  %i.ci = getelementptr i8, ptr %i.h, i64 %index131
  %next.gep139 = getelementptr i8, ptr %i.ci, i64 7
  %wide.load140 = load <8 x i8>, ptr %next.gep132, align 1, !tbaa !18
  %i.cj = icmp eq <8 x i8> %wide.load140, splat (i8 92) ; 8 uses
  %i.ck = extractelement <8 x i1> %i.cj, i64 0
  br i1 %i.ck, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep132, align 1, !tbaa !18
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %vec.epilog.vector.body
  %i.cl = extractelement <8 x i1> %i.cj, i64 1
  br i1 %i.cl, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  store i8 47, ptr %next.gep133, align 1, !tbaa !18
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.cm = extractelement <8 x i1> %i.cj, i64 2
  br i1 %i.cm, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  store i8 47, ptr %next.gep134, align 1, !tbaa !18
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.cn = extractelement <8 x i1> %i.cj, i64 3
  br i1 %i.cn, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  store i8 47, ptr %next.gep135, align 1, !tbaa !18
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.co = extractelement <8 x i1> %i.cj, i64 4
  br i1 %i.co, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  store i8 47, ptr %next.gep136, align 1, !tbaa !18
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.cp = extractelement <8 x i1> %i.cj, i64 5
  br i1 %i.cp, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  store i8 47, ptr %next.gep137, align 1, !tbaa !18
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.cq = extractelement <8 x i1> %i.cj, i64 6
  br i1 %i.cq, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  store i8 47, ptr %next.gep138, align 1, !tbaa !18
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.cr = extractelement <8 x i1> %i.cj, i64 7
  br i1 %i.cr, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  store i8 47, ptr %next.gep139, align 1, !tbaa !18
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %index.next157 = add nuw i64 %index131, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next157, %n.vec130
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %pred.store.continue156
  %cmp.n158 = icmp eq i64 %i.i, %n.vec130
  br i1 %cmp.n158, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.c
  %.sroa.02.07.i.i = phi ptr [ %i.cv, %bb.c ], [ %.sroa.02.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ct = load i8, ptr %.sroa.02.07.i.i, align 1, !tbaa !18
  %i.cu = icmp eq i8 %i.ct, 92
  br i1 %i.cu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  store i8 47, ptr %.sroa.02.07.i.i, align 1, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cv, %i.j
  br i1 %.not.i.i, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i, !llvm.loop !77

_ZN4core6stringIcE7replaceEcc.exit:               ; preds = %bb.c, %vec.epilog.middle.block, %middle.block
  %.pr = load i64, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.cw = icmp eq i64 %.pr, 0
  br i1 %i.cw, label %_ZN4core6stringIcE8validateEv.exit, label %_ZNK4core6stringIcE8lastCharEv.exit

_ZNK4core6stringIcE8lastCharEv.exit:              ; preds = %_ZN4core6stringIcE7replaceEcc.exit
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.pr
  %i.cz = getelementptr i8, ptr %i.cy, i64 -1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !18
  %i.db = icmp eq i8 %i.da, 47
  br i1 %i.db, label %bb.d, label %_ZN4core6stringIcE8validateEv.exit

bb.d:                                             ; preds = %_ZNK4core6stringIcE8lastCharEv.exit
  store i8 1, ptr %i.g, align 4, !tbaa !51
  %i.dc = add i64 %.pr, 4294967295
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dd
  store i8 0, ptr %i.de, align 1, !tbaa !18
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.dg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #28 ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = load i64, ptr %i.e, align 8, !tbaa !34
  %i.dj = trunc i64 %i.di to i32
  %.not.i = icmp eq i32 %i.dh, %i.dj
  br i1 %.not.i, label %_ZN4core6stringIcE8validateEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dk = and i64 %i.dg, 4294967295
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.dk, i8 noundef signext 0)
          to label %_ZN4core6stringIcE8validateEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.t, %bb.s, %bb.e, %bb.a
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZN4core6stringIcE8validateEv.exit:               ; preds = %_ZN4core6stringIcEaSERKS1_.exit, %_ZN4core6stringIcE7replaceEcc.exit, %bb.d, %bb.e, %_ZNK4core6stringIcE8lastCharEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !32, !range !44, !noundef !45
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.g, label %_ZN4core6stringIcE10make_lowerEv.exit

bb.g:                                             ; preds = %_ZN4core6stringIcE8validateEv.exit
  %i.dp = load ptr, ptr %i.c, align 8, !tbaa !17  ; 6 uses
  %i.dq = load i64, ptr %i.e, align 8, !tbaa !34  ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  %.not6.i.i9 = icmp samesign eq i64 %i.dq, 0
  br i1 %.not6.i.i9, label %_ZN4core6stringIcE10make_lowerEv.exit, label %iter.check171

iter.check171:                                    ; preds = %bb.g
  %min.iters.check159 = icmp ult i64 %i.dq, 4
  br i1 %min.iters.check159, label %.lr.ph.i.i10.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %iter.check171
  %min.iters.check161 = icmp ult i64 %i.dq, 16
  br i1 %min.iters.check161, label %vec.epilog.ph175, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %i.ds = and i64 %i.dq, 12
  %n.vec163 = and i64 %i.dq, -16                  ; 4 uses
  %i.dt = getelementptr i8, ptr %i.dp, i64 %n.vec163
  br label %vector.body164

vector.body164:                                   ; preds = %vector.ph162, %vector.body164
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body164 ] ; 2 uses
  %next.gep166.a = getelementptr i8, ptr %i.dp, i64 %index165 ; 2 uses
  %wide.load167.a = load <16 x i8>, ptr %next.gep166.a, align 1, !tbaa !18 ; 3 uses
  %5 = sext <16 x i8> %wide.load167.a to <16 x i32>
  %6 = add nsw <16 x i32> %5, splat (i32 -65)
  %i.du = icmp ult <16 x i32> %6, splat (i32 26)
  %i.dv = add <16 x i8> %wide.load167.a, splat (i8 32)
  %i.dw = select <16 x i1> %i.du, <16 x i8> %i.dv, <16 x i8> %wide.load167.a
  store <16 x i8> %i.dw, ptr %next.gep166.a, align 1, !tbaa !18
  %index.next168 = add nuw i64 %index165, 16      ; 2 uses
  %i.dx = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.dx, label %middle.block169, label %vector.body164, !llvm.loop !78

middle.block169:                                  ; preds = %vector.body164
  %cmp.n170 = icmp eq i64 %i.dq, %n.vec163
  br i1 %cmp.n170, label %_ZN4core6stringIcE10make_lowerEv.exit, label %vec.epilog.iter.check172

vec.epilog.iter.check172:                         ; preds = %middle.block169
  %min.epilog.iters.check174 = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check174, label %.lr.ph.i.i10.preheader, label %vec.epilog.ph175, !prof !52

vec.epilog.ph175:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check172
  %vec.epilog.resume.val176 = phi i64 [ %n.vec163, %vec.epilog.iter.check172 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec177 = and i64 %i.dq, -4                   ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dp, i64 %n.vec177
  br label %vec.epilog.vector.body178

vec.epilog.vector.body178:                        ; preds = %vec.epilog.vector.body178, %vec.epilog.ph175
  %index179 = phi i64 [ %vec.epilog.resume.val176, %vec.epilog.ph175 ], [ %index.next182, %vec.epilog.vector.body178 ] ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.dp, i64 %index179 ; 2 uses
  %wide.load181 = load <4 x i8>, ptr %next.gep180, align 1, !tbaa !18 ; 3 uses
  %7 = sext <4 x i8> %wide.load181 to <4 x i32>
  %8 = add nsw <4 x i32> %7, splat (i32 -65)
  %9 = icmp ult <4 x i32> %8, splat (i32 26)
  %10 = add <4 x i8> %wide.load181, splat (i8 32)
  %11 = select <4 x i1> %9, <4 x i8> %10, <4 x i8> %wide.load181
  store <4 x i8> %11, ptr %next.gep180, align 1, !tbaa !18
  %index.next182 = add nuw i64 %index179, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.dz, label %vec.epilog.middle.block183, label %vec.epilog.vector.body178, !llvm.loop !79

vec.epilog.middle.block183:                       ; preds = %vec.epilog.vector.body178
  %cmp.n184 = icmp eq i64 %i.dq, %n.vec177
  br i1 %cmp.n184, label %_ZN4core6stringIcE10make_lowerEv.exit, label %.lr.ph.i.i10.preheader

.lr.ph.i.i10.preheader:                           ; preds = %iter.check171, %vec.epilog.iter.check172, %vec.epilog.middle.block183
  %.sroa.0.08.i.i.ph = phi ptr [ %i.dp, %iter.check171 ], [ %i.dt, %vec.epilog.iter.check172 ], [ %i.dy, %vec.epilog.middle.block183 ]
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10.preheader, %.lr.ph.i.i10
  %.sroa.0.08.i.i = phi ptr [ %i.ed, %.lr.ph.i.i10 ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i10.preheader ] ; 3 uses
  %i.ea = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !18 ; 3 uses
  %12 = sext i8 %i.ea to i32
  %13 = add nsw i32 %12, -65
  %or.cond.i.i.i.i = icmp ult i32 %13, 26
  %i.eb = add i8 %i.ea, 32
  %i.ec = select i1 %or.cond.i.i.i.i, i8 %i.eb, i8 %i.ea
  store i8 %i.ec, ptr %.sroa.0.08.i.i, align 1, !tbaa !18
  %i.ed = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ed, %i.dr
  br i1 %.not.i.i11, label %_ZN4core6stringIcE10make_lowerEv.exit, label %.lr.ph.i.i10, !llvm.loop !80

_ZN4core6stringIcE10make_lowerEv.exit:            ; preds = %.lr.ph.i.i10, %middle.block169, %vec.epilog.middle.block183, %bb.g, %_ZN4core6stringIcE8validateEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !31, !range !44, !noundef !45
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZN4core6stringIcE10make_lowerEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.eh = load ptr, ptr %i.c, align 8, !tbaa !17, !noalias !84 ; 4 uses
  %i.ei = load i64, ptr %i.e, align 8, !tbaa !34, !noalias !84
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.0.i = phi ptr [ %i.ek, %bb.h ], [ %i.em, %bb.k ] ; 5 uses
  %i.el = load i8, ptr %.0.i, align 1, !tbaa !18, !noalias !84
  switch i8 %i.el, label %bb.j [
    i8 47, label %bb.l
    i8 92, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %.not14.i = icmp eq ptr %.0.i, %i.eh
  br i1 %.not14.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.em = getelementptr inbounds i8, ptr %.0.i, i64 -1
  br label %bb.i, !llvm.loop !1

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.i
  %.0.lcssa.i = phi ptr [ %i.eh, %bb.j ], [ %.0.i, %bb.i ], [ %.0.i, %bb.i ] ; 2 uses
  %.not15.i = icmp ne ptr %.0.lcssa.i, %i.eh
  %spec.select.idx.i = zext i1 %.not15.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %spec.select.idx.i ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.en, ptr %4, align 8, !tbaa !33, !alias.scope !84
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.eo, align 8, !tbaa !34, !alias.scope !84
  store i8 0, ptr %i.en, align 8, !tbaa !18, !alias.scope !84
  %i.ep = icmp eq ptr %spec.select.i, %i.en
  br i1 %i.ep, label %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #28 ; 3 uses
  %i.er = and i64 %i.eq, 4294967295               ; 5 uses
  %.not.i12 = icmp eq i64 %i.er, 0
  br i1 %.not.i12, label %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.er, i8 noundef signext 0)
          to label %.lr.ph.i.i13.preheader unwind label %bb.p

.lr.ph.i.i13.preheader:                           ; preds = %bb.n
  %xtraiter = and i64 %i.eq, 3                    ; 3 uses
  %i.es = icmp samesign ult i64 %i.er, 4
  br i1 %i.es, label %.lr.ph.i.i13.epil.preheader, label %.lr.ph.i.i13.preheader.new

.lr.ph.i.i13.preheader.new:                       ; preds = %.lr.ph.i.i13.preheader
  %unroll_iter = and i64 %i.eq, 4294967292
  br label %.lr.ph.i.i13

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i13
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i13.epil.preheader

.lr.ph.i.i13.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i13.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i13.preheader ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod188)
  br label %.lr.ph.i.i13.epil

.lr.ph.i.i13.epil:                                ; preds = %.lr.ph.i.i13.epil, %.lr.ph.i.i13.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i13.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i13.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i13.epil ], [ 0, %.lr.ph.i.i13.epil.preheader ]
  %i.et = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.i.i.epil
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !18
  %i.ev = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !84
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv.i.i.epil
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !18
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i13.epil, !llvm.loop !83

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i13.epil, %._crit_edge.i.i.unr-lcssa
  %.pre.i = load i64, ptr %i.eo, align 8, !tbaa !34, !alias.scope !84
  %i.ex = icmp ugt i64 %.pre.i, %i.er
  br i1 %i.ex, label %bb.o, label %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13, %.lr.ph.i.i13.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i13.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i13 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i13.preheader.new ], [ %niter.next.3, %.lr.ph.i.i13 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.i.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !18
  %i.fa = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !84
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.i.i
  store i8 %i.ez, ptr %i.fb, align 1, !tbaa !18
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.next.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !18
  %i.fe = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !84
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv.next.i.i
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !18
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.next.i.i.1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !18
  %i.fi = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !84
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv.next.i.i.1
  store i8 %i.fh, ptr %i.fj, align 1, !tbaa !18
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.next.i.i.2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !18
  %i.fm = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !84
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next.i.i.2
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !18
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i13, !llvm.loop !2

bb.o:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.er, i8 noundef signext 0)
          to label %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !84 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.en
  br i1 %i.fq, label %.body, label %.body.sink.split

_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit: ; preds = %bb.o, %._crit_edge.i.i, %bb.m, %bb.l
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4core6stringIcEaSERKS1_.exit15 unwind label %bb.q

_ZN4core6stringIcEaSERKS1_.exit15:                ; preds = %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit
  %i.fr = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.en
  br i1 %i.fs, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIcEaSERKS1_.exit15
  %i.ft = load i64, ptr %i.en, align 8, !tbaa !18
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #25
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %_ZN4core6stringIcEaSERKS1_.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.r

bb.q:                                             ; preds = %_ZN4core22deletePathFromFilenameERKNS_6stringIcEE.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.en
  br i1 %i.fx, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.p
  %.sink = phi ptr [ %i.fp, %bb.p ], [ %i.fw, %bb.q ]
  %.pn.ph = phi { ptr, i32 } [ %i.fo, %bb.p ], [ %i.fv, %bb.q ]
  %i.fy = load i64, ptr %i.en, align 8, !tbaa !18
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fz) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fo, %bb.p ], [ %i.fv, %bb.q ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.v

bb.r:                                             ; preds = %_ZN4core6stringIcED2Ev.exit, %_ZN4core6stringIcE10make_lowerEv.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !35, !range !44, !noundef !45
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !41
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !40
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = sdiv exact i64 %i.gj, 80
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = add nsw i32 %i.gl, -1
  %i.gn = invoke noundef i32 @_ZNK4core5arrayIN2io14SFileListEntryEE13binary_searchERKS2_ii(ptr noundef nonnull align 8 dereferenceable(25) %i.ga, ptr noundef nonnull align 8 dereferenceable(77) %3, i32 noundef 0, i32 noundef %i.gm)
          to label %_ZNK4core5arrayIN2io14SFileListEntryEE13binary_searchERKS2_.exit unwind label %bb.f

bb.t:                                             ; preds = %bb.r
  %i.go = load ptr, ptr %i.ga, align 8, !tbaa !46
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !46
  %i.gr = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %i.go, ptr %i.gq, ptr nonnull align 8 dereferenceable(77) %3)
          to label %.noexc21 unwind label %bb.f   ; 2 uses

.noexc21:                                         ; preds = %bb.t
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !46
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNK4core5arrayIN2io14SFileListEntryEE13binary_searchERKS2_.exit, label %bb.u

bb.u:                                             ; preds = %.noexc21
  %i.gu = load ptr, ptr %i.ga, align 8, !tbaa !46
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = sdiv exact i64 %i.gx, 80
  %i.gz = trunc i64 %i.gy to i32
  br label %_ZNK4core5arrayIN2io14SFileListEntryEE13binary_searchERKS2_.exit

_ZNK4core5arrayIN2io14SFileListEntryEE13binary_searchERKS2_.exit: ; preds = %bb.u, %.noexc21, %bb.s
  %.0.i19 = phi i32 [ -1, %.noexc21 ], [ %i.gz, %bb.u ], [ %i.gn, %bb.s ]
  %i.ha = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.d
  br i1 %i.hb, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %_ZNK4core5arrayIN2io14SFileListEntryEE13binary_searchERKS2_.exit
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !18
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %_ZNK4core5arrayIN2io14SFileListEntryEE13binary_searchERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22
  %i.he = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.a
  br i1 %i.hf, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.hg = load i64, ptr %i.a, align 8, !tbaa !18
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 %.0.i19

bb.v:                                             ; preds = %.body, %bb.f
  %.pn7 = phi { ptr, i32 } [ %i.dl, %bb.f ], [ %.pn, %.body ]
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK2io9CFileList7getPathEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN2io9IFileListD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN2io9IFileListD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N2io9IFileListD1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N2io9IFileListD0Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN2io14SFileListEntryEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN2io14SFileListEntryEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i
  %.05.i = phi ptr [ %i.l, %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4core6stringIcED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZN4core6stringIcED2Ev.exit.i.i.i

_ZN4core6stringIcED2Ev.exit.i.i.i:                ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = load ptr, ptr %.05.i, align 8, !tbaa !17 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i

_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i:  ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN2io14SFileListEntryEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN2io14SFileListEntryEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #14

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1280
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph21

bb.b:                                             ; preds = %.lr.ph21
  %i.g = icmp eq i64 %i.m, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph21, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge13.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %storemerge13.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %.lr.ph.i8.i ], [ %storemerge13.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -80 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_(ptr %0, ptr nonnull %i.h, ptr nonnull %i.h, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 80
  br i1 %i.k, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, !llvm.loop !86

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph21:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1320 = phi ptr [ %i.q, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01419 = phi i64 [ %i.m, %bb.b ], [ %2, %.lr.ph ]
  %i.l = phi i64 [ %i.s, %bb.b ], [ %i.c, %.lr.ph ]
  %i.m = add nsw i64 %.01419, -1                  ; 3 uses
  %i.n = udiv i64 %i.l, 160
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %storemerge1320, i64 -80
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_(ptr %0, ptr nonnull %i.e, ptr %i.o, ptr nonnull %i.p)
  %i.q = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_(ptr nonnull %i.e, ptr %storemerge1320, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.q, ptr %storemerge1320, i64 noundef %i.m)
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1280
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph21, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.io::SFileListEntry", align 8 ; 17 uses
  %4 = alloca %"struct.io::SFileListEntry", align 8 ; 13 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 80                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 160
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.c

bb.c:                                             ; preds = %_ZN2io14SFileListEntryD2Ev.exit30, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.bh, %_ZN2io14SFileListEntryD2Ev.exit30 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.t = getelementptr inbounds [80 x i8], ptr %0, i64 %.010 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !34
  store i8 0, ptr %i.h, align 8, !tbaa !18
  %i.u = icmp eq ptr %3, %i.t
  br i1 %i.u, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, label %bb.d

_ZN4core6stringIcEC2ERKS1_.exit.thread.i:         ; preds = %bb.c
  store ptr %i.k, ptr %i.j, align 8, !tbaa !33
  store i64 0, ptr %i.l, align 8, !tbaa !34
  store i8 0, ptr %i.k, align 8, !tbaa !18
  br label %_ZN2io14SFileListEntryC2EOS0_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %3, ptr noundef nonnull align 8 dereferenceable(77) %i.t)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.h, align 8, !tbaa !18
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.e ], [ %i.ab, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  store ptr %i.k, ptr %i.j, align 8, !tbaa !33
  store i64 0, ptr %i.l, align 8, !tbaa !34
  store i8 0, ptr %i.k, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZN2io14SFileListEntryC2EOS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.k
  br i1 %i.ad, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !18
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.h
  br i1 %i.ah, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %.body.i
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %common.resume

_ZN2io14SFileListEntryC2EOS0_.exit:               ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.m, ptr noundef nonnull align 8 dereferenceable(13) %i.ak, i64 13, i1 false)
  store ptr %i.n, ptr %4, align 8, !tbaa !33
  store i64 0, ptr %i.o, align 8, !tbaa !34
  store i8 0, ptr %i.n, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %4, ptr noundef nonnull align 8 dereferenceable(77) %3)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.n
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12: ; preds = %bb.h
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !18
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %.body

bb.i:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  store ptr %i.q, ptr %i.p, align 8, !tbaa !33
  store i64 0, ptr %i.r, align 8, !tbaa !34
  store i8 0, ptr %i.q, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !17  ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.q
  br i1 %i.as, label %.body.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i16: ; preds = %bb.j
  %i.at = load i64, ptr %i.q, align 8, !tbaa !18
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #25
  br label %.body.i17

.body.i17:                                        ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i16
  %i.av = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.n
  br i1 %i.aw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i18: ; preds = %.body.i17
  %i.ax = load i64, ptr %i.n, align 8, !tbaa !18
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %.body

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.s, ptr noundef nonnull align 8 dereferenceable(13) %i.m, i64 13, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 noundef %.010, i64 noundef %i.d, ptr noundef nonnull align 8 %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !17  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.q
  br i1 %i.ba, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %bb.l
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !18
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23
  %i.bd = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.n
  br i1 %i.be, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !18
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %.not = icmp eq i64 %.010, 0
  %i.bh = add nsw i64 %.010, -1
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.k
  br i1 %i.bj, label %_ZN4core6stringIcED2Ev.exit.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %_ZN2io14SFileListEntryD2Ev.exit
  %i.bk = load i64, ptr %i.k, align 8, !tbaa !18
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #25
  br label %_ZN4core6stringIcED2Ev.exit.i26

_ZN4core6stringIcED2Ev.exit.i26:                  ; preds = %_ZN2io14SFileListEntryD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZN2io14SFileListEntryD2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i27: ; preds = %_ZN4core6stringIcED2Ev.exit.i26
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !18
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit30

_ZN2io14SFileListEntryD2Ev.exit30:                ; preds = %_ZN4core6stringIcED2Ev.exit.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !87

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %4) #26
  br label %.body

.body:                                            ; preds = %.body.i17, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.m ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i18 ], [ %i.al, %bb.h ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12 ], [ %i.aq, %.body.i17 ]
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

.loopexit:                                        ; preds = %_ZN2io14SFileListEntryD2Ev.exit30, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.io::SFileListEntry", align 8 ; 22 uses
  %5 = alloca %"struct.io::SFileListEntry", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq ptr %4, %2
  br i1 %i.c, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, label %bb.b

_ZN4core6stringIcEC2ERKS1_.exit.thread.i:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !18
  br label %_ZN2io14SFileListEntryC2EOS0_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %4, ptr noundef nonnull align 8 dereferenceable(77) %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #25
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.g, %bb.c ], [ %i.p, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !34
  store i8 0, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_ZN2io14SFileListEntryC2EOS0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.m
  br i1 %i.r, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.m, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  %i.u = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %.body.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %common.resume

_ZN2io14SFileListEntryC2EOS0_.exit:               ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(13) %i.z, i64 13, i1 false)
  %i.aa = icmp eq ptr %2, %0
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %2, ptr noundef nonnull align 8 dereferenceable(77) %0)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit, %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.z, ptr noundef nonnull align 8 dereferenceable(13) %i.ad, i64 13, i1 false)
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 80
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !34
  store i8 0, ptr %i.ai, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %5, ptr noundef nonnull align 8 dereferenceable(77) %4)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ai
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4: ; preds = %bb.h
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #25
  br label %.body

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !34
  store i8 0, ptr %i.aq, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aq
  br i1 %i.av, label %.body.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i8: ; preds = %bb.j
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #25
  br label %.body.i9

.body.i9:                                         ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i8
  %i.ay = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ai
  br i1 %i.az, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i10: ; preds = %.body.i9
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bc, ptr noundef nonnull align 8 dereferenceable(13) %i.y, i64 13, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ah, ptr noundef nonnull align 8 %5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.aq
  br i1 %i.be, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %bb.l
  %i.bf = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15
  %i.bh = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ai
  br i1 %i.bi, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.bj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN4core6stringIcED2Ev.exit.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17: ; preds = %_ZN2io14SFileListEntryD2Ev.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #25
  br label %_ZN4core6stringIcED2Ev.exit.i18

_ZN4core6stringIcED2Ev.exit.i18:                  ; preds = %_ZN2io14SFileListEntryD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17
  %i.bq = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.a
  br i1 %i.br, label %_ZN2io14SFileListEntryD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i19: ; preds = %_ZN4core6stringIcED2Ev.exit.i18
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit22

_ZN2io14SFileListEntryD2Ev.exit22:                ; preds = %_ZN4core6stringIcED2Ev.exit.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.m:                                             ; preds = %.noexc, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %5) #26
  br label %.body

.body:                                            ; preds = %.body.i9, %bb.h, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i10 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4 ], [ %i.ak, %bb.h ], [ %i.at, %.body.i9 ]
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 4 uses
  %5 = alloca %"struct.io::SFileListEntry", align 8 ; 19 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN2io14SFileListEntryaSEOS0_.exit
  %.038 = phi i64 [ %spec.select, %_ZN2io14SFileListEntryaSEOS0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.038, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [80 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [80 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.j = load i8, ptr %i.i, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  %i.l = load i8, ptr %i.k, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i = icmp eq i8 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = trunc nuw i8 %i.j to i1
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not27.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.s = add i32 %.01628.i.i.i, 1                 ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.e, !llvm.loop !3

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %i.w = phi i8 [ %i.p, %.lr.ph.i.i.i ], [ %i.v, %bb.d ]
  %i.x = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.t, %bb.d ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.s, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18    ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not20.i.i.i, label %._crit_edge.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = sext i8 %i.w to i32                     ; 3 uses
  %i.ab = add nsw i32 %i.aa, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.ab, 26
  %i.ac = add nuw nsw i32 %i.aa, 32
  %i.ad = select i1 %or.cond.i.i.i.i, i32 %i.ac, i32 %i.aa ; 2 uses
  %i.ae = sext i8 %i.z to i32                     ; 3 uses
  %i.af = add nsw i32 %i.ae, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.af, 26
  %i.ag = add nuw nsw i32 %i.ae, 32
  %i.ah = select i1 %or.cond.i22.i.i.i, i32 %i.ag, i32 %i.ae ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.ad, %i.ah
  br i1 %.not21.i.i.i, label %bb.d, label %.critedge.loopexit.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !34
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp ult i32 %i.ak, %i.an
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

.critedge.loopexit.i.i.i:                         ; preds = %bb.f
  %i.ap = icmp slt i32 %i.ad, %i.ah
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.b, %._crit_edge.i.i.i, %.critedge.loopexit.i.i.i
  %.0.i.i = phi i1 [ %i.m, %bb.b ], [ %i.ao, %._crit_edge.i.i.i ], [ %i.ap, %.critedge.loopexit.i.i.i ]
  %spec.select = select i1 %.0.i.i, i64 %i.g, i64 %i.e ; 5 uses
  %i.aq = getelementptr inbounds [80 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.ar = getelementptr inbounds [80 x i8], ptr %0, i64 %.038 ; 3 uses
  %i.as = icmp eq i64 %.038, %spec.select
  br i1 %i.as, label %_ZN2io14SFileListEntryaSEOS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.ar, ptr noundef nonnull align 8 dereferenceable(77) %i.aq)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  br label %_ZN2io14SFileListEntryaSEOS0_.exit

_ZN2io14SFileListEntryaSEOS0_.exit:               ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.av, ptr noundef nonnull align 8 dereferenceable(13) %i.aw, i64 13, i1 false)
  %i.ax = icmp slt i64 %spec.select, %i.b
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %_ZN2io14SFileListEntryaSEOS0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN2io14SFileListEntryaSEOS0_.exit ] ; 6 uses
  %i.ay = and i64 %2, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.h, label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.ba = add nsw i64 %2, -2
  %i.bb = ashr exact i64 %i.ba, 1
  %i.bc = icmp eq i64 %.0.lcssa, %i.bb
  br i1 %i.bc, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bd = shl nsw i64 %.0.lcssa, 1
  %i.be = or disjoint i64 %i.bd, 1                ; 3 uses
  %i.bf = getelementptr inbounds [80 x i8], ptr %0, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds [80 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.bh = icmp eq i64 %.0.lcssa, %i.be
  br i1 %i.bh, label %_ZN2io14SFileListEntryaSEOS0_.exit25, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.bg, ptr noundef nonnull align 8 dereferenceable(77) %i.bf)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
  br label %_ZN2io14SFileListEntryaSEOS0_.exit25

_ZN2io14SFileListEntryaSEOS0_.exit25:             ; preds = %bb.i, %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bk, ptr noundef nonnull align 8 dereferenceable(13) %i.bl, i64 13, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_ZN2io14SFileListEntryaSEOS0_.exit25, %bb.h, %._crit_edge
  %.1 = phi i64 [ %i.be, %_ZN2io14SFileListEntryaSEOS0_.exit25 ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bm, ptr %5, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !34
  store i8 0, ptr %i.bm, align 8, !tbaa !18
  %i.bo = icmp eq ptr %5, %3
  br i1 %i.bo, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, label %bb.l

_ZN4core6stringIcEC2ERKS1_.exit.thread.i:         ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.br, align 8, !tbaa !34
  store i8 0, ptr %i.bq, align 8, !tbaa !18
  br label %_ZN2io14SFileListEntryC2EOS0_.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %5, ptr noundef nonnull align 8 dereferenceable(77) %3)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bm
  br i1 %i.bu, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.bv = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.cw, %bb.q ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bs, %bb.m ], [ %i.cb, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bz, align 8, !tbaa !34
  store i8 0, ptr %i.by, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZN2io14SFileListEntryC2EOS0_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !17 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.by
  br i1 %i.cd, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.o
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !18
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  %i.cg = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bm
  br i1 %i.ch, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %.body.i
  %i.ci = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #25
  br label %common.resume

_ZN2io14SFileListEntryC2EOS0_.exit:               ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ck, ptr noundef nonnull align 8 dereferenceable(13) %i.cl, i64 13, i1 false)
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !17 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %bb.p
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !18
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26
  %i.cs = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bm
  br i1 %i.ct, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.cu = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.q:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2io14SFileListEntryaSEOS0_.exit
  %.020 = phi i64 [ %1, %.lr.ph ], [ %.0921, %_ZN2io14SFileListEntryaSEOS0_.exit ] ; 6 uses
  %.0921.in = add nsw i64 %.020, -1
  %.0921 = sdiv i64 %.0921.in, 2                  ; 5 uses
  %i.e = getelementptr inbounds [80 x i8], ptr %0, i64 %.0921 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.g = load i8, ptr %i.f, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %i.h = load i8, ptr %i.b, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %bb.g, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not27.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.n = add i32 %.01628.i.i.i, 1                 ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit, label %bb.e, !llvm.loop !3

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %i.r = phi i8 [ %i.l, %.lr.ph.i.i.i ], [ %i.q, %bb.d ]
  %i.s = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.o, %bb.d ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.n, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18    ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not20.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sext i8 %i.r to i32                      ; 3 uses
  %i.w = add nsw i32 %i.v, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.w, 26
  %i.x = add nuw nsw i32 %i.v, 32
  %i.y = select i1 %or.cond.i.i.i.i, i32 %i.x, i32 %i.v ; 2 uses
  %i.z = sext i8 %i.u to i32                      ; 3 uses
  %i.aa = add nsw i32 %i.z, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.aa, 26
  %i.ab = add nuw nsw i32 %i.z, 32
  %i.ac = select i1 %or.cond.i22.i.i.i, i32 %i.ab, i32 %i.z ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.y, %i.ac
  br i1 %.not21.i.i.i, label %bb.d, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.f
  %i.ad = icmp slt i32 %i.y, %i.ac
  br i1 %i.ad, label %bb.g, label %.critedge

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !34
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit
  %i.ak = getelementptr inbounds [80 x i8], ptr %0, i64 %.020 ; 3 uses
  %i.al = icmp eq i64 %.020, %.0921
  br i1 %i.al, label %_ZN2io14SFileListEntryaSEOS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.ak, ptr noundef nonnull align 8 dereferenceable(77) %i.e)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
  br label %_ZN2io14SFileListEntryaSEOS0_.exit

_ZN2io14SFileListEntryaSEOS0_.exit:               ; preds = %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ao, ptr noundef nonnull align 8 dereferenceable(13) %i.ap, i64 13, i1 false)
  %i.aq = icmp sgt i64 %.0921, %2
  br i1 %i.aq, label %bb.b, label %.critedge, !llvm.loop !89

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit, %_ZN2io14SFileListEntryaSEOS0_.exit, %.split, %.critedge.loopexit.i.i.i, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.020, %.critedge.loopexit.i.i.i ], [ %.020, %.split ], [ %.0921, %_ZN2io14SFileListEntryaSEOS0_.exit ], [ %.020, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit ]
  %i.ar = getelementptr inbounds [80 x i8], ptr %0, i64 %.0.lcssa ; 4 uses
  %i.as = icmp eq ptr %i.ar, %3
  br i1 %i.as, label %_ZN2io14SFileListEntryaSEOS0_.exit10, label %bb.i

bb.i:                                             ; preds = %.critedge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.ar, ptr noundef nonnull align 8 dereferenceable(77) %3)
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  br label %_ZN2io14SFileListEntryaSEOS0_.exit10

_ZN2io14SFileListEntryaSEOS0_.exit10:             ; preds = %.critedge, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.av, ptr noundef nonnull align 8 dereferenceable(13) %i.aw, i64 13, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.b = load i8, ptr %i.a, align 4, !tbaa !51, !range !44, !noundef !45 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.d = load i8, ptr %i.c, align 4, !tbaa !51, !range !44, !noundef !45 ; 5 uses
  %.not.i.i = icmp eq i8 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.e = trunc nuw i8 %i.b to i1
  br i1 %i.e, label %bb.f, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not27.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.k = add i32 %.01628.i.i.i, 1                 ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.d, !llvm.loop !3

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.o = phi i8 [ %i.h, %.lr.ph.i.i.i ], [ %i.n, %bb.c ]
  %i.p = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.l, %bb.c ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.k, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18    ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not20.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = sext i8 %i.o to i32                      ; 3 uses
  %i.t = add nsw i32 %i.s, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.t, 26
  %i.u = add nuw nsw i32 %i.s, 32
  %i.v = select i1 %or.cond.i.i.i.i, i32 %i.u, i32 %i.s ; 2 uses
  %i.w = sext i8 %i.r to i32                      ; 3 uses
  %i.x = add nsw i32 %i.w, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.x, 26
  %i.y = add nuw nsw i32 %i.w, 32
  %i.z = select i1 %or.cond.i22.i.i.i, i32 %i.y, i32 %i.w ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.v, %i.z
  br i1 %.not21.i.i.i, label %bb.c, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.e
  %i.aa = icmp slt i32 %i.v, %i.z
  br i1 %i.aa, label %bb.f, label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.q

bb.f:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %.not.i.i26 = icmp eq i8 %i.d, %i.aj
  br i1 %.not.i.i26, label %bb.g, label %.split78

.split78:                                         ; preds = %bb.f
  %i.ak = trunc nuw i8 %i.d to i1
  br i1 %i.ak, label %bb.ab, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i28 = icmp eq i8 %i.an, 0
  br i1 %.not27.i.i.i28, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.aq = add i32 %.01628.i.i.i30, 1              ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i36 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i36, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38, label %bb.i, !llvm.loop !3

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i29
  %i.au = phi i8 [ %i.an, %.lr.ph.i.i.i29 ], [ %i.at, %bb.h ]
  %i.av = phi i64 [ 0, %.lr.ph.i.i.i29 ], [ %i.ar, %bb.h ]
  %.01628.i.i.i30 = phi i32 [ 0, %.lr.ph.i.i.i29 ], [ %i.aq, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i31 = icmp eq i8 %i.ax, 0
  br i1 %.not20.i.i.i31, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = sext i8 %i.au to i32                    ; 3 uses
  %i.az = add nsw i32 %i.ay, -65
  %or.cond.i.i.i.i32 = icmp ult i32 %i.az, 26
  %i.ba = add nuw nsw i32 %i.ay, 32
  %i.bb = select i1 %or.cond.i.i.i.i32, i32 %i.ba, i32 %i.ay ; 2 uses
  %i.bc = sext i8 %i.ax to i32                    ; 3 uses
  %i.bd = add nsw i32 %i.bc, -65
  %or.cond.i22.i.i.i33 = icmp ult i32 %i.bd, 26
  %i.be = add nuw nsw i32 %i.bc, 32
  %i.bf = select i1 %or.cond.i22.i.i.i33, i32 %i.be, i32 %i.bc ; 2 uses
  %.not21.i.i.i34 = icmp eq i32 %i.bb, %i.bf
  br i1 %.not21.i.i.i34, label %bb.h, label %.critedge.loopexit.i.i.i35

.critedge.loopexit.i.i.i35:                       ; preds = %bb.j
  %i.bg = icmp slt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.ab, label %bb.k

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38: ; preds = %bb.h, %bb.i, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !34
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !34
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp ult i32 %i.bj, %i.bm
  br i1 %i.bn, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %.critedge.loopexit.i.i.i35, %.split78, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38
  %.not.i.i39 = icmp eq i8 %i.b, %i.aj
  br i1 %.not.i.i39, label %bb.l, label %.split79

.split79:                                         ; preds = %bb.k
  %i.bo = trunc nuw i8 %i.b to i1
  br i1 %i.bo, label %bb.ab, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i41 = icmp eq i8 %i.br, 0
  br i1 %.not27.i.i.i41, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17
  br label %bb.n

bb.m:                                             ; preds = %bb.o
  %i.bu = add i32 %.01628.i.i.i43, 1              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i49 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i49, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51, label %bb.n, !llvm.loop !3

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i42
  %i.by = phi i8 [ %i.br, %.lr.ph.i.i.i42 ], [ %i.bx, %bb.m ]
  %i.bz = phi i64 [ 0, %.lr.ph.i.i.i42 ], [ %i.bv, %bb.m ]
  %.01628.i.i.i43 = phi i32 [ 0, %.lr.ph.i.i.i42 ], [ %i.bu, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i44 = icmp eq i8 %i.cb, 0
  br i1 %.not20.i.i.i44, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = sext i8 %i.by to i32                    ; 3 uses
  %i.cd = add nsw i32 %i.cc, -65
  %or.cond.i.i.i.i45 = icmp ult i32 %i.cd, 26
end_hunk_2
begin_hunk_3_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_:bb.a
  %i.da = add i32 %.01628.i.i.i56, 1              ; 2 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i62 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i62, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64, label %bb.t, !llvm.loop !3

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i55
  %i.de = phi i8 [ %i.cx, %.lr.ph.i.i.i55 ], [ %i.dd, %bb.s ]
  %i.df = phi i64 [ 0, %.lr.ph.i.i.i55 ], [ %i.db, %bb.s ]
  %.01628.i.i.i56 = phi i32 [ 0, %.lr.ph.i.i.i55 ], [ %i.da, %bb.s ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i57 = icmp eq i8 %i.dh, 0
  br i1 %.not20.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = sext i8 %i.de to i32                    ; 3 uses
  %i.dj = add nsw i32 %i.di, -65
  %or.cond.i.i.i.i58 = icmp ult i32 %i.dj, 26
  %i.dk = add nuw nsw i32 %i.di, 32
  %i.dl = select i1 %or.cond.i.i.i.i58, i32 %i.dk, i32 %i.di ; 2 uses
  %i.dm = sext i8 %i.dh to i32                    ; 3 uses
  %i.dn = add nsw i32 %i.dm, -65
  %or.cond.i22.i.i.i59 = icmp ult i32 %i.dn, 26
  %i.do = add nuw nsw i32 %i.dm, 32
  %i.dp = select i1 %or.cond.i22.i.i.i59, i32 %i.do, i32 %i.dm ; 2 uses
  %.not21.i.i.i60 = icmp eq i32 %i.dl, %i.dp
  br i1 %.not21.i.i.i60, label %bb.s, label %.critedge.loopexit.i.i.i61

.critedge.loopexit.i.i.i61:                       ; preds = %bb.u
  %i.dq = icmp slt i32 %i.dl, %i.dp
  br i1 %i.dq, label %bb.ab, label %bb.v

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64: ; preds = %bb.s, %bb.t, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !34
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !34
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = icmp ult i32 %i.dt, %i.dw
  br i1 %i.dx, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %.critedge.loopexit.i.i.i61, %.split80, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64
  %.not.i.i65 = icmp eq i8 %i.d, %i.ct
  br i1 %.not.i.i65, label %bb.w, label %.split81

.split81:                                         ; preds = %bb.v
  %i.dy = trunc nuw i8 %i.d to i1
  br i1 %i.dy, label %bb.ab, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !17 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i67 = icmp eq i8 %i.eb, 0
  br i1 %.not27.i.i.i67, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !17
  br label %bb.y

bb.x:                                             ; preds = %bb.z
  %i.ee = add i32 %.01628.i.i.i69, 1              ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i75 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i75, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77, label %bb.y, !llvm.loop !3

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.i68
  %i.ei = phi i8 [ %i.eb, %.lr.ph.i.i.i68 ], [ %i.eh, %bb.x ]
  %i.ej = phi i64 [ 0, %.lr.ph.i.i.i68 ], [ %i.ef, %bb.x ]
  %.01628.i.i.i69 = phi i32 [ 0, %.lr.ph.i.i.i68 ], [ %i.ee, %bb.x ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i70 = icmp eq i8 %i.el, 0
  br i1 %.not20.i.i.i70, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.em = sext i8 %i.ei to i32                    ; 3 uses
  %i.en = add nsw i32 %i.em, -65
  %or.cond.i.i.i.i71 = icmp ult i32 %i.en, 26
  %i.eo = add nuw nsw i32 %i.em, 32
  %i.ep = select i1 %or.cond.i.i.i.i71, i32 %i.eo, i32 %i.em ; 2 uses
  %i.eq = sext i8 %i.el to i32                    ; 3 uses
  %i.er = add nsw i32 %i.eq, -65
  %or.cond.i22.i.i.i72 = icmp ult i32 %i.er, 26
  %i.es = add nuw nsw i32 %i.eq, 32
  %i.et = select i1 %or.cond.i22.i.i.i72, i32 %i.es, i32 %i.eq ; 2 uses
  %.not21.i.i.i73 = icmp eq i32 %i.ep, %i.et
  br i1 %.not21.i.i.i73, label %bb.x, label %.critedge.loopexit.i.i.i74

.critedge.loopexit.i.i.i74:                       ; preds = %bb.z
  %i.eu = icmp slt i32 %i.ep, %i.et
  br i1 %i.eu, label %bb.ab, label %bb.aa

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77: ; preds = %bb.x, %bb.y, %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !34
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !34
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = icmp ult i32 %i.ex, %i.fa
  br i1 %i.fb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.loopexit.i.i.i74, %.split81, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77, %.split81, %.critedge.loopexit.i.i.i74, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64, %.split80, %.critedge.loopexit.i.i.i61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51, %.split79, %.critedge.loopexit.i.i.i48, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38, %.split78, %.critedge.loopexit.i.i.i35, %bb.aa, %bb.p
  %.sink = phi ptr [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51 ], [ %2, %bb.aa ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64 ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38 ], [ %1, %bb.p ], [ %2, %.critedge.loopexit.i.i.i35 ], [ %2, %.split78 ], [ %3, %.critedge.loopexit.i.i.i48 ], [ %3, %.split79 ], [ %1, %.critedge.loopexit.i.i.i61 ], [ %1, %.split80 ], [ %3, %.critedge.loopexit.i.i.i74 ], [ %3, %.split81 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77 ]
  tail call void @_ZSt4swapIN2io14SFileListEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %.sink)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %.sroa.023.0 = phi ptr [ %0, %bb.a ], [ %i.bo, %bb.q ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.q ]
  %i.d = load i8, ptr %i.a, align 4, !tbaa !51, !range !44, !noundef !45 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.023.1 = phi ptr [ %.sroa.023.0, %bb.b ], [ %i.ai, %bb.h ] ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 76
  %i.f = load i8, ptr %i.e, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %.not.i.i = icmp eq i8 %i.f, %i.d
  br i1 %.not.i.i, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not27.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.l = add i32 %.01628.i.i.i, 1                 ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.p = phi i8 [ %i.j, %.lr.ph.i.i.i ], [ %i.o, %bb.e ]
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.e ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.l, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18    ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not20.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = sext i8 %i.p to i32                      ; 3 uses
  %i.u = add nsw i32 %i.t, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.u, 26
  %i.v = add nuw nsw i32 %i.t, 32
  %i.w = select i1 %or.cond.i.i.i.i, i32 %i.v, i32 %i.t ; 2 uses
  %i.x = sext i8 %i.s to i32                      ; 3 uses
  %i.y = add nsw i32 %i.x, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.y, 26
  %i.z = add nuw nsw i32 %i.x, 32
  %i.aa = select i1 %or.cond.i22.i.i.i, i32 %i.z, i32 %i.x ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.w, %i.aa
  br i1 %.not21.i.i.i, label %bb.e, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.g
  %i.ab = icmp slt i32 %i.w, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.ae = trunc i64 %i.ad to i32
  %i.af = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ult i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 80
  br label %bb.c, !llvm.loop !90

bb.i:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.aj = trunc nuw i8 %i.d to i1
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %bb.i ], [ %.sroa.0.1, %.backedge ] ; 4 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -80 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -4
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i8 = icmp eq i8 %i.d, %i.al
  br i1 %.not.i.i8, label %bb.k, label %.split26

.split26:                                         ; preds = %bb.j
  br i1 %i.aj, label %.backedge, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i10 = icmp eq i8 %i.an, 0
  br i1 %.not27.i.i.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %bb.k
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  br label %bb.m

bb.l:                                             ; preds = %bb.n
  %i.aq = add i32 %.01628.i.i.i12, 1              ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i18 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i18, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20, label %bb.m, !llvm.loop !3

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i11
  %i.au = phi i8 [ %i.an, %.lr.ph.i.i.i11 ], [ %i.at, %bb.l ]
  %i.av = phi i64 [ 0, %.lr.ph.i.i.i11 ], [ %i.ar, %bb.l ]
  %.01628.i.i.i12 = phi i32 [ 0, %.lr.ph.i.i.i11 ], [ %i.aq, %bb.l ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i13 = icmp eq i8 %i.ax, 0
  br i1 %.not20.i.i.i13, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = sext i8 %i.au to i32                    ; 3 uses
  %i.az = add nsw i32 %i.ay, -65
  %or.cond.i.i.i.i14 = icmp ult i32 %i.az, 26
  %i.ba = add nuw nsw i32 %i.ay, 32
  %i.bb = select i1 %or.cond.i.i.i.i14, i32 %i.ba, i32 %i.ay ; 2 uses
  %i.bc = sext i8 %i.ax to i32                    ; 3 uses
  %i.bd = add nsw i32 %i.bc, -65
  %or.cond.i22.i.i.i15 = icmp ult i32 %i.bd, 26
  %i.be = add nuw nsw i32 %i.bc, 32
  %i.bf = select i1 %or.cond.i22.i.i.i15, i32 %i.be, i32 %i.bc ; 2 uses
  %.not21.i.i.i16 = icmp eq i32 %i.bb, %i.bf
  br i1 %.not21.i.i.i16, label %bb.l, label %.critedge.loopexit.i.i.i17

.critedge.loopexit.i.i.i17:                       ; preds = %bb.n
  %i.bg = icmp slt i32 %i.bb, %i.bf
  br i1 %i.bg, label %.backedge, label %bb.o

.backedge:                                        ; preds = %.critedge.loopexit.i.i.i17, %.split26, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20
  br label %bb.j, !llvm.loop !91

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20: ; preds = %bb.l, %bb.m, %bb.k
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !34
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !34
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp ult i32 %i.bi, %i.bl
  br i1 %i.bm, label %.backedge, label %bb.o

bb.o:                                             ; preds = %.critedge.loopexit.i.i.i17, %.split26, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20
  %i.bn = icmp ult ptr %.sroa.023.1, %.sroa.0.1
  br i1 %i.bn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  ret ptr %.sroa.023.1

bb.q:                                             ; preds = %bb.o
  tail call void @_ZSt4swapIN2io14SFileListEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(77) %.sroa.023.1, ptr noundef nonnull align 8 dereferenceable(77) %.sroa.0.1)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 80
  br label %bb.b, !llvm.loop !92
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt4swapIN2io14SFileListEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.io::SFileListEntry", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %2, ptr noundef nonnull align 8 dereferenceable(77) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.c, %bb.b ], [ %i.l, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !34
  store i8 0, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN2io14SFileListEntryC2EOS0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.i, align 8, !tbaa !18
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %.body.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %common.resume

_ZN2io14SFileListEntryC2EOS0_.exit:               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.u, ptr noundef nonnull align 8 dereferenceable(13) %i.v, i64 13, i1 false)
  %i.w = icmp eq ptr %0, %1
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit, %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.v, ptr noundef nonnull align 8 dereferenceable(13) %i.y, i64 13, i1 false)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %1, ptr noundef nonnull align 8 dereferenceable(77) %2)
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(13) %i.u, i64 13, i1 false)
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !17  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.i
  br i1 %i.ab, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %bb.g
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9
  %i.ae = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !18
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.h:                                             ; preds = %.noexc6, %bb.f, %.noexc, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.io::SFileListEntry", align 8 ; 18 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit21, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.034 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.not35 = icmp eq ptr %.sroa.0.034, %1
  br i1 %.not35, label %.loopexit21, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = icmp eq ptr %0, %2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.0.037 = phi ptr [ %.sroa.0.034, %.lr.ph ], [ %.sroa.0.0, %bb.p ] ; 7 uses
  %.pn36 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.037, %bb.p ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pn36, i64 156
  %i.o = load i8, ptr %i.n, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %i.p = load i8, ptr %i.b, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i = icmp eq i8 %i.o, %i.p
  br i1 %.not.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.q = trunc nuw i8 %i.o to i1
  br i1 %i.q, label %bb.g, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.pn36, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not27.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.v = add i32 %.01628.i.i.i, 1                 ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.e, !llvm.loop !3

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %i.z = phi i8 [ %i.t, %.lr.ph.i.i.i ], [ %i.y, %bb.d ]
  %i.aa = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.w, %bb.d ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.v, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not20.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = sext i8 %i.z to i32                     ; 3 uses
  %i.ae = add nsw i32 %i.ad, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.ae, 26
  %i.af = add nuw nsw i32 %i.ad, 32
  %i.ag = select i1 %or.cond.i.i.i.i, i32 %i.af, i32 %i.ad ; 2 uses
  %i.ah = sext i8 %i.ac to i32                    ; 3 uses
  %i.ai = add nsw i32 %i.ah, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.ai, 26
  %i.aj = add nuw nsw i32 %i.ah, 32
  %i.ak = select i1 %or.cond.i22.i.i.i, i32 %i.aj, i32 %i.ah ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.ag, %i.ak
  br i1 %.not21.i.i.i, label %bb.d, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.f
  %i.al = icmp slt i32 %i.ag, %i.ak
  br i1 %i.al, label %bb.g, label %bb.o

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.d, %bb.e, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.pn36, i64 120
  %i.an = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ao = trunc i64 %i.an to i32
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !34
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp ult i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.o

bb.g:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.e, ptr %2, align 8, !tbaa !33
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !18
  %i.as = icmp eq ptr %2, %.sroa.0.037
  br i1 %i.as, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, label %bb.h

_ZN4core6stringIcEC2ERKS1_.exit.thread.i:         ; preds = %bb.g
  store ptr %i.h, ptr %i.g, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !34
  store i8 0, ptr %i.h, align 8, !tbaa !18
  br label %_ZN2io14SFileListEntryC2EOS0_.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %2, ptr noundef nonnull align 8 dereferenceable(77) %.sroa.0.037)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.e
  br i1 %i.av, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #25
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.at, %bb.i ], [ %i.az, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.h
  store ptr %i.h, ptr %i.g, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !34
  store i8 0, ptr %i.h, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn36, i64 112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_ZN2io14SFileListEntryC2EOS0_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !17  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.h
  br i1 %i.bb, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.k
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !18
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  %i.be = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %.body.i
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !18
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %common.resume

_ZN2io14SFileListEntryC2EOS0_.exit:               ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn36, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.j, ptr noundef nonnull align 8 dereferenceable(13) %i.bi, i64 13, i1 false)
  %i.bj = ptrtoint ptr %.sroa.0.037 to i64
  %i.bk = sub i64 %i.bj, %i.k                     ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit20

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn36, i64 160
  %i.bn = udiv exact i64 %i.bk, 80
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN2io14SFileListEntryaSEOS0_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bu, %_ZN2io14SFileListEntryaSEOS0_.exit.i.i.i.i.i ], [ %i.bn, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bp, %_ZN2io14SFileListEntryaSEOS0_.exit.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bo, %_ZN2io14SFileListEntryaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.037, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -80 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -80 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.bp, ptr noundef nonnull align 8 dereferenceable(77) %i.bo)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %_ZN2io14SFileListEntryaSEOS0_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2io14SFileListEntryaSEOS0_.exit.i.i.i.i.i:     ; preds = %.noexc
  %i.bs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bs, ptr noundef nonnull align 8 dereferenceable(13) %i.bt, i64 13, i1 false)
  %i.bu = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bv = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.l, label %.loopexit20, !llvm.loop !93

.loopexit20:                                      ; preds = %_ZN2io14SFileListEntryaSEOS0_.exit.i.i.i.i.i, %_ZN2io14SFileListEntryC2EOS0_.exit
  br i1 %i.l, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %2)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.loopexit20, %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.m, ptr noundef nonnull align 8 dereferenceable(13) %i.j, i64 13, i1 false)
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !17  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.h
  br i1 %i.bx, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10: ; preds = %bb.n
  %i.by = load i64, ptr %i.h, align 8, !tbaa !18
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10
  %i.ca = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.e
  br i1 %i.cb, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !18
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.p

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %bb.l, %.noexc8, %bb.m
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.o:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.037)
  br label %bb.p

bb.p:                                             ; preds = %_ZN2io14SFileListEntryD2Ev.exit, %bb.o
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 80 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit21, label %bb.b, !llvm.loop !94

.loopexit21:                                      ; preds = %bb.p, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.io::SFileListEntry", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq ptr %1, %0
  br i1 %i.c, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, label %bb.b

_ZN4core6stringIcEC2ERKS1_.exit.thread.i:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !18
  br label %_ZN2io14SFileListEntryC2EOS0_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %1, ptr noundef nonnull align 8 dereferenceable(77) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #25
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.g, %bb.c ], [ %i.p, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !34
  store i8 0, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_ZN2io14SFileListEntryC2EOS0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.m
  br i1 %i.r, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.m, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  %i.u = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %.body.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %common.resume

_ZN2io14SFileListEntryC2EOS0_.exit:               ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(13) %i.z, i64 13, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %_ZN2io14SFileListEntryC2EOS0_.exit
  %.sroa.09.0 = phi ptr [ %0, %_ZN2io14SFileListEntryC2EOS0_.exit ], [ %.sroa.0.0, %bb.l ] ; 13 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -80 ; 2 uses
  %i.ad = load i8, ptr %i.aa, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -4
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i = icmp eq i8 %i.ad, %i.af
  br i1 %.not.i.i, label %bb.g, label %.split

.split:                                           ; preds = %bb.f
  %i.ag = trunc nuw i8 %i.ad to i1
  br i1 %i.ag, label %bb.k, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not27.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2io14SFileListEntryENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.al = add i32 %.01628.i.i.i, 1                ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2io14SFileListEntryENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit, label %bb.i, !llvm.loop !3

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ap = phi i8 [ %i.ai, %.lr.ph.i.i.i ], [ %i.ao, %bb.h ]
  %i.aq = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.am, %bb.h ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.al, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not20.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2io14SFileListEntryENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = sext i8 %i.ap to i32                    ; 3 uses
  %i.au = add nsw i32 %i.at, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.au, 26
  %i.av = add nuw nsw i32 %i.at, 32
  %i.aw = select i1 %or.cond.i.i.i.i, i32 %i.av, i32 %i.at ; 2 uses
  %i.ax = sext i8 %i.as to i32                    ; 3 uses
  %i.ay = add nsw i32 %i.ax, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.ay, 26
  %i.az = add nuw nsw i32 %i.ax, 32
  %i.ba = select i1 %or.cond.i22.i.i.i, i32 %i.az, i32 %i.ax ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.aw, %i.ba
  br i1 %.not21.i.i.i, label %bb.h, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.j
  %i.bb = icmp slt i32 %i.aw, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.m

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2io14SFileListEntryENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit: ; preds = %bb.h, %bb.i, %bb.g
  %i.bc = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !34
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp ult i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2io14SFileListEntryENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit, %.split, %.critedge.loopexit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %.sroa.09.0, ptr noundef nonnull align 8 dereferenceable(77) %.sroa.0.0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  %i.bi = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -48
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.noexc
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 64
  %i.bl = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bk, ptr noundef nonnull align 8 dereferenceable(13) %i.bl, i64 13, i1 false)
  br label %bb.f, !llvm.loop !95

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %bb.k, %.noexc2, %bb.n
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.m:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2io14SFileListEntryENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit
  %i.bm = icmp eq ptr %.sroa.09.0, %1
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %.sroa.09.0, ptr noundef nonnull align 8 dereferenceable(77) %1)
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2:                                          ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m, %.noexc2
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bo, ptr noundef nonnull align 8 dereferenceable(13) %i.y, i64 13, i1 false)
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5: ; preds = %bb.o
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !18
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5
  %i.bu = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.a
  br i1 %i.bv, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2io14SFileListEntryESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq ptr %i.b, %1
  br i1 %i.g, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, label %bb.c

_ZN4core6stringIcEC2ERKS1_.exit.thread.i:         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !34
  store i8 0, ptr %i.i, align 8, !tbaa !18
  br label %_ZN2io14SFileListEntryC2ERKS0_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.b, ptr noundef nonnull align 8 dereferenceable(77) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %common.resume.i, label %common.resume.i.sink.split

common.resume.i.sink.split:                       ; preds = %bb.d, %.body.i
  %.sink = phi ptr [ %i.y, %.body.i ], [ %i.l, %bb.d ]
  %common.resume.op.i.ph = phi { ptr, i32 } [ %i.t, %.body.i ], [ %i.k, %bb.d ]
  %i.n = load i64, ptr %i.e, align 8, !tbaa !18
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.o) #25
  br label %common.resume.i

common.resume.i:                                  ; preds = %common.resume.i.sink.split, %.body.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.t, %.body.i ], [ %common.resume.op.i.ph, %common.resume.i.sink.split ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !34
  store i8 0, ptr %i.q, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZN2io14SFileListEntryC2ERKS0_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.q, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.e
  br i1 %i.z, label %common.resume.i, label %common.resume.i.sink.split

_ZN2io14SFileListEntryC2ERKS0_.exit:              ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aa, ptr noundef nonnull align 8 dereferenceable(13) %i.ab, i64 13, i1 false)
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !41
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN2io14SFileListEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(77) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2io14SFileListEntryC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2io14SFileListEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(77) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !40     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2io14SFileListEntryESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
  unreachable

_ZNKSt6vectorIN2io14SFileListEntryESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !34
  store i8 0, ptr %i.r, align 8, !tbaa !18
  %i.t = icmp eq ptr %i.q, %2
  br i1 %i.t, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, label %bb.c

_ZN4core6stringIcEC2ERKS1_.exit.thread.i:         ; preds = %_ZNKSt6vectorIN2io14SFileListEntryESaIS1_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !34
  store i8 0, ptr %i.v, align 8, !tbaa !18
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIN2io14SFileListEntryESaIS1_EE12_M_check_lenEmPKc.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.q, ptr noundef nonnull align 8 dereferenceable(77) %2)
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN2io14SFileListEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %.body.thread

bb.g:                                             ; preds = %bb.e, %_ZN4core6stringIcEC2ERKS1_.exit.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ap, ptr noundef nonnull align 8 dereferenceable(13) %i.aq, i64 13, i1 false)
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2io14SFileListEntryEPS1_ET0_T_S6_S5_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit unwind label %bb.i

_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80 ; 2 uses
  %i.at = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2io14SFileListEntryEPS1_ET0_T_S6_S5_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.as)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit28 unwind label %.body

_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2io14SFileListEntryEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit28, %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit28 ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4core6stringIcED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #25
  br label %_ZN4core6stringIcED2Ev.exit.i.i.i.i

_ZN4core6stringIcED2Ev.exit.i.i.i.i:              ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ba = load ptr, ptr %.05.i.i, align 8, !tbaa !17 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !18
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #25
  br label %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i

_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2io14SFileListEntryEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2io14SFileListEntryEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIN2io14SFileListEntryEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN2io14SFileListEntryESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2io14SFileListEntryEEvT_S3_.exit
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #25
  br label %_ZNSt12_Vector_baseIN2io14SFileListEntryESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2io14SFileListEntryESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN2io14SFileListEntryEEvT_S3_.exit, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !40
  store ptr %i.at, ptr %i.a, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !42
  ret void

.body:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2io14SFileListEntryES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.thread

bb.i:                                             ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #26 ; 0 uses
  tail call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %i.q) #26
  br label %bb.k

.body.thread:                                     ; preds = %.body.i, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i, %.body
  %.sink58 = phi { ptr, i32 } [ %i.bl, %.body ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i ], [ %i.x, %bb.d ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ag, %.body.i ]
  %.0.lpad-body38 = phi ptr [ %i.as, %.body ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i ], [ %i.p, %bb.d ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %.body.i ]
  %i.bp = extractvalue { ptr, i32 } %.sink58, 0
  %i.bq = tail call ptr @__cxa_begin_catch(ptr %i.bp) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN2io14SFileListEntryEEvT_S3_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body38)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.body.thread, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.i, %.body.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #29
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.br

bb.m:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #27
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKN2io14SFileListEntryEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not28 = icmp eq ptr %0, %1
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.030 = phi ptr [ %i.aa, %bb.f ], [ %2, %bb.a ] ; 19 uses
  %.01229 = phi ptr [ %i.z, %bb.f ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.030, i64 16 ; 2 uses
  store ptr %i.a, ptr %.030, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq ptr %.030, %.01229
  br i1 %i.c, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, label %bb.b

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i:       ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.030, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %.030, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %.030, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !18
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %.030, ptr noundef nonnull align 8 dereferenceable(77) %.01229)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.030, i64 16 ; 2 uses
  %i.i = load ptr, ptr %.030, align 8, !tbaa !17  ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.030, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.030, i64 48 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %.030, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !34
  store i8 0, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.01229, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.030, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.030, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.q, align 8, !tbaa !18
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i
  %i.v = load ptr, ptr %.030, align 8, !tbaa !17  ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.030, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %.01229, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.x, ptr noundef nonnull align 8 dereferenceable(13) %i.y, i64 13, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.01229, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.030, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !96

.body.sink.split:                                 ; preds = %.body.i.i, %bb.c
  %.sink65.in = phi ptr [ %i.h, %bb.c ], [ %i.p, %.body.i.i ]
  %.sink = phi ptr [ %i.i, %bb.c ], [ %i.v, %.body.i.i ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %.body.i.i ]
  %.sink65 = load i64, ptr %.sink65.in, align 8, !tbaa !18
  %i.ab = add i64 %.sink65, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ab) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body.i.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %.body.i.i ], [ %i.g, %bb.c ], [ %eh.lpad-body.ph, %.body.sink.split ]
  %i.ac = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN2io14SFileListEntryEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.030)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #29
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ae

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #27
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4core5arrayIN2io14SFileListEntryEE13binary_searchERKS2_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(77) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, %3
  br i1 %i.a, label %.split, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %.idx82 = mul nsw i64 %i.c, 80
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %.idx82 ; 2 uses
  %i.e = sext i32 %3 to i64
  %.idx83 = sub nsw i64 %i.e, %i.c                ; 2 uses
  %i.f = icmp sgt i64 %.idx83, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.h = load i8, ptr %i.g, align 4, !tbaa !51, !range !44 ; 2 uses
  br i1 %i.f, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.018.i.i = phi i64 [ %.idx83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %bb.f ] ; 2 uses
  %.sroa.011.016.i.i = phi ptr [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %bb.f ] ; 4 uses
  %i.n = lshr i64 %.018.i.i, 1                    ; 5 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.sroa.011.016.i.i, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.q = load i8, ptr %i.p, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.q, %i.h
  br i1 %.not.i.i.i.i, label %bb.b, label %.split.i.i

.split.i.i:                                       ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.b:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not27.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES6_EEbT_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.v = add i32 %.01628.i.i.i.i.i, 1             ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES6_EEbT_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.z = phi i8 [ %i.y, %bb.c ], [ %i.u, %bb.b ]
  %i.aa = phi i64 [ %i.w, %bb.c ], [ 0, %bb.b ]
  %.01628.i.i.i.i.i = phi i32 [ %i.v, %bb.c ], [ 0, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not20.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES6_EEbT_RT0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = sext i8 %i.z to i32                     ; 3 uses
  %i.ae = add nsw i32 %i.ad, -65
  %or.cond.i.i.i.i.i.i = icmp ult i32 %i.ae, 26
  %i.af = add nuw nsw i32 %i.ad, 32
  %i.ag = select i1 %or.cond.i.i.i.i.i.i, i32 %i.af, i32 %i.ad ; 2 uses
  %i.ah = sext i8 %i.ac to i32                    ; 3 uses
  %i.ai = add nsw i32 %i.ah, -65
  %or.cond.i22.i.i.i.i.i = icmp ult i32 %i.ai, 26
  %i.aj = add nuw nsw i32 %i.ah, 32
  %i.ak = select i1 %or.cond.i22.i.i.i.i.i, i32 %i.aj, i32 %i.ah ; 2 uses
  %.not21.i.i.i.i.i = icmp eq i32 %i.ag, %i.ak
  br i1 %.not21.i.i.i.i.i, label %bb.c, label %.critedge.loopexit.i.i.i.i.i

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.d
  %i.al = icmp slt i32 %i.ag, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES6_EEbT_RT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ao = trunc i64 %i.an to i32
  %i.ap = icmp ult i32 %i.ao, %i.m
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES6_EEbT_RT0_.exit.i.i, %.critedge.loopexit.i.i.i.i.i, %.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ar = xor i64 %i.n, -1
  %i.as = add nsw i64 %.018.i.i, %i.ar
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES6_EEbT_RT0_.exit.i.i, %.critedge.loopexit.i.i.i.i.i, %.split.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.aq, %bb.e ], [ %.sroa.011.016.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES6_EEbT_RT0_.exit.i.i ], [ %.sroa.011.016.i.i, %.split.i.i ], [ %.sroa.011.016.i.i, %.critedge.loopexit.i.i.i.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.as, %bb.e ], [ %i.n, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES6_EEbT_RT0_.exit.i.i ], [ %i.n, %.split.i.i ], [ %i.n, %.critedge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.at = icmp sgt i64 %.1.i.i, 0
  br i1 %i.at, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit, !llvm.loop !97

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit: ; preds = %bb.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %.sroa.011.1.i.i, %bb.f ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 76
  %i.av = load i8, ptr %i.au, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i = icmp eq i8 %i.av, %i.h
  br i1 %.not.i, label %bb.g, label %.split

bb.g:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not27.i.i, label %_ZNK2io14SFileListEntryltERKS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.bb = add i32 %.01628.i.i, 1                  ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18  ; 2 uses
  %.not.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i, label %_ZNK2io14SFileListEntryltERKS0_.exit, label %bb.i, !llvm.loop !3

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.bf = phi i8 [ %i.ay, %.lr.ph.i.i ], [ %i.be, %bb.h ]
  %i.bg = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.h ]
  %.01628.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bb, %bb.h ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not20.i.i, label %_ZNK2io14SFileListEntryltERKS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = sext i8 %i.bf to i32                    ; 3 uses
  %i.bk = add nsw i32 %i.bj, -65
  %or.cond.i.i.i20 = icmp ult i32 %i.bk, 26
  %i.bl = add nuw nsw i32 %i.bj, 32
  %i.bm = select i1 %or.cond.i.i.i20, i32 %i.bl, i32 %i.bj ; 2 uses
  %i.bn = sext i8 %i.bi to i32                    ; 3 uses
  %i.bo = add nsw i32 %i.bn, -65
  %or.cond.i22.i.i = icmp ult i32 %i.bo, 26
  %i.bp = add nuw nsw i32 %i.bn, 32
  %i.bq = select i1 %or.cond.i22.i.i, i32 %i.bp, i32 %i.bn ; 2 uses
  %.not21.i.i = icmp eq i32 %i.bm, %i.bq
  br i1 %.not21.i.i, label %bb.h, label %.critedge.loopexit.i.i

.critedge.loopexit.i.i:                           ; preds = %bb.j
  %i.br = icmp slt i32 %i.bm, %i.bq
  br i1 %i.br, label %.split, label %bb.k

_ZNK2io14SFileListEntryltERKS0_.exit:             ; preds = %bb.h, %bb.i, %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !34
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !34
  %i.bx = trunc i64 %i.bw to i32
  %i.by = icmp ult i32 %i.bu, %i.bx
  br i1 %i.by, label %.split, label %_ZNK2io14SFileListEntryltERKS0_.exit._crit_edge

_ZNK2io14SFileListEntryltERKS0_.exit._crit_edge:  ; preds = %_ZNK2io14SFileListEntryltERKS0_.exit
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre53 = load ptr, ptr %.phi.trans.insert52, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2io14SFileListEntryltERKS0_.exit._crit_edge, %.critedge.loopexit.i.i
  %i.bz = phi ptr [ %.pre53, %_ZNK2io14SFileListEntryltERKS0_.exit._crit_edge ], [ %i.ba, %.critedge.loopexit.i.i ] ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i23 = icmp eq i8 %i.ca, 0
  br i1 %.not27.i.i23, label %_ZNK2io14SFileListEntryltERKS0_.exit33, label %.lr.ph.i.i24

bb.l:                                             ; preds = %bb.m
  %i.cb = add i32 %.01628.i.i25, 1                ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18  ; 2 uses
  %.not.i.i31 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i31, label %_ZNK2io14SFileListEntryltERKS0_.exit33, label %.lr.ph.i.i24, !llvm.loop !3

.lr.ph.i.i24:                                     ; preds = %bb.k, %bb.l
  %i.cf = phi i8 [ %i.ce, %bb.l ], [ %i.ca, %bb.k ]
  %i.cg = phi i64 [ %i.cc, %bb.l ], [ 0, %bb.k ]
  %.01628.i.i25 = phi i32 [ %i.cb, %bb.l ], [ 0, %bb.k ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i26 = icmp eq i8 %i.ci, 0
  br i1 %.not20.i.i26, label %_ZNK2io14SFileListEntryltERKS0_.exit33, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i24
  %i.cj = sext i8 %i.cf to i32                    ; 3 uses
  %i.ck = add nsw i32 %i.cj, -65
  %or.cond.i.i.i27 = icmp ult i32 %i.ck, 26
  %i.cl = add nuw nsw i32 %i.cj, 32
  %i.cm = select i1 %or.cond.i.i.i27, i32 %i.cl, i32 %i.cj ; 2 uses
  %i.cn = sext i8 %i.ci to i32                    ; 3 uses
  %i.co = add nsw i32 %i.cn, -65
  %or.cond.i22.i.i28 = icmp ult i32 %i.co, 26
  %i.cp = add nuw nsw i32 %i.cn, 32
  %i.cq = select i1 %or.cond.i22.i.i28, i32 %i.cp, i32 %i.cn ; 2 uses
  %.not21.i.i29 = icmp eq i32 %i.cm, %i.cq
  br i1 %.not21.i.i29, label %bb.l, label %.critedge.loopexit.i.i30

.critedge.loopexit.i.i30:                         ; preds = %bb.m
  %i.cr = icmp slt i32 %i.cm, %i.cq
  br i1 %i.cr, label %.split, label %bb.n

_ZNK2io14SFileListEntryltERKS0_.exit33:           ; preds = %bb.l, %.lr.ph.i.i24, %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !34
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !34
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp ult i32 %i.cu, %i.cx
  br i1 %i.cy, label %.split, label %bb.n

bb.n:                                             ; preds = %.critedge.loopexit.i.i30, %_ZNK2io14SFileListEntryltERKS0_.exit33
  %i.cz = ptrtoint ptr %.sroa.011.0.lcssa.i.i to i64
  %i.da = ptrtoint ptr %i.b to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = sdiv exact i64 %i.db, 80
  %i.dd = trunc i64 %i.dc to i32
  br label %.split

.split:                                           ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit, %bb.n, %_ZNK2io14SFileListEntryltERKS0_.exit33, %_ZNK2io14SFileListEntryltERKS0_.exit, %.critedge.loopexit.i.i, %.critedge.loopexit.i.i30, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.dd, %bb.n ], [ -1, %_ZNK2io14SFileListEntryltERKS0_.exit33 ], [ -1, %_ZNK2io14SFileListEntryltERKS0_.exit ], [ -1, %.critedge.loopexit.i.i30 ], [ -1, %.critedge.loopexit.i.i ], [ -1, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 80
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.h = load i8, ptr %i.g, align 4, !tbaa !51, !range !44, !noundef !45 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.k = mul nuw nsw i64 %i.e, 320
  %scevgep = getelementptr i8, ptr %0, i64 %i.k   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51.thread
  %.0124 = phi i64 [ %i.e, %.lr.ph ], [ %i.du, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51.thread ] ; 2 uses
  %.sroa.097.0123 = phi ptr [ %0, %.lr.ph ], [ %i.dt, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51.thread ] ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 76
  %i.m = load i8, ptr %i.l, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i = icmp eq i8 %i.m, %i.h
  br i1 %.not.i.i, label %bb.c, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18    ; 2 uses
  %.not18.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not18.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.r = add i32 %.01219.i.i.i, 1                 ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit, label %bb.e, !llvm.loop !98

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %i.v = phi i8 [ %i.p, %.lr.ph.i.i.i ], [ %i.u, %bb.d ]
  %i.w = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.s, %bb.d ]
  %.01219.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.r, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18    ; 2 uses
  %.not14.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not14.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i8 %i.v to i32                      ; 3 uses
  %i.aa = add nsw i32 %i.z, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.aa, 26
  %i.ab = add nuw nsw i32 %i.z, 32
  %i.ac = select i1 %or.cond.i.i.i.i, i32 %i.ab, i32 %i.z
  %i.ad = sext i8 %i.y to i32                     ; 3 uses
  %i.ae = add nsw i32 %i.ad, -65
  %or.cond.i17.i.i.i = icmp ult i32 %i.ae, 26
  %i.af = add nuw nsw i32 %i.ad, 32
  %i.ag = select i1 %or.cond.i17.i.i.i, i32 %i.af, i32 %i.ad
  %.not15.i.i.i = icmp eq i32 %i.ac, %i.ag
  br i1 %.not15.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit: ; preds = %bb.d, %bb.e, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !34
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !34
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit.thread: ; preds = %bb.f, %bb.b, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 156
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i16 = icmp eq i8 %i.ao, %i.h
  br i1 %.not.i.i16, label %bb.g, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27.thread

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !18  ; 2 uses
  %.not18.i.i.i18 = icmp eq i8 %i.ar, 0
  br i1 %.not18.i.i.i18, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %bb.g
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.at = add i32 %.01219.i.i.i20, 1              ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i25 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i25, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27, label %bb.i, !llvm.loop !98

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i19
  %i.ax = phi i8 [ %i.ar, %.lr.ph.i.i.i19 ], [ %i.aw, %bb.h ]
  %i.ay = phi i64 [ 0, %.lr.ph.i.i.i19 ], [ %i.au, %bb.h ]
  %.01219.i.i.i20 = phi i32 [ 0, %.lr.ph.i.i.i19 ], [ %i.at, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18  ; 2 uses
  %.not14.i.i.i21 = icmp eq i8 %i.ba, 0
  br i1 %.not14.i.i.i21, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = sext i8 %i.ax to i32                    ; 3 uses
  %i.bc = add nsw i32 %i.bb, -65
  %or.cond.i.i.i.i22 = icmp ult i32 %i.bc, 26
  %i.bd = add nuw nsw i32 %i.bb, 32
  %i.be = select i1 %or.cond.i.i.i.i22, i32 %i.bd, i32 %i.bb
  %i.bf = sext i8 %i.ba to i32                    ; 3 uses
  %i.bg = add nsw i32 %i.bf, -65
  %or.cond.i17.i.i.i23 = icmp ult i32 %i.bg, 26
  %i.bh = add nuw nsw i32 %i.bf, 32
  %i.bi = select i1 %or.cond.i17.i.i.i23, i32 %i.bh, i32 %i.bf
  %.not15.i.i.i24 = icmp eq i32 %i.be, %i.bi
  br i1 %.not15.i.i.i24, label %bb.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27: ; preds = %bb.h, %bb.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 120
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !34
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !34
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %.loopexit.split.loop.exit114, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27.thread: ; preds = %bb.j, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 236
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i28 = icmp eq i8 %i.bq, %i.h
  br i1 %.not.i.i28, label %bb.k, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39.thread

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27.thread
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 192
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18  ; 2 uses
  %.not18.i.i.i30 = icmp eq i8 %i.bt, 0
  br i1 %.not18.i.i.i30, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %bb.k
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.m

bb.l:                                             ; preds = %bb.n
  %i.bv = add i32 %.01219.i.i.i32, 1              ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i37 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i37, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39, label %bb.m, !llvm.loop !98

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i31
  %i.bz = phi i8 [ %i.bt, %.lr.ph.i.i.i31 ], [ %i.by, %bb.l ]
  %i.ca = phi i64 [ 0, %.lr.ph.i.i.i31 ], [ %i.bw, %bb.l ]
  %.01219.i.i.i32 = phi i32 [ 0, %.lr.ph.i.i.i31 ], [ %i.bv, %bb.l ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18  ; 2 uses
  %.not14.i.i.i33 = icmp eq i8 %i.cc, 0
  br i1 %.not14.i.i.i33, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = sext i8 %i.bz to i32                    ; 3 uses
  %i.ce = add nsw i32 %i.cd, -65
  %or.cond.i.i.i.i34 = icmp ult i32 %i.ce, 26
  %i.cf = add nuw nsw i32 %i.cd, 32
  %i.cg = select i1 %or.cond.i.i.i.i34, i32 %i.cf, i32 %i.cd
  %i.ch = sext i8 %i.cc to i32                    ; 3 uses
  %i.ci = add nsw i32 %i.ch, -65
  %or.cond.i17.i.i.i35 = icmp ult i32 %i.ci, 26
  %i.cj = add nuw nsw i32 %i.ch, 32
  %i.ck = select i1 %or.cond.i17.i.i.i35, i32 %i.cj, i32 %i.ch
  %.not15.i.i.i36 = icmp eq i32 %i.cg, %i.ck
  br i1 %.not15.i.i.i36, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39: ; preds = %bb.l, %bb.m, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 200
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !34
  %i.cn = trunc i64 %i.cm to i32
  %i.co = load i64, ptr %i.j, align 8, !tbaa !34
  %i.cp = trunc i64 %i.co to i32
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %.loopexit.split.loop.exit116, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39.thread: ; preds = %bb.n, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 316
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i40 = icmp eq i8 %i.cs, %i.h
  br i1 %.not.i.i40, label %bb.o, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51.thread

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 272
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !18  ; 2 uses
  %.not18.i.i.i42 = icmp eq i8 %i.cv, 0
  br i1 %.not18.i.i.i42, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51, label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %bb.o
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.q

bb.p:                                             ; preds = %bb.r
  %i.cx = add i32 %.01219.i.i.i44, 1              ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i49 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i49, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51, label %bb.q, !llvm.loop !98

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i43
  %i.db = phi i8 [ %i.cv, %.lr.ph.i.i.i43 ], [ %i.da, %bb.p ]
  %i.dc = phi i64 [ 0, %.lr.ph.i.i.i43 ], [ %i.cy, %bb.p ]
  %.01219.i.i.i44 = phi i32 [ 0, %.lr.ph.i.i.i43 ], [ %i.cx, %bb.p ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !18  ; 2 uses
  %.not14.i.i.i45 = icmp eq i8 %i.de, 0
  br i1 %.not14.i.i.i45, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = sext i8 %i.db to i32                    ; 3 uses
  %i.dg = add nsw i32 %i.df, -65
  %or.cond.i.i.i.i46 = icmp ult i32 %i.dg, 26
  %i.dh = add nuw nsw i32 %i.df, 32
  %i.di = select i1 %or.cond.i.i.i.i46, i32 %i.dh, i32 %i.df
  %i.dj = sext i8 %i.de to i32                    ; 3 uses
  %i.dk = add nsw i32 %i.dj, -65
  %or.cond.i17.i.i.i47 = icmp ult i32 %i.dk, 26
  %i.dl = add nuw nsw i32 %i.dj, 32
  %i.dm = select i1 %or.cond.i17.i.i.i47, i32 %i.dl, i32 %i.dj
  %.not15.i.i.i48 = icmp eq i32 %i.di, %i.dm
  br i1 %.not15.i.i.i48, label %bb.p, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51: ; preds = %bb.p, %bb.q, %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 280
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !34
  %i.dp = trunc i64 %i.do to i32
  %i.dq = load i64, ptr %i.j, align 8, !tbaa !34
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = icmp eq i32 %i.dp, %i.dr
  br i1 %i.ds, label %.loopexit.split.loop.exit118, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51.thread: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 320
  %i.du = add nsw i64 %.0124, -1
  %i.dv = icmp sgt i64 %.0124, 1
  br i1 %i.dv, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !99

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51.thread
  %.pre132 = ptrtoint ptr %scevgep to i64
  %.pre133 = sub i64 %i.a, %.pre132
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi134 = phi i64 [ %.pre133, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.097.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.dw = sdiv exact i64 %.pre-phi134, 80
  switch i64 %i.dw, label %.loopexit [
    i64 3, label %bb.s
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge129
  ]

._crit_edge._crit_edge129:                        ; preds = %._crit_edge
  %.phi.trans.insert130 = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.pre131 = load i8, ptr %.phi.trans.insert130, align 4, !tbaa !51, !range !44
  br label %bb.ac

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !51, !range !44
  br label %bb.x

bb.s:                                             ; preds = %._crit_edge
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.097.0.lcssa, i64 76
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !51, !range !44, !noundef !45
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %.not.i.i52 = icmp eq i8 %i.dy, %i.ea
  br i1 %.not.i.i52, label %bb.t, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63.thread

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.097.0.lcssa, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !17 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !18  ; 2 uses
  %.not18.i.i.i54 = icmp eq i8 %i.ed, 0
  br i1 %.not18.i.i.i54, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !17
  br label %bb.v

bb.u:                                             ; preds = %bb.w
  %i.eg = add i32 %.01219.i.i.i56, 1              ; 2 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i61 = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i61, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63, label %bb.v, !llvm.loop !98

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i55
  %i.ek = phi i8 [ %i.ed, %.lr.ph.i.i.i55 ], [ %i.ej, %bb.u ]
  %i.el = phi i64 [ 0, %.lr.ph.i.i.i55 ], [ %i.eh, %bb.u ]
  %.01219.i.i.i56 = phi i32 [ 0, %.lr.ph.i.i.i55 ], [ %i.eg, %bb.u ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !18  ; 2 uses
  %.not14.i.i.i57 = icmp eq i8 %i.en, 0
  br i1 %.not14.i.i.i57, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = sext i8 %i.ek to i32                    ; 3 uses
  %i.ep = add nsw i32 %i.eo, -65
  %or.cond.i.i.i.i58 = icmp ult i32 %i.ep, 26
  %i.eq = add nuw nsw i32 %i.eo, 32
  %i.er = select i1 %or.cond.i.i.i.i58, i32 %i.eq, i32 %i.eo
  %i.es = sext i8 %i.en to i32                    ; 3 uses
  %i.et = add nsw i32 %i.es, -65
  %or.cond.i17.i.i.i59 = icmp ult i32 %i.et, 26
  %i.eu = add nuw nsw i32 %i.es, 32
  %i.ev = select i1 %or.cond.i17.i.i.i59, i32 %i.eu, i32 %i.es
  %.not15.i.i.i60 = icmp eq i32 %i.er, %i.ev
  br i1 %.not15.i.i.i60, label %bb.u, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63: ; preds = %bb.u, %bb.v, %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.097.0.lcssa, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !34
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !34
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = icmp eq i32 %i.ey, %i.fb
  br i1 %i.fc, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63.thread: ; preds = %bb.w, %bb.s, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.097.0.lcssa, i64 80
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63.thread
  %i.fe = phi i8 [ %i.ea, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63.thread ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.097.1 = phi ptr [ %i.fd, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63.thread ], [ %.sroa.097.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.097.1, i64 76
  %i.fg = load i8, ptr %i.ff, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i64 = icmp eq i8 %i.fg, %i.fe
  br i1 %.not.i.i64, label %bb.y, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75.thread

bb.y:                                             ; preds = %bb.x
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.097.1, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !17 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !18  ; 2 uses
  %.not18.i.i.i66 = icmp eq i8 %i.fj, 0
  br i1 %.not18.i.i.i66, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75, label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !17
  br label %bb.aa

bb.z:                                             ; preds = %bb.ab
  %i.fm = add i32 %.01219.i.i.i68, 1              ; 2 uses
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i73 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i73, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75, label %bb.aa, !llvm.loop !98

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.i67
  %i.fq = phi i8 [ %i.fj, %.lr.ph.i.i.i67 ], [ %i.fp, %bb.z ]
  %i.fr = phi i64 [ 0, %.lr.ph.i.i.i67 ], [ %i.fn, %bb.z ]
  %.01219.i.i.i68 = phi i32 [ 0, %.lr.ph.i.i.i67 ], [ %i.fm, %bb.z ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !18  ; 2 uses
  %.not14.i.i.i69 = icmp eq i8 %i.ft, 0
  br i1 %.not14.i.i.i69, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = sext i8 %i.fq to i32                    ; 3 uses
  %i.fv = add nsw i32 %i.fu, -65
  %or.cond.i.i.i.i70 = icmp ult i32 %i.fv, 26
  %i.fw = add nuw nsw i32 %i.fu, 32
  %i.fx = select i1 %or.cond.i.i.i.i70, i32 %i.fw, i32 %i.fu
  %i.fy = sext i8 %i.ft to i32                    ; 3 uses
  %i.fz = add nsw i32 %i.fy, -65
  %or.cond.i17.i.i.i71 = icmp ult i32 %i.fz, 26
  %i.ga = add nuw nsw i32 %i.fy, 32
  %i.gb = select i1 %or.cond.i17.i.i.i71, i32 %i.ga, i32 %i.fy
  %.not15.i.i.i72 = icmp eq i32 %i.fx, %i.gb
  br i1 %.not15.i.i.i72, label %bb.z, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75: ; preds = %bb.z, %bb.aa, %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.097.1, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !34
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !34
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = icmp eq i32 %i.ge, %i.gh
  br i1 %i.gi, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75.thread: ; preds = %bb.ab, %bb.x, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.097.1, i64 80
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge129, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75.thread
  %i.gk = phi i8 [ %i.fe, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75.thread ], [ %.pre131, %._crit_edge._crit_edge129 ]
  %.sroa.097.2 = phi ptr [ %i.gj, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75.thread ], [ %.sroa.097.0.lcssa, %._crit_edge._crit_edge129 ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.097.2, i64 76
  %i.gm = load i8, ptr %i.gl, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i76 = icmp eq i8 %i.gm, %i.gk
  br i1 %.not.i.i76, label %bb.ad, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87.thread

bb.ad:                                            ; preds = %bb.ac
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.097.2, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !17 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !18  ; 2 uses
  %.not18.i.i.i78 = icmp eq i8 %i.gp, 0
  br i1 %.not18.i.i.i78, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87, label %.lr.ph.i.i.i79

.lr.ph.i.i.i79:                                   ; preds = %bb.ad
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !17
  br label %bb.af

bb.ae:                                            ; preds = %bb.ag
  %i.gs = add i32 %.01219.i.i.i80, 1              ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i85 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i85, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87, label %bb.af, !llvm.loop !98

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.i.i79
  %i.gw = phi i8 [ %i.gp, %.lr.ph.i.i.i79 ], [ %i.gv, %bb.ae ]
  %i.gx = phi i64 [ 0, %.lr.ph.i.i.i79 ], [ %i.gt, %bb.ae ]
  %.01219.i.i.i80 = phi i32 [ 0, %.lr.ph.i.i.i79 ], [ %i.gs, %bb.ae ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !18  ; 2 uses
  %.not14.i.i.i81 = icmp eq i8 %i.gz, 0
  br i1 %.not14.i.i.i81, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ha = sext i8 %i.gw to i32                    ; 3 uses
  %i.hb = add nsw i32 %i.ha, -65
  %or.cond.i.i.i.i82 = icmp ult i32 %i.hb, 26
  %i.hc = add nuw nsw i32 %i.ha, 32
  %i.hd = select i1 %or.cond.i.i.i.i82, i32 %i.hc, i32 %i.ha
  %i.he = sext i8 %i.gz to i32                    ; 3 uses
  %i.hf = add nsw i32 %i.he, -65
  %or.cond.i17.i.i.i83 = icmp ult i32 %i.hf, 26
  %i.hg = add nuw nsw i32 %i.he, 32
  %i.hh = select i1 %or.cond.i17.i.i.i83, i32 %i.hg, i32 %i.he
  %.not15.i.i.i84 = icmp eq i32 %i.hd, %i.hh
  br i1 %.not15.i.i.i84, label %bb.ae, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87: ; preds = %bb.ae, %bb.af, %bb.ad
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.097.2, i64 40
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !34
  %i.hk = trunc i64 %i.hj to i32
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !34
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = icmp eq i32 %i.hk, %i.hn
  br i1 %i.ho, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87.thread: ; preds = %bb.ag, %bb.ac, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87
  br label %.loopexit

.loopexit.split.loop.exit114:                     ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit27
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 80
  br label %.loopexit

.loopexit.split.loop.exit116:                     ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit39
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 160
  br label %.loopexit

.loopexit.split.loop.exit118:                     ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit51
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.097.0123, i64 240
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit, %.loopexit.split.loop.exit114, %.loopexit.split.loop.exit116, %.loopexit.split.loop.exit118, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.097.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit75 ], [ %1, %._crit_edge ], [ %.sroa.097.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit63 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87.thread ], [ %.sroa.097.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit87 ], [ %i.hq, %.loopexit.split.loop.exit116 ], [ %i.hp, %.loopexit.split.loop.exit114 ], [ %i.hr, %.loopexit.split.loop.exit118 ], [ %.sroa.097.0123, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN2io14SFileListEntryEEclINS_17__normal_iteratorIPS4_St6vectorIS3_SaIS3_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_CFileList.cpp() #21 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2ioL18emptyFileListEntryE, i64 16), ptr @_ZN2ioL18emptyFileListEntryE, align 8, !tbaa !33
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN2ioL18emptyFileListEntryE, i64 8), align 8, !tbaa !34
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN2ioL18emptyFileListEntryE, i64 16), align 8, !tbaa !18
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4core6stringIcED2Ev, ptr nonnull @_ZN2ioL18emptyFileListEntryE, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !8, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"vtable pointer", !7, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSN2io9IFileListE"}
!22 = !{!"bool", !8, i64 0}
!23 = !{!"_ZTSN4core6stringIcEE", !16, i64 0}
!24 = !{!"p1 _ZTSN2io14SFileListEntryE", !12, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN2io14SFileListEntryESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIN2io14SFileListEntryESaIS1_EE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIN2io14SFileListEntryESaIS1_EE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIN2io14SFileListEntryESaIS1_EE", !27, i64 0}
!29 = !{!"_ZTSN4core5arrayIN2io14SFileListEntryEEE", !28, i64 0, !22, i64 24}
!30 = !{!"_ZTSN2io9CFileListE", !21, i64 0, !22, i64 8, !22, i64 9, !23, i64 16, !29, i64 48}
!31 = !{!30, !22, i64 8}
!32 = !{!30, !22, i64 9}
!33 = !{!14, !13, i64 0}
!34 = !{!16, !15, i64 8}
!35 = !{!29, !22, i64 24}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"branch_weights", i32 8, i32 24}
!40 = !{!25, !24, i64 0}
!41 = !{!25, !24, i64 8}
!42 = !{!25, !24, i64 16}
!43 = !{ptr @_ZN2io9CFileListD1Ev}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!24, !24, i64 0}
!47 = !{!"_ZTSN2io14SFileListEntryE", !23, i64 0, !23, i64 32, !9, i64 64, !9, i64 68, !9, i64 72, !22, i64 76}
!48 = !{!47, !9, i64 68}
!49 = !{!47, !9, i64 72}
!50 = !{!47, !9, i64 64}
!51 = !{!47, !22, i64 76}
!52 = !{!"branch_weights", i32 4, i32 12}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !36, !37, !38}
!55 = distinct !{!55, !36, !37, !38}
!56 = distinct !{!56, !36, !38, !37}
!57 = distinct !{!57, !36, !37, !38}
!58 = distinct !{!58, !36, !37, !38}
!59 = distinct !{!59, !36, !38, !37}
!60 = !{!"_ZTS17IReferenceCounted", !9, i64 8}
!61 = !{!60, !9, i64 8}
!62 = !{ptr @_ZN2io9CFileListD0Ev, ptr @_ZN2io9CFileListD1Ev}
!63 = !{ptr @_ZN2io9CFileListD0Ev}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36, !37, !38}
!66 = distinct !{!66, !36, !37, !38}
!67 = distinct !{!67, !36, !38, !37}
!68 = distinct !{!68, !36, !37, !38}
!69 = distinct !{!69, !36, !37, !38}
!70 = distinct !{!70, !36, !38, !37}
!71 = distinct !{!71, i1 true, !"_ZN4core22deletePathFromFilenameERKNS_6stringIcEE"}
!72 = distinct !{!72, !71, !"_ZN4core22deletePathFromFilenameERKNS_6stringIcEE: argument 0"}
!73 = distinct !{!73, !53}
!74 = !{!72}
!75 = distinct !{!75, !36, !37, !38}
!76 = distinct !{!76, !36, !37, !38}
!77 = distinct !{!77, !36, !38, !37}
!78 = distinct !{!78, !36, !37, !38}
!79 = distinct !{!79, !36, !37, !38}
!80 = distinct !{!80, !36, !38, !37}
!81 = distinct !{!81, i1 true, !"_ZN4core22deletePathFromFilenameERKNS_6stringIcEE"}
!82 = distinct !{!82, !81, !"_ZN4core22deletePathFromFilenameERKNS_6stringIcEE: argument 0"}
!83 = distinct !{!83, !53}
!84 = !{!82}
!85 = distinct !{!85, !36}
!86 = distinct !{!86, !36}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !36}
!91 = distinct !{!91, !36}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
end_hunk_4
